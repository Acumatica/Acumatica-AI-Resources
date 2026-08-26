# To Customize a Field on the Graph Level {#_5414444d-dd54-41cb-a3ec-eaed76668cdf .concept}

If an attribute is added to a field declaration within a graph, the common business logic of this attribute is applied to each data record of this type on the graph level for only this graph. Therefore, if multiple Acumatica ERP forms contain controls for the same field, a change of an attribute of the field within the graph modifies the behavior of a single control for the field on only the form for which the graph provides business logic.

Because the goal of customizing a field on the graph level is to change the behavior or appearance of a specific control for the field on a specific form, you start the customization of a data field from the form.

To customize a field on the graph level, perform the following actions:

1.  Open the form in the browser and make the control visible on the form.
2.  On the form title bar, click **Customization** &gt; **Inspect Element** to launch the [Element Inspector](../UserGuide/AU_ElementInspector.md).

    **Note:** If you need to activate the [Element Inspector](../UserGuide/AU_ElementInspector.md) for a pop-up panel, a dialog box, or another UI element that opens in modal mode and makes the [Customization Menu](../UserGuide/AU_CustomizationMenu.md) unavailable for selection, you can click that element while pressing Ctrl + Alt.

3.  On the form, click the control to open the [Element Properties Dialog Box](../UserGuide/AU_ElementInspector.md#_8ce780b0-243f-480c-8b4c-ed6431116e3f) dialog box for the control.
4.  In the dialog box, click **Customize**.
5.  If there is no currently selected customization project and the inspector opens the [Table 1](../UserGuide/AU_CustomizationMenu.md#_6adfabb5-9264-4273-938a-db4a41510b1c), select an existing customization project or create a new one.

    If the customization project does not contain a changeset for the form, the [Customization Project Editor](../UserGuide/SM_20_45_10.md) adds to the project a *Page* item for the form, to keep the changeset to the ASPX code of the form in the database. The container of the control is opened in the [Screen Editor](../UserGuide/AU_20_45_20.md), and the control is selected in the Control Tree of the editor.

6.  Click the **Attributes** tab item, which is used to review and customize the attributes of the DAC field that is bound to the control currently selected in the Control Tree.
7.  Click **Override on Screen Level** to create in the graph extension the code template, which includes the original attributes of the field and the DACName\_FieldPropertyName\_CacheAttached\(\) event handler, which replaces the attributes within the graph.

    If the customization project does not contain an extension for the graph, the [Customization Project Editor](../UserGuide/SM_20_45_10.md) adds to the project a *Code* item for the graph extension, to keep the code in the database. Then the Acumatica Customization Platform opens the *Code* item in the Code Editor, and you can start the customization of the field on the graph level.


In the graph extension, you can define the field attributes as you need to. However you can use one of the following approaches to customize the attributes of a field on the graph level:

-   Define a new set of custom attributes to replace the original attributes of the field \(as in the created template\).
-   To customize the original attributes of a field instead of replacing it with custom ones, use PXMergeAttributes, PXRemoveBaseAttribute, PXCustomizeSelectorColumns, and attributes belonging to the [PXCustomize](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=65178fd8-b72b-6d7b-3282-22e3f004d66a) static class.

We recommend that you use the second approach, which is described in [Customization of Field Attributes in DAC Extensions](CG_Platform_Framework_CS_DACExt_FieldAttributes.md).

When you click **Save** on the Code editor toolbar, the editor updates the *Code* item in the database.

**Tip:** You can develop the customization code in the Code Editor. However we recommend that you develop the code in Microsoft Visual Studio \(as described in [Integrating the Project Editor with Microsoft Visual Studio](CG_Platform_Studio.md)\) and use the editor for either minor code corrections or the insertion of completed portions of code.

**Parent topic:**[Data Field](../CustomizationPlatform/CG_GL_BL_DataField.md)

