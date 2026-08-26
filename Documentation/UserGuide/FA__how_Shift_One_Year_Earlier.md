# Fixed Asset Troubleshooting: To Shift the First Year One Year Earlier {#_65d444b2-7e5c-410a-8236-2f007e4ad279 .task}

If a fixed asset was acquired before your company started using Acumatica ERP and you need the depreciation to be posted before the system start date, you can shift the first book calendar one year earlier.

In Acumatica ERP, you can shift the first year by using the [Book Calendar Setup](FA_20_60_00.md) \(FA206000\) form, and then generate periods for the book calendar on the [Generate Book Calendars](FA_50_10_00.md) \(FA501000\) form.

## To Shift the First Year {#section_ajh_ljv_vxb .section}

1.  Open the [Book Calendar Setup](FA_20_60_00.md) \(FA206000\) form.
2.  In the **Book** box, select the book whose book calendar you want to shift.
3.  On the form toolbar, click **Shift First Year**. This brings up a message that warns you about the consequences of such an action.

    **Attention:** Shifting the first year to an earlier date can affect statistics and data on reports.

4.  Click **Yes** to shift the first year and close the message box.
5.  On the form toolbar, click **Save**.
6.  Open the [Generate Book Calendars](FA_50_10_00.md) \(FA501000\) form.
7.  In the Summary area, specify the range of financial years in the **From Year** and **To Year** boxes.
8.  In the table, select the row for the book whose calendar you shifted one year earlier.
9.  On the form toolbar, click **Process**.

**Parent topic:**[Troubleshooting Fixed Assets](../UserGuide/FixedAssets_Troubleshooting_Mapref.md)

