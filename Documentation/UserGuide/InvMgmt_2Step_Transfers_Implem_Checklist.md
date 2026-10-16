# Two-Step Transfers: Implementation Checklist

Before you start processing two-step transfers, you should make sure that the system is configured properly, as described in the following sections.

## Implementation Checklist

In the following table, you can find features, settings, and other actions that are required for processing two-step transfers.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form

</td><td>

Make sure that the following features are enabled:-   *Inventory*
-   *Multiple Warehouses*

</td></tr><tr><td>

[Inventory Preferences](IN_10_10_00.md) \(IN101000\) form

</td><td>

Make sure that all necessary settings related to inventory have been specified, as described in [Order Management with Inventory](../ImplementationGuide/config_InvMgmt_Basic_Mapref.md).

</td></tr><tr><td>

[Warehouses](IN_20_40_00.md) \(IN204000\) form

</td><td>

Make sure that the required warehouses have been created, as described in [Warehouses: Implementation Activity](Warehouses_Implem_Activity.md).

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md) \(IN202500\) form

</td><td>

Make sure that the required stock items have been created, as described in the [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of the processing of two-step transfers by specifying additional settings:

-   To cause transfers with the *On Hold* status to be created \(so that a user can verify the documents before further processing\), you select the **Hold Documents on Entry** check box in the **Data Entry Settings** section on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form.
-   To cause general ledger batches generated during the processing of inventory documents to be posted automatically, you select the **Automatically Post on Release** check box in the **Posting Settings** sections on the [Inventory Preferences](IN_10_10_00.md) form.

## Validation of Settings

To make sure that all settings are configured correctly, process a sale of stock items, as described in [Two-Step Transfers: Process Activity](InvMgmt_2Step_Transfers_Process_Activity.md).

**Parent topic:**[Processing Two-Step Inventory Transfers](../UserGuide/InvMgmt_2Step_Transfers_Mapref.md)

