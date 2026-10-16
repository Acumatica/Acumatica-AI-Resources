# Revaluation of AP Documents: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for performing revaluation of open AP documents, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially perform revaluation of open AP documents, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

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

You can affect the workflow of revaluing open AP documents by specifying additional settings as follows:

-   To cause batches generated from currency management to be automatically posted to the general ledger, on the [Currency Management Preferences](CM_10_10_00.md) \(CM101000\) form, select the **Automatically Post to GL on Release** check box.
-   To cause unrealized gains and losses to be posted to a separate account instead of the AP account of the vendor, specify the AP provisioning account for the needed currency in the **AP Provisioning Account** box on the [Currency Management Preferences](CM_10_10_00.md) form.
-   To cause unrealized gains and losses to be posted to the accounts specific for the vendor class, select the needed accounts in the **Unrealized Gain Account** and **Unrealized Loss Account** boxes on the **GL Accounts** tab of the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form.

    **Note:** If these boxes on the [Vendor Classes](AP_20_10_00.md) form are left empty, the system will post unrealized gains and losses to the account for the currency, which is specified in the **Unrealized Gain Account** and **Unrealized Loss Account** box on the **GL Accounts** tab of the [Currencies](CM_20_20_00.md) \(CM202000\) form.


## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you revalue balances of open AP documents by performing instructions similar to those described in [Revaluation of AP Documents: Process Activity](Multicurrency_RevaluationAP_Process_Activity.md).

**Parent topic:**[Revaluing Open AP Documents](../UserGuide/Multicurrency_RevaluationAP_Mapref.md)

