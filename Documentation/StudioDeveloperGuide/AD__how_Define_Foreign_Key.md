# To Define a Foreign Key {#_20b9a017-ff40-42b7-843c-94f2fced764e .task}

You can define a foreign key based on the primary key of the referenced data access class \(DAC\) and select records by using this key, as described in this topic.

## To Define a Foreign Key and Use It to Select Records { .section}

1.  In the DAC of the referenced table, define the primary key, as described in [To Define a Primary Key](AD__how_Define_Primary_Key.md#). The following code shows an example of the definition of the primary key that is used in the other code examples in this topic.

    ```
    public partial class SOOrder : PX.Data.PXBqlTable, PX.Data.IBqlTable
    {
        public class PK : PrimaryKeyOf<SOOrder>.By<orderType, orderNbr>
        {
            public static SOOrder Find(
                PXGraph graph, string orderType, string orderNbr) 
                => FindBy(graph, orderType, orderNbr);
        }
    
        public abstract class orderType : PX.Data.BQL.BqlString.Field<orderType> { }
        public abstract class orderNbr : PX.Data.BQL.BqlString.Field<orderNbr> { }
    } 
    ```

2.  In the child DAC, define the foreign key based on the primary key of the parent table, as shown below.

    ```
    public partial class SOLine : PX.Data.PXBqlTable, PX.Data.IBqlTable
    {
        public static class FK
        {
            public class Order : SOOrder.PK.ForeignKeyOf<SOLine>.By<orderType, orderNbr> { }
        }
    
        public abstract class orderType : PX.Data.BQL.BqlString.Field<orderType> { }
        public abstract class orderNbr : PX.Data.BQL.BqlString.Field<orderNbr> { }
    }
    ```

3.  Use the foreign key to select the parent record or child records, as shown in the following code.

    ```
    //Select the parent record
    SOOrder order = SOLine.FK.FindParent(this, soLine);
    //Select the child records
    IEnumerable<SOLine> lines = SOLine.FK.SelectChildren(this, soOrder);
    ```


## Examples of Usage { .section}

Static foreign keys should be used for configuring the PXParentAttribute and PXForeignReferenceAttribute attributes to reduce semantic duplication of these elements as shown in the following code.

```
public partial class SOLine : PX.Data.PXBqlTable, PX.Data.IBqlTable
{
    public static class FK
    {
        public class SOOrder : PX.Objects.SO.SOOrder.PK.ForeignKeyOf<SOLine>.By<orderType, orderNbr> { }
        public class Inventory : PX.Objects.IN.InventoryItem.PK.ForeignKeyOf<SOLine>.By<inventoryID> { }
    }
 
    public abstract class orderType : PX.Data.BQL.BqlString.Field<orderType> { }
  
    [...]
    [PXParent(typeof(FK.SOOrder))]
    public virtual String OrderNbr { get; set; }
    public abstract class orderNbr : PX.Data.BQL.BqlString.Field<orderNbr> { }
  
    [...]
    [PXForeignReference(typeof(FK.Inventory))]
    public virtual Int32? InventoryID { get; set; }
    public abstract class inventoryID : PX.Data.BQL.BqlInt.Field<inventoryID> { }
}
```

Also, you can use a foreign key as a condition in the JOIN statement, as shown in the following code.

```
var rows =
    SelectFrom<SOOrder>.
    InnerJoin<SOLine>.On<SOLine.FK.SOOrder>.
    //              On<
    //                  SOLine.orderType.IsEqual<SOOrder.orderType>.
    //                  And<SOLine.orderNbr.IsEqual<SOOrder.orderNbr>>>
    InnerJoin<SOLineSplit>.On<SOLineSplit.FK.SOLine>.
    //              On<
    //                  SOLineSplit.orderType.IsEqual<SOLine.orderType>.
    //                  And<SOLineSplit.orderNbr.IsEqual<SOLine.orderNbr>>.
    //                  And<SOLineSplit.lineNbr.IsEqual<SOLine.lineNbr>>>
    InnerJoin<InventoryItem>.On<SOLine.FK.Inventory>.
    //              On<SOLine.inventoryID.IsEqual<InventoryItem.inventoryID>>
    Where<
        SOOrder.orderType.IsEqual<@P.AsString>.
        And<SOOrder.orderNbr.IsEqual<@P.AsString>>>.
    View.Select(this, "SO", "SO000001");
```

You can use the same practice for virtual JOIN statements that are based on references defined through the `Current` parameter in a graph view.

```
public class MyGraph : PXGraph<MyGraph>
{
    public SelectFrom<SOOrder>.View orders;
  
    public SelectFrom<SOLine>.Where<SOLine.FK.SOOrder.SameAsCurrent>.View lines;
    // public
    //  SelectFrom<SOLine>.
    //  Where<
    //      SOLine.orderType.IsEqual<SOOrder.orderType.FromCurrent>.
    //      And<SOLine.orderNbr.IsEqual<SOOrder.orderNbr.FromCurrent>>>.
    //  View lines;
  
    public SelectFrom<SOLineSplit>.Where<SOLineSplit.FK.SOLine.SameAsCurrent>.View splits;
    // public
    //  PXSelect<SOLineSplit>.
    //  Where<
    //      SOLineSplit.orderType.IsEqual<SOLine.orderType.FromCurrent>.
    //      And<SOLineSplit.orderNbr.IsEqual<SOLine.orderNbr.FromCurrent>>.
    //      And<SOLineSplit.lineNbr.IsEqual<SOLine.lineNbr.FromCurrent>>>.
    //  View splits;
}
```

## Coding Conventions { .section}

We recommend the following coding conventions, which are checked by Acuminator:

-   All foreign keys can have arbitrary names, but they must be declared in the public static class named `FK`.
-   To declare multiple foreign keys, you should aggregate all foreign keys of a DAC inside a single `FK` class, so that their usage looks more like an operation application, for example, `SOLine.FK.SOOrder`. Also, this approach you not to merge the `FK` classes with the fields of the DAC, which makes it easier to find the proper class via IntelliSence.
-   Multiple foreign keys declared in a DAC should not use the same set of fields.
-   You cannot use unbound DAC fields in a foreign key declaration. For details, see [Restrictions](AD__Using_PK.md#_b9b04fe5-1e31-40fc-b39b-9788b4447c28).

**Parent topic:**[Defining Relationships Between DACs](../StudioDeveloperGuide/AD__mng_Defining_PK_and_FK.md)

