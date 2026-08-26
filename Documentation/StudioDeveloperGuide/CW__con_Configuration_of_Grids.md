# Configuration of Grids {#_09489570-a3d9-4fef-b6d8-de0a6b4fb5b8 .concept}

To configure a grid on a form, you do the following:

1.  Specify the DataMember property of the grid to bind the grid to a data view that provides data to work through the grid.
2.  Add columns to the grid.
3.  Specify the SkinID property of the grid, which defines a set of default grid toolbar buttons.
4.  Add input controls to the grid, if needed.
5.  Enable form view mode for the grid, if needed.
6.  Specify the specific properties of the grid, if needed.

You can specify the following properties of a grid \(PXGrid\) control:

-   DataMember: Specifies the data view that provides data for the grid. This property is required for data binding, along with the predefined DataSourceID.
-   Columns: Provides the collection of columns of the grid.
-   SkinID: Defines the style and behavior of the grid; this property includes a set of default grid toolbar buttons and the rendering of parameters of the grid.
-   Mode&gt;AllowFormEdit: Enables form view mode for the grid.
-   SyncPosition: Enables the synchronization of the selected row with the Current property of the cache object. The Current property is set to each row selected by the user in the grid.
-   StatusField: Specifies the field that is displayed at the bottom of the grid as the grid information status.
-   AutoSize&gt;Enabled: Enables the grid height to expand to the entire area of the parent container.
-   Width: Sets the width of the grid within the parent container \(a standard ASP.NET property of a control\). To expand a nested grid to the entire width of the parent container, set this property to `100%`.
-   AutoAdjustColumns: Makes the whole text of the column headers displayed if space permits.

## Adding Columns and Input Controls to a Grid {#section_jzp_qj1_gm .section}

Columns are generally the only required items for a grid. If columns are defined, Acumatica Framework creates input controls at runtime based on the field state of the appropriate DAC field to provide row editing. However, you also have to define input controls for the grid in either of the following cases:

-   You want to set specific properties for an input control or use a different input control. You may add only controls with specific properties; other controls will be generated with default properties at runtime.
-   You have to arrange the controls for form view mode of the grid.

    **Note:** The order of the controls in form view mode does not have to match the order of the columns in the grid.


## Configuring Grid Toolbar Buttons {#section_olj_rdx_lm .section}

To define the set of toolbar buttons that appear in a grid, select the needed value in the SkinID property of the grid. For details about the SkinID property, see [Use of the SkinID Property of Containers](CW__con_PXForm_Properties_SkinID.md).

The SkinID property, used primarily to define the set of toolbar buttons for a grid, also defines a complete set of UI parameters of the control, such as the column headers and the initial size of the control.

## Configuring Form View Mode for a Grid {#section_kxz_3v2_pm .section}

To configure form view mode for a grid, you have to complete the following steps:

1.  Add controls to the grid, set their properties, and arrange them by using layout rules in the same way as you do on an ordinary form.
2.  Enable callbacks for input controls to trigger in form view mode, and enable callbacks for input controls that correspond to columns with the enabled callback. To enable the callback for an input control, set the CommitChanges property to `True` for the control.
3.  Enable form view mode for the grid by setting the AllowFormEdit property of Mode to `True`.

**Parent topic:**[Configuring Tables](../StudioDeveloperGuide/CW__mng_Configuring_Tables.md)

