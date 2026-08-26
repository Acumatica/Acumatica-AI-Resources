# Multicurrency Cash Account: Implementation Checklist {#_051d65a0-a72c-456c-8cd6-db89c21139ff .concept}

The following sections provide details you can use to ensure that the system is configured properly for configuring a cash account in a foreign currency, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially configure a cash account, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)|Make sure that the *Multicurrency Accounting* feature has been enabled.|
|[General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\)|Make sure that the rounding gain and loss accounts have been specified.|
|[Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\)|Make sure that the realized gain and loss accounts have been specified.|
|[Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\)|Make sure that the foreign currency in which you want to denominate the new cash account has been activated for use in accounting.|
|[Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\)|Make sure that a currency rate for the needed currency has been defined for the financial period in which you want to create documents.|

For details on configuring the functionality, see [Multicurrency Functionality: Implementation Activity](config_Multicurrency_Basic_Implem_Activity.md). For details on configuring currency rates, see [Configuration of Rate Types and Rates: To Configure Rates](config_Multicurrency_Configuring_Rates_Activity1.md) and [Configuration of Rate Types and Rates: To Set Up Refreshing of Rates](config_Multicurrency_Configuring_Rates_Activity2.md).

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of configuring foreign currency cash accounts by specifying additional settings as follows:

-   To cause a separate GL batch to be generated for each released document, clear the **Generate Consolidated Batches** check box on the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form.

    If you select this check box, on release of multiple documents, the system will group documents by branch, posting period, and currency, and will generate the batches on a per-group basis rather than on a per-document basis. Because multiple documents combined into one batch may have different currency rates, in the batch, the system always shows the rate that was effective on the **Transaction Date** of the batch. In a batch that combines transactions from multiple documents, the single displayed rate may differ from the actual document rates.

-   To cause all saved batches to be saved with the *Balanced* status, clear the **Hold Batches on Entry** check box on the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) form. If the check box is selected, a batch is saved with the *On Hold* status by default. If the batch is on hold, you should click **Remove Hold** on the toolbar of the [Journal Transactions](../UserGuide/GL_30_10_00.md) \(GL301000\) form for the batch so you can process it further.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you create a GL transaction with a cash account denominated in a foreign currency by performing instructions similar to those described in [Multicurrency Cash Accounts: To Process a GL Transaction](config_Multicurrency_CashAccount_Process_Activity.md).

**Parent topic:**[Configuring Cash Accounts in Foreign Currencies](../ImplementationGuide/config_Multicurrency_CashAccount_Mapref.md)

