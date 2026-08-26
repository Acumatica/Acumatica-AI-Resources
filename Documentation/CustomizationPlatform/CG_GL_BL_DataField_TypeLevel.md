# To Customize a Field on the DAC Level {#_1911428f-d4ca-4207-9396-a744db21cdfb .concept}

If an attribute is added to a field declaration within a data access class \(DAC\), the common business logic of this attribute is applied to each data record of this type for each graph that uses this class. Therefore, if multiple Acumatica ERP forms contain controls for the same field, a change to an attribute of the field in the DAC modifies the behavior of these controls for the field on all forms.

You can use the [Data Class](../UserGuide/AU_DataClassEditor.md) to customize the attributes of an existing data field in the DAC and to store the changes in the customization project as a *DAC* item. Because the goal of the customization of a field on the DAC level is to change the behavior or appearance of controls for the field on all forms, you start the customization of a data field from any form that contains a control for the field.

To customize a data field from a form that contains a control for the field, perform the following actions:

1.  Open the form in the browser and make the control visible on the form.
2.  On the form title bar, click **Customization &gt; Inspect Element** to launch the [Element Inspector](../UserGuide/AU_ElementInspector.md).

    **Note:** If you need to activate the [Element Inspector](../UserGuide/AU_ElementInspector.md) for a pop-up panel, a dialog box, or another UI element that opens in modal mode and makes the [Customization Menu](../UserGuide/AU_CustomizationMenu.md) unavailable for selection, you can press Ctrl + Alt.

3.  On the form, click the control to open the [Element Properties Dialog Box](../UserGuide/AU_ElementInspector.md#_8ce780b0-243f-480c-8b4c-ed6431116e3f) for the control.
4.  In the dialog box, click **Actions &gt; Customize Data Fields**.
5.  If there is no currently selected customization project and the inspector opens the [Table 1](../UserGuide/AU_CustomizationMenu.md#_6adfabb5-9264-4273-938a-db4a41510b1c), select an existing customization project or create a new one.

    If the customization project does not contain a *DAC* item for the data access class, the [Customization Project Editor](../UserGuide/SM_20_45_10.md) adds the item to the project to keep the changes in the database. The DAC is opened in the [Data Class](../UserGuide/AU_DataClassEditor.md), and the needed field is added to list of customized fields of the DAC.

6.  In the list of customized fields of the DAC, click the name of the field to be customized.

Now you can start the customization of the field on the DAC level.

The Data Class editor shows the custom and original attributes of the field in the work area, and you can use the following objects:

-   The **Customize Attributes** text area: Use this area to define the custom attributes of the field.
-   A drop-down list that is visible for only existing customized fields of the data access class: In this list, select one of the following ways of applying the custom attributes to the field:
    -   *Keep Original*: The original attributes remain on the field until you select another option in this box.
    -   *Replace Original*: The original attributes of the field are replaced with the custom attributes specified in the **Customize Attributes** text area.
    -   *Append to Original*: The custom attributes are added to the end of the list of the original attributes of the data field. If you use this option, make sure you do not duplicate the attributes of the field.
-   The **Edit Selector Columns** command \(on the More menu, under **Actions**\), which is available for only the fields that are selectors: Use this action to open the [Customize Selector Columns Dialog Box](../UserGuide/AU_DataClassEditor.md#_bf428176-8d39-4317-ac59-b297decc2365), in which you can modify the columns in the selector table.
-   The **Edit Attributes** command \(on the More menu, under **Actions**\), which is unavailable for a custom field: Invoke this action to change the values of parameters for the existing original attributes of the selected field.

When you click **Save** on the editor toolbar, the editor updates the *DAC* item in the database.

## To Start the Customization of a Field from the Screen Editor { .section}

If you customize a form by using the [Screen Editor](../UserGuide/AU_20_45_20.md), you may need to change the attributes of a data field to change the appearance or behavior of an appropriate control on the form. If the control node is selected in the Control Tree, you can open the [Data Class](../UserGuide/AU_DataClassEditor.md) for the field immediately from the Screen Editor. To do this, perform the following actions:

1.  Click the **Attributes** tab item.
2.  On the tab item, click **Customize Attributes**.

If the *DAC* item for the data access class that contains the field declaration is absent in the customization project, the Acumatica Customization Platform creates an appropriate item and saves it in the database. Then the platform opens the item in the Data Class Editor, and you can customize the attributes of the field.

**Parent topic:**[Data Field](../CustomizationPlatform/CG_GL_BL_DataField.md)

