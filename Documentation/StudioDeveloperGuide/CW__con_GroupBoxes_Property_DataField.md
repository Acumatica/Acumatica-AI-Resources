# Use of the DataField Property of PXGroupBox {#_b3d384a1-ada5-4ff1-bf21-ec19eb903f90 .concept}

You use a group box to display a data field with a list attribute as a set of radio buttons, where one radio button is used to display and select each single constant value of the field. To bind a group box to a data field, you have to specify the name of the data field in the DataField property of the PXGroupBox element in the ASPX code, as follows.

```
<px:PXGroupBox ... DataField="<Field Name>" ...>
```

**Attention:** The group box must contain a radio button for each value defined in the list of the field.

In the DataField property of the PXGroupBox element, you can specify the name of a data field that is accessible through another data view of the same graph. See [Use of Multiple Data Views for Boxes in Containers](CW__con_PXForm_AddBox_DataViews.md) for details.

**Parent topic:**[Configuring Boxes](../StudioDeveloperGuide/CW__mng_Configuring_Boxes.md)

