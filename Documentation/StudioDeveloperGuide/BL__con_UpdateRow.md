# Update of a Data Record on Update of a Field Value {#_2d07589d-4a3a-415a-8bc4-6acc59b0ecd2 .concept}

You should use a FieldUpdated event handler to modify a data record when its field is updated. The FieldUpdated event is raised when a data record is inserted or updated. When a data record is updated, the FieldUpdated event is raised for only the updated fields. The event is raised after other field-level events \(FieldUpdating and FieldVerifying\) and before the row-level events \(such as RowInserting and RowUpdating\).

You should primarily use the FieldUpdated event to modify only the data record itself, because the update \(or insertion\) of the data record can still be canceled in row-level events \(RowUpdating or RowInserting\). If you modify other data records in the FieldUpdated event and the update is canceled, your changes to the other data records will not be reverted.

To modify field values in a FieldUpdated event handler, follow the rules below:

-   To update a field that is defined *after* the current field in the data access class, use the properties of the `e.Row` data record as shown in the following code example.

    ```
    ShipmentLine line = e.Row as ShipmentLine;
    ...
    line.Description = product.ProductName;
    ```

    Direct assignment of a value sets it to the given instance of the data record; no field-level events are raised at this point.

-   To update a field that is defined *before* the current field in the data access class, use one of the following methods:

    -   SetValueExt&lt;&gt;\(\): You use this method of the cache to assign a specific value to a field. The method raises the same field-level events for the data field as the events raised when a data record is updated. For details about the update of a data record, see [Update of a Data Record](BL__con_Update.md).
    -   SetDefaultExt&lt;&gt;\(\): You use this method of the cache to assign the default value to a field. The method raises the same field-level events for the data field as the events raised when a data record is inserted. For details about the insertion of a data record, see [Insertion of a Data Record](BL__con_Insertion_of_Record.md).
    The code example below shows an invocation of the SetValueExt&lt;&gt; method.

    ```
    sender.SetValueExt<ShipmentLine.ProductID>(e.Row, GiftCardID);
    ```


**Parent topic:**[Working with Events](../StudioDeveloperGuide/BL__mng_Working_With_Events.md)

