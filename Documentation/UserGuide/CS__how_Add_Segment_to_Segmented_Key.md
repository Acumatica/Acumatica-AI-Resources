# To Add a Segment to an Existing Segmented Key {#_6036853d-c040-4d69-979a-f1745b8dba33 .task}

In Acumatica ERP, you have the ability to add a segment to a segmented key after identifiers have been created, as described in this topic.

## To Add a Segment to an Existing Segmented Key { .section}

1.  Open the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form.
2.  In the **Segmented Key ID** box of the Summary area, select the segmented key whose structure you want to change by its ID \(for example, *SUBACCOUNT*\).
3.  If you want to add an auto numbered segment, select the numbering sequence in the **Numbering ID** box.
4.  On the table toolbar, click **Add Row**.
5.  In the new row, specify the settings for the new segment.

    CAUTION:

    Make sure the total length of all segments does not exceed the maximum length.

6.  On the form toolbar, click **Save**.
7.  If you want to add values for the new segment, do the following:
    1.  Click **View Segment** on the table toolbar.

        This open the [Segment Values](CS_20_30_00.md) \(CS203000\) form with the new segment selected.

    2.  For each new value, click **Add Row** on the table toolbar and specify the segment value.
    3.  Click **Save** on the form toolbar to save your changes.
8.  Open the form that is designed to manage the identifiers whose structure is defined by the segmented key \(such as [Subaccounts](GL_20_30_00.md) \(GL203000\)\) and do the following:
    1.  For each identifier, specify the valid values in the new segment.
    2.  Click **Save** on the form toolbar.

**Parent topic:**[Managing Segmented Keys](../UserGuide/SM__con_Managing_Segmented_Keys.md)

