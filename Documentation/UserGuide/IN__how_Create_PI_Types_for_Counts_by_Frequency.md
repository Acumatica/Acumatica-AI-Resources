# To Create a Physical Inventory Type for Cycle Counts by Frequency {#_57f27dc0-51be-43fb-9ccd-fc60bd8bbb54 .task}

For physical inventory counts to be performed for multiple cycles at once, you can create a PI type by using the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form, as described in this topic.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Create a PI Type for Cycle Counts by Frequency { .section}

1.  Open the [Physical Inventory Types](../Shared/../UserGuide/IN_20_89_00.md) \(IN208900\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Type ID** box, type the unique identifier for the new physical inventory type.
4.  In the **Description** box, type a brief description.
5.  In the **Generation Method** box, select *By Cycle*. The **PI Cycle Selection** tab appears on the form.
6.  If needed, select the **Include Items with Zero Book Quantity in PI** check box to include items with a zero book quantity in the count.
7.  If needed, select the **Hide Book Qty. on PI Count** check box to hide the **Book Qty.** column on the [Physical Inventory Count](../Shared/../UserGuide/IN_30_50_10.md) \(IN305010\) form.
8.  On the **PI Cycle Selection** tab, select the **By Frequency** check box.
9.  On the **Assignment Order** tab, do the following:
    1.  In the numerated boxes, select entities for the assignment order to be used on the count sheets.
    2.  If needed, in the **Blank Lines to Append** box, specify the number of blank lines to be added to the count sheets.
10. On the form toolbar, click **Save**.

**Parent topic:**[Cycle Counting Configuration](../UserGuide/IN__con_Cycle_Counting_Configuration.md)

