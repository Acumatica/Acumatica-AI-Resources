# Bills of Material: Cost Calculation {#_0fb1d3cc-39c6-42b2-86d5-34f6e0105df9 .concept}

For each bill of material, the system calculates costs for the components included in the bill of material, such as materials, tools, labor, and overhead. In this topic, you will read about material unit costs displayed on the [Bill of Material](AM_20_80_00.md) \(AM208000\) form and the cost calculation by using the cost roll process on the [Process Cost Rollup Results](AM_50_80_00.md) \(AM508000\) form.

You will also learn about unit costs when they are first added to a bill of material \(BOM\), unit costs when they are updated as part of a single level or multi-level cost roll, and production order unit costs.

## Value Used when Material Costs are Added to BOM { .section}

The [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form is the source for the cost when you first add an inventory item to a bill or production order. The cost used is dependent on the item's valuation method. The unit cost defaults from the settings of the item–warehouse pair according to the item's valuation method as follows:

-   Average or FIFO: Average cost

    **Note:** If the average cost is zero, then the last cost is used.

-   Standard: Standard cost
-   Specific: Last cost

## Update of Material Costs { .section}

Unit costs of materials on BOMs can be updated by the cost roll process when you select the **Update Materials** check box in the [Process Cost Rollup Results](AM_50_80_00.md) \(AM508000\) form.

When you select *Single* in the **Level** box of the Selection area, the material costs are updated using the item’s valuation method and the unit cost defaults from the settings of the item-warehouse pair.

When you select *Multi* in the **Level** box of the Selection area, the system first calculates costs for all subassemblies included in a bill of material, starting from the lowest-level subassemblies, and then uses these costs in calculation of the top-level BOM costs. This means materials that have a BOM will have their cost updated based on the cost roll calculation and is not dependent on the material’s item valuation method.

## Calculation Used by the Production Order in the Cost Roll Process { .section}

When production orders are created and when the *Update Planned Cost* action is selected, the cost roll process obtains the current cost for materials via multi-level cost roll.

## Cost Calculation by the Cost Roll Process { .section}

The formulas the system uses for calculating costs of components included in a bill of material are listed in the following table. For more information on options that impact the BOM Cost, see the [Process Cost Rollup Results](AM_50_80_00.md) form.

|Component|Formula|
|---------|-------|
|Labor|`((Setup time / Lot size) + Run time converted to hours per piece) * (Work Center Standard Cost)`|
|Materials|If the value of the **Batch Size** column on the [Bill of Material](AM_20_80_00.md) \(AM208000\) form is `0`, the formula is the following: `Qty. Required * (1 + Scrap Factor)`

 If the value of the **Batch Size** column is not `0`, the formula is the following: `Qty Required * (1 + *Scrap Factor*) * (Lot Size / Batch Size)`

 In the formula, *Lot Size* is the value of the **Lot Size** box on the **Manufacturing** tab of the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form. If the lot size is zero then the value of the minimal order quantity is used. If both are zero then a lot size of 1 is used.

|
|Machines|`(Machine hours converted to hours per piece) * (Machine standard cost)`|
|Tools|`(Quantity required) * (Unit cost)`|
|Overhead|Overhead is calculated dependent on the overhead type.|

**Parent topic:**[Managing Bills of Material](../UserGuide/BOM_Mapref.md)

