# Entry Types {#_97ab1f13-a528-4adf-9719-2b459a973d6c .concept}

You use entry types to classify cash transactions for correct processing and to provide default values for transaction settings. Currently, entry types are user-defined only; future versions of Acumatica ERP may contain some predefined entry types.

An entry type functions like a transaction template, providing default values for a transaction and indicating how the transaction should be processed in the system. Before you define entry types, review your past cash transactions to determine the types that you normally generate, such as service charges, bank fees, wire transfer charges, manual Accounts Payable checks, and customer payments.

You need to configure separate entry types for each operation listed below:

-   Recording cash entries in the Cash Management module that affect the balances of GL accounts. For details, see the [Entry Types for Recording Cash Entries](#entry_types_for_cash) section in this topic.
-   Recording transactions in the Cash Management module that result in the creation of documents in the Accounts Receivable and Accounts Payable modules and affect the balances of customers and vendors. For details, see the [Entry Types for Recording Transactions](#entry_types_transactions) section in this topic.
-   Recording financial charges for processing funds transfers, bank deposits, AP payments, AR payments, and voided documents in the Cash Management, Accounts Receivable, and Accounts Payable modules. For details, see the [Entry Types for Recording Finance Charges](#et_for_fin_charges) section in this topic.
-   Reclassifying payments in the Cash Management module. For more information, see the [Entry Types for Recording Unknown Payments](#unknown_payments_et) section in this topic.
-   Creating adjustments during the reconciliation of bank statements in the Cash Management module, as described in [Bank Reconciliation: To Reconcile a Cash Account](Finance_Bank_Reconciliation_Activity.md).

In this topic, you will read about the configuration of entry types and the details of processing cash transactions that use entry types.

## Configuration of Entry Types {#section_tr1_kjv_vxb .section}

In general, the configuration of entry types consists of the following steps:

1.  You determine which types of cash transactions you usually generate.
2.  You create the required entry types by using the [Entry Types](CA_20_30_00.md) \(CA203000\) form, specifying at least the following settings:
    -   The entry type ID and description.
    -   The type of transactions: *Receipt* to record money coming in, or *Disbursement* to record money going out.
    -   The way the balances of General Ledger accounts, customer accounts, and vendor accounts are affected with a transaction based on this entry type—that is, one of the following options for the **Module** setting: *CA* \(a transaction affects the balances of GL accounts only\), *AP* \(a transaction affects the balances of GL accounts and a vendor account\), or *AR* \(a transaction affects the balances of GL accounts and a customer account\).
3.  You associate the entry types you have created with the cash accounts that are involved in the respective cash transactions.

After configuration is done, you can proceed with recording cash transactions. The Acumatica ERP forms used for recording transactions that involve entry types are described for each particular entry type later in this topic and in the topics listed in the introduction.

## Entry Types for Recording Cash Entries {#entry_types_for_cash .section}

You use the [Cash Transactions](CA_30_40_00.md) \(CA304000\) form to record transactions that affect the balances of GL accounts. These transactions have the *Cash Entry* type. You can record customer payments, payments to vendors, bank charges, or interest earned. For details, see [Cash Entry Processing](CA__CON_CashEntry_Processing.md).

To configure an entry type for recording cash entries, you specify the following settings:

-   The entry type ID and description
-   The type of transaction—whether it is a *Receipt* \(money in\) or *Disbursement* \(money out\)
-   The *CA* module
-   Optional: The default offset account and subaccount \(if any subaccounts are defined in the system\)

After you have created the entry type for recording cash entries, you need to associate it with the cash accounts that are involved in the respective cash transactions.

## Entry Types for Recording Transactions {#entry_types_transactions .section}

You use the **Create Transaction** button on the [Cash Account Details](CA_30_30_00.md) \(CA303000\) form to record a transaction for the cash account you select. On this form, you can record transactions that affect the balances of customers or vendors, as well as cash entry transactions. For details, see [Cash Entry Processing](CA__CON_CashEntry_Processing.md).

To configure an entry type for recording transactions that affect balances of vendors, you specify the following settings:

-   The entry type ID and description
-   The type of transaction—whether it is a *Receipt* \(refund from a vendor\) or *Disbursement* \(payment to a vendor\)
-   The *AP* module
-   Optionally, a vendor account \(if you frequently record transactions that involve a particular vendor\)

You don't need to specify a default offset account or subaccount, because the GL accounts of the vendor \(specified in a transaction\) are used by default.

To configure an entry type for recording transactions that affect balances of customers, you specify the following settings:

-   The entry type ID and description
-   The type of transaction—whether it is a *Receipt* \(payment from a customer\) or *Disbursement* \(refund to a customer\)
-   The *AR* module
-   Optionally, a customer account \(if you frequently record transactions that involve a particular customer\)

Here, too, there is no need to specify a default offset account or subaccount, because the GL accounts of the customer specified in the transaction are used by default.

After you have created the entry type for recording transactions, you need to associate it with the cash accounts that are involved in the respective cash transactions.

## Entry Types for Recording Finance Charges {#et_for_fin_charges .section}

You use the following forms to record various finance charges:

-   [Checks and Payments](AP_30_20_00.md) \(AP302000\): To add charges to payments, prepayments, adjustments, and refunds
-   [Cash Purchases](AP_30_40_00.md) \(AP304000\): To add charges to cash purchases
-   [Payments and Applications](AR_30_20_00.md) \(AR302000\): To add charges to payments, prepayments, and returns
-   [Cash Sales](AR_30_40_00.md) \(AR304000\): To add charges to cash sales
-   [Funds Transfers](CA_30_10_00.md) \(CA301000\) To add expenses to funds transfers
-   [Bank Deposits](CA_30_50_00.md) \(CA305000\) To add charges to bank deposits

For details on recording finance charges, see [Registration of Finance Charges](CA__CON_FinCharges.md).

To configure an entry type for recording finance charges, you specify the following settings:

-   The entry type ID and a description that lets users easily identify the charge when they're applying it to payments
-   The type of transaction—*Disbursement*
-   The *CA* module
-   The default offset GL account of the expense type and the appropriate subaccount \(if subaccounts are used in your system\)
-   The indication to the system of whether the bank typically deducts the amount of this charge from the payment amount or does not deduct it—the **Deduct From Payment Amount** check box should be selected or cleared, respectively

    **Note:** The finance charges recorded in the Accounts Payable and Cash Management modules are always recorded as separate transactions.


After you have created the entry type for recording finance charges, you need to associate it with the cash accounts that are involved in the respective cash transactions.

## Entry Types for Recording Unknown Payments {#unknown_payments_et .section}

You use the [Cash Transactions](CA_30_40_00.md) \(CA304000\) form to record unknown payments. Such transactions have the *Cash Entry* type. For details on further processing, see [Reclassification of Unknown Payments](CA__con_Reclassification_of_Payments.md).

To configure an entry type for recording unknown payments, you specify the following settings:

-   The entry type ID and description
-   The type of transaction—whether it is a *Receipt* \(money in\) or *Disbursement* \(money out\) type

    **Note:** You should create separate entry types for incoming and outgoing unknown payments.

-   The *CA* module
-   The **Use for Payments Reclassification** check box selected
-   The reclassification account \(a cash account used to temporary store unknown payments\)

    **Note:** The branch and default offset account and subaccount \(if any subaccounts are defined in the system\) are filled in automatically when you specify the reclassification account.


After you have created the entry type for recording unknown payments, you need to associate it with the cash accounts that are involved in the respective cash transactions.

**Parent topic:**[Configuring Cash Accounts](../UserGuide/CA__MNG_CashAccounts.md)

