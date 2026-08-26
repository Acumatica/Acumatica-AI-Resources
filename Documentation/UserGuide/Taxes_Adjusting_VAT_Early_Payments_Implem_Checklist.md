# VAT for Early Payments: Implementation Checklist {#_d3a746f3-b2a3-433b-8070-f7cf2bc85d9a .concept}

The following sections provide details you can use to ensure that the system is configured properly for adjusting VAT for early payments, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_bxm_fjv_vxb .section}

We recommend that before you initially process a payment for an invoice with a cash discount and generate a VAT credit memo, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *VAT Reporting* feature has been enabled.|
|[Vendors](AP_30_30_00.md) \(AP303000\)|The tax agency has been configured, as described in [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).|
|[Reporting Settings](TX_20_51_00.md) \(TX205100\)|The tax report where the VAT should be recorded has been configured, as described in [Tax Report Configuration: To Create a Tax Report for VAT](../ImplementationGuide/TaxReport_VAT_Implem_Activity.md).|
|[Tax Categories](TX_20_55_00.md)\(TX205500\)|The tax category for the applied VAT should be created, as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).|
|[Tax Zones](TX_20_60_00.md) \(TX206000\)|The tax zone for VAT that will be used in the vendor's settings should be created.|
|[Taxes](TX_20_50_00.md) \(TX206000\)|The value-added tax \(VAT\) with the **Direct-Entry Tax** check box selected should be created, as described in [Direct Tax Payment: To Create a Tax Bill for a Tax Agency](Taxes_Paying_Tax_Directly_Create_Tax_Bill_Applied_to_Purchase.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|The customer account has been configured.|
|[Credit Terms](CS_20_65_00.md)\(CS206500\)|The credit terms that gives customers a cash discount for early payments have been configured and specified for the needed customer on the [Customers](AR_30_30_00.md) form|

## Settings That Affect the Workflow {#section_dxm_fjv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable settings should be specified on the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AR documents the *On Hold* status.
    -   Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a payment reference number in the **Payment Ref.** box when creating an AR document on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AR documents to be automatically posted to the general ledger once they are released.
    -   Select the **Automatically Release Credit Memos** check box in the **VAT Recalculation Settings** section. This setting causes the generated credit memos to be released automatically by the system. If this check box is cleared, you will have to release all generated credit memos on the [Release AR Documents](AR_50_10_00.md) \(AR501000\) form, because the system closes the document automatically only after the corresponding credit memo is released.

## Validation of Configuration {#section_fxm_fjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you generate a VAT credit memo by performing instructions similar to those described in [VAT for Early Payments: To Process a Payment with a Cash Discount](Taxes_Adjusting_VAT_Early_Payments_Process_Activity.md) and prepare a new revision of the tax report as described in [VAT for Early Payments: To Prepare a New Revision of VAT Tax Report](Taxes_Adjusting_VAT_Early_Payments_Process_Activity2.md).

**Parent topic:**[Adjusting VAT for Early Payments](../UserGuide/Taxes_Adjusting_VAT_Early_Payments_Mapref.md)

