# Cash Account Configuration {#_0ee2a8e0-c249-4ef4-8143-981e58443b10 .concept}

In the Cash Management module, you work with cash accounts. Cash accounts are used to keep records of the outgoing and incoming payments and cash. To distinguish cash accounts maintained in the Cash Management module from accounts that are in the chart of accounts, we call the latter *GL accounts*, where *GL* represents the General Ledger module.

In this topic, you will read about the configuration process of cash accounts and the details of implementation, which may vary depending on your company's organization and financial operations.

## Configuration of Cash Accounts {#section_h41_kjv_vxb .section}

You can create cash accounts that represent bank accounts, amounts of cash on hand, or amounts of cash in transit. The details of configuration depend on the type of cash account you need. For information about the types of cash accounts, see [Cash Account Types](CA__CON_CashAccountsTypes.md).

To track the transactions you record in the Cash Management module in the General Ledger module, you link each cash account to a GL account allocated for this purpose. Once a document that is related to a cash account is released, the system automatically generates transactions to be posted to the respective GL accounts in the General Ledger module.

In general, the configuration process of a cash account involves the following steps:

1.  You decide which existing GL account you will record your cash transactions to, or you create a designated account for this purpose.

    **Note:** If the *Multicurrency Accounting* feature is enabled in your system \(on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form\), the currency of a cash account is taken from a GL account to be used for cash transactions, which must be denominated. For details on denominated accounts, see [Denominated Accounts](GL__con_Denominated_Accounts.md). If the feature is disabled, the currency of a cash account is taken from the branch it belongs to.

2.  You create a cash account in the Cash Management module and link it to a GL account that you have allocated for this purpose. If you use branches and subaccounts in your system, you can link cash accounts from different branches or with different subaccounts to one GL account. Only one cash account can be created for the combination of a branch, a subaccount, and a GL account. For details, see [To Create a Cash Account](CA__How_to_Create_Cash_Account.md).
3.  You run validation of the cash account balance in the Cash Management module, in case transactions were posted to the GL account before you created the cash account and linked it. After the validation is completed, all transactions posted to the GL account are tracked in the Cash Management module. Now you can record transactions in both the General Ledger and Cash Management modules, and the system automatically synchronizes the history of the cash account with the transactions in the GL account. For details, see [To Run Recalculation of Cash Account Balances](CA__HOW_To_ValidateCashAccountBalance.md).

This configuration is enough for you to start making funds transfers between your cash accounts. To be able to record transactions other than funds transfers \(cash entry transactions and incoming and outgoing payments\), you also need to perform the following steps:

1.  You configure the following entities:
    -   *Entry types*: You use entry types to classify cash transactions for correct processing. You can consider an entry type a transaction template—it defines the transaction type, the offset GL account and subaccount, and the processing details. Entry type settings are to be used as default settings for a transaction. With entry types configured to affect the balances of GL accounts only \(that is, those for which the entry type parameter **Module** is set to *CA*\), you can create transactions of the *Cash Entry* type to record bank interest earned, a bank service fee, or some office expenses. For details on entry types, see [Entry Types](CA__CON_EntryTypes.md).
    -   *Payment methods*: You use payment methods to define the way the money is transferred into and out of the organization. To be able to record money received from customers or paid to vendors, you need to specify payment methods for each customer and vendor individually and create entry types to be used in the Accounts Receivable and Accounts Payable modules. For details on payment methods, see [Managing Payment Methods](CA__MNG_PaymentMethods.md).
2.  You associate entry types and payment methods with the appropriate cash accounts.

If you want to reconcile a cash account balance, the additional configuration is required. For details, see the [Reconciliation of Cash Accounts](#cash_account_recon) section in this topic.

## Identifiers of Cash Accounts {#section_o41_kjv_vxb .section}

Identifiers for GL accounts are defined by the *ACCOUNT* segmented key, while identifiers for cash accounts are defined by the *CASHACCOUNT* segmented key. You can use the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form to define the structure of the *CASHACCOUNT* segmented key.

The *CASHACCOUNT* segmented key is not related to the *ACCOUNT* key, and you can define identifiers for cash accounts differently than identifiers of GL accounts. For example, you can define the *CASHACCOUNT* key as having an additional segment \(with respect to the *ACCOUNT* key\) to designate the branch that is the owner of the cash account. Then for the GL account 10101, you can have a cash account *10101-MN* in the Main branch and *10101-NR* in the North branch, both of which are linked to the 10101 account. Alternatively, you can define cash account identifiers to be like the identifiers of the GL accounts.

## Currency of Cash Accounts {#section_r41_kjv_vxb .section}

Each cash account is denominated in a particular currency. If the *Multicurrency Accounting* feature is disabled in your system on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the currency of a cash account is taken from the branch it belongs to. If the *Multicurrency Accounting* feature is enabled, you can maintain cash accounts for each currency used, because the currency is taken from a GL account used for cash transactions, which must be denominated. The balances of foreign currency cash accounts are maintained in the currency of denomination as well as in the base currency and should be periodically revalued in the base currency for the balance sheet. For details, see [Denominated Accounts](GL__con_Denominated_Accounts.md) and [Revaluation of Bank Accounts: General Information](Multicurrency_RevaluationGL_GeneralInfo.md).

## Balance of Cash Accounts {#section_t41_kjv_vxb .section}

In Acumatica ERP, the balance of a cash account can be presented in different ways. You can view the balance of the GL account linked to the cash account. This balance, called the **GL Balance** on the system interface, is calculated as the sum of all posted transactions for the selected financial period. Additionally, you can view the available balance of a cash account. This balance, called the **Available Balance** on the system interface, is calculated as the sum of all released and cleared receipts and disbursements, regardless of the selected date or financial period. The available balance is the amount of money you can spend right now.

You can control how the system calculates the available balance of cash accounts, by using settings in the **Receipts to Add to Available Balances** and **Disbursements to Deduct From Available Balances** sections \(**General Settings** tab\) of the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form. Both sections have the same set of settings. These settings, listed below, control which receipts and disbursements will be included in the calculation of the available balance, in addition to the released and cleared receipts and disbursements:

-   **Unreleased Uncleared**: You select this check box if you want the system to include receipts or disbursements with the *On Hold* or *Balanced* status and with the **Cleared** check box is not selected.
-   **Unreleased Cleared**: You select this check box if you want the system to include receipts or disbursements with the *On Hold* or *Balanced* status and with the **Cleared** check box is selected.
-   **Released Uncleared**: You select this check box if you want the system to include receipts or disbursements with the *Released* status and with the **Cleared** check box is not selected.

By having control over the calculation of the available balance, you can more effectively evaluate your funds when you prepare payments on the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form or move funds between accounts by using the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form.

## Reconciliation of Cash Accounts {#cash_account_recon .section}

Reconciliation of a cash account is a useful procedure in controlling cash transactions. You can keep records about cash transactions both in Acumatica ERP and in a third-party system \(for instance, a bank where you have accounts\) or in the form of cash register receipts. To reconcile the cash account, at the end of each financial period, you compare the system records with a bank statement or other documents confirming the transactions to find discrepancies between the account balances tracked by different means.

In Acumatica ERP, you mark cash accounts that require reconciliation by selecting the **Requires Reconciliation** check box and specifying the numbering sequence for the reconciliation statements in the **Reconciliation Numbering Sequence** box on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form. When this check box is selected for a cash account, the system behavior changes as follows:

-   For each transaction recorded to this cash account, the system makes the **Cleared** check box available for modification.
-   When you select the **Cleared** check box for a transaction, the system fills in the **Clear Date** box \(of the transaction\) with the current business date.
-   The system displays the cash account in the list of available cash accounts on the [Reconciliation Statements](CA_30_20_00.md) \(CA302000\) form and uses the specified numbering sequence to generate reference numbers for the statements.

For details on reconciliation of cash accounts, see [Bank Reconciliation: To Reconcile a Cash Account](Finance_Bank_Reconciliation_Activity.md).

## Maintenance of Cash Accounts in a Multibranch Company {#section_ap1_kjv_vxb .section}

If the organization has branches, each branch maintains its cash accounts separately from the cash accounts of other branches. To be able to maintain a unified chart of account for all branches, you define cash accounts separately and link them to specific GL accounts in the chart of accounts \(you can link multiple cash accounts from different branches to one GL account\). Thus, a multibranch company can have a unified chart of accounts—all the accounts on the chart can be used by all branches, and each branch can have its own cash accounts, access to which is allowed for only the users who have access to the branch.

Once cash accounts have been configured, cash documents in each branch are created for a cash account that belongs to the branch, but the transactions generated by these documents are posted to the GL account. Although the cash accounts are separated by branches, the GL account provides the consolidated balance over all linked cash accounts.

## Usage of Subaccounts with Cash Accounts {#section_dp1_kjv_vxb .section}

If you use subaccounts in your organization, you can also use these subaccounts with cash accounts for further analysis. You define the list of available subaccounts in the General Ledger module.

**Parent topic:**[Configuring Cash Accounts](../UserGuide/CA__MNG_CashAccounts.md)

