# To Provide Hyperlinks for a Grid Column {#_b58cf22a-054d-4cec-971a-8a7c3d24e338 .concept}

To provide hyperlinks for an existing column in a grid, perform the following actions:

1.  Add the PXSelector attribute for the field used to create the column.
2.  For the field, create a selector control in the RowTemplate element of the PXGridLevel container of the ASPX page, as described in [To Add a Control to the Form View of a Grid](CG_GL_UI_PXGrid_AddBox2RowTemplate.md).
3.  Set the AllowEdit property of the selector control to *True*.

**Note:** A selector control contains the value of the key field of a data record from a particular table. Therefore, the control can be used to redirect a user to the form designed to edit the data record.

After you have completed these actions:

-   The column fields contain hyperlinks to redirect the user to the data entry form for the records defined by the fields.
-   If the form view for the grid is available, the following interface elements appear on the form view:
    -   The text box created for the field
    -   The **Edit** button, which provides the required redirection to the data entry form for the record defined by the value in the text box

**Parent topic:**[Grid Container \(PXGrid\)](../CustomizationPlatform/CG_GL_UI_PXGrid.md)

