# Project Inventory Tracking: Preplanning Inventory Transfers

In some projects, you may know in advance which stock items will be needed. If these items are stored in another warehouse, you can plan their transfer to the warehouse from which they will be issued for the project at a later date.

You can plan the transfer by creating a sales order of the *TR* order type on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form if the *Track by Project Quantity* or *Track by Project Quantity and Cost* mode is selected in the **Inventory Tracking** box for the project on the [Projects](PM_30_10_00.md) \(PM301000\) form.

In the transfer sales order, you specify the project and project task for which the items are needed and the destination warehouse. For each line, you select *Free Stock* or *Project Stock* in the **Inventory Source** box. You can create the transfer sales order in advance without creating an open inventory document for the planned movement.

When the items need to be transferred, you confirm the shipment for the transfer sales order and update inventory by clicking **Update IN** on the [Shipments](SO_30_20_00.md) \(SO302000\) form. The system creates and releases an inventory transfer. You then create a transfer receipt in the destination warehouse on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, add the inventory transfer to the receipt, and release the receipt to complete the movement of the items.

Depending on the inventory source selected in the transfer sales order, the system processes the items as follows:

-   *Free Stock*: You use this inventory source if the items are not reserved for the project. The **Allow Issue from Free Stock** check box must be selected for the project on the [Projects](PM_30_10_00.md) \(PM301000\) form. Although the project and project task are specified in the transfer sales order, the generated inventory transfer and the corresponding transfer receipt contain the non-project code and no project task. The items are transferred from free stock in the source warehouse to free stock in the destination warehouse. After the items are received, they remain available as free stock and can later be issued for the project.
-   *Project Stock*: You use this inventory source if the items are reserved for the project. The generated inventory transfer contains the project and project task for both the source and destination of the transfer. When you add the inventory transfer to a transfer receipt on the [Purchase Receipts](PO_30_20_00.md) form, the system copies the destination project and project task from the inventory transfer to the receipt line. As a result, when the items are received in the destination warehouse, they remain reserved for the same project and project task.

**Parent topic:**[Tracking Project Inventory](../UserGuide/Projects_Inventory_Tracking_Mapref.md)

