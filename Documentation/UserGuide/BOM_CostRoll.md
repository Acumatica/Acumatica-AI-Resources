# Bills of Material: Updating Standard Costs {#_29dd17ca-5a7d-4ec8-864f-4f8d8916efb1 .concept}

You use the cost rollup process—which you perform by using the [Generate Cost Rollups](AM_51_80_00.md) \(AM518000\) and [Process Cost Rollup Results](AM_50_80_00.md) \(AM508000\) forms—to update the costs of bills of materials \(BOMs\). After the cost rollup is performed, you may want to update the pending cost for production items that use the *Standard* valuation method with the rolled-up cost.

Typically, standard costs are updated annually, but you can update them as often as needed. This topic describes the processes related to updating the standard costs of production items.

## Steps to Update Standard Costs { .section}

When you update standard costs of items to be produced, you perform the following general steps:

1.  You update purchased and transferred items with the *Standard* valuation method prior to the cost rollup process. If you have not yet updated the standard costs for the materials used in the BOMs, you can select the **Use Pending Standard Cost for Purchased Items** check box on the [Generate Cost Rollups](AM_51_80_00.md) \(AM518000\) form. In this case, the system will use the pending costs instead of standard costs for the materials that are purchased. For more information, see *Update of Standard Costs for Materials*.
2.  You roll up the costs for the bills of material by using the [Generate Cost Rollups](AM_51_80_00.md) form. For more information, see the *Cost Rollup for BOMs* section below.
3.  You update the pending costs with the costs calculated by the rollup process for the BOMs on the [Process Cost Rollup Results](AM_50_80_00.md) \(AM508000\) form. For more information, see the *Update of Pending Costs for BOMs* section below.
4.  You preview the cost changes for materials by using the [Standard Cost Change Preview](IN_61_75_00.md) \(IN617500\) report to make sure that the costs are correct and to understand the impact of the inventory revaluation.
5.  You update the standard costs for the items to be produced by using the [Update Standard Costs](IN_50_20_00.md) \(IN502000\) form. For details, see the *Update of Standard Costs for Production Items* section below.

## Update of Standard Costs for Materials { .section}

Before you roll up the costs of a bill of material, you should update the standard cost for each material that is used in the BOM that has the *Standard* valuation method. You can use either of the following ways:

-   Specify the pending cost for each material manually on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form and then update the current cost by using the **Update Cost** command on the same form.
-   Create a generic inquiry to display the purchase order history. By using this generic inquiry, you analyze and calculate a new standard cost that could be imported to update the pending costs of the materials. If you want to select only items used in BOMs, you can refer to the [Using Manufacturing Data in Inquiries and Reports](MFG_Tables.md) topic that lists the DACs used by the manufacturing-related forms.

## Cost Rollup for BOMs { .section}

To calculate costs for bills of material based on the costs of BOM elements, such as materials, tools, or overhead, you do the following on the [Generate Cost Rollups](AM_51_80_00.md) \(AM518000\) form:

1.  In the **Level** box of the Selection area, select *Multi* to calculate costs starting from the lowest-level subassemblies, or *Single* to calculate costs for only the selected BOMs. We recommend selecting *Multi* to roll up costs level by level from the bottom up.
2.  Narrow down the BOMs listed in the table by using settings of the Selection area. For example, you can filter BOMs by item class, warehouse, or BOM revision.
3.  Specify additional settings for the cost rollup process. For instance, you may want to include material scrap factors or exclude BOMs for items with a replenishment source other than *Manufacturing*.
4.  Select the Included check box for the BOMs whose costs you want to roll up, and then click **Process** on the form toolbar. To generate rollups for all BOMs displayed in the table, click **Process All**.

    The system displays progress and status messages in the **Processing** pop-up window while rollups are being generated.


You can run the cost rollup process as many times as needed. The generated cost rollups are displayed on the [Process Cost Rollup Results](AM_50_80_00.md) \(AM508000\) form.

## Update of Pending Costs for BOMs { .section}

When the cost rollup process is completed, on the [Process Cost Rollup Results](AM_50_80_00.md) \(AM508000\) form, you select he *Update Pending Costs* action in the Selection area, select the rows of generated rollups for which you want to update pending costs, and click **Process** on the form toolbar. The system updates the pending costs of the BOMs' items with the calculated costs on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. Only items with the *Standard* valuation method will have the pending cost updated.

**Attention:** When it updates the pending standard costs of items assigned to the BOMs, the system typically updates the pending costs of the stock item on the **Price/Cost** tab of the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) form. The system instead updates the pending cost of the item–warehouse pair on the **Price/Cost** tab of the [Item Warehouse Details](../Shared/../UserGuide/IN_20_45_00.md) \(IN204500\) form if the following conditions are met:

-   A warehouse is specified in the **Warehouse** box on the [Bill of Material](../Shared/../UserGuide/AM_20_80_00.md) \(AM208000\) form.
-   A record for the item–warehouse pair exists on the [Item Warehouse Details](../Shared/../UserGuide/IN_20_45_00.md) form.
-   The **Override Std. Cost** check box is selected on the **Price/Cost** tab of the [Item Warehouse Details](../Shared/../UserGuide/IN_20_45_00.md) form.

## Update of Standard Costs for Production Items { .section}

You update the standard costs of items to be produced by using the [Update Standard Costs](IN_50_20_00.md) \(IN502000\) form. During the update, the system does the following for each item to be produced:

-   On the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form for the item or the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form for the item–warehouse pair, copies the value of the **Pending Cost** box to the **Current Cost** box in the **Standard Cost** section.
-   Sets the **Pending Cost** to zero.
-   On the [Adjustments](IN_30_30_00.md) \(IN303000\) form, creates an inventory adjustment to update the Inventory GL account and Standard Cost Revaluation GL account, and releases the adjustment.

Inventory is always revalued when you update standard costs. However, you might want to revalue inventory without updating the current costs of the items to the next pending cost. In this case, on the [Update Standard Costs](IN_50_20_00.md) form, you can select the **Revalue Inventory** check box. With the check box selected, the form shows all items with the *Standard* valuation method that have cost layers in the warehouse selected in the **Warehouse** box. When you run the update process, the system revalues the inventory with the current cost, but the current cost will not be updated with the pending cost for the items.

**Parent topic:**[Managing Bills of Material](../UserGuide/BOM_Mapref.md)

