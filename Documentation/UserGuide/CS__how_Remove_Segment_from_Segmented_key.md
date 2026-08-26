# To Remove a Segment from an Existing Segmented Key {#_7c691db4-e36f-4375-8cb8-c3247a9329f1 .task}

In Acumatica ERP, you have the ability to remove a segment from a segmented key after identifiers have been created, as described in this topic.

## To Remove a Segment from an Existing Segmented Key { .section}

1.  Open the form that is designed to manage the identifiers whose structure is defined by the segmented key \(such as [Subaccounts](GL_20_30_00.md) \(GL203000\)\) and in each identifier delete value of the segment which you want to remove from the segmented key.
2.  Open the [Segment Values](CS_20_30_00.md) \(CS203000\) form and delete all values of the segment you want to remove.
3.  Open the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form and do the following:
    1.  In the **Segmented Key ID** box of the Summary area, select the segmented key whose structure you want to change by its ID \(for example, *SUBACCOUNT*\).
    2.  In the table, select the row with the segment you want to remove.
    3.  On the table toolbar click **Delete Row**.
    4.  On the form toolbar, click **Save**.

**Parent topic:**[Managing Segmented Keys](../UserGuide/SM__con_Managing_Segmented_Keys.md)

