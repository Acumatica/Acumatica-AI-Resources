# Applying a Pending VAT: Implementation Checklist {#_4eaa750d-6d4d-49c4-9164-e259b9975355 .concept}

The following sections provide details you can use to ensure that the system is configured properly for applying a pending VAT and recognizing it, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_ppp_fjv_vxb .section}

We recommend that before you initially process documents with pending VAT and recognize the pending VAT, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *VAT Reporting* feature has been enabled.|
|[Vendors](AP_30_30_00.md) \(AP303000\)|The tax agency has been configured, as described in [Tax Report Configuration: To Create a Tax Report for VAT Variations](../ImplementationGuide/TaxReport_VAT_Variations_Implem_Activity.md).|
|[Reporting Settings](TX_20_51_00.md) \(TX205100\)|The tax report where the reverse VAT should be recorded has been configured, as described in [Tax Report Configuration: To Create a Tax Report for VAT Variations](../ImplementationGuide/TaxReport_VAT_Variations_Implem_Activity.md).|
|[Tax Categories](TX_20_55_00.md)\(TX205500\)|The tax category for pending VAT has been configured, as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).|
|[Tax Zones](TX_20_60_00.md) \(TX206000\)|The tax zone for VAT that will be used in the vendor's settings should be created, as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).|
|[Taxes](TX_20_50_00.md) \(TX205000\)|A pending VAT with the needed settings should be created, as described in [Value-Added Taxes: To Create a Pending VAT](../ImplementationGuide/Taxes_Configuring_VAT_Implem_Activity_PendingVAT.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|The needed customers should be configured. Depending on the geographical location of the sales transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your customer, you should assign the appropriate tax zone to each new or existing customer.|
|[Credit Terms](CS_20_65_00.md) \(CS206500\)|The multiple-installment credit terms used in an AP bill to which a pending VAT is applied should be created.|
|[Chart of Accounts](GL_20_25_00.md)\(GL202500\)|The needed Pending Tax Payable and Pending Tax Claimable accounts have been created.|

## Settings That Affect the Workflow {#section_rpp_fjv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable settings should be specified on the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AR documents the *On Hold* status.
    -   Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a payment reference number in the **Payment Ref.** box when creating an AR document on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AR documents to be automatically posted to the general ledger once they are released.

## Validation of Configuration {#section_tpp_fjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process documents with pending VAT and recognize VAT by performing instructions similar to those described in [Applying a Pending VAT: To Apply a Pending VAT to an AR Invoice](Taxes_Applying_Pending_VAT_Process_Activity.md) and [Applying a Pending VAT: To Apply a Pending VAT to an AP Bill with Multiple Installments](Taxes_Applying_Pending_VAT_Process_MultipleInstallments.md).

**Parent topic:**[Applying a Pending VAT](../UserGuide/Taxes_Applying_Pending_VAT_Mapref.md)

