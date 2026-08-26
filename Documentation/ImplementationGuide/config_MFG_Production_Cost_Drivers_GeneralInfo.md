# Configuring Production Cost Drivers: General Information {#_6d790206-ba52-442a-be12-3e7fbfd77327 .concept}

The costing of items that you make is more complex and detailed than the costing of items you buy. The costing of these manufactured items includes not only the cost of the materials bought to make an item but also the cost of labor, factory overhead, machinery, and tooling used in production. And subassemblies may be produced and stored that become part of the final assembly of the finished goods you sell.

In this topic, you will read about configuring production cost drivers, which are the costs that can be included in the cost of the final product.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Define the labor codes so that labor costs are included in the cost of a produced item
-   Define the overhead entities so that overhead costs are included in the cost of a produced item
-   Define the tools so that the tool costs are included in the cost of a produced item
-   Define the machines so that the machine costs are included in the cost of a produced item

## Applicable Scenarios { .section}

You configure production cost drivers in the following cases:

-   When you initially implement Acumatica ERP, and the *Manufacturing* feature is included in your license
-   When you have purchased the *Manufacturing* feature, and you need to configure manufacturing in the existing Acumatica ERP system
-   When you need to add or change cost drivers that affect the cost of the produced item

## Cost Drivers in Manufacturing { .section}

In Acumatica ERP Manufacturing Edition, you need to define the following entities whose costs can affect the cost of the final product:

-   Materials: You define the needed materials \(stock items and non-stock items\) so that you can track the costs of the components used to make the finished product.
-   Labor: You define labor codes in the system and use them to track the cost of the labor issued \(or planned to be issued\) to make the product.
-   Overhead: You define the applicable overhead entities in the system and specify the overhead rates to be applied to particular operations and materials.
-   Machines: You define each machine in the system, including the cost rate of running a machine for a production operation.
-   Tools: You define each tool to be used in a production operation, including its cost rate for each usage.
-   Subcontractor services and materials: You track the value of the services provided by a vendor and materials provided to and purchased from a vendor for performing the work.

Costs can be planned and actual. Planned costs are specified on the bill of material level, and actual costs are calculated when users process production orders. The system posts actual costs when users record quantities of produced items or when materials or labor are backflushed at a production order operation.

In the following sections, you can find more information about particular cost drivers.

## Material Costs { .section}

Materials can include stock items and non-stock items. For a stock item, you specify the planned cost in one of the following locations:

-   On the **Price/Cost** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form if the item is stored in one warehouse
-   On the **Price/Cost** tab of the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form if the item is stored in multiple warehouses and the item cost is warehouse-specific

For a non-stock item, you specify the item cost on the **Price/Cost** tab of the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form.

## Labor Costs { .section}

The cost of labor can be broken down into direct labor costs and indirect \(also described as overhead\) labor costs. Direct labor costs include wages for the employees who produce a product. Indirect labor costs are associated with employees who are not involved in production directly, such as security staff. In Acumatica ERP, you can track both direct and indirect labor costs.

Labor costs are posted to a special GL account. You use the [Labor Codes](../UserGuide/AM_20_65_00.md) \(AM206500\) form to define the labor codes that will contain information about the cost type \(direct or indirect\) and the GL account where the labor expenses must be posted. You must define at least one labor code of the *Direct* type.

Planned labor costs are calculated based on the run units and run time of an operation and the standard cost of a work center assigned to the operation. Actual labor costs are calculated based on either the standard cost of a work center or the employee cost rate. You select the way of calculating actual costs in the **Use Labor Rate** box on the [Production Preferences](../UserGuide/AM_10_20_00.md) \(AM102000\) form. You specify the standard cost of a work center in the **Standard Cost** box on the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form. If you calculate labor costs by using the employee cost rate, you specify the rate on the [Labor Rates](../UserGuide/PM_20_99_00.md) \(PM209900\) form.

**Attention:** Make sure that no labor item is specified in the **Labor Item** box on the **General** tab of the [Employees](../UserGuide/EP_20_30_00.md) \(EP203000\) form.

For more information about labor costs, see [Configuration of Production with Backflushing: General Information](config_MFG_Backflushing_GeneralInfo.md) and [Configuration of Production with Backflushing: Implementation Activity](config_MFG_Backflushing_Implem_Activity.md).

## Overhead Costs { .section}

You can set up overhead costs by using the [Overhead](../UserGuide/AM_20_25_00.md) \(AM202500\) form. These costs can be accrued at a fixed rate, which is the same regardless of lot or order size, or at a variable rate, which may depend on labor hours or the quantity of goods completed. You can create as many overhead IDs as you need to account for the different overhead expenses of your organization. The full list of the supported overhead types is the following:

-   *Fixed*: Uses a single fixed cost
-   *Variable by Labor Hours*: Depends on the number of labor hours used in production
-   *Variable by Labor Cost*: Depends on the cost of the labor used in production
-   *Variable by Material Cost*: Depends on the cost of the materials used in production
-   *Variable by Machine Hours*: Depends on the number of machine hours used in production
-   *Variable by Quantity Completed*: Depends on the quantity of completed items
-   *Variable by Total Quantity*: Depends on the quantity of completed and scrapped items

You can assign the overhead costs to a specific item on the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form or to a work center on the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form, depending on whether the cost affects a particular product or a particular production operation.

Actual overhead costs are applied when a quantity of produced items is recorded for a production order operation.

## Tool Costs { .section}

If you need to add tool costs to the cost of a produced item, you create all tools included in the production process by using the [Tools](../UserGuide/AM_20_55_00.md) \(AM205500\) form. On this form, you specify the unit cost for each tool, which is the cost for every usage of the tool in a production order and the GL account where tool costs must be posted.

## Machine Costs { .section}

If you need to add machine costs to the cost of produced items, you create machines and specify their costs on the [Machines](../UserGuide/AM_20_45_00.md) \(AM204500\) form. When assigning a machine to a work center on the [Work Centers](../UserGuide/AM_20_70_00.md) \(AM207000\) form, you can specify a different machine cost to be used for this work center. On both forms, you also select the GL account where the system will post the costs. Then on the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) form, for each operation that uses machines, you specify the number of machine units and machine time needed for the operation.

## Subcontractor Costs { .section}

If any outside organizations \(that is, subcontractors\) are involved in the production process—such as providing services or creating components of produced items—you can include the costs your organization spends for these organizations in the cost of the produced items. For details, see [Outside Processing: General Information](../UserGuide/MFG_Outside_Processing_GeneralInfo.md).

**Parent topic:**[Configuring Production Cost Drivers](../ImplementationGuide/config_MFG_Production_Cost_Drivers_Mapref.md)

