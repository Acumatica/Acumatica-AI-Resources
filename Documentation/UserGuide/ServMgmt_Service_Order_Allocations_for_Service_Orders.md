# Service Orders with Items to Be Purchased: Allocations for Service Orders {#_0276f887-6bcc-4109-a6c7-a85fb117026e .concept}

In Acumatica ERP, *allocation* is a broad term used to denote splitting the item quantity into smaller quantities with different subitems or lot numbers, splitting the quantity into separate units with serial numbers, or specifying quantities that should be reserved for the order in different warehouses. This helps your company to avoid overstocks and stockouts of items being sold.

**Note:** The field service functionality does not support processing of stock items of lot/serial class with the *When Used* assignment method.

In this topic, you will read about allocating stock items for service orders and allocating stock items that have been purchased for service orders.

## Allocation of Stock Items for Service Orders { .section}

You can reserve the specified item quantities for the service order by allocating them on the [Service Orders](FS_30_01_00.md) \(FS300100\) form. On the **Details** tab, you can click a service order line and view the item availability information at the bottom of the form. You may want to reserve the requested quantity for this specific item \(or for multiple items\).

To allocate stock for a particular line of a service order, you use the **Line Details** dialog box, which opens if you click the needed line on the **Details** tab of the [Service Orders](FS_30_01_00.md) form and then click **Line Details** on the table toolbar. By using this dialog box, you can select whether to reserve the requested quantities of the item in a single warehouse or multiple warehouses. Also, you can use the **Line Details** dialog box to track the order fulfillment. For each allocation line, the **Related Document** column contains the reference number of the document related to the current stage of the order fulfillment.

## Notes on Processing of Appointments with Allocated Items { .section}

With allocations for each inventory item line, the system will not allow a staff member to assign more units of an inventory item to an appointment than the quantity of units specified in the related service order. For example, suppose that one service and two units of the *ACINF21* inventory item are associated with a service order on the [Service Orders](FS_30_01_00.md) \(FS300100\) form. Two appointments are created to fulfill the service order, and each appointment has one unit of the *ACINF21* inventory item assigned. Suppose that during the second appointment, the customer asks for a third unit of the *ACINF21* inventory item. The system will not allow the staff member to modify the quantity of the line associated with the two original *ACINF21* inventory items because the appointment quantity would be greater than the service order quantity. In this case, the staff member needs to add a new line item to the second appointment for the extra *ACINF21* inventory item on the **Details** tab of the [Appointments](FS_30_02_00.md) form. The system will add the line item to the service order as well.

If a user clones an appointment that includes inventory items, if the quantity of inventory items in all appointments exceeds the quantity specified in the related service order, the system automatically adds new items to the service order.

If the scheduler has added inventory items to a service order, and then not all inventory items have been used in the appointments associated with the service order, and if the billing cycle is set to generate invoices from appointments, when the service order is closed, the system cancels the allocation of the quantity of inventory items that were not used in appointments.

## Allocation of Purchased Stock Items for Service Orders { .section}

If the ordered items are out of stock at the shipping warehouse, you can process a purchase from a vendor for the subsequent sale to get the sufficient quantity of ordered items directly for this service order.

After receipts have been released for the related purchase orders, you can track the stage of fulfillment for each line of the original sales order by clicking **Line Details** on the [Service Orders](FS_30_01_00.md) \(FS300100\) form. In the **Line Details** dialog box, which opens, you can view the allocation that the system automatically performs to reserve the line item quantity required for the service order on the purchase receipt. In the **Line Details** dialog box, you can also view the reference numbers of the related documents in the **Related Documents** column: the purchase order and the receipt. \(You can click any reference number of a related document to view the document.\)

If a purchase order for an inventory item was created from a service order, after the inventory item is received, the inventory item is automatically allocated for the service order. Additionally, if a serial number was specified in the purchase receipt, the serial number is copied to the service order.

## Item Availability Tracking { .section}

The way the order quantity is reflected in the system depends on the availability calculation rule selected for the item class \(of each included item\) on the [Item Classes](IN_20_10_00.md) \(IN201000\) form. For details on availability, see [Availability Calculation Rules: General Information](Availability_Calculation_Rules_GeneralInfo.md).

Generally, as the status of a purchase order for a service order changes, the purchase order quantity updates the **FS Prepared**, **FS Booked**, **FS Allocated**, and **On Hand** total quantities, which are reflected on the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form.

**Parent topic:**[Processing Service Orders with Items to Be Purchased](../UserGuide/ServMgmt_Service_Order_with_Items_to_be_Purchased_Mapref.md)

