# Project Inventory Tracking by Warehouse Location: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for tracking project inventory by location, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

Before you start working with a project and tracking project inventory by location, you should make sure that the project accounting functionality is configured and the project has the needed settings, as summarized in the following checklist.

<table id="table_ldr_1cr_qqb"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form

</td><td>

Make sure that the *Projects* feature is enabled.

</td></tr><tr><td>

[Account Groups](PM_20_10_00.md) \(PM201000\) form

</td><td>

Make sure that all needed account groups have been configured. For more information about account groups, see [Account Groups: General Information](Account_Groups_GeneralInfo.md).

</td></tr><tr><td>

[Projects Preferences](PM_10_10_00.md) \(PM101000\) form

</td><td>

Make sure that all necessary settings related to project accounting have been specified, as described in the [Basic Project Configuration: General Information](../ImplementationGuide/config_Project_Basic_GeneralInfo.md).

</td></tr><tr><td>

[Projects](PM_30_10_00.md) \(PM301000\)

</td><td>

Make sure that the necessary project and project tasks have been created. In the project settings, *Track by Location* needs to be selected in the **Inventory Tracking** box on the **Summary** tab. For more information on creating a project, see [Project Creation and Processing: General Information](Projects_Process_GeneralInfo.md).

</td></tr><tr><td>

[Warehouses](IN_20_40_00.md) \(IN204000\) form

</td><td>

Make sure that a separate location is created and associated with each project task for which you need to receive inventory items in a warehouse. \(For a location associated with a project task, the **Cost Separately** check box is selected automatically.\)**Tip:** We also recommend that you specify a higher **Pick Priority** value for project locations than for other locations, to avoid issuing project materials for other projects or to customers outside of projects.

</td></tr></tbody>
</table>

## Inventory and Order Management Checklist

We recommend that before you start working with a project and tracking project inventory by location, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_85f5b1eb-16bc-4091-b7a6-60a8b5fe2b59"><thead><tr><th>

Form

</th><th>

Tasks to Perform

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form

</td><td>

Make sure that the following features are enabled:-   *Inventory and Order Management*
-   *Inventory*
-   *Multiple Warehouses*
-   *Multiple Warehouse Locations*

</td></tr><tr><td>

Multiple forms

</td><td>

Make sure that the basic inventory and order management preferences have been configured, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md) \(IN202500\) form

</td><td>

Make sure that all stock items have been defined. For more information about stock items, see [Stock Items: General Information](Stock_Items_GeneralInfo.md).**Attention:** We recommend that you not map the inventory accrual account \(which is an account of the *Asset* type\) to an account group. If you need to track stock items purchased for the project in the project cost budget, we recommend that you use the commitment tracking functionality. For more information, see [Tracking Cost Commitments](Projects_Commitments_Mapref.md).

</td></tr><tr><td>

[Non-Stock Items](IN_20_20_00.md) \(IN202000\) form

</td><td>

Make sure that all non-stock items have been defined, as described in [Non-Stock Items: General Information](Non_Stock_Items_OrderMgmt_GeneralInfo.md). Also, make sure that the expense account of the items is mapped to the appropriate account group. **Important:** Make sure that *Purchases* is selected in the **Post Cost to Expenses** box on the **Price/Cost** tab; otherwise, the expenses related to the non-stock item won’t be recorded to the cost budget of the applicable project.

</td></tr><tr><td>

[Vendors](AP_30_30_00.md) \(AP303000\) form

</td><td>

Make sure that all needed vendors have been defined in the system, as described in [Vendors: General Information](Vendor_GeneralInfo.md).

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of sales and purchases of items for projects by specifying additional settings as follows:

-   To cause the system to automatically select a project task when a particular project is selected during the creation of a purchase order, select the **Default** check box on the **Tasks** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form for one of the tasks of the project.
-   To cause the system to include non-stock lines of the *Service* type in purchase receipts created from the purchase orders of the *Normal* type, select the **Process Service Lines from Normal Purchase Orders via Purchase Receipt** check box on the **General** tab \(**Other** section\) of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that you perform instructions similar to those described in [Project Inventory Tracking by Warehouse Location: To Purchase Materials and Services for a Project](Projects_Inventory_Locations_Process_Activity.md).

**Parent topic:**[Tracking Project Inventory by Warehouse Location](../UserGuide/Projects_Inventory_Locations_Mapref.md)

