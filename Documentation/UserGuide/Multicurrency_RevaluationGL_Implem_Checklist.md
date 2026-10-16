# Revaluation of Bank Accounts: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for performing revaluation of a bank account, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially revalue a bank account, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_e4fc2a68-cb0a-4336-a870-c440a9e8ec5a"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\)

</td><td>

Make sure that the *Standard Financials* and *Multicurrency Accounting* features have been enabled.

For details on configuring the multicurrency functionality, see [Multicurrency Functionality: Implementation Activity](../Shared/../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md).

</td></tr><tr><td>

[Chart of Accounts](../Shared/../UserGuide/GL_20_25_00.md) \(GL202500\)

</td><td>

Check whether the necessary accounts have been created.

</td></tr><tr><td>

[Master Financial Calendar](../Shared/../UserGuide/GL_20_10_00.md) \(GL201000\)

</td><td>

Make sure that a financial period next to the one during which revaluation will occur has been opened in the master financial calendar.

</td></tr><tr><td>

[Currency Rates](../Shared/../UserGuide/CM_30_10_00.md) \(CM301000\)

</td><td>

Make sure that the effective currency rates have been defined.

For details, see [Configuration of Rate Types and Rates: To Configure Rates](../Shared/../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity1.md) and [Configuration of Rate Types and Rates: To Set Up Refreshing of Rates](../Shared/../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity2.md).

</td></tr><tr><td>

[Currency Management Preferences](../Shared/../UserGuide/CM_10_10_00.md) \(CM101000\)

</td><td>

Make sure that the accounts to which unrealized gains and losses are posted have been specified in the **Unrealized Gain Account** and **Unrealized Loss Account** boxes.

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of revaluing bank accounts by specifying additional settings as follows:

-   To cause batches generated from currency management to be automatically posted to the general ledger, on the [Currency Management Preferences](CM_10_10_00.md) \(CM101000\) form, select the **Automatically Post to GL on Release** check box.
-   To cause the system to use the default rate for revaluation of a particular account, you clear the **Revaluation Rate Type** column for this account on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form. The system will use the default rate type specified in the **GL Revaluation Rate Type** box on the [Currency Management Preferences](CM_10_10_00.md) form.

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you revalue the balance of a bank account by performing instructions similar to those described in [Revaluation of Bank Accounts: Process Activity](Multicurrency_RevaluationGL_Process_Activity.md).

**Parent topic:**[Revaluing Bank Accounts](../UserGuide/Multicurrency_RevaluationGL_Mapref.md)

