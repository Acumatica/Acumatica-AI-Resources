# To Create a Physical Inventory Type for an ABC Code {#_cbdc93f9-6eb7-4ad3-b249-e2b9e20f2c70 .task}

If you use ABC codes to rank stock items, you can create a physical inventory type to add items assigned with a particular ABC code to a count sheet. You use the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form to create a physical inventory type for each ABC code, as described in this topic.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Create a Physical Inventory Type for an ABC Code { .section}

1.  Open the [Physical Inventory Types](../Shared/../UserGuide/IN_20_89_00.md) \(IN208900\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  On the form toolbar, click **Add New Record**.
3.  In the **Type ID** box, type the unique identifier for the new physical inventory type.
4.  In the **Description** box, type a brief description.
5.  In the **Generation Method** box, select *By ABC Code*. The **ABC Code Selection** tab appears on the form.
6.  If needed, select the **Include Items with Zero Book Quantity in PI** check box to include items with a zero book quantity in the count.
7.  If needed, select the **Hide Book Qty. on PI Count** check box to hide the **Book Qty.** column on the [Physical Inventory Count](../Shared/../UserGuide/IN_30_50_10.md) \(IN305010\) form.
8.  On the **ABC Code Selection** tab, select the appropriate ABC code in the **ABC Code** box.
9.  On the **Assignment Order** tab, do the following:
    1.  In the numerated boxes, select entities for the assignment order to be used on the count sheets.
    2.  If needed, in the **Blank Lines to Append** box, specify the number of blank lines to be added to the count sheets.
10. On the form toolbar, click **Save**.

**Parent topic:**[Configuration of Physical Inventory Counts by ABC Codes](../UserGuide/IN__con_Configuration_of_PI_Counts_by_ABC_Codes.md)

