# To Add a Subaccount {#_53484475-34f2-499a-b3fc-3126b37b726f .task}

You use the [Subaccounts](../UserGuide/GL_20_30_00.md) \(GL203000\) form to add a subaccount.

## Before You Proceed { .section}

1.  On the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form, be sure the structure of subaccounts has been configured.
2.  Review the meanings of the subaccount segment values in your organization. For segments requiring validation, you define valid values by using the [Segment Values](../UserGuide/CS_20_30_00.md) \(CS203000\) form.

## To Add a Subaccount { .section}

1.  Open the [Subaccounts](../Shared/../UserGuide/GL_20_30_00.md) \(GL203000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the table toolbar, click **Add Row**.

    The input mask for subaccount identifiers is shown in the **Subaccount** column for the new row.

3.  Create the subaccount by using one of the following methods, depending on whether the **Validate** check box is selected for the segment on the [Segmented Keys](../Shared/../UserGuide/CS_20_20_00.md) \(CS202000\) form:
    -   If the **Validate** check box is selected for the segment, select the segment value from the list of predefined values.
    -   If the check box is not selected for the segment, type a value. The system will validate this value for only the number of characters and the type of string \(specified in the **Edit Mask** box on the [Segmented Keys](../Shared/../UserGuide/CS_20_20_00.md) form\).
4.  Make sure the **Active** check box is selected in the row of the subaccount.
5.  If needed, in the **Description** column, briefly describe the subaccount.
6.  On the form toolbar, click **Save**.

**Parent topic:**[Subaccounts](../ImplementationGuide/config_Subaccounts_Mapref.md)

