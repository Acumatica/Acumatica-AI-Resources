# Label \(PXLabel\) {#_4607a078-ced8-4c64-a5ce-4b514a4f4220 .concept}

In a container with controls for a single data record, you can use a PXLabel element to display text. For example, you should use a label to render on a form static text that is stored in the ASPX code.

A PXLabel element can be immediately added to the following types of containers:

-   PXFormView
-   RowTeplate
-   PXTabItem
-   PXSmartPanel

The use of a label can be required when a field contains a quantity, but you need to add a unit type for the value. For example, if you need to display a field as **Duration**\[value\]**Days**, where *Duration* is the value of the DisplayName parameter of the PXUIField attribute of the field, you have to add a PXLabel element that contains the *Days* string constant. To arrange the label in the same column as the field, you need to use the Merge layout rule, as described in [To Set a Layout Rule Property](CG_GL_UI_LayoutRules_Properties.md) and [Use of the Merge Property of PXLayoutRule](../StudioDeveloperGuide/CW__con_LayoutRules_Properties_Merge.md).

You can add the PXLabel element to a container, as described in [To Add Another Supported Control](CG_GL_UI_PXForm_AddStControl.md).

To delete a label from an ASPX page, follow the instructions described in [To Delete a Child UI Element](CG_GL_UI_PXForm_DeleteControl.md).

**Parent topic:**[Customizing Elements of the User Interface](../CustomizationPlatform/CG_GL_UI.md)

