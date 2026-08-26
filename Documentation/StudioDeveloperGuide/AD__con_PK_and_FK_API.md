# Relationship Between Data with PrimaryKeyOf and ForeignKeyOf {#_67621706-e4f4-4423-b90f-84b3b6b189c4 .concept}

To define a relationship between two tables, you need to define the primary keys of the parent and child tables. Also, in the child table, you need to define the foreign key that refers to the primary key of the parent table.

In the code of an Acumatica Framework-based application, you can define the relationship between two tables as follows:

-   To define a primary key of a table, for the set of key fields of the data access class \(DAC\) that corresponds to the table, you set the IsKey property of the data type attribute to `true`.
-   To define a foreign key of a table, in the DAC that corresponds to the table, you mark the field that contains the foreign key with one of the following attributes: PXForeignReference, PXSelector, or PXParent.

To select a record from the database by its primary or foreign key, you can use a Select statement in business query language \(BQL\) or use the methods of the attributes mentioned above.

Another way to define a relationship between two tables is to use the PrimaryKeyOf and ForeignKeyOf classes that are specially designed for the definition of primary and foreign keys.

This approach, which is described in this topic, provides the following advantages:

-   These classes provide static information that a compiler can use to identify errors in the code.
-   You can use runtime information about primary keys to select records by their keys.
-   These classes and methods have no other meanings and use cases; conversely, the PXForeignReference, PXSelector, and PXParent attributes can be used for other purposes.
-   These classes and methods are optimized for the selection of records from the database; therefore, using them improves database access performance on record selection.

## Definition of a Primary Key { .section}

You define a primary key of a DAC by using the PrimaryKeyOf&lt;Table&gt;.By&lt;keyFields&gt; class. With this class, you can define simple keys \(with one key field\) and compound keys \(with up to five key fields\). In the primary key definition, you have to define the `public` Find method, which calls the `protected` FindBy method. A definition of a compound key is shown in the following example.

``` {#codeblock_w5n_gmk_f2c}
using PX.Data.ReferentialIntegrity.Attributes;

public partial class SOLine : PX.Data.PXBqlTable, PX.Data.IBqlTable
{
    public class PK : PrimaryKeyOf<SOLine>.By<orderType, orderNbr, lineNbr>
    {
        public static SOLine Find(
            PXGraph graph, string orderType, string orderNbr, int lineNbr) 
                => FindBy(graph, orderType, orderNbr, lineNbr);
    }

    public abstract class orderType : PX.Data.IBqlField { }
    public abstract class orderNbr : PX.Data.IBqlField { }
    public abstract class lineNbr : PX.Data.IBqlField { }
}
```

## Definition of a Foreign Key {#_a65fe2e3-9eb0-4ffe-850d-b704d6111ac3 .section}

You can define a foreign key based on the primary key of the referenced table, as shown in the following code.

```
//Definition of the primary key
public partial class SOOrder : PX.Data.PXBqlTable, PX.Data.IBqlTable
{
    public class PK : PrimaryKeyOf<SOOrder>.By<orderType, orderNbr>
    {
        public static SOOrder Find(
            PXGraph graph, string orderType, string orderNbr) => 
            FindBy(graph, orderType, orderNbr);
    }

    public abstract class orderType : PX.Data.IBqlField { }
    public abstract class orderNbr : PX.Data.IBqlField { }
} 

//Definition of the foreign key based on the primary key
public partial class SOLine : PX.Data.PXBqlTable, PX.Data.IBqlTable
{
    public class SOOrderFK : SOOrder.PK.ForeignKeyOf<SOLine>
        .By<orderType, orderNbr> { }

    public abstract class orderType : PX.Data.IBqlField { }
    public abstract class orderNbr : PX.Data.IBqlField { }
}
```

## Selection of a Record by Key Fields { .section}

If a primary key is defined for a DAC, you can select a record by using the values of the key fields of the record, as shown in the following example.

``` {#codeblock_crc_fmk_f2c}
SOLine line = SOLine.PK.Find(
    this, split.OrderType, split.OrderNbr, split.LineNbr.Value);
```

**Tip:** The Find method encapsulates a `PXSelectReadonly<Table, Where<...>>.SelectWindowed(graph, 0, 1, keys)` call. Therefore, the code above can replace the following code written using BQL.

``` {#codeblock_lc4_2mk_f2c}
SOLine line = PXSelectReadonly<SOLine,
    Where<SOLine.orderType, Equal<Required<SOLine.orderType>>,
        And<SOLine.orderNbr, Equal<Required<SOLine.orderNbr>>,
        And<SOLine.lineNbr, Equal<Required<SOLine.lineNbr>>>>>
    >.Select(this, split.OrderType, split.OrderNbr, split.LineNbr);
```

You can also select a record by using a record of the same type with the key fields specified, as shown in the following example.

``` {#codeblock_f3v_dmk_f2c}
InventoryItem actualItem = InventoryItem.PK.Find(this, notActualItem);
```

If a foreign key is defined for a DAC, you can select the parent and child records, as shown in the following code.

``` {#codeblock_vw4_dmk_f2c}
//Selection of the parent record
SOOrder order = SOLine.SOOrderFK.FindParent(this, soLine);
//Selection of the child records
IEnumerable<SOLine> lines = SOLine.SOOrderFK.SelectChildren(this, soOrder);
```

## Use of Primary and Foreign Keys in Attributes { .section}

You can use static foreign keys, defined as described in [Definition of a Foreign Key](#_a65fe2e3-9eb0-4ffe-850d-b704d6111ac3), for the configuration of the PXForeignReference and PXParent attributes, as shown in the following example.

```
public partial class SOLine : PX.Data.PXBqlTable, PX.Data.IBqlTable
{
    public class SOOrderFK : SOOrder.PK.ForeignKeyOf<SOLine>
        .By<orderType, orderNbr> { }
    public class InventoryFK : InventoryItem.PK.ForeignKeyOf<SOLine>
        .By<inventoryID> { }

    public abstract class orderType : PX.Data.IBqlField { }

    [...]
    [PXParent(typeof(SOOrderFK))]
    public virtual String OrderNbr { get; set; }
    public abstract class orderNbr : PX.Data.IBqlField { }

    [...]
    [PXForeignReference(typeof(InventoryFK))]
    public virtual Int32? InventoryID { get; set; }
    public abstract class inventoryID : PX.Data.IBqlField { }
}
```

Because all primary keys, which are defined as described in this topic, implement the IPrimaryKey interface, you can use primary and foreign keys in the scope of custom attributes, as shown in the following example.

```
public class SomeAttribute : PXEventSubscriberAttribute, ...
{
    private readonly IPrimaryKey _pk;
    public SomeAttribute(Type pkType)
    {
        _pk = (IPrimaryKey)Activator.CreateInstance(pkType);
    }

    public void SomeHandler(PXCache cache, PXSomeEventArgs e)
    {
        IBqlTable row = _pk.Find(cache.Graph, e.NewValue);
        ...
        _pk.StoreCached(cache.graph, row);
        ...
        row = _pk.Find(cache.Graph, row);
    }
}
```

**Parent topic:**[Defining Relationships Between DACs](../StudioDeveloperGuide/AD__mng_Defining_PK_and_FK.md)

