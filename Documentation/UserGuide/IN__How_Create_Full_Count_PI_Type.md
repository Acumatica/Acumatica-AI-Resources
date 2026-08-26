# To Create a PI Type for a Full Count {#_856e39e9-a9bd-44aa-94f6-e1583656ff21 .task}

Every organization that sells goods occasionally undertakes full inventory counts to maintain correct on-hand quantities. To configure the physical counting process in Acumatica ERP, you must create a PI \(physical inventory\) type by using the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form, as described in this topic.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Create a PI Type for a Full Count { .section}

1.  Open the [Physical Inventory Types](../Shared/../UserGuide/IN_20_89_00.md) \(IN208900\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Type ID** box of the Summary area, type the unique identifier for the new physical inventory type.
4.  In the **Description** box, type a brief description indicating that this is the full count.
5.  In the **Generation Method** box, select *Full Physical Inventory*.
6.  If needed, select the **Hide Book Qty. on PI Count** check box to hide the **Book Qty.** column on the [Physical Inventory Count](../Shared/../UserGuide/IN_30_50_10.md) \(IN305010\) form.
7.  If needed, on the **Warehouse/Location Selection** tab, specify the warehouse where the full count should be performed.
8.  On the **Assignment Order** tab, do the following:
    1.  In the numerated boxes, select entities for the assignment order to be used on the count sheets.
    2.  If needed, in the **Blank Lines to Append** box, specify the number of blank lines to add to the count sheets.
9.  On the form toolbar, click **Save**.

**Parent topic:**[Configuring Basic Inventory Processes](../UserGuide/IN__mng_Configuring_Basic_Inventory_Processes.md)

