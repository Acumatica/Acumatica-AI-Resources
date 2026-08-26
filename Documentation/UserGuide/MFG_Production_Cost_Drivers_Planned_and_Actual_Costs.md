# Production Cost Drivers: Planned and Actual Costs {#_02817c45-119c-43f4-8e44-b1354530a880 .concept}

When you create a production order by using the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form, the system calculates planned costs of a production order. When a production order goes through the processing cycle, the system applies actual costs to the production order.

You can view costs of the whole production order on the **Totals** tab of the [Production Order Maintenance](AM_20_15_00.md) form. You can also view costs by operation of a production order on the totals tab of the [Production Order Details](AM_20_90_00.md) \(AM209000\) form.

In this topic, you will find information about planned costs and actual costs of production orders.

## Planned and Actual Costs of a Production Order { .section}

You can view the order's planned costs in the **Planned** section of the **Totals** tab on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form. The system calculates planned costs based on the settings of operations included in the routing of a production order and displays the costs by production cost drivers.

Actual costs are applied to a production order when production transactions for the order are released. You can view actual costs in the **Actual** section of the **Totals** tab.

You can analyze costs of a production order by using the following aggregate costs on the **Totals** tab:

-   The total sum of the actual costs that have been applied to the production order, in the **WIP Total** box of the **Actual** section.
-   The cost of produced items that have been moved to inventory, in the **MFG to Inventory** box of the **Actual** section. This cost is calculated based on the costing method of a production order. For details on costing methods, see [Cost Calculation for Produced Items: General Information](MFG_Production_Cost_Calculation_GeneralInfo.md).
-   The current balance of the Work in Process GL account, in the **WIP Balance** box of the **Variance** section. The system calculates this value as the difference between the **MFG to Inventory** and **WIP Total** boxes.

If you want to view cost details by operation, you can open the [Production Order Details](AM_20_90_00.md) \(AM209000\) form, select the needed operation in the Operations table, and on the **Totals** tab, view the costs.

## Calculation of Planned and Actual Costs { .section}

The system calculates planned costs by using the predefined costs at the time a production order is created and updates the costs when the production order is released; during the processing of the production order, costs may change.

You can make changes in a production order that is not completed, such as change a quantity to produce, run time or run units for operations, or a quantity of materials required for an operation. For any changes except for the quantity to produce, the system recalculates planned costs.

If you change the planned quantity to produce, you use the **Update Planned Costs** command on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) to update planned costs of the production order. You can use this command only for production orders that have a status of *On Hold* or *Planned*.

The system calculates the actual costs at the time the material, labor, or move transaction is released. Thus, even if the quantity of issued materials, the labor time, and the quantity of produced items equals the planned numbers, actual costs may differ from planned costs, such as in the following cases:

-   The cost of materials may be different at the moment when materials are issued from stock, because the standard cost of a material can be updated or the average or last cost can be changed in a purchase receipt.
-   If labor rate is based on employee rate, the system calculates the planned cost of labor by using the standard rate specified for a work center, but when a production employee records labor hours, the system uses the employee rate, which may differ from the work center rate.
-   Rates for production cost drivers—such as overhead, machines, or tools—may be changed after the planned costs of the production order were calculated.

**Parent topic:**[Managing Production Cost Drivers](../UserGuide/MFG_Production_Cost_Drivers_Mapref.md)

