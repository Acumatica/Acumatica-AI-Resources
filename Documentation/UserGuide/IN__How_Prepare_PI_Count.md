# To Prepare a Physical Inventory Count {#_346d6697-4e81-4ef9-88de-730c3b7c3f4f .task}

To prepare for a physical inventory \(PI\) count, you need to print count sheets and make the system freeze the items involved in the count—that is, the system should not release any transactions that involve these items until the count is completed.

You generate a count sheet by using the [Prepare Physical Count](IN_50_40_00.md) \(IN504000\) form, as described in this topic.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## Before You Proceed { .section}

1.  Open the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form by searching for or navigating to it.
2.  Make sure that the physical inventory type you are going to use has been created on this form.
3.  On the **Assignment Order** tab, review the assignment order to be used on the count sheets, and make changes if needed for the current count.

## To Prepare a Physical Inventory Count { .section}

1.  Open the [Prepare Physical Count](../Shared/../UserGuide/IN_50_40_00.md) \(IN504000\) form.
2.  In the **Type ID** box of the **Preview** tab, select the appropriate physical inventory type for counting.
3.  If the **Warehouse** box is not filled in, select the warehouse in which the count should be performed. You can select a particular warehouse only if the physical inventory type is not intended for a particular warehouse.
4.  On the form toolbar, click **Generate PI**.

    The system generates the physical inventory document and opens it on the [Physical Inventory Review](../Shared/../UserGuide/IN_30_50_00.md) \(IN305000\) form. Review the list of items to be counted, and edit the list, if needed.

5.  On the form toolbar, click **Save**.

**Parent topic:**[Preparation for Physical Count](../UserGuide/IN__con_Preparation_for_Physical_Count.md)

