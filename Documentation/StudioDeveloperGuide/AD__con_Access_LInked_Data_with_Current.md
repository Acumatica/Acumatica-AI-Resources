# Selection of the Linked Data Through the Current Property {#_3ee067a4-f1f5-4f47-a418-7c4d19091f2b .concept}

A PXCache object has the Current property, which is set to the last data record that has been retrieved from the database or inserted or updated in the cache. The Current property is often used to select linked data, such as the detail data, by the specified master record key.

BQL includes an operand that you can use to insert the values of the Current data record into a BQL query. In the code below, the Current property is used in data views to select and retrieve linked data. The `Suppliers` and `SelectedSupplier` data views retrieve records from the same PXCache object, because they have the same main DAC. The `SupplierProducts` data view retrieves records of the `SupplierProduct` class that have the specified `SupplierID`. The `SupplierID` is retrieved from the Current property of the PXCache object for `Supplier`.

```
public SelectFrom<Supplier>.View Suppliers;
// Retrieves the same record that is current in the PXCache object for Supplier
public SelectFrom<Supplier>.
    Where<Supplier.supplierID.IsEqual<Supplier.supplierID.FromCurrent>>.View
    SelectedSupplier;
// Retrieves the detail records by the specified SupplierID
public SelectFrom<SupplierProduct>.
    LeftJoin<Product>.On<Product.productID.IsEqual<SupplierProduct.productID>>.
    Where<SupplierProduct.supplierID.IsEqual<Supplier.supplierID.FromCurrent>>.View
    SupplierProducts;
```

## Getting the Current Data Record {#section_amr_wtd_hm .section}

The framework automatically assigns the Current property to the following records:

-   Each data record retrieved from the database and displayed in the UI \(or requested by the web services APIs\)
-   The last modified data record that has been inserted or updated from the UI, after the updated data is posted to the server
-   The last modified data record that has been inserted or updated from code, after you invoke the Insert\(\) or Update\(\) method on the cache object

The Current property returns the object of the main DAC type of the data view. The Current property of the data view and the Current property of the Cache object of the data view return the same record \(see the following code\).

```
// Get a Shipment object through the data view
Shipment shipment = Shipments.Current;
// Get a Shipment object through the PXCache object
Shipment currentShipment = (Shipment)Shipments.Cache.Current;
```

**Note:** After you create a graph instance in the code, the Current property of all cache objects of the graph returns null.

You can get a value from the current data record and specify it as a BQL parameter in a data view type or in an attribute of a DAC field. In the following code, a DAC field is specified in the Current parameter of the BQL statement in a data view.

```
// Select shipment lines through the data view
// where shipmentNbr equals the number of the current shipment
public SelectFrom<ShipmentLine>.
    Where<ShipmentLine.shipmentNbr.IsEqual<Shipment.shipmentNbr.FromCurrent>>.
    OrderBy<ShipmentLine.gift.Desc>.View ShipmentLines;
```

## Setting the Current Data Record {#section_yzj_ytd_hm .section}

You can set the Current property of a data record of the type the PXCache object works with. When you assign the Current property of a PXCache&lt;&gt; object, you should select a data record from the database by using DAC key field values. If a data record with these key field values exists in the database, the Current property is assigned to the retrieved record. If no such data record exists in the database, the property is set to `null`. Setting the Current property gives you the ability to do the following:

-   Process multiple data records by using a graph
-   Open a form displaying the specified data record when you redirect to the form from another one

We do not recommend that you set the Current property in other cases, such as in event handlers, because doing this may cause the application to work incorrectly.

**Note:** The assignment of the Current property raises the RowSelected event for the current data record.

You must use the Search&lt;&gt;\(\) generic method of a data view object to retrieve a record from the database and assign the retrieved record to the Current property, as the following code shows.

```
//The data view works with the PXCache object that holds SalesOrder data records
public SelectFrom<SalesOrder>.OrderBy<SalesOrder.orderNbr.Asc>.View Orders;
...
//To search for the record in the database, 
//you can use the generic Search<> method of the data view
graph.Orders.Current = graph.Orders.Search<SalesOrder.orderNbr>(order.OrderNbr);
```

**Parent topic:**[Defining Relationships Between DACs](../StudioDeveloperGuide/AD__mng_Defining_PK_and_FK.md)

