# Production Cost Drivers: General Information {#_1cb11716-6673-40d6-b70b-ff924ff6a177 .concept}

Generally, production costs include costs of materials and costs of converting the materials into products, such as costs of tools and labor involved in the production. In Acumatica ERP Manufacturing Edition, you can define the entities whose costs will affect the cost of the final product \(*production cost drivers*\). Each operation of a production order may have a unique set of production cost drivers, depending on the settings. For information about configuration of cost drivers, see [Configuring Production Cost Drivers: General Information](../ImplementationGuide/config_MFG_Production_Cost_Drivers_GeneralInfo.md).

In this topic, you will find information about cost drivers that may be included in production cost in Acumatica ERP Manufacturing Edition.

## Learning Objectives { .section}

In this topic, you will learn the following:

-   Which cost components are applied to the cost of produced items
-   How the system calculates planned and actual costs for each cost component

## Applicable Scenarios { .section}

You analyze components of production costs in the following cases:

-   When you need to review the cost drivers of a particular production order
-   When you need to add or change cost drivers that affect the cost of the produced item

## Production Cost Drivers { .section}

The list of entities whose costs can be added to the cost of produced items is the following:

-   Materials: The cost of materials \(stock items, non-stock items, and subassemblies\) used for the item production. For more information, see [Production Cost Drivers: Material Costs](MFG_Production_Cost_Drivers_Material_Costs.md).
-   Labor: The cost of direct labor hours that employees spend for producing items and the cost of indirect labor hours for employees that are not involved in production directly. For details, see [Production Cost Drivers: Labor Costs](MFG_Production_Cost_Drivers_Labor_Costs.md).
-   Overhead: Costs that are not directly related to a particular product but are related to production process, such as electricity costs or rental costs for a production floor. For details, see [Production Cost Drivers: Overhead Costs](MFG_Production_Cost_Drivers_Overhead_Costs.md).
-   Tools: The cost of tools that are used in item production. For more information, see [Production Cost Drivers: Tool and Machine Costs](MFG_Production_Cost_Drivers_Tool_and_Machine_Costs.md).
-   Machine: The cost of machines that are involved in production. For more information, see [Production Cost Drivers: Tool and Machine Costs](MFG_Production_Cost_Drivers_Tool_and_Machine_Costs.md).
-   Outside service: Costs of outsourcing production of items, including materials and value of services provided by a subcontractor. For details, see the *Calculation of Costs for Outside Services* section in this topic.

To calculate total costs for a production order, the system sums the costs for each operation included in the order.

You can view planned and actual costs for each operation of a production order on the **Totals** tab of the [Production Order Details](AM_20_90_00.md) \(AM209000\) form. You can find total costs for a production order on the **Totals** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form. For more information about planned and actual costs of a production order, see [Production Cost Drivers: Planned and Actual Costs](MFG_Production_Cost_Drivers_Planned_and_Actual_Costs.md).

## Calculation of Costs for Outside Services { .section}

The planned cost for outside services in a production order includes the cost of the materials you ship to a vendor \(that is, material lines with the *Ship to Vendor* subcontract source\) and the cost of the outside services \(that is, material lines with the *Purchase* subcontract source\). For a particular production order, you can view planned cost for outside services in the **Subcontract** box of the **Planned** section on the **Totals** tab of the [Production Order Maintenance](../Shared/../UserGuide/AM_20_15_00.md) \(AM201500\) form.

When you release the purchase receipt for a purchase order with the subcontractor service charges and the material used for the charges is not backflushed, the system adds the total cost of the purchase receipt to the **Subcontract** box of the **Actual** section on the **Totals** tab of the [Production Order Maintenance](../Shared/../UserGuide/AM_20_15_00.md) form. If the material is backflushed, the system adds the amount to the box when you record the movement of items from the outside operation.

**Parent topic:**[Managing Production Cost Drivers](../UserGuide/MFG_Production_Cost_Drivers_Mapref.md)

