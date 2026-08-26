# Modification of Inquiry Results: The Number of Records Shown {#_262af0ec-bdd2-4f41-8edf-16aa5cc17f21 .concept}

On the **Interface Options** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, you can limit the number of records to be listed in the inquiry results.

## Maximum Number of Records to Be Displayed { .section}

In the **Select Top** box on the **Interface Options** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, you specify the maximum number of records to be displayed in the table showing the inquiry results. The remaining rows of the inquiry results will not be shown at all. For example, if the specified value is *20*, the system displays the first 20 results.

By default, *0* is specified as the **Select Top** setting, and the system shows all the records in the inquiry results.

If you specify a value in this box, the sort order you’ve specified on the **Sort Order** tab is applied before the specified number of records is selected for display. If you have not specified a sort order, the error icon is displayed on the **Sort Order** tab. In this case, at the bottom of the page on the **Sort Order** tab, the system displays the default sort order that is applied.

For details, see [Applying Sorting and Grouping](GI_Sorting_and_Grouping_Mapref.md).

**Tip:** When a user is viewing a generic inquiry form, if the number of displayed records is limited by the **Select Top** box, a warning icon is displayed indicating this.

## Number of Records per Page { .section}

In the **Records per Page** box on the **Interface Options** tab of the [Generic Inquiry](SM_20_80_00.md) \(SM208000\) form, you specify the number of records the system displays per page in the inquiry results. You specify this setting to make it convenient for users to view the inquiry results. If you specify a number of records that cannot fit on a page, a scroll bar will be shown.

By default, *0* is specified, and the system automatically adjusts the number of records to the window in which Acumatica ERP is running.

**Attention:** If you specify numbers that are too large \(based on the applicable configuration and inquiry\) in the **Select Top** or **Records per Page** box \(or in both boxes\), these settings can increase the time to process the inquiry and can cause performance degradation in the server.

**Parent topic:**[Modifying Inquiry Results](../UserGuide/GI_Modifying_Inquiry_Results_Mapref.md)

