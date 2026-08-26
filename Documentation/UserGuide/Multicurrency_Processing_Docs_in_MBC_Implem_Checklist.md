# Documents in Different Base Currencies: Implementation Checklist {#_ff44ab83-ebbb-4490-aa06-cf0a95b4dcc7 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing documents between companies that use different base currencies, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_dty_3jv_vxb .section}

We recommend that before you initially process documents between companies with different base currencies, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Multibranch Support*, *Multicompany Support*, *Customer and Vendor Visibility Restriction*, *Multicurrency Accounting*, and *Multiple Base Currencies* features have been enabled.|
|Multiple forms|The necessary settings have been specified, as demonstrated in the examples of [Multiple Base Currencies: Implementation Activity](../ImplementationGuide/config_Multicurrency_MultipleBaseCurrencies_Implem_Activity.md), [Company Groups: Implementation Activity](../ImplementationGuide/config_Finance_Company_Group_Implem_Activity.md),[Customer Visibility: To Restrict Visibility to a New Company](../ImplementationGuide/Finance_Restricting_Customer_Visibility_Implem_Activity2.md), and [Vendor Visibility: To Restrict Visibility to a New Company](../ImplementationGuide/Finance_Restricting_Vendor_Visibility_Activity2.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|The *CONSULT* non-stock item has been defined.|

## Other Settings That Affect the Workflow {#section_fty_3jv_vxb .section}

You can affect the workflow of processing AR invoices by specifying additional settings as follows:

-   On the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   To cause GL batches to be immediately posted after they are released, select the **Automatically Post on Release** check box.
    -   To cause every AR and AP transaction you enter to be posted as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box. If this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.
-   On the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   To cause all created AR invoices to have the *Balanced* status, clear the **Hold Documents on Entry** check box in the **Data Entry Settings** section. If this check box is selected, the created AR invoices are assigned the *On Hold* status.
    -   To cause AR invoices to be automatically posted to the general ledger once they are released, select the **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared, you have to post the batch after you release the document.
-   On the **General Settings** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form:
    -   To cause all created AP bills to have the *Balanced* status, clear the **Hold Documents on Entry** check box in the **Data Entry Settings** section. If this check box is selected, the created AP bills are assigned the *On Hold* status.
    -   To cause AP bills to be automatically posted to the general ledger once they are released, select the **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared, you have to post the batch after you release the document.

## Validation of Configuration {#section_hty_3jv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process documents between companies with different base currencies by performing instructions similar to those described in [Documents in Different Base Currencies: To Process an AR Invoice](Multicurrency_Processing_Docs_in_MBC_ProcessActivity1.md) and [Documents in Different Base Currencies: To Process an AP Bill](Multicurrency_Processing_Docs_in_MBC_ProcessActivity2.md).

**Parent topic:**[Processing Documents Between Companies with Different Base Currencies](../UserGuide/Multicurrency_Processing_Docs_in_MBC_Mapref.md)

