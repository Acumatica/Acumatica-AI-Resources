# Consolidated Financial Statement: Implementation Checklist {#_35b58828-7b4c-47d7-92b7-2d526805d7be .concept}

The following sections provide details you can use to ensure that the system is configured properly for preparing a consolidated financial statement, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_w31_jjv_vxb .section}

We recommend that before you initially perform translation of financial statements and then preparation of a consolidated financial statement, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Standard Financials*, *Multibranch Support*, *Multicompany Support*, *Customer and Vendor Visibility Restriction*, *Multicurrency Accounting*, *Multiple Base Currencies*, and *Translation of Financial Statements* features have been enabled.

 For details on configuring multiple base currencies, see [Multiple Base Currencies: Implementation Activity](../ImplementationGuide/config_Multicurrency_MultipleBaseCurrencies_Implem_Activity.md), [Customer Visibility: To Restrict Visibility to a New Company](../ImplementationGuide/Finance_Restricting_Customer_Visibility_Implem_Activity2.md), and [Vendor Visibility: To Restrict Visibility to a New Company](../ImplementationGuide/Finance_Restricting_Vendor_Visibility_Activity2.md).

|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|Make sure that the accounts that will be used for recording translation gains and losses have been created.|
|[Company Financial Calendar](GL_20_11_00.md) \(GL201100\)|Make sure that the financial period for which you want to configure a translation definition has the *Open* status.|
|[Currency Management Preferences](CM_10_10_00.md) \(CM101000\)|Make sure that the accounts for recording translation gains and losses have been specified.|
|[Currencies](CM_20_20_00.md) \(CM202000\)|Make sure that the translation gain and loss accounts have been specified for each base currency.|
|[Currency Rate Types](CM_20_10_00.md) \(CM201000\)|Make sure that the rate types used for translations have been defined.|
|[Currency Rates](CM_30_10_00.md) \(CM201000\)|Make sure that the effective exchange rates to be used for translations have been defined.|
|[Ledgers](GL_20_15_00.md) \(GL201500\)|You create a ledger of the *Reporting* type to be used for keeping the results of translations. For details on reporting ledgers, see [Reporting Ledgers](GL__CON_Reporting_Ledger.md).|
|[Translation Definition](CM_20_30_00.md) \(CM203000\)|You create a translation definition that will be used for translating financial statements.|

## Other Settings That Affect the Workflow {#section_aj1_jjv_vxb .section}

You can affect the workflow of translating financial statements by specifying additional settings as follows:

-   To cause translation batches to be automatically posted to the general ledger, on the [Currency Management Preferences](CM_10_10_00.md) \(CM101000\) form, select the **Automatically Post to GL on Release** check box.

## Validation of Configuration {#section_cj1_jjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform a translation of financial statements as described in [Consolidated Financial Statement: Performing a Translation](Multicurrency_MBC_Consolidated_Financial_Statement_Activity1.md) and prepare a consolidated financial statement as described in [Consolidated Financial Statement: Creating a Customized Report](Multicurrency_MBC_Consolidated_Financial_Statement_Activity2.md).

**Parent topic:**[Preparing a Consolidated Financial Statement](../UserGuide/Multicurrency_MBC_Consolidated_Financial_Statement_Mapref.md)

