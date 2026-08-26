# Production Processing: Item Availability and Allocation {#_2a3af7c4-fe0f-4c7a-a04b-0c0090cddc68 .concept}

When you process production orders and related documents \(such as sales orders and purchase orders\), the system estimates the quantities of items to be produced and the material quantities in the documents and allocates the needed quantities of items and materials that are represented by stock items for the documents. Each allocation has a specific type \(also called a *plan type*\), which the system assigns according to the document type and status. If you need to reallocate materials to other production orders, you can view current allocations and their types on the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form.

In this topic, you will read about the ways the system calculates item availability and allocates items to be produced and materials for production orders and related documents.

## Availability Calculation for Production-Related Documents { .section}

When calculating the availability of items to be produced and materials required for production, the system uses the availability calculation rules specified on the [Availability Calculation Rules](IN_20_15_00.md) \(IN201500\) form. We recommend that you create an availability calculation rule for items involved in production. For general information about availability calculation rules, see [Availability Calculation Rules: General Information](Availability_Calculation_Rules_GeneralInfo.md).

The rule settings specific to production-related documents are the following:

-   **Deduct Qty. on Production Demand Prepared**: The quantities of materials in production orders with the *On Hold* or *Planned* status are deducted from the available quantities of the materials.
-   **Deduct Qty. on Production Demand**: The quantities of materials in production orders with the *Released* or *In Process* status are deducted from the available quantities of the materials.
-   **Deduct Qty. on Production Allocated**: The quantities of items to be produced that are allocated to other production orders are deducted from the available quantities of these items.
-   **Include Qty. of Production Supply Prepared**: The quantities of items to be produced in production orders with the *On Hold* or *Planned* status are included in the available quantities of these items.
-   **Include Qty. of Production Supply**: The quantities of items to be produced in production orders with the *Released* or *In Process* status are included in the available quantities of these items.

**Attention:** Availability calculation rules do not affect results of inventory planning when you run the process of generating MRP by using the [Regenerate Inventory Planning](AM_50_50_00.md) \(AM505000\) form.

## Item Allocation for Production-Related Documents { .section}

Each item allocation is either a demand allocation or a supply allocation. Supply allocations are related to documents that potentially increase item availability, such as an allocation of an item to be produced for a production order or an allocation of materials for a purchase order. Demand allocations are related to documents that potentially decrease item availability, such as an allocation of materials for a parent production order or an allocation of items to be produced for a sales order.

If multiple documents contain the same item, such as a sales order with an item to be produced and a production order for the item, the system creates an item allocation for each of the documents, and a type of each allocation corresponds to the document type and status.

The system removes item allocations when the full allocated quantity of an item is received in stock \(for supply documents\) or is issued from stock \(for demand documents\).

## Allocation of Items to Be Produced for Production Orders { .section}

When you create a production order for an item, the system creates a supply item allocation for the quantity to be produced specified in the order. The allocation is removed when you move the completed items to stock in a quantity that equals the planned quantity to be produced and the production order is assigned the *Completed* status.

If scrapped items have been recorded for the production order and the **Include Scrap in Completions** check box on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form is selected, the quantity of the scrapped items is included in the quantity of the completed items, and the system removes the allocation for the production order even when the real completed quantity is less than the planned quantity to be produced.

If you need to complete a production order with a smaller quantity of the completed items \(such as when you were going to make 10 items, but because of a material shortage, you could make only 8\), you click the **Complete Order** command on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form. The system changes the status of the production order to *Completed* and removes the item allocation for the production order, as it usually does for completed orders.

For lot- or serial-tracked items, the system creates a separate allocation for each lot or serial number. For example, suppose that a production order has been created for five serial-tracked items. The system would create five allocations, one per item unit.

## Allocation of Items to Be Produced for Sales Orders { .section}

When an item in a sales order must be produced, you create a linked production order for the item. The system creates a demand item allocation for the sales order and a supply item allocation for the production order.

In this case, you first complete the production order—that is, you move the completed items to stock, and the system removes the item allocation for the production order. Then a sales manager releases the shipment related to the sales order with the full allocated quantity of the item and the system issues the items from stock. The system also removes the item allocation for the sales order.

## Allocation of Materials { .section}

When you create a production order, the system creates demand allocations of materials required for the order on the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form. If the required material quantities are available in stock, you issue the materials by using the [Materials](AM_30_00_00.md) \(AM300000\) form. When you issue the full quantities of the materials for the production order, the system removes the allocations for the production order.

If you issue materials partially \(such as when the required material quantity has been overestimated\), allocations for the quantities that were not issued still exist for the production order until you close the order. You can deallocate the remaining material quantities before you close the order. For details, see *Manual Deallocation of Materials for Parent Production Orders* in this topic.

If the required material quantities are not available in stock and they need to be purchased or produced, you create the needed documents, and the system creates the appropriate material allocations for the related purchase or production orders. When the purchased or produced materials are received in stock, the system removes the allocations for these documents.

If some material is both sold and used in production, you may need to manually allocate the required material quantity for a production order so that it becomes unavailable for sales. You can allocate a material that is in stock to a production order by using the **Line Details** dialog box, which you open on the **Materials** tab of the [Production Order Details](AM_20_90_00.md) \(AM209000\) form.

**Important:** You cannot allocate lot- or serial-tracked materials manually for a production order. You need to do this by releasing a material transaction on the [Materials](AM_30_00_00.md) form.

## Manual Deallocation of Materials for Parent Production Orders { .section}

If a production order has been completed but materials were issued partially, the remaining material quantities are still allocated to the production order. You can remove allocations for the remaining quantities of the materials by clicking the **Set Materials Status to Completed** command on the More menu of either the [Production Order Details](AM_20_90_00.md) \(AM209000\) form or the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

You may also have a situation when you have completed a production order and deallocated the remaining material quantities, but you later realize that you still need to issue more materials. Then you click the **Set Materials Status to Open** command on the More menu of either of the two forms. The system creates allocations for the remaining material quantities, and you can issue the needed materials by using the [Materials](AM_30_00_00.md) \(AM300000\) form.

## Allocation of Materials for Purchase Orders { .section}

If materials required for item production are not in stock and these materials are purchased from a vendor, you create a purchase order for the materials. The system creates a supply allocation of materials for the purchase order if the type of the lines for the materials is *Goods for MFG* on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. When you create a purchase order by using the [Critical Materials](AM_40_10_00.md) \(AM401000\) form, the system specifies this line type automatically.

When the full quantity of purchased items is received in stock, the system removes the material allocation for the purchase order.

## Allocation of Materials for Production Orders { .section}

If a material required for a production order is out of stock and must be produced \(that is, if the material is a subassembly\), you create a production order for the material. When you create the production order by using the [Critical Materials](AM_40_10_00.md) \(AM401000\) form, the system links the production order to the parent production order and creates a supply allocation for the subassembly production order.

When the full quantity of produced materials is moved to stock, the system removes the material allocation for the subassembly production order. You can then allocate the produced subassembly to the parent production order, which will change the item plan of the subassembly material to *Production Allocated*.

**Parent topic:**[Producing Items](../UserGuide/MFG_Production_Order_Processing_Mapref.md)

