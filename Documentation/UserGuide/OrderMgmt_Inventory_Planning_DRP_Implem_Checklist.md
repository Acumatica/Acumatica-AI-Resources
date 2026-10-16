# Inventory Planning with DRP: Implementation Checklist

The following sections provide details that you can use to ensure that the system is configured properly for distribution requirements planning \(DRP\)—that is, inventory planning that does not include production orders—and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially perform inventory planning, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist. You can perform a sample configuration of inventory planning in a test instance before its configuration in a production instance, as described in [Inventory Planning Configuration: To Implement DRP](../ImplementationGuide/config_Inventory_Planning_DRP_Implem_Activity.md).

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:

 -   *Distribution Requirements Planning*
-   *Multiple Warehouses* if your company transfers stock items between warehouses
-   *Multiple Warehouse Locations* if your company uses multiple warehouse locations
-   *Kit Assembly* if your company uses stock kits or non-stock kits

</td></tr><tr><td>

Multiple forms

</td><td>

The inventory planning functionality has been configured, as described in [Inventory Planning Configuration: General Information](../ImplementationGuide/config_Inventory_Planning_GeneralInfo.md).

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md) \(IN202500\)

</td><td>

For items that should be included in inventory planning, the planning method, inventory planning settings, and replenishment settings have been specified, as described in [Inventory Planning Configuration: General Information](../ImplementationGuide/config_Inventory_Planning_GeneralInfo.md).

</td></tr><tr><td>

[Item Warehouse Details](IN_20_45_00.md) \(IN204500\)

</td><td>

If your company transfers stock items between warehouses or has specific planning requirements for each warehouse, the inventory planning settings have been specified for item–warehouse pairs, as described in [Inventory Planning Configuration: General Information](../ImplementationGuide/config_Inventory_Planning_GeneralInfo.md).

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of inventory planning by specifying additional settings on the [Inventory Planning Preferences](AM_10_00_00.md) \(AM100000\) form as follows:

-   To include orders in the processing that are typically excluded, select any of the following check boxes in the **General** section: **Include On Hold Sales Orders**, **Include On Hold Purchase Orders**, and **Include Expired Blanket Orders**.
-   To cause the system to consolidate items with the same ID from multiple demand documents into a single planning recommendation during inventory planning, select the **Use Days of Supply to Consolidate Orders** check box in the **Consolidation** section.
-   To cause the system to consolidate items with the same ID from multiple demand documents with deferred due dates into a single planning recommendation, select the **Use Long-Term Consolidation Bucket** check box in the **Consolidation** section. Then specify the following settings:
    -   **Consolidate After \(Days\)**: The delay period after which the system starts consolidating items in demand documents
    -   **Bucket \(Days\)**: The number of days within which the due dates in the demand documents must fall

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform inventory planning by completing instructions similar to those described in [Inventory Planning with DRP: Process Activity](OrderMgmt_Inventory_Planning_DRP_Process_Activity.md).

**Parent topic:**[Performing Inventory Planning with DRP](../UserGuide/OrderMgmt_Inventory_Planning_DRP_Mapref.md)

