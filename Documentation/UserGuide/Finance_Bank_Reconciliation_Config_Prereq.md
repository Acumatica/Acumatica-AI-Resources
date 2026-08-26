# Bank Reconciliation: Implementation Checklist {#_6e6304cd-52af-49a7-b58f-34bb1bddd4dc .concept}

The following sections provide details you can use to ensure that the system is configured properly for reconciling cash accounts with bank statements, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_nf2_kjv_vxb .section}

We recommend that before you initially perform bank reconciliation, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Tasks to Perform|Note|
|----|----------------|----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the following feature has been enabled: *Standard Financials*.| |
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\) form|Check whether the necessary accounts have been created. For details, see [General Ledger: Chart of Accounts](../ImplementationGuide/config_Basic_Company_COA.md).| |
|[Cash Accounts](CA_20_20_00.md) \(CA202000\) form|Check whether the necessary cash accounts have been configured.|You need to configure a cash account only when you perform the reconciliation for the first time.|
|[Cash Management Preferences](CA_10_10_00.md) \(CA101000\)|On the **Bank Statement Settings** tab in the **Import Settings** section, make sure that *PX.Objects.CA.OFXStatementReader* is selected in the **Statement Import Service** box.|This setting is required for processing a bank statement in Open Financial Exchange \(OFX\) format, which you can do in [Bank Reconciliation: To Process a Bank Statement in OFX Format \(Part 1\)](Finance_Bank_Reconciliation_Activity2.md).|

## Other Settings That Affect the Workflow {#section_pf2_kjv_vxb .section}

You can affect the workflow of bank reconciliation by specifying additional settings on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form as follows:

-   To cause cash transactions to be automatically posted to the general ledger once they are released, make sure that the **Automatically Post to GL on Release** check box is selected in the **Posting and Release Settings** section on the **General** tab.
-   To cause the system to assign the *On Hold* status to the created cash transactions, make sure that the **Hold Transactions on Entry** check box in the **Data Entry Settings** section on the **General** tab is selected.

If you want data to be imported on the [Import Bank Transactions](CA_30_65_00.md) \(CA306500\) form only after a user selects the applicable cash account, on the **Bank Statements** tab of the [Cash Management Preferences](CA_10_10_00.md) form, you should also select the **Import Bank Statement to Single Cash Account** check box.

If you want the system to automatically update the date of an unreleased AR or AP payment document to the bank transaction date when bank transactions are processed on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, you should select the **Set Payment Date to Bank Transaction Date** check box on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form for the payment method that is specified for the document. You should clear this check box if for this payment method, the **Integrated Processing** check box is selected on the **Settings to Use in AR** tab of the form.

## Testing of Settings {#section_tf2_kjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that you test the performing of bank reconciliations by performing similar steps to those described in [Bank Reconciliation: To Reconcile a Cash Account](Finance_Bank_Reconciliation_Activity.md) and [Bank Reconciliation: To Process a Bank Statement in OFX Format \(Part 1\)](Finance_Bank_Reconciliation_Activity2.md).

**Parent topic:**[Performing Bank Reconciliation](../UserGuide/Finance_Bank_Reconciliation_Mapref.md)

