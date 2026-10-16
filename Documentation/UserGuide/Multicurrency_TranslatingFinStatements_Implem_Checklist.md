# Translation of Financial Statements: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for translating financial statements, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially translate financial statements, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Tasks to Perform

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

Make sure that the *Standard Financials*, *Multicurrency Accounting*, and *Translation of Financial Statements* features have been enabled.

 For details on configuring the multicurrency functionality, see [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md).

</td></tr><tr><td>

[Chart of Accounts](GL_20_25_00.md) \(GL202500\)

</td><td>

Make sure that the accounts that will be used for recording translation gains and losses have been created.

</td></tr><tr><td>

[Company Financial Calendar](GL_20_11_00.md) \(GL201100\)

</td><td>

Make sure that the financial period for which you want to configure a translation definition has the *Open* status.

</td></tr><tr><td>

[Currency Management Preferences](CM_10_10_00.md) \(CM101000\)

</td><td>

Make sure that the accounts for recording translation gains and losses have been specified.

</td></tr><tr><td>

[Currencies](CM_20_20_00.md) \(CM202000\)

</td><td>

Make sure that the translation gain and loss accounts have been specified for each foreign currency.

</td></tr><tr><td>

[Currency Rate Types](CM_20_10_00.md) \(CM201000\)

</td><td>

Make sure that the rate types used for translations have been defined.

</td></tr><tr><td>

[Currency Rates](CM_30_10_00.md) \(CM201000\)

</td><td>

Make sure that the effective exchange rates to be used for translations have been defined. For details, see [Configuration of Rate Types and Rates: To Configure Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity1.md) and [Configuration of Rate Types and Rates: To Set Up Refreshing of Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity2.md).

</td></tr><tr><td>

[Ledgers](GL_20_15_00.md) \(GL201500\)

</td><td>

You create a ledger of the *Reporting* type to be used for keeping the results of translations. For details on reporting ledgers, see [Reporting Ledgers](GL__CON_Reporting_Ledger.md).

</td></tr><tr><td>

[Translation Definition](CM_20_30_00.md) \(CM203000\)

</td><td>

You create a translation definition that will be used for translating financial statements. For details, see [Translation Definitions: Implementation Activity](../ImplementationGuide/config_Multicurrency_TranslationDefinition_Implem_Activity.md).

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of translating financial statements by specifying additional settings as follows:

-   To cause translation batches to be automatically posted to the general ledger, on the [Currency Management Preferences](CM_10_10_00.md) \(CM101000\) form, select the **Automatically Post to GL on Release** check box.

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you translate financial statements by performing instructions similar to those described in [Translation of Financial Statements: Process Activity](Multicurrency_TranslatingFinStatements_Process_Activity.md).

**Parent topic:**[Translating Financial Statements](../UserGuide/Multicurrency_TranslatingFinStatements_Mapref.md)

