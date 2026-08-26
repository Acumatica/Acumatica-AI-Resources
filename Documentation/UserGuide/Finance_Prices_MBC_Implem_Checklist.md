# Prices in Base Currencies: Implementation Checklist {#_4bb90b8a-9a46-4015-9e59-b2721cc2ac3d .concept}

The following sections provide details you can use to ensure that the system is configured properly for maintaining prices and costs in different base currencies, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially set up prices and costs for companies in different base currencies, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Multibranch Support*, *Multicompany Support*, *Customer and Vendor Visibility Restriction*, *Multicurrency Accounting*, and *Multiple Base Currencies* features have been enabled.|
|Multiple forms|The necessary settings have been specified, as demonstrated in the examples of [Multiple Base Currencies: Implementation Activity](../ImplementationGuide/config_Multicurrency_MultipleBaseCurrencies_Implem_Activity.md), [Company Groups: Implementation Activity](../ImplementationGuide/config_Finance_Company_Group_Implem_Activity.md), and [Customer Visibility: To Restrict Visibility to a New Company](../ImplementationGuide/Finance_Restricting_Customer_Visibility_Implem_Activity2.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|The *CONSULT* non-stock item has been defined.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing AR invoices by specifying additional settings as follows:

-   On the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   To cause GL batches to be immediately posted after they are released, select the **Automatically Post on Release** check box.
    -   To cause every AR transaction you enter to be posted as an individual batch to the general ledger, clear the **Generate Consolidated Batches** check box. If this check box is selected, the system consolidates into a single batch all transactions in the same currency posted to the same period for all documents being released.
-   On the **General Settings** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:
    -   To cause all created AR invoices to have the *Balanced* status, clear the **Hold Documents on Entry** check box in the **Data Entry Settings** section. If this check box is selected, the created AR invoices are assigned the *On Hold* status.
    -   To cause AR invoices to be automatically posted to the general ledger once they are released, select the **Automatically Post on Release** check box in the **Posting Settings** section. If this check box is cleared, you have to post the batch after you release the document.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you maintain prices and costs in multiple base currencies by performing instructions similar to those described in [Prices in Base Currencies: Process Activity](Finance_Prices_MBC_Process_Activity.md).

**Parent topic:**[Maintaining Prices and Costs in Different Base Currencies](../UserGuide/Finance_Prices_MBC_Mapref.md)

