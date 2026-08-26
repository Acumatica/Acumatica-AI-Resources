# Applying Reverse VAT: Implementation Checklist {#_b6c27e99-73d9-4f49-b679-f1688eb1145c .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing purchases with reverse VAT, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_yhp_fjv_vxb .section}

We recommend that before you initially process purchases with reverse VAT, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *VAT Reporting* feature has been enabled.|
|[Vendors](AP_30_30_00.md) \(AP303000\)|The tax agency has been configured, as described in [Tax Report Configuration: To Create a Tax Report for VAT Variations](../ImplementationGuide/TaxReport_VAT_Variations_Implem_Activity.md).|
|[Reporting Settings](TX_20_51_00.md) \(TX205100\)|The tax report where the reverse VAT should be recorded has been configured, as described in [Tax Report Configuration: To Create a Tax Report for VAT Variations](../ImplementationGuide/TaxReport_VAT_Variations_Implem_Activity.md).|
|[Tax Categories](TX_20_55_00.md)\(TX205500\)|The tax category for the applied VAT should be created, as described in [Value-Added Taxes: To Create a Reverse VAT](../ImplementationGuide/Taxes_Configuring_VAT_Implem_Activity_ReverseVAT.md).|
|[Tax Zones](TX_20_60_00.md) \(TX206000\)|The tax zone for VAT that will be used in the vendor's settings should be created, as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).|
|[Taxes](TX_20_50_00.md) \(TX205000\)|A reverse VAT with the *Output* type and the general VAT with the *Input* type with the needed settings should be created, as described in [Value-Added Taxes: To Create a Reverse VAT](../ImplementationGuide/Taxes_Configuring_VAT_Implem_Activity_ReverseVAT.md).|
|[Vendors](AP_30_30_00.md) \(AP303000\)|The needed vendors should be configured. Depending on the geographical location of the purchase transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your vendor, you should assign the appropriate tax zone to each new or existing vendor.|

## Other Settings That Affect the Workflow {#section_a3p_fjv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AP bills the *On Hold* status.
    -   Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a payment reference number in the **Vendor Ref.** box when creating an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AP bills to be automatically posted to the general ledger once they are released.

## Validation of Configuration {#section_c3p_fjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process purchases with reverse VAT by performing instructions similar to those described in [Applying Reverse VAT: Process Activity](Taxes_Applying_Reverse_VAT_Process_Activity.md).

**Parent topic:**[Applying a Reverse VAT](../UserGuide/Taxes_Applying_Reverse_VAT_Mapref.md)

