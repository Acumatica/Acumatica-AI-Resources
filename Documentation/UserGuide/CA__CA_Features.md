# Cash Management Overview {#_9e233eb9-1fec-4d15-a83f-c94aeac9e541 .concept}

The Cash Management module of Acumatica ERP helps you manage cash flows and forecast your cash position at any time and in multiple currencies. By using the Cash Management module, you can track a wide range of cash transactions and perform bank reconciliations quickly and easily. A single form, [Cash Account Details](CA_30_30_00.md) \(CA303000\), gives you instant access to cash account balances and helps you streamline the processing of cash transactions that originate in the Accounts Payable and Accounts Receivable modules.

## Support for Cash Accounts {#section_zk1_kjv_vxb .section}

Each branch in a multibranch organization maintains its own cash accounts. To be able to maintain a unified chart of account for all branches, cash accounts are defined separately and linked to specific accounts \(of the *Asset* type\) on the chart of accounts. Thus, a multibranch company can have a unified chart of accounts—all the accounts on the chart are multibranch accounts, and each branch can have its own cash accounts, access to which is allowed only for the users who have access to the branch. Acumatica ERP supports different types of cash accounts, including bank accounts, clearing accounts for each bank account, and unknown payment accounts. For more information, see [Configuring Cash Accounts](CA__MNG_CashAccounts.md).

## Multicurrency Support {#section_bl1_kjv_vxb .section}

If multicurrency support is activated in your system, you can maintain cash accounts in different currencies, enter transactions in foreign currencies, and transfer funds from one cash account to another by using a special multicurrency cash-in-transit account. On any form, you can view amounts in the currency of denomination or in the base currency.

## Multiple Entry Types {#section_dl1_kjv_vxb .section}

User-defined entry types are used for correct processing and tracking of many different types of cash transactions entered in the Cash Management module. These transactions include cash deposits, cash withdrawals, adjustments, interest earnings and charges, bank fees, transfer service charges, processing center charges, and fees for processing credit cards. For additional details about the use of entry types, see the following topics:

-   [Entry Types](CA__CON_EntryTypes.md)
-   [Registration of Finance Charges](CA__CON_FinCharges.md)

## Flexible Payment Methods {#section_fl1_kjv_vxb .section}

A payment method defines how incoming money is actually transferred from customers to your company and how outgoing money is moved from your company's cash accounts to the vendors. You can configure specific payment methods for use in the Accounts Payable module or the Accounts Receivable module, while other methods may be used in both modules. For payment methods, you can configure custom elements to store details of the method used by a particular customer or vendor. Information about particular methods in the system is stored encrypted. Also, you can set up masks to ensure that sensitive data, such as card numbers, is not displayed. For more information, see [Managing Payment Methods](CA__MNG_PaymentMethods.md).

## Cash Transaction Approvals {#section_hl1_kjv_vxb .section}

To implement effective control over cash flows, you can require approval of cash transactions before they can be released. With approvals configured in your system, when a user attempts to release a cash transaction, the system changes the transaction status to *Pending Approval* and assigns it to another user who is authorized to approve transactions. For more information, see [Cash Transaction Approval](CA__con_Cash_Transaction_Approval.md).

## Petty Cash Management {#section_jl1_kjv_vxb .section}

You can use the [Cash Account Details](CA_30_30_00.md) form to effectively manage petty cash and monitor account balances. You can view the transaction history for a specific date range and switch between detailed views and daily summary views. Acumatica ERP tracks both the balance by the books and the cleared balance and gives you the ability to reconcile the balances and add cash-related transactions directly from the form. For details, see [Cash Transaction Monitoring](CA__con_Cash_Transaction_Monitoring.md).

## Cash Forecasting {#section_ll1_kjv_vxb .section}

In Acumatica ERP, you can view the 30-day cash flow forecasts calculated with the selected level of detail for a single cash account or for all cash accounts available in your system. By analyzing cash flow forecasts, you can avoid unexpected shortages in cash and properly plan your payments. For details, see [Cash Flow Forecasting](CA__con_Cash_Flow_Forecasting.md).

## Import of Bank Statements and Reconciliation of Accounts {#section_nl1_kjv_vxb .section}

Acumatica ERP provides functionality that you can use to easily perform reconciliation of bank and cash accounts. To facilitate reconciliation with bank statements, you can import multiple statements from Excel files or files in OFX format, and match transactions manually or automatically by using adjustable criteria. Also, while performing reconciliation, you can apply payments to the documents available in the system. To make cash forecasts more accurate even in the middle of financial period, you can clear cash transactions with the bank by using any available information. For more information, see the following topics:

-   [Managing Bank Statements](CA__MNG_BankStatements.md)
-   [Performing Bank Reconciliation](Finance_Bank_Reconciliation_Mapref.md)

## Bank Deposits {#section_ql1_kjv_vxb .section}

In Acumatica ERP, you can configure daily deposits if your company deposits customer payments to a bank regularly. With this functionality, you can create deposit slips for collected customer payments \(such as checks and cash\) and easily add appropriate bank charges; this makes it possible to match lines on bank statements to cash account transactions. For more information, see [Preparation of Deposits](CA__CON_Preparation_of_Deposits.md).

## Reclassification of Payments {#section_sl1_kjv_vxb .section}

Some of the transactions that appear on a bank statement cannot be entered into the system as regular payments because the customer or vendor is unknown or other details are unknown or unrecognizable. Such "unknown" payments are temporarily recorded as cash transactions of special entry types to a special-use cash account \(an unknown payments account\). Later, when details become known, these transactions can be reclassified as payments with appropriate transactions between the accounts involved \(bank account, Accounts Receivable account, and unknown payments account\) generated automatically. For details, see [Reclassification of Unknown Payments](CA__con_Reclassification_of_Payments.md).

## Account Security {#section_ul1_kjv_vxb .section}

To limit access to confidential bank account information to only a group of authorized users, you can use restriction groups. For more information, see [Security of Cash Accounts](CA__CON_Access_to_CashAccounts.md) and [Restriction Groups in Acumatica ERP](SM__con_Overview_of_Restriction_Groups.md).

## Other Features and Options {#section_wl1_kjv_vxb .section}

In addition, by using the module’s extensive drill-down capabilities, you can quickly and conveniently access any transaction details. You also can use the Cash Management module to complete the following tasks:

-   Maintain an unlimited number of cash accounts, including bank accounts.
-   Maintain any number of banks as vendors. You can create a business account and locations for every bank involved and define entry types for bank charges to create adjustments quickly.
-   Enter miscellaneous cash transactions on the fly while you perform funds transfer or reconcile bank statements, or before you release a daily deposit.
-   Attach scanned images or electronic versions of any supporting documents to cash transactions or to specific lines of transactions.
-   Select whether users may release Accounts Payable and Accounts Receivable transactions from the Cash Management module or only from their module of origin.
-   Drill down to each document and view its details, no matter where the document has been created: in the Accounts Payable, Accounts Receivable, or Cash Management module.
-   Close financial periods in Cash Management to prevent users from posting transactions to these periods and reopen financial periods that were closed by mistake.

