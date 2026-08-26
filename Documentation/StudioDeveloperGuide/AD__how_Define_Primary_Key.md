# To Define a Primary Key {#_34e875c7-a5c3-496e-9e2b-f7f6f9f20a40 .task}

You can define the primary key of a data access class \(DAC\) by using the PrimaryKeyOf&lt;Table&gt;.By&lt;keyFields&gt; class. With this class, you can define simple keys \(with one key field\) and compound keys \(with up to eight key fields\) and select records by using these keys, as described in this topic.

**Tip:** A DAC can contain only one primary key declaration. If you want to declare a key for another combination of DAC fields so that you can identify a separate DAC row, instance, or entity, you can create a unique key. For details, see [To Define a Unique Key](AD__how_Define_Unique_Key.md).

## To Define a Simple Primary Key and Select a Record by Using This Key { .section}

1.  In the DAC, declare a PrimaryKeyOf&lt;Table&gt;.By&lt;keyFields&gt; descendant with the `public` Find method, which calls the `protected` FindBy method, as shown in the following code.

    ```
    using PX.Data.ReferentialIntegrity.Attributes;
    
    public partial class InventoryItem : PX.Data.PXBqlTable, PX.Data.IBqlTable
    {
        public class PK : PrimaryKeyOf<InventoryItem>.By<inventoryID>
        {
            public static InventoryItem Find(PXGraph graph, int? inventoryID) 
              => FindBy(graph, inventoryID);
        }
    
        public abstract class inventoryID : PX.Data.BQL.BqlInt.Field<inventoryID> { }
    }
    ```

2.  Use the primary key to select a record, as shown in the following code.

    ```
    InventoryItem item = InventoryItem.PK.Find(this, soLine.InventoryID);
    ```


## To Define a Compound Primary Key and Select a Record by Using This Key { .section}

1.  In the data access class \(DAC\), declare a PrimaryKeyOf&lt;Table&gt;.By&lt;keyFields&gt; descendant with the `public` Find method, which has the needed number of key fields \(up to eight\). The Find method must call the `protected` FindBy method with the same number of key fields, as shown in the following code.

    ```
    using PX.Data.ReferentialIntegrity.Attributes;
    
    public partial class SOLine : PX.Data.PXBqlTable, PX.Data.IBqlTable
    {
        public class PK : PrimaryKeyOf<SOLine>
            .By<orderType, orderNbr, lineNbr>
        {
            public static SOLine Find(
                PXGraph graph, string orderType, string orderNbr, int? lineNbr) 
                    => FindBy(graph, orderType, orderNbr, lineNbr);
        }
    
        public abstract class orderType : PX.Data.BQL.BqlString.Field<orderType> { }
        public abstract class orderNbr : PX.Data.BQL.BqlString.Field<orderNbr> { }
        public abstract class lineNbr : PX.Data.BQL.BqlInt.Field<lineNbr> { }
    }
    ```

2.  Use the compound primary key to select a record, as shown in the following code.

    ```
    SOLine line = SOLine.PK.Find(
        this, split.OrderType, split.OrderNbr, split.LineNbr);
    ```

    **Note:** The primary key also provides a generic overload of the `Find` method so that you can select an current entity by using an entity of the same type with filled key fields \(similar to the `PXCache.Locate` method\), as shown in the following example.

    ```
    SOLine actualItem = SOLine.PK.Find(this, notActualItem);
    ```


**Parent topic:**[Defining Relationships Between DACs](../StudioDeveloperGuide/AD__mng_Defining_PK_and_FK.md)

