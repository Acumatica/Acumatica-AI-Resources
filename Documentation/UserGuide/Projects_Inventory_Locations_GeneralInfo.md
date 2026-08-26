# Project Inventory Tracking by Warehouse Location: General Information {#_c17cd234-2ca9-1488-a687-fa3ccdaa1e16 .concept}

In Acumatica ERP, you can define a project so that specific project tasks are associated with warehouse locations. With this configuration, in the project cost budget, you can track materials and services purchased for the project. Based on the expenses recorded to the cost budget, you can later bill the customer. The ability to track items used for projects by warehouse location helps you to track the amount of money and resources spent on the project and to accurately estimate the project profitability.

## Learning Objectives { .section}

You will learn how to do the following:

-   Configure a project to track project inventory by warehouse location
-   Process documents with project-related stock items
-   Review project and GL transactions that have been generated during the processing of item sales and purchases

## Applicable Scenarios { .section}

You configure a project to use inventory tracking by specific warehouse location to keep project-specific items separate from other inventory and to have project quantities and costs segregated in inventory balances.

## Inventory Tracking by a Project-Specific Location {#section_obc_n4s_qqb .section}

To track project items by warehouse location, you select *Track by Location* in the **Inventory Tracking** box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form for a particular project. You then associate a separate warehouse location with each project task for which you need to receive inventory items on the [Warehouses](IN_20_40_00.md) \(IN204000\) form. With this configuration, the items purchased for the project are tracked at the warehouse location level.

For a purchase of project items, you create a purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. When the purchased materials are received to the warehouse location, you create a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form and an accounts payable bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. If the **Internal Cost Commitment Tracking** check box is selected on the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, these expenses are recorded to the project budget as project commitments. For more information about commitment tracking in projects, see [Tracking Cost Commitments](Projects_Commitments_Mapref.md).

Once the purchased project stock items are used for the project, you issue the items for the project from the warehouse location. The system updates the actual quantity and actual amount of the cost budget of the project with the quantities and cost of the issued items.

## Limitations {#section_imh_n2j_zrb .section}

The following limitations apply to the *Track by Location* inventory tracking mode of the project on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form:

-   The purchased materials are not reserved for the project and can be sold and shipped for other projects and customers.
-   If a warehouse location is associated with a particular project and project task, the system cannot issue the items from this location using the *X* non-project code. To issue the items stored in the project-specific warehouse location with the non-project code, you first need to transfer the items to a warehouse location that is not linked to any project task.
-   The system does not track the project-specific cost of materials.

    In projects with inventory tracked by location, the cost of the issued materials is not project-specific and is defined by general cost calculation rules. The cost of the item depends on the item valuation method, and is affected by other factors: the warehouse location from which the item is issued, the account and subaccount, the selected subitem, and the lot or serial number of the item. For more information on how the system calculates item costs, see [Item Costs and Valuation Methods: General Information](Item_Costs_Valuation_Methods_GeneralInfo.md).


**Parent topic:**[Tracking Project Inventory by Warehouse Location](../UserGuide/Projects_Inventory_Locations_Mapref.md)

