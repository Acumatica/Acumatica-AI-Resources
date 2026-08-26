# Use of Multiple Data Views for Boxes in Containers {#_837c9078-dcd9-48f4-bb8b-d3a1fec7fb82 .concept}

The Acumatica Customization Platform supports the use of multiple data views for controls in the same container of an ASPX page.

For example, you can create a container and set the DataMember property to the name of the data view that provides most of the fields for boxes in the container. If you also want to create a control for a data field that cannot be accessible through that data view but can be accessible through another data view of the same graph specified in the TypeName property of the PXDataSource control, you can specify the required data view immediately in the DataField property, as follows.

```
<px:PXField ... DataField="DataViewName.FieldName" />
```

The following code snippet shows how to use the `MyDataView`, `AnotherDataView`, and `OnceMoreDataView` data views declared in the same graph or in extensions for the graph to define boxes for data fields in a PXFormView container on an Acumatica ERP form.

```
<px:PXFormView ... DataMember="MyDataView" ...>
  ...
    <px:PXNumberEdit ... DataField="MyField_01" />
    <px:PXSegmentMask ... DataField="MyField_02" />
    <px:PXDateTimeEdit ... DataField="AnotherDataView.FieldName" />
    <px:PXTextEdit ... DataField="MyField_05" />
    <px:PXSelector ... DataField="OnceMoreDataView.OtherFieldName" />
  ...
</px:PXFormView>

```

**Parent topic:**[Configuring Containers](../StudioDeveloperGuide/CW__mng_Configuring_Containers.md)

