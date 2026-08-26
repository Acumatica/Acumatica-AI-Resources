# To Change the Type of a Box {#_a72a595c-f3ee-41e8-80d5-ffe306974ff5 .concept}

For a data field, you can create a control of any type that is supported in Acumatica ERP. However to avoid issues with rendering controls and processing control values, you have to have an appropriate control for each data field. Therefore, if you have changed the type of a data field, you should recreate all the controls that exist on Acumatica ERP forms for this field.

For example, a text edit box for the *MyFieldName* PXDBString field can be defined in the ASPX code as follows.

```
<px:PXTextEdit ... DataField="MyFieldName" />
```

Suppose that you have added the PXStringList attribute for the field in the data access class to use the control for the field as a drop-down box. Then you need to redefine the control as follows.

```
<px:PXDropDown ... DataField="MyFieldName" />
```

Because this change must be saved in a customization project, you have to use the [Screen Editor](../UserGuide/AU_20_45_20.md) to delete the old definition of the box and to add the new one.

To change the type of a box in a container on a form and to include this modification in a customization project, perform the following actions:

1.  Select the box in the Screen Editor, as described in [To Select a Box in the Screen Editor](CG_GL_UI_Box_Opening.md).
2.  On the toolbar of the Control Tree, select **Remove** &gt; **Remove**.
3.  Click the **Add Data Fields** tab item \(see the screenshot below\).
4.  If you need to create a control for a data field that is not accessible through the data view specified for the container in the DataMember property, but is accessible through another data view of the same graph, and the **Data View** box gives you the availability to select a data view, select the needed data view in this box. \(See [Use of Multiple Data Views for Boxes in Containers](../StudioDeveloperGuide/CW__con_PXForm_AddBox_DataViews.md) in the Acumatica Framework Guide for details.\)
5.  On the tab item, click the **All**, **Visible**, or **Custom** filter for the fields provided by the data view selected in the **Data View** box to view the appropriate field list.
6.  Find the required data field in the **Field Name** column of the list and select the check box for the field in the unlabeled first column, as the following screenshot shows.

    ![](images/CG_GL_UI_PXForm_AddBox.png "Selecting a data field for which a box is to be created")

    For each data field in the list, the Screen Editor presets the most appropriate control type. However you can select another control type to be created for a field.

    **Note:** The control type must match the field type. Otherwise, the control cannot work properly with the field data. If you create a control that does not match the data field, you have to update the data field in the DAC \(see [To Customize a Field on the DAC Level](CG_GL_BL_DataField_TypeLevel.md) for details\) or in the graph. \(See [To Customize a Field on the Graph Level](CG_GL_BL_DataField_CacheLevel.md) for details.\)

7.  If you need to change the type of the control to be created, select the needed type in the **Control** column of the selected field.
8.  On the list toolbar, click **Create Controls**.

    The platform creates a box for the selected data field and adds to the Control Tree a node for the box.

9.  Click **Save** to save your changes to the customization project.

**Parent topic:**[Box \(Control for a Data Field\)](../CustomizationPlatform/CG_GL_UI_Box.md)

