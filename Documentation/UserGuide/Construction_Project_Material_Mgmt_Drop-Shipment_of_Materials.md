# Project Material Management: Drop-Shipment of Materials {#_51068cac-5241-47bb-a4fc-af58dd76293d .concept}

You may need to purchase items and have the vendor deliver them directly to the project site.

In this case, you create a project drop-ship order by doing the following on the [Project Materials](PM_30_65_00.md) \(PM306500\) form:

1.  Selecting the *Project Drop-Ship* provisioning source for the needed material lines
2.  Clicking **Create Purchase Order** on the table toolbar

The system creates purchase orders of the *Project Drop-Ship* type on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. Each project drop-ship order includes all material lines with the same vendor.

When a project drop-ship order for a material line is created, the system updates these columns in the line on the [Project Materials](PM_30_65_00.md) form:

-   **Qty. on Orders**: The quantity in the corresponding purchase order line
-   **Qty. Awaiting Delivery**: The quantity in the corresponding purchase order line to be received in the warehouse
-   **Status**: *Awaiting Delivery*
-   **Provisioning Doc. Ref. Nbr.**: The *Project Drop-Ship* type and reference number

For details about processing project drop shipments with a receipt, see [Purchases to the Project Site with a Receipt: General Information](Projects_Purchase_with_Receipt_GeneralInfo.md).

**Parent topic:**[Managing Project Materials](../UserGuide/Construction_Project_Materials_Mgmt_Mapref.md)

