# Configuration of the User Interface in Code {#_56b2353a-7fe3-4156-aa56-dcd774dba3e2 .concept}

To set up the UI presentation, you should use a RowSelected event handler or the graph constructor. The RowSelected event happens several times during every round trip: at the end of each insertion, update, or deletion of a data record. The graph constructor is called once in the beginning of every round trip \(before any data is selected by data views\).

To disable, hide, or change a caption of a data field on the form, you use the static methods of the PXUIFieldAttribute type, as shown in the following example.

```
PXUIFieldAttribute.SetEnabled<Shipment.deliveryDate>(
    sender, row, row.ShipmentType == ShipmentTypes.Single);
```

You specify the field as the type parameter. It is mandatory to specify the PXCache object \(`sender` in the example above\). You can provide a specific data record \(`row`\) or specify null in the second parameter to apply the method to all data records in the cache. If you omit the type parameter, the method will be applied to all fields that are displayed in the UI, as shown in the following example.

```
// Making all fields for all data records
// read-only in the cache object
PXUIFieldAttribute.SetReadOnly(sender, null, true);
```

You can specify default UI options for a field in the PXUIField attribute in the data access class \(DAC\) and change them if necessary in a RowSelected event handler through the static methods of the attribute.

**Note:** You should not read anything from the database or write to the database in a RowSelected event handler.

**Tip:** Always implement two states of a UI control \(such as enabled and disabled\) when you set up the UI. Thus, when you make a data field disabled by some condition, you have to enable the data field in the corresponding opposite condition.

For related data records \(in a one-to-many relationship\), you place the entire configuration of the UI presentation in the RowSelected event handler of the master data record. You can hide columns of the details grid only in the RowSelected handler for the master data record. In the RowSelected event handler of the detail record displayed in a grid, you can enable or disable data fields, but you cannot modify their visibility.

## Using the Graph Constructor { .section}

The common UI presentation logic, which does not depend on particular values of the data record, can be implemented in the constructor of the graph. In the constructor, you cannot check the values of the currently selected data record, because no data records have been loaded yet. To implement the UI presentation specific to a data record, you should use the RowSelected event handler of the data record.

## Working with Cache-Level and Record-Level Attributes { .section}

Acumatica Framework initializes attributes during the startup of the domain or the first initialization of a graph that defines a CacheAttached event handler. During cache initialization, the appropriate attributes are copied to the cache level. The system can also create attributes of a data record level by copying cache-level attributes.

To specify the properties of a cache-level attribute, you pass null as the second argument to the static methods of the attribute, as the following code example shows. The change to a property will affect all data records of the corresponding cache.

```
PXUIFieldAttribute.SetVisible<ShipmentLine.shipmentDate>(
    ShipmentLines.Cache, **null**, false);
```

To specify the properties of a record-level attribute, you pass a data record as the second argument to the static methods of the attribute \(see the following code example\). The change will affect only the data record that you pass to the method.

```
PXUIFieldAttribute.SetEnabled<Shipment.deliveryDate>(
    sender, **row**, row.ShipmentType == ShipmentTypes.Single);
```

When you use record-level attributes for the first time during a round trip, the system creates the record-level attributes by copying cache-level attributes. If some record-level attributes already exist and you pass null to an attribute's method, the system applies the change to both cache-level attributes and record-level attributes.

**Parent topic:**[Configuring the UI from the Backend](../StudioDeveloperGuide/BL__mng_Configuring_UI_from_Back_End.md)

