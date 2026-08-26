# AP Documents with VAT: Implementation Checklist {#_aa84a36a-dc20-43c1-8fef-a2e31f280e32 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing AP documents with VAT applied, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_qpl_fjv_vxb .section}

We recommend that before you initially process AP documents with VAT, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *VAT Reporting* feature has been enabled.|
|[Vendors](AP_30_30_00.md) \(AP303000\)|The tax agency has been configured, as described in [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).|
|[Reporting Settings](TX_20_51_00.md) \(TX205100\)|The tax report where the VAT should be recorded has been configured, as described in [Tax Report Configuration: To Create a Tax Report for VAT](../ImplementationGuide/TaxReport_VAT_Implem_Activity.md).|
|[Tax Categories](TX_20_55_00.md)\(TX205500\)|The tax category for the applied VAT should be created, as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).|
|[Tax Zones](TX_20_60_00.md) \(TX206000\)|The tax zone for VAT that will be used in the vendor's settings should be created, as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).|
|[Taxes](TX_20_50_00.md) \(TX205000\)|The value-added tax \(VAT\) with the needed settings and an exempt VAT should be created, as described in [Value-Added Taxes: To Create a General VAT and Exempt VAT](../ImplementationGuide/Taxes_Configuring_VAT_Impem_Activity_General_VAT.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|The non-stock items should exist and be associated with the appropriate tax category to calculate tax amounts in the documents in which you specify inventory IDs.|
|[Vendors](AP_30_30_00.md) \(AP303000\)|The needed vendors should be configured. Depending on the geographical location of the purchase transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your vendor, you should assign the appropriate tax zone to each new or existing vendor.|

## Other Settings That Affect the Workflow {#section_spl_fjv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AP transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts payable settings should be specified on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AP bills the *On Hold* status.
    -   Clear the **Require Vendor Reference** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a payment reference number in the **Vendor Ref.** box when creating an AP bill on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AP bills to be automatically posted to the general ledger once they are released.

## Validation of Configuration {#section_upl_fjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process AP documents with VAT by performing instructions similar to those described in [AP Documents with VAT: To Process an AP Bill](Taxes_Processing_APDocs_with_VAT_Activity1.md) and [AP Documents with VAT: To Process a Debit Adjustment](Taxes_Processing_APDocs_with_VAT_Activity2.md).

**Parent topic:**[Processing AP Documents with Value-Added Taxes](../UserGuide/Taxes_Processing_APDocs_with_VAT_Mapref.md)

