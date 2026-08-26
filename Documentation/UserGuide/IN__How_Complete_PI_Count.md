# To Complete the Physical Inventory Count {#_6d88dab1-3793-4197-8132-cdd4c31afbca .task}

Once the physical inventory count has been completed by all involved employees and all the available data has been entered, you can complete the physical inventory and generate all the required adjustments by using the [Physical Inventory Review](IN_30_50_00.md) \(IN305000\) form, as described in this topic.

**Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

## To Complete the Physical Inventory Count { .section}

1.  Open the [Physical Inventory Review](../Shared/../UserGuide/IN_30_50_00.md) \(IN305000\) form.
2.  In the **Reference Nbr.** box, select the physical inventory count to be completed.
3.  In the **Warehouse** box, select the warehouse where the count has taken place.
4.  On the **Physical Inventory Details** tab, review the list of items that were counted and their variance quantities.
5.  Process the items with *Not Entered* in the **Status** column in either of the following ways:
    -   Filter the list of items by the *Not Entered* value in the **Status** column, and, on the More menu \(under **Processing**\), click **Set Not Entered to Zero**. The system inserts *0* into the **Physical Quantity** column for each of the listed items.
    -   Filter the list of items by the *Not Entered* value in the **Status** column, and on the More menu \(under **Processing**\), click **Set Not Entered to Skipped**. The system inserts *Skipped* into the **Status** column for each of the listed items.
6.  Make sure that all counted items have the *Entered* or *Skipped* status, and that items with the *Entered* status have quantities specified in the **Physical Quantity** column.
7.  On the form toolbar, click **Save**.
8.  On the More menu \(under **Processing**\), click **Update Actual Cost**. The system updates the cost of the inventory items using quantities resulting from the physical count.
9.  On the More menu \(under **Processing**\), click **Complete PI**.

    The system generates the necessary transactions that adjust the available quantities of the stock items involved in the count.


**Parent topic:**[Counting Physical Inventory](../UserGuide/IN__MNG_PI.md)

