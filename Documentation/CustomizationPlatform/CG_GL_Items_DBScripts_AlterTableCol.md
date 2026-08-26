# To Increase the Size of a Column in an Existing Table {#_738485ba-ccb9-42a3-9daa-c1df69ea246f .task}

You use the Database Scripts page of the Customization Project Editor to increase the size of a text column of an existing table of Acumatica ERP.

**Note:** If you publish the customization project, the changes remain in the Acumatica ERP database even if you unpublish the project.

## To Increase the Size of a Column { .section}

To increase the size of a column, do the following:

1.  Open the customization project in the Customization Project Editor. \(See [To Open a Project](../Shared/../CustomizationPlatform/CG_GL_Project_Opening.md) for details.\)
2.  In the navigation pane, click **Database Scripts** to open the Database Scripts page.
3.  On the More menu \(under **Actions**\), click **Increase Column Length**.
4.  In the **Column Length Increase** dialog box, which opens, specify the following settings:
    1.  **Table**: The table in which the column should be altered.
    2.  **Field Name**: The name of the column that should be altered.

        **Note:** Only text fields are available in the list because only their length can be changed.

    3.  **Data Type**: Read-only. The current type and size of the specified column.
    4.  **New Length**: The new length of the text field.
5.  Click **OK** to save your changes and close the dialog box.

The Acumatica Customization Platform creates a script to alter the column in the application database. You can see the change entry on the Database Scripts page with the **Custom Columns** type.

**Parent topic:**[Database Scripts](../CustomizationPlatform/CG_GL_Items_DBScripts.md)

