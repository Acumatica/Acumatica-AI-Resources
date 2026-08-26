# AR Documents with VAT: Implementation Checklist {#_d22ff916-1b58-4b19-95db-a0de8b645f13 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing AR documents with VAT applied, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_b3l_fjv_vxb .section}

We recommend that before you initially process AR documents with VAT, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *VAT Reporting* feature has been enabled.|
|[Vendors](AP_30_30_00.md) \(AP303000\)|The tax agency has been configured, as described in [Tax Agency: To Set Up a Tax Agency for VAT](../ImplementationGuide/TaxAgency_VAT_Implem_Activity.md).|
|[Reporting Settings](TX_20_51_00.md) \(TX205100\)|The tax report where the VAT should be recorded has been configured, as described in [Tax Report Configuration: To Create a Tax Report for VAT](../ImplementationGuide/TaxReport_VAT_Implem_Activity.md).|
|[Tax Categories](TX_20_55_00.md)\(TX205500\)|The tax category for the applied VAT should be created, as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).|
|[Tax Zones](TX_20_60_00.md) \(TX206000\)|The tax zone for VAT that will be used in the vendor's settings should be created, as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).|
|[Taxes](TX_20_50_00.md) \(TX206000\)|The value-added tax \(VAT\) with the needed settings and an exempt VAT should be created, as described in [Value-Added Taxes: To Create a General VAT and Exempt VAT](../ImplementationGuide/Taxes_Configuring_VAT_Impem_Activity_General_VAT.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|The non-stock items should exist and be associated with the appropriate tax category to calculate tax amounts in the documents in which you specify inventory IDs.|
|[Customers](AR_30_30_00.md) \(AR303000\)|The needed customers should be configured. Depending on the geographical location of the sales transaction, different taxes can be applied to the document. To define which taxes are applied in the location of your customer, you should assign the appropriate tax zone to each new or existing customer.|

## Settings That Affect the Workflow {#section_d3l_fjv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Make sure that the **Automatically Post on Release** check box is selected. This setting causes GL batches to be immediately posted after they are released.
    -   Clear the **Generate Consolidated Batches** check box to cause every AR transaction you enter to be posted as an individual batch to the general ledger. \(When this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.\)
-   The following accounts receivable settings should be specified on the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   Select the **Hold Documents on Entry** check box in the **Data Entry Settings** section. This setting gives the created AR documents the *On Hold* status.
    -   Clear the **Require Payment Reference on Entry** check box in the **Data Entry Settings** section. This setting means that you do not have to enter a payment reference number in the **Payment Ref.** box when creating an AR document on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.
    -   Make sure that the **Automatically Post on Release** check box is selected in the **Posting Settings** section. This setting causes AR documents to be automatically posted to the general ledger once they are released.
-   On the **Company Details** tab of the [Companies](CS_10_15_00.md) \(CS101500\) form, *Document Amount* is selected in the **Cash Discount Base** box. This setting indicates that the cash discount percent will be applied to the total amount of a document plus the VAT amount.

## Validation of Configuration {#section_f3l_fjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process AP documents with VAT by performing instructions similar to those described in [AR Documents with VAT: To Process an AR Invoice](Taxes_Processing_ARDocs_with_VAT_Activity1.md) and [AR Documents with VAT: To Process a Credit Memo](Taxes_Processing_ARDocs_with_VAT_Activity2.md).

**Parent topic:**[Processing AR Documents with Value-Added Taxes](../UserGuide/Taxes_Processing_ARDocs_with_VAT_Mapref.md)

