# To Define a Unique Key {#_76f191c0-c4d0-43b8-8d8b-50d8a460fcfb .concept}

You can define the unique key of a data access class \(DAC\) by using the PrimaryKeyOf&lt;Table&gt;.By&lt;keyFields&gt; class. With this class, you can define simple keys \(with one key field\) and compound keys \(with up to eight key fields\) and select records by using these keys, as described in this topic.

The primary key differs from unique keys only by two things: Its name is `PK`, and its set of fields consists of only DAC key properties \(DAC properties marked with `IsKey = true`\). The DAC should not have any unique key declarations without a primary key declaration.

## To Define a Unique Key { .section}

1.  In the DAC, declare a PrimaryKeyOf&lt;Table&gt;.By&lt;keyFields&gt; descendant with the `public` Find method, which calls the `protected` FindBy method, as shown in the following code.

    ```
    using PX.Data.ReferentialIntegrity.Attributes;
    public partial class INSite : PXBqlTable, IBqlTable
    {
        public class UK : PrimaryKeyOf<INSite>.By<siteCD>
        {
            public static INSite Find(PXGraph graph, string siteCD) => FindBy(graph, siteCD);
        }
    
        public abstract class siteCD : PX.Data.BQL.BqlString.Field<siteCD> { }
    }
    ```

2.  Use the primary key to select a record, as shown in the following code.

    ```
    INSite item = INSite.UK.Find(this, value);
    ```

    The unique key declaration is similar to a primary key declaration: The only difference is that it specifies DAC fields that are different from the fields used in a DAC primary key. The unique key declaration uses the same Acumatica Framework classes, and all examples for primary keys can be used to declare unique keys.


## Examples of Usage { .section}

Suppose that a DAC has two different keys, and each of them can uniquely identify a record in the database. To declare them both, you need to declare one primary key named `PK` and one unique key named `UK`. An example is shown in the following code.

```
public partial class INSite : PXBqlTable, IBqlTable
{
    public class PK : PrimaryKeyOf<INSite>.By<siteID>.Dirty
    {
        public static INSite Find(PXGraph graph, int? siteID) 
            => FindBy(graph, siteID, (siteID ?? 0) <= 0);
    }
 
    public class UK : PrimaryKeyOf<INSite>.By<siteCD>
    {
        public static INSite Find(PXGraph graph, string siteCD) 
            => FindBy(graph, siteCD);
    }
}
```

Suppose that a DAC has multiple keys, and each of them can uniquely identify a record in the database. To declare them all, you need to declare one primary key named `PK` and all other keys inside a unique key class named `UK`. An example is shown in the following code.

```
public partial class INUnit : PXBqlTable, IBqlTable
{
    public class PK : PrimaryKeyOf<INUnit>.By<recordID>
    {
        public static INUnit Find(PXGraph graph, long? recordID) => FindBy(graph, recordID);
    }
 
    public abstract class UK
    {
        public class ByGlobal : PrimaryKeyOf<INUnit>.By<unitType, fromUnit, toUnit>
        {
            public static INUnit Find(PXGraph graph, string fromUnit, string toUnit) => 
                FindBy(graph, INUnitType.Global, fromUnit, toUnit);     
        }
 
        public class ByInventory : PrimaryKeyOf<INUnit>.By<unitType, inventoryID, fromUnit>
        {
            public static INUnit Find(PXGraph graph, int? inventoryID, string fromUnit) => 
                FindBy(graph, INUnitType.InventoryItem, inventoryID, fromUnit);
        }
 
        public class ByItemClass : PrimaryKeyOf<INUnit>.By<unitType, itemClassID, fromUnit>
        {
            public static INUnit Find(PXGraph graph, int? itemClassID, string fromUnit) => 
                FindBy(graph, INUnitType.ItemClass, itemClassID, fromUnit);
        }
    }
}
```

## Coding Conventions { .section}

We recommend the following coding conventions, which are checked by Acuminator:

-   A single unique key in a DAC declaration must have the name `UK`.
-   Multiple unique keys can have arbitrary names but they must be declared inside a public static class named `UK`.
-   A DAC declaration must include at least one primary key declaration if you want to declare a unique key.
-   Multiple unique keys cannot use the same set of fields.
-   You cannot use unbound DAC fields in a unique key declaration for the same reason this recommendation applies for the primary keys. For details, see [Restrictions](AD__Using_PK.md#_b9b04fe5-1e31-40fc-b39b-9788b4447c28).

**Parent topic:**[Defining Relationships Between DACs](../StudioDeveloperGuide/AD__mng_Defining_PK_and_FK.md)

