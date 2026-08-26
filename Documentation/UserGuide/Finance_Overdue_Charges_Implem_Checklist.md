# Overdue Charges: Implementation Checklist {#_9739a40e-eb4e-4f25-8165-0298cfd5e51d .concept}

The following sections provide details you can use to ensure that the system is configured properly for calculating overdue charges, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially set up the overdue charges functionality, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|You have created a GL account of the *Income* type and a corresponding subaccount \(if applicable in your system\) to record each overdue charge and each overdue fee, if you plan to charge one. You can use the same account for recording all overdue charges and overdue fees or create separate accounts for each overdue charge and each overdue fee. For details, see [To Add an Account to the Chart of Accounts](GL__HOW_To_Add_an_Account_to_the_Chart_of_Accounts.md).|
|[Credit Terms](CS_20_65_00.md) \(CS206500\)|You have created credit terms that provide a schedule for paying overdue charge documents. The credit terms used for overdue charges should be without discounts. You can create just one set of credit terms for overdue charge documents or multiple sets. For details, see [Credit Terms: To Define Single-Installment Credit Terms](../ImplementationGuide/config_Basic_Company_Implem_Activity_Credit_Terms.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|You have verified the existence of the customer accounts for the customers for which you will create *Overdue Charge* documents. For details, see [Customers: Implementation Activity](Customer_Implem_Activity.md).|
|[Statement Cycles](AR_20_28_00.md) \(AR202800\)|You have verified the existence of the statement cycle for which overdue charged will be generated. For details, see [Accounts Receivable: To Create a Statement Cycle](../ImplementationGuide/config_Basic_Company_Implem_Activity_Statement_Cycles.md).|

## Other Settings That Affect the Workflow { .section}

The processing of overdue charges causes batches to be produced by the system on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. The settings on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form can affect the processing workflow of each batch as follows:

-   If the **Hold Batches on Entry** check box is selected, a batch is saved with the *On Hold* status by default. If the batch is on hold, you should click **Remove Hold** on the toolbar of the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form for the batch so that you can process it further. If the check box is cleared, the batch is saved with the *Balanced* status.
-   If the **Automatically Post on Release** check box is selected, the system posts batches on release. If this check box is cleared, you have to post the batches after release.

The following options located on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form affect all customers that are subject to overdue charges and can be set to fit your company's policies:

-   **Hold Documents on Entry**: If this check box is selected, AR documents \(including overdue charges\) will be created with the *On Hold* status. If this check box is cleared, overdue charges will be generated and saved with the *Balanced* status. Thus, they will appear on the [Release AR Documents](AR_50_10_00.md) \(AR501000\) form immediately after they are generated.
-   **Hold Document on Failed Credit Check**: If this check box is selected and a customer fails credit check, overdue charge documents will be generated and saved with the *On Hold* status. In this case, the state of the **Hold Documents on Entry** check box will be ignored by the system.
-   **Set Default Overdue Charges by Statement Cycle**: If this check box is selected, the system applies the overdue charge settings that are specified in the statement cycle used for the customer. If the check box is cleared, the system uses the overdue charge settings of the customer class.
-   **Apply Payments to Overdue Charges First**: If this check box is selected, payments will be applied first to overdue charges and only then to outstanding invoices, starting with those having the earliest dates. A payment can be applied to a particular invoice only if the **Auto-Apply Payments** check box is selected for the customer on the [Customers](AR_30_30_00.md) \(AR303000\) form.
-   **Calculate on Overdue Charges Documents**: If this check box is selected, the system will calculate overdue charges on invoices and debit memos and additionally on previously generated *Overdue Charge* documents if they are overdue. If this check box is cleared, the system will calculate overdue charges on only invoices and debit memos.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you calculate and apply overdue charges by performing instructions similar to those described in [Overdue Charges: Process Activity](Finance_Overdue_Charges_Process_Activity.md).

**Parent topic:**[Applying Overdue Charges](../UserGuide/CreditPolicy_Overdue_Charges_Mapref.md)

