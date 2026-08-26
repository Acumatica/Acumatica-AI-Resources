# Project Inventory Tracking: General Information {#_c88fde12-24c2-4b9b-af43-25854318d4f9 .concept}

In Acumatica ERP, you can configure the project inventory \(that is, the inventory items to be used for a particular project\) so that all items purchased and sold for the project will be separated from other inventory and reserved for the project in the warehouse. This helps you to accurately capture inventory expenses and revenues related to the project inventory in a project budget. This also helps you to avoid any delays associated with items not being available when they are needed for the project.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure a project inventory
-   Process documents with stock items related to projects
-   Review project and GL transactions generated during the processing of sales and purchases of items

## Applicable Scenarios { .section}

You configure the project inventory of particular projects if you are using stock items in these projects and want to track detailed information about the inventory to be used for these projects, as well as to be able to perform the following operations:

-   Manage the flow of stock items related to projects
-   Reserve items for particular projects in one warehouse or multiple warehouses
-   Track project-specific quantities for stock items, to prevent these items from being used for non-project purposes
-   Use valuated costing for project-specific stock items to issue and receive project items at accurate costs that are not affected by the costs of non-project items

## Configuration of Inventory Tracking in Projects {#section_iq3_qks_qqb .section}

If you have enabled the *Inventory and Order Management* and *Inventory* features on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and are using the related functionality, you can use the enhanced integration of projects with inventory by enabling the *Project-Specific Inventory* feature.

Once you have enabled the feature, you configure the applicable projects to use the needed inventory tracking mode. For each project, you select one of the following modes in the **Inventory Tracking** box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form:

-   *Track by Project Quantity and Cost*: To track the quantity and project-specific cost of the stock items reserved for the project.
-   *Track by Project Quantity*: To track the project-specific quantity of the purchased items that are reserved for the project. In this mode, the system tracks the item cost by general cost calculation rules \(that is, the cost is not project-specific\). One cost layer holds the item costs recorded for the same inventory item with the same project budget key but received to different locations of the same warehouse.
-   *Track by Location*: To track the quantity and cost of the purchased materials at the warehouse location level. For more information about using this mode, see [Project Inventory Tracking by Warehouse Location: General Information](Projects_Inventory_Locations_GeneralInfo.md).

In an existing project, you can change the inventory tracking mode only if no items have been received for the project yet.

## Inventory Tracking in Projects {#section_m55_nts_qqb .section}

For a project in which the *Track by Project Quantity* or *Track by Project Quantity and Cost* inventory tracking mode is selected in the **Inventory Tracking** box of the [Projects](PM_30_10_00.md) \(PM301000\) form, you create and process documents with stock items as follows:

-   To purchase stock items for the project, you create a purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, selecting the project and project task for each item. The expenses are captured to the project cost budget as a project commitment.
-   To receive items in a warehouse, you process a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form. To separate the project items from free stock, the system automatically creates a virtual project-specific location within the warehouse location where the materials are received. The purchased materials are reserved for the project and cannot be issued for another project.
-   To issue the materials for the customer, you process an inventory issue for the project on the [Issues](IN_30_20_00.md) \(IN302000\) form. The quantity available for issuing is defined by the warehouse location, the project, and the project task.

    **Tip:** If the **Allow Issue from Free Stock** check box is selected in the project settings on the [Projects](PM_30_10_00.md) form, you can also issue materials that are not reserved for the project from free stock.

-   To transfer leftover materials from the project stock to free stock, you create an inventory transfer on the [Transfer Project Inventory to Free Stock](PM_50_80_00.md) \(PM508000\) mass-processing form. For more information, see [Project Inventory Tracking: Mass Processing](Projects_Inventory_Tracking_MassProcessing.md).

## Tracking Item Costs {#section_rrm_3wx_qqb .section}

In a project with the *Track by Location* or *Track by Project Quantity* mode selected in the **Inventory Tracking** box of the [Projects](PM_30_10_00.md) \(PM301000\) form, the cost of the issued materials is not project-specific and is defined by general cost calculation rules. The cost of an item depends on the item valuation method and is affected by other factors: the warehouse location from which the item is issued, the account and subaccount, the selected subitem, and the lot or serial number of the item. For more information on how the system calculates item costs, see [Item Costs and Valuation Methods: General Information](Item_Costs_Valuation_Methods_GeneralInfo.md).

In a project with the *Track by Project Quantity and Cost* mode selected, the system tracks project-specific cost. That is, for each combination of project and project task, the system calculates the cost of each item depending on the warehouse location from which the item is issued, the account and subaccount, the selected subitem, and the lot or serial number of the item, if applicable.

**Parent topic:**[Tracking Project Inventory](../UserGuide/Projects_Inventory_Tracking_Mapref.md)

