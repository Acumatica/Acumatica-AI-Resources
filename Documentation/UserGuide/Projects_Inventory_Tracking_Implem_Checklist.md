# Project Inventory Tracking: Implementation Checklist {#_519e3d19-34af-4be8-b384-174d8f431010 .concept}

The following sections provide details you can use to ensure that the system is configured properly for tracking inventory for projects, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially start working with project inventory, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the following features are enabled: -   *Inventory and Order Management*
-   *Inventory*
-   *Projects*
-   *Project-Specific Inventory*

|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\)|Make sure that all necessary settings related to project accounting have been specified, as described in the [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).|
|[Account Groups](PM_20_10_00.md) \(PM201000\) form|Make sure that all needed account groups have been configured. For more information about account groups, see [Account Groups: General Information](Account_Groups_GeneralInfo.md).**Attention:** We do not recommend mapping the Inventory account \(which is an account of the *Asset* type\) to an account group of the *Expense* type. If you need to track stock items purchased for the project in the project cost budget, use the commitment tracking functionality. For more information, see [Tracking Cost Commitments](Projects_Commitments_Mapref.md).

|
|[Stock Items](IN_20_25_00.md) \(IN202500\) form|Make sure that all stock items have been defined.For each stock item, you can specify the default source from which the item will be issued by selecting either *Project Stock* or *Free Stock* in the **Default Inventory Source for Projects** box on the **Inventory Planning** tab of the form.

For more information about stock items, see [Stock Items: General Information](Stock_Items_GeneralInfo.md).|
|The **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form|Make sure that the necessary project and project tasks have been created. In the project settings, select the inventory tracking mode in the **Inventory Tracking** box on the **Summary** tab as follows: -   Select *Track by Project Quantity and Cost* if you need to separate project inventory from free stock, reserve the items directly for the project, and track project-specific item cost.
-   Select *Track by Project Quantity* if you need to separate project inventory from free stock, reserve the items directly for the project, and track item cost by general cost calculation rules.

Select the **Allow Issue from Free Stock** check box if you plan to use items that are not reserved for the project along with the project stock.

For more information on creating a project, see [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).

|

## Disabling the Project-Specific Inventory Feature {#section_d2h_vz2_22c .section}

If you need to disable the *Project-Specific Inventory* feature in a production system, you can do this on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form after the following preparatory actions:

1.  Completing \(or canceling\) all the documents that include stock items stored in the project inventory: sales orders and shipments, purchase orders and purchase receipts, and inventory transactions.
2.  Cleaning up the project inventory. To do this, you need to move the items reserved for projects to free stock \(that is, to the non-project code\) or to projects linked to warehouse locations \(that is, projects that have the *Track by Location* inventory tracking mode\).

    **Tip:** You can mass-transfer project stock to free stock on the [Transfer Project Inventory to Free Stock](PM_50_80_00.md) \(PM508000\) form. For more information, see [Project Inventory Tracking: Mass Processing](Projects_Inventory_Tracking_MassProcessing.md).

3.  Assigning all existing projects the *Track by Location* inventory tracking mode and linking them to particular warehouse locations.

Once the feature is disabled, the system will continue tracking inventory for projects using the only *Track by Location* mode. For more information, see [Project Inventory Tracking by Warehouse Location: General Information](Projects_Inventory_Locations_GeneralInfo.md).

## Other Settings That Affect the Workflow {#section_axs_rws_rqb .section}

You can affect the workflow of sales and purchases of items for projects by specifying additional settings as follows:

-   To cause the system to automatically select a project task when a particular project is selected during the creation of a purchase order, select the **Default** check box on the **Tasks** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form for one of the tasks of the project.
-   To cause the system to include non-stock lines of the *Service* type in purchase receipts created from the purchase orders of the *Normal* type, select the **Process Service Lines from Normal Purchase Orders via Purchase Receipt** check box on the **General** tab \(**Other** section\) of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.
-   To cause the system to track costs for the projects with the *Track by Project Quantity* inventory tracking mode by individual warehouse locations, select the **Cost Separately** check box for the needed warehouse locations on the **Locations** tab of the [Warehouses](IN_20_40_00.md) \(IN204000\) form.

**Parent topic:**[Tracking Project Inventory](../UserGuide/Projects_Inventory_Tracking_Mapref.md)

