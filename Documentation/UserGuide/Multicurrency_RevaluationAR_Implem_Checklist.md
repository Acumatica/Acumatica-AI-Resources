# Revaluation of AR Documents: Implementation Checklist {#_10999a86-c52e-4f02-bef2-71ba4b98accb .concept}

The following sections provide details you can use to ensure that the system is configured properly for performing revaluation of open AR documents, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_j3z_3jv_vxb .section}

We recommend that before you initially perform revaluation of open AR documents, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\)|Make sure that the *Standard Financials* and *Multicurrency Accounting* features have been enabled.

For details on configuring the multicurrency functionality, see [Multicurrency Functionality: Implementation Activity](../Shared/../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md).

|
|[Chart of Accounts](../Shared/../UserGuide/GL_20_25_00.md) \(GL202500\)|Check whether the necessary accounts have been created.|
|[Master Financial Calendar](../Shared/../UserGuide/GL_20_10_00.md) \(GL201000\)|Make sure that a financial period next to the one during which revaluation will occur has been opened in the master financial calendar.|
|[Currency Rates](../Shared/../UserGuide/CM_30_10_00.md) \(CM301000\)|Make sure that the effective currency rates have been defined.

For details, see [Configuration of Rate Types and Rates: To Configure Rates](../Shared/../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity1.md) and [Configuration of Rate Types and Rates: To Set Up Refreshing of Rates](../Shared/../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity2.md).

|
|[Currency Management Preferences](../Shared/../UserGuide/CM_10_10_00.md) \(CM101000\)|Make sure that the accounts to which unrealized gains and losses are posted have been specified in the **Unrealized Gain Account** and **Unrealized Loss Account** boxes.|

## Other Settings That Affect the Workflow {#section_l3z_3jv_vxb .section}

You can affect the workflow of revaluing open AR documents by specifying additional settings as follows:

-   To cause batches generated from currency management to be automatically posted to the general ledger, on the [Currency Management Preferences](CM_10_10_00.md) \(CM101000\) form, select the **Automatically Post to GL on Release** check box.
-   To cause unrealized gains and losses to be posted to a separate account instead of the AR account of the customer, specify the AR provisioning account for the needed currency in the **AR Provisioning Account** box on the [Currency Management Preferences](CM_10_10_00.md) form.
-   To cause unrealized gains and losses to be posted to the accounts specific for the customer class, select the needed accounts in the **Unrealized Gain Account** and **Unrealized Loss Account** boxes on the **GL Accounts** tab of the [Customer Classes](AR_20_10_00.md) \(AR201000\) form.

    **Note:** If these boxes on the [Customer Classes](AR_20_10_00.md) form are left empty, the system will post unrealized gains and losses to the account for the currency, which is specified in the **Unrealized Gain Account** and **Unrealized Loss Account** box on the **GL Accounts** tab of the [Currencies](CM_20_20_00.md) \(CM202000\) form.


## Validation of Configuration {#section_n3z_3jv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you revalue balances of open AP documents by performing instructions similar to those described in [Revaluation of AR Documents: Process Activity](Multicurrency_RevaluationAR_Process_Activity.md).

**Parent topic:**[Revaluing Open AR Documents](../UserGuide/Multicurrency_RevaluationAR_Mapref.md)

