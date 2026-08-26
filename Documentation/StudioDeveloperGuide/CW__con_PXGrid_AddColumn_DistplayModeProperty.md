# Use of the DisplayMode Property of PXGridColumn {#_e375e4ed-73e6-47bc-a8e2-7366bc6eaf5d .concept}

The Acumatica Customization Platform supports the following values for the DisplayMode property of a column in a grid.

|Value|Description|
|-----|-----------|
|*Value*|Default value. An indicator that the column cell contains the value of the field.|
|*Text*|If there is a description defined for the field, an indicator that the column cell contains the description of the field.|
|*Hint*|If there is a description defined for the field, an indicator that the column cell contains both the value and the description of the field.|

**Note:** The priority of the Type property is higher than the priority of the DisplayMode property. If the Type property is set, for example, to *CheckBox*, the DisplayMode property is ignored.

**Parent topic:**[Configuring Tables](../StudioDeveloperGuide/CW__mng_Configuring_Tables.md)

