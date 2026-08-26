# Data Validation: Validation of a Data Record {#_afd8e230-1f9c-48c5-8e1e-800d58eb349e .concept}

If the validation of a field value does not involve other fields of the same data record, you should use the FieldVerifying event handler. For details, see [Data Validation: Validation of Field Values](CodeCustomization_DataValidation_FieldValuesValidation.md).

If validation depends on other fields of the same data record, you should implement the validation in the RowUpdating event handler. The RowUpdating event happens during the update of a data record, after all field-related events have occurred. At the moment when the RowUpdating event is triggered, the modifications have not been applied to the data record stored in the cache yet; if needed, you can cancel the update process.

The event arguments give you access to the following data records:

-   `e.NewRow`: The modified version of the data record, which contains all changes made by field-related events
-   `e.Row`: The copy of the original data record stored in the cache

You can use the ObjectsEqual&lt;&gt;\(\) method of the cache to compare these two data records to find out if any of the fields specified in the type parameters of the method has changed. For example, the event handler in the following code uses the ObjectsEqual&lt;&gt;\(\) method \(in bold type\) compares the new and original data records \(also in bold type\) for the values of three fields.

```
protected virtual void _(Events.RowUpdating<ShipmentLine> e)
{
    ShipmentLine line = **e.NewRow**;
    ShipmentLine originalLine = **e.Row**;

    if (!sender.**ObjectsEqual&lt;**ShipmentLine.shipmentTime,
                            ShipmentLine.shipmentMinTime,
                            ShipmentLine.shipmentMaxTime**&gt;\(**line, originalLine**\)**)
    {
        ...
    }
    ...
}
```

In this example, the ObjectsEqual&lt;&gt;\(\) method returns false if any of the following values has changed: ShipmentTime, ShipmentMinTime, and ShipmentMaxTime.

To cancel the update process, you set the Cancel property of the event arguments to true. We recommend that you generate an error message for any field whose value does not pass validation. You do this by calling the RaiseExceptionHandling&lt;&gt;\(\) method of the cache, as shown in the following code example.

```
if (line.ShipmentTime != null && line.ShipmentMinTime != null &&
    line.ShipmentTime < line.ShipmentMinTime)
{
    sender.RaiseExceptionHandling<ShipmentLine.shipmentTime>(
        line, line.ShipmentTime,
        new PXSetPropertyException("The delivery time is too early."));
    e.Cancel = true;
}
```

If the RowUpdating event handler finishes with the e.Cancel property equal to true, the data record is not updated in the cache.

If the validation of a field depends on a field that is defined *before* the validated field in the data access class \(DAC\), you can use the FieldVerifying event handler. The field-related events are raised for fields in the order in which the fields are defined in the DAC. So in this case, the FieldVerifying event handler is called for the validated field after all field-related events have been raised for the field the validated field depends on.

In the example shown in the following code, the validation of the DeliveryDate field depends on the ShipmentDate field. But because DeliveryDate is defined after ShipmentDate in the Shipment DAC, it is correct to use the FieldVerifying event handler to validate DeliveryDate.

```
protected virtual void _(Events.FieldVerifying<Shipment, Shipment.deliveryDate> e)
{
    Shipment row = e.Row;
    if (e.NewValue == null) return;

    if (row.ShipmentDate != null && row.ShipmentDate > (DateTime)e.NewValue)
    {
        e.NewValue = row.ShipmentDate;
        throw new PXSetPropertyException<Shipment.shipmentDate>(
            "The shipment date cannot be later than the delivery date.");
    }
}
```

**Parent topic:**[Validating Data](../StudioDeveloperGuide/CodeCustomization_DataValidation_Mapref.md)

