# To Add a Column for a Data Field {#_840d3850-9bff-4718-ba7e-721b761783ad .concept}

In a grid, you can create a column for a data field if the grid container is bound to a data view declared within the graph that provides business logic for the ASPX page. To bind a grid container to a data view, you must specify the properties as follows for the appropriate PXGrid object:

-   The DataSourceID property value must be equal to the value of the ID property of the PXDataSource control.
-   The DataMember property must contain the name of the data view that is declared in the graph and provides data for the grid.

To add a column to a grid that is bound to a data view, perform the following actions:

1.  Open the grid container in the Screen Editor, as described in [To Open a Container in the Screen Editor](CG_GL_UI_PXForm_ToOpen.md).
2.  In the Control Tree of the editor, ensure that the grid node is selected. Click the arrow left of the node to expand the node if needed.
3.  In the editor, click the **Add Data Fields** tab item \(see the screenshot below\).
4.  On the tab item, select the **All**, **Visible** \(as shown below\), or **Custom** filter for the data fields provided by the data view, to open the appropriate field list.

    **Tip:** You can create a custom field immediately on the **Add Data Fields** tab item by using the [Create New Field Dialog Box](../UserGuide/AU_DataClassEditor.md#_cdaebe06-9e8d-43fc-8dda-6850986501b6).

5.  Find the required data field in the list, and if the field is not used \(that is, if the check box in the **Used** column is cleared for the field\), select the check box in the unlabeled first column for the field.

    **Tip:**

    -   You can select multiple data fields to create multiple columns simultaneously.
    -   In the **Field Name** column of the list, a data field of a joined data access class \(DAC\) has a name that consists of the DAC name, two underscore characters, and the field name, such as *Product\_\_Active*. If you create a grid column for this field, the new PXGridColumn element refers to the field as shown in the following ASPX code.

        ``` {#codeblock_gjf_f1c_xgc}
        <px:PXGridColumn DataField="Product__Active" ... />
        ```

6.  On the list toolbar, click **Create Controls**.

    The platform creates a column for the selected data field, appends this column to the end of the grid column list, and adds a node for the column to the appropriate position in the Control Tree.

    **Tip:** If you need to locate the new column in a position after some existing column, you can select this existing column before you click **Create Controls**. Then the editor inserts new grid columns after the column that is selected in the Control Tree.

    At any time, you can change the position of a column in a grid. See [To Reorder Child UI Elements](CG_GL_UI_PXForm_ReorderChild.md) for details.

7.  If needed, specify the following properties of the new column:

    -   Type—to define a specific type of data in a column \(for details, see [Use of the Type Property of PXGridColumn](../StudioDeveloperGuide/CW__con_PXGrid_AddColumn_TypeProperty.md) in the Acumatica Framework Guide\)
    -   CommitChanges—to enable callbacks on the column field \(for details, see [Use of the CommitChanges Property of Boxes](../StudioDeveloperGuide/CW__con_CommitChanges.md) in the Acumatica Framework Guide\)
    -   DisplayMode—to define the mode of displaying a value in the column \(for details, see [Use of the DisplayMode Property of PXGridColumn](../StudioDeveloperGuide/CW__con_PXGrid_AddColumn_DistplayModeProperty.md) in the Acumatica Framework Guide\)
    **Tip:** If you need to provide hyperlinks to redirect the user from a column cell to another Acumatica ERP form, follow the recommendations described in [To Provide Hyperlinks for a Grid Column](CG_GL_Forms_Hyperlinks.md).

8.  Click **Save** to save your changes to the customization project.

**Parent topic:**[Grid Container \(PXGrid\)](../CustomizationPlatform/CG_GL_UI_PXGrid.md)

