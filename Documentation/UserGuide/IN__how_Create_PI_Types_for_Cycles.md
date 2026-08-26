# To Create a Physical Inventory Type for Counts by Cycles {#_e1aa5731-e945-48c0-a046-6091dd6fa0ee .task}

When you configure physical inventory counting by cycles, you must create a physical inventory type for each cycle by using the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Create a Physical Inventory Type for Counts by Cycles { .section}

1.  Open the [Physical Inventory Types](../Shared/../UserGuide/IN_20_89_00.md) \(IN208900\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Type ID** box of the Summary area, type the unique identifier for the new physical inventory type.
4.  In the **Description** box, type a brief description.
5.  In the **Generation Method** box, select *By Cycle*. The **PI Cycle Selection** tab appears on the form.
6.  If needed, select the **Include Items with Zero Book Quantity in PI** check box to include items with a zero book quantity in the count.
7.  If needed, select the **Hide Book Qty. on PI Count** check box to hide the **Book Qty.** column on the [Physical Inventory Count](../Shared/../UserGuide/IN_30_50_10.md) \(IN305010\) form.
8.  In the **Cycle ID** box of the **PI Cycle Selection** tab, select an appropriate PI cycle.
9.  On the **Assignment Order** tab, specify the following:
    1.  In the numerated boxes, select the entities for the assignment order to be used on the count sheets.
    2.  If needed, in the **Blank Lines to Append** box, specify the number of blank lines to be added to the count sheets.
10. On the form toolbar, click **Save**.

**Parent topic:**[Cycle Counting Configuration](../UserGuide/IN__con_Cycle_Counting_Configuration.md)

