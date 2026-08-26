# Production Cost Drivers: Material Costs {#_c285dd77-95d1-4c1e-991a-c10dc7464c4e .concept}

Material cost can be the most significant component of a product cost. In Acumatica ERP Manufacturing Edition, material costs are defined by the material quantity used in production of a particular item and on the material unit cost.

The system considers material costs when calculating cost of a bill of material, planned cost of a production order, or actual cost of a production order. In this topic, you will find details about material costs in production.

## Material Cost Calculation { .section}

The system calculates a planned material cost for an operation of a production order as a sum of material unit costs multiplied by the required material quantity.

The actual material cost for each operation is equal to a sum of material costs. The cost of each material is calculated as the unit cost multiplied by the quantity of the material issued for the operation. The system calculates the actual material cost on the same way regardless of whether materials are issued manually or backflushed.

To calculate total material costs for a production order, the system sums material costs for all operations included in the order.

You can view planned and actual material costs for each operation of a production order on the **Totals** tab of the [Production Order Details](AM_20_90_00.md) \(AM209000\) form. You can find total material costs for a production order on the **Totals** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

## Material Unit Cost { .section}

When calculating material costs for a production order, the system uses unit costs of stock or non-stock items that represent materials.

The unit cost of a stock item that the system uses depends on the valuation method specified in the **Valuation Method** box of the **General Settings** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. A unit cost of a stock item is specified on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) or [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form depending on whether the record for the item–warehouse pair specified in a production order exists.

On the **Price/Cost** tab, the system finds the unit cost as follows:

-   If the item valuation method is *Average* or *FIFO*, the system copies the value of the **Average Cost** box. If the average cost is zero, then the value of the **Last Cost** box is used.
-   If the item valuation method is *Standard*, the system copies the value of the **Standard Cost** box.

    **Tip:** If you need to update standard cost of materials, see [Bills of Material: Updating Standard Costs](BOM_CostRoll.md).

-   If the item valuation method is *Specific*, the system copies the value of the **Last Cost** box.

For more information about costs of stock items, see [Item Costs and Valuation Methods: General Information](Item_Costs_Valuation_Methods_GeneralInfo.md).

For a material that is a subassembly, the system calculates the material cost in the same way as for materials that are finished goods.

For a non-stock item, the system copies the cost from the **Current Cost** box of the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

**Parent topic:**[Managing Production Cost Drivers](../UserGuide/MFG_Production_Cost_Drivers_Mapref.md)

