# Production Processing: Implementation Checklist {#_1471932b-2c8c-42b1-9f70-1c5af7abaf6d .concept}

The following sections provide details you can use to ensure that the system is configured properly for production processing, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Prerequisites { .section}

Make sure that the following tasks have been performed before you start implementing production processing:

-   The system has been prepared for manufacturing implementation, as described in [System Preparation for Manufacturing Implementation: Implementation Activity](../ImplementationGuide/config_MFG_General_Settings_Implem_Activity.md).
-   Bills of material and all the related entities have been created, as described in [Implementing Bills of Material: General Process](../ImplementationGuide/config_MFG_con_Implementing_BOM.md).

## Implementation Checklist { .section}

We recommend that before you initially start processing production orders, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:-   The *Manufacturing* group of features. If you use additional manufacturing functionality \(such as estimates\), make sure that the corresponding features have been enabled within this group of features.
-   The *Inventory* feature within the *Inventory and Order Management* group of features.

|
|[Production Order Types](AM_20_11_00.md) \(AM201100\)|Production order types have been created, as described in [Production Order Types: General Information](../ImplementationGuide/config_MFG_Production_Order_Types_GeneralInfo.md).|
|[Production Preferences](AM_10_20_00.md) \(AM102000\)|All necessary settings related to production management have been specified.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing production orders by specifying additional settings on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form as follows:

-   To cause labor, move, material, and WIP adjustment transactions to be created with the *On Hold* status \(so that the user can verify them before processing them further\), on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form, you select the **Hold Documents on Entry** check box.
-   To make the system validate totals on labor, move, material, and WIP adjustment transactions, on the [Production Preferences](AM_10_20_00.md) form, you select the **Validate Document Totals on Entry** check box.
-   To make the system immediately update the available quantities of items, on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form, you select the **Automatically Post on Release** check box.
-   To make production orders follow a new production order workflow which changes a production order with the status *Complete* to *Locked*, and then to *Closed*, you select the **Lock Production Orders Before Closing** check box. If the **Lock Production Orders Before Closing** check box is cleared, then the production order will follow the current workflow which changes a production order with the status *Completed* to *Closed*.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Production Processing: To Process Production-Related Documents and Transactions](MFG_Production_Order_Processing_Activity.md).

**Parent topic:**[Producing Items](../UserGuide/MFG_Production_Order_Processing_Mapref.md)

