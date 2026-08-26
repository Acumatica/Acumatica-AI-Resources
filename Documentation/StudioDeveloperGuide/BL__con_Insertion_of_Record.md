# Insertion of a Data Record {#_04839388-1c8f-4d49-888e-d3167ce3578d .concept}

When a user creates a new data record in the UI, the system inserts it into the PXCache. To insert a data record into the PXCache in code, you invoke the Insert\(\) method of the applicable data view, as shown in the following code example.

```
ShipmentLine line = new ShipmentLine();
line.ProductID = card.ProductID;
...

ShipmentLines.Insert(line);
```

Keep in mind that calling the Insert\(\) method of the data view is just a shortcut for the Insert\(\) method of the Cache property of the data view.

Also, in the example shown above, this method does not make the shipment line that you insert related to the current shipment; it only inserts the shipment line into the PXCache of shipment lines. The master-detail relationship between the new shipment line and the current shipment is created because of the PXDBDefault attribute of the ShipmentNbr field in the ShipmentLine DAC.

The FieldDefaulting event, which is raised for each field during the insertion of a new data record, sets the default value for the data field.

## The RowInserting and RowInserted Events { .section}

The RowInserting and RowInserted events occur during the insertion of a data record in the cache, after the field-related events have occurred. The RowInserting event happens right before the new data record is actually inserted into the PXCache object, but after all field events happen for this data record. The RowInserted event happens after the actual insertion. If, in a RowInserting event handler, you change the data fields of the data record that are inserted, no field events will be raised for these data fields.

You use the RowInserted event to do something after a data record is inserted into the cache. For example, you can use a RowInserted event handler of the master data record to add a default detail data record.

For details on the order in which events are executed during the insertion of a data record into PXCache, see [Sequence of Events: Insertion of a Data Record](BL__con_Events_Insert.md).

**Parent topic:**[Working with Events](../StudioDeveloperGuide/BL__mng_Working_With_Events.md)

