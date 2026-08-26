# Two-Step Transfers: Implementation Checklist {#_783964b8-c825-4485-a6cb-7275d410b693 .concept}

Before you start processing two-step transfers, you should make sure that the system is configured properly, as described in the following sections.

## Implementation Checklist { .section}

In the following table, you can find features, settings, and other actions that are required for processing two-step transfers.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the following features are enabled:-   *Inventory*
-   *Multiple Warehouses*

|
|[Inventory Preferences](IN_10_10_00.md) \(IN101000\) form|Make sure that all necessary settings related to inventory have been specified, as described in [Order Management with Inventory](../ImplementationGuide/config_InvMgmt_Basic_Mapref.md).|
|[Warehouses](IN_20_40_00.md) \(IN204000\) form|Make sure that the required warehouses have been created, as described in [Warehouses: Implementation Activity](Warehouses_Implem_Activity.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\) form|Make sure that the required stock items have been created, as described in the [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of the processing of two-step transfers by specifying additional settings:

-   To cause transfers with the *On Hold* status to be created \(so that a user can verify the documents before further processing\), you select the **Hold Documents on Entry** check box in the **Data Entry Settings** section on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form.
-   To cause general ledger batches generated during the processing of inventory documents to be posted automatically, you select the **Automatically Post on Release** check box in the **Posting Settings** sections on the [Inventory Preferences](IN_10_10_00.md) form.

## Validation of Settings { .section}

To make sure that all settings are configured correctly, process a sale of stock items, as described in [Two-Step Transfers: Process Activity](InvMgmt_2Step_Transfers_Process_Activity.md).

**Parent topic:**[Processing Two-Step Inventory Transfers](../UserGuide/InvMgmt_2Step_Transfers_Mapref.md)

