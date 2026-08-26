# Bills with Withholding Tax: Implementation Checklist {#_7a8bed76-b83f-4820-86ba-9791f8c0402d .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing a bill to which a withholding tax has been applied, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_bpm_fjv_vxb .section}

We recommend that before you initially process a bill with a withholding tax, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *VAT Reporting* feature has been enabled.|
|[Vendors](AP_30_30_00.md) \(AP303000\)|A vendor set up as a tax agency has been configured. For details, see [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).|
|[Tax Categories](TX_20_55_00.md) \(TX205500\)|The needed tax category has been created as described in [Withholding Taxes: Implementation Activity](../ImplementationGuide/Taxes_Configuring_WithholdingTax_Implem_Activity.md).|
|[Tax Zones](TX_20_60_00.md) \(TX206000\)|The needed tax zone has been created as described in [Withholding Taxes: Implementation Activity](../ImplementationGuide/Taxes_Configuring_WithholdingTax_Implem_Activity.md).|
|[Reporting Settings](TX_20_51_00.md) \(TX205100\)|A tax report has been configured as described in [Tax Report Configuration: To Create a Tax Report for VAT](../ImplementationGuide/TaxReport_VAT_Implem_Activity.md). The tax report settings have been updated for the withholding tax as described in [Withholding Taxes: Implementation Activity](../ImplementationGuide/Taxes_Configuring_WithholdingTax_Implem_Activity.md).|
|[Taxes](TX_20_50_00.md) \(TX205000\)|A withholding tax has been configured as described in [Withholding Taxes: Implementation Activity](../ImplementationGuide/Taxes_Configuring_WithholdingTax_Implem_Activity.md).|
|[Release Tax Report](TX_50_20_00.md) \(TX502000\)|A tax report for the *01-2026* period has been released as described in [Tax Report for VAT: Process Activity](Taxes_Preparing_a_Tax_Report_VAT_Process_Activity.md).|

## Other Settings That Affect the Workflow {#section_dpm_fjv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General Settings** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AP bills the *On Hold* status.
    -   Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a payment reference number in the **Vendor Ref.** box when creating an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AP bills to be automatically posted to the general ledger once they are released.

## Validation of Configuration {#section_fpm_fjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a bill with a withholding tax by performing instructions similar to those described in [Bills with Withholding Tax: Process Activity](Taxes_Processing_Bills_with_Withholding_Taxes_Process_Activity.md).

**Parent topic:**[Processing AP Bills with Withholding Taxes](../UserGuide/Taxes_Processing_Bills_with_Withholding_Taxes_Mapref.md)

