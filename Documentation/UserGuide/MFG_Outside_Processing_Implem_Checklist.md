# Outside Processing: Implementation Checklist {#_37559fc5-56ff-41b7-bb17-4c612cdc9eb1 .concept}

The following sections provide details you can use to ensure that the system is configured properly for performing the outside processing, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Prerequisites { .section}

Mare sure that the following tasks have been performed before you start implementing production processing:

-   The system has been prepared for manufacturing implementation, as described in [System Preparation for Manufacturing Implementation: Implementation Activity](../ImplementationGuide/config_MFG_General_Settings_Implem_Activity.md).
-   [Configuring Production Cost Drivers: Implementation Activity](../ImplementationGuide/config_MFG_Production_Cost_Drivers_Implem_Activity.md) so that the needed cost drivers have been created in a company with the *U100* dataset preloaded.

## Implementation Checklist { .section}

We recommend that before you initially perform outside processing, you make sure the needed settings have been specified and entities have been created, as described in [Outside Processing: Configuration](MFG_Outside_Processing_Configuration.md) and summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Numbering Sequences](CS_20_10_10.md) \(CS201010\)|The numbering sequence for vendor shipments has been created.|
|[Production Preferences](AM_10_20_00.md) \(AM102000\)|The numbering sequence for vendor shipments has been specified in the **Vendor Shipment Numbering Sequence** box in the **Numbering Settings** section of the **General Settings** tab.|
|[Work Centers](AM_20_70_00.md) \(AM207000\)|At least one work center has been created for outside processing with the **Outside Process** check box selected in the Summary area.|
|[Stock Items](IN_20_25_00.md) \(IN202500\)

 [Non-Stock Items](IN_20_20_00.md) \(IN202000\)

|The needed stock items or non-stock items that you will use to pay each vendor for its services have been created.|
|[Vendors](AP_30_30_00.md) \(AP303000\)|The needed vendors who will represent subcontractors have been created.|
|[Bill of Material](AM_20_80_00.md) \(AM208000\)|The needed bills of material that you will use for tracking outside processing operations have been created. The settings for each bill of material must be specified as follows:-   The Operations table must include the needed work centers dedicated for tracking the outside processing operations.
-   For each outside processing operation, the **Materials** tab must include at least one material with a **Material Type** of *Subcontract* and the appropriate **Subcontract Source**.
-   The warehouse from which a material with the *Ship to Vendor* subcontract source will be issued has been specified in the **Warehouse** column of the material line. If the column is empty, the material will be issued from the warehouse specified in the **Warehouse** box of the Summary area.
-   The appropriate vendor information has been specified on the **Outside Process** tab for each outside processing operation.

|

## Recommended Settings for Work Centers { .section}

When you create a work center dedicated for outside processing, we recommend that you specify the following settings in the Summary area of the [Work Centers](AM_20_70_00.md) \(AM207000\) form:

-   **Outside Process**: Selected
-   **Standard Cost**: `0`
-   **Basis for Capacity**: *Crew Size*
-   **Scrap Action Default:** *No Action*
-   **Backflush Materials**: Selected
-   **Backflush Labor**: Selected

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of outside processing by specifying additional settings in the **Vendor Shipment Settings** section of the [Production Preferences](AM_10_20_00.md) \(AM102000\) form as follows:

-   To cause vendor shipments to be created with the *On Hold* status \(so that the user can verify them before processing them further\), you select the **Hold Shipments on Entry** check box.
-   To make the system validate totals on vendor shipments, you select the **Validate Shipment Total on Confirmation** check box.

We recommend that you set up backflushing for the material you use to record subcontracting costs. If this material is not backflushed, you will need to create a material transaction to record the subcontracting costs.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Outside Processing: Process Activity](MFG_Outside_Processing_Activity.md).

**Parent topic:**[Producing Items with Outside Processing](../UserGuide/MFG_Outside_Processing_Mapref.md)

