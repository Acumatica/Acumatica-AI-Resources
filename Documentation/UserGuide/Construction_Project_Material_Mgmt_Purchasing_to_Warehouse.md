# Project Material Management: Purchase of Materials to a Warehouse {#_32086562-e63e-41a1-bb98-3c8738cb21e4 .concept}

If the required item quantity isn't fully available in a company warehouse, you need to purchase the item. In this case, *Pending Procurement* is shown in the **Status** column for the material line on the [Project Materials](PM_30_65_00.md) \(PM306500\) form.

You initiate the purchasing of materials to the company warehouse by doing the following:

1.  Selecting the *Purchase to Order* provisioning source for the needed material lines
2.  Clicking **Create Purchase Order** on the table toolbar

The system opens the [Create Purchase Orders](PO_50_50_00.md) \(PO505000\) form so that you can create purchase orders of the *Normal* type. One purchase order will include all material lines with the same vendor.

When a purchase order for a material line is created, the system updates these columns in the line on the [Project Materials](PM_30_65_00.md) form as follows:

-   **Qty. on Orders**: The quantity in the corresponding purchase order line
-   **Qty. Awaiting Delivery**: The quantity in the corresponding purchase order line to be received in the warehouse
-   **Status**: *Awaiting Delivery*
-   **Provisioning Doc. Ref. Nbr.**: The purchase order type and reference number

**Parent topic:**[Managing Project Materials](../UserGuide/Construction_Project_Materials_Mgmt_Mapref.md)

