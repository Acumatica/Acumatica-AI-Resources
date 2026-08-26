# Cash Transaction Processing {#_6fa6ed46-bee2-4919-a871-4c365673df94 .concept}

On the [Cash Account Details](CA_30_30_00.md) \(CA303000\) form, you can quickly add transactions that record customer payments, refunds received from vendors, bank charges and fees, cash withdrawals, and various adjustments. Also, you can use this form to monitor cash accounts and effectively manage cash transactions.

In this topic, you will read about how to quickly record cash transactions of any type and how the system processes them further.

## Understanding Cash Transaction Types {#section_qw1_kjv_vxb .section}

Depending on the purpose of the transaction, in the Cash Management module, you can record and process cash transactions of the following types:

-   *Cash Entry*: You create a transaction of this type to record an operation made in cash, such as a bank charge, interest income, a customer payment, a payments to a vendor, or an unknown payments. Transactions of this type affect General Ledger accounts only.
-   *Transfer In*: A transaction of this type is created when you record a funds transfer between cash accounts; it corresponds to the received funds to the destination account.
-   *Transfer Out*: A transaction of this type is created when you record a funds transfer between cash accounts; it corresponds to the sent funds from the source account.

    **Note:** For one funds transfer, there is always one transaction of the *Transfer In* type and one transaction of the *Transfer Out* type. Transactions of these types affect General Ledger accounts. These transactions appear as transactions of the *Transfer* type on the [Release Cash Transactions](CA_50_20_00.md) \(CA502000\) form.

-   *Expense Entry*: If a funds transfer results in any financial charges being incurred, you can record a cash transaction of this type when you create the funds transfer. Transactions of this type affect General Ledger accounts.
-   *Prepayment*: You create a transaction of this type to record an advance payment or down payment to a vendor if the payment was made in cash. Transactions of this type affect General Ledger accounts and vendor accounts in the Accounts Payable module.
-   *Refund*: You create a transaction of this type to record a refund for a prepayment or debit adjustment if the refund was made in cash. Transactions of this type affect General Ledger accounts and vendor accounts in the Accounts Payable module.

    You create a transaction of this type to record a cash refund for a payment, prepayment, or credit memo to a customer. Transactions of this type affect General Ledger accounts and customer accounts in the Accounts Receivable module.

-   *Payment*: You create a transaction of this type to record an incoming customer payment that was made in cash. Transactions of this type affect General Ledger accounts and customer accounts in the Accounts Receivable module.
-   *CA Deposit*: You create a transaction of this type if you want to deposit customer payments or vendor refunds into a cash account. Transactions of this type affect General Ledger accounts.
-   *CA Void Deposit*: You create a transaction of this type if you want to void a released deposit. Transactions of this type affect the General Ledger accounts that were involved in the related deposit.

On the [Cash Account Details](CA_30_30_00.md) form, you can quickly record transactions of the *Cash Entry*, *Prepayment*, *Refund*, and *Payment* types for a particular account, and track transactions of any type.

In Acumatica ERP, separate forms are specifically designed for recording *Cash Entry* transactions, funds transfer transactions, and deposit transactions. For details, see [Cash Entry Processing](CA__CON_CashEntry_Processing.md), [Funds Transfers: General Information](Finance_Performing_Funds_Transfer_GenInfo.md), and [Preparation of Deposits](CA__CON_Preparation_of_Deposits.md).

## Recording Cash Transactions {#section_ww1_kjv_vxb .section}

Before you start recording cash transactions, make sure entry types, which serve as the templates of the transactions, are defined in your system. For details on entry types, see [Entry Types](CA__CON_EntryTypes.md).

You can record a cash transaction by selecting a cash account for the transaction and clicking the **Create Transaction** button on the table toolbar of the [Cash Account Details](CA_30_30_00.md) form. This invokes the **Quick Transaction** dialog box, where you can quickly add cash transactions that affect the balances of customers or vendors as well as of GL accounts. In the **Entry Type** box of the dialog box, you specify the entry type of the cash transaction in accordance with the following:

-   To create a cash transaction that affects the balances of vendor accounts, you specify an entry type with **Module** set to *AP* on the [Entry Types](CA_20_30_00.md) \(CA203000\) form. Once the transaction is saved, it appears in the Cash Management module on the [Cash Account Details](CA_30_30_00.md) form with the *Refund* type if it is a receipt, and with the *Prepayment* type if it is a disbursement with the *On Hold* status. In the Accounts Payable module, the system creates a corresponding document with the *Refund* or *Prepayment* type. You can further process the cash transaction in the Cash Management module and process the corresponding document in the Accounts Payable module.
-   To create a cash transaction that affects the balances of customer accounts, you specify an entry type with **Module** set to *AR* on the [Entry Types](CA_20_30_00.md) form. Once the transaction is saved, it appears in the Cash Management module on the [Cash Account Details](CA_30_30_00.md) form with the *Payment* type if it is a receipt, and with the *Refund* type if it is a disbursement with the *On Hold* status. In the Accounts Receivable module, the system creates a corresponding document with the *Payment* or *Refund* type. You can further process the cash transaction from the Cash Management module and process the corresponding document in the Accounts Receivable module.
-   To create a cash transaction that affects the balances of GL accounts only, you specify an entry type with **Module** set to *CA* on the [Entry Types](CA_20_30_00.md) form. Once the transaction is saved, it appears in the Cash Management module with the *Cash Entry* type, regardless of whether it is a receipt or a disbursement. The transaction has the *Balanced* status by default; balanced transactions can be edited, saved, put on hold, or released.

    **Note:** You can select the **Hold Transactions on Entry** check box on the [Cash Management Preferences](CA_10_10_00.md) form to create cash transactions with the *On Hold* status by default to prevent it from releasing and being posted to the general ledger. If this check box is selected, you can release from hold a cash transaction of the *Cash Entry* type by clearing the **Hold** check box in the dialog box.


For details on how cash transactions of the *Cash Entry* type are processed, see [Cash Entry Processing](CA__CON_CashEntry_Processing.md).

## Processing Accounts Payable Documents {#section_bx1_kjv_vxb .section}

After you save a cash transaction related to a refund, you have to apply the appropriate documents, such as prepayments or debit adjustments, to the refund in the Accounts Payable module. For more details on recording refunds, see [Bill Prepayments: To Refund a Prepayment](Finance_ProcessingPrepayments_Process_Activity2.md).

The **Release AP Documents from CA Module** check box, which is located on the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form, controls the processing of transactions that correspond to documents in the Accounts Payable module. If this check box is selected, documents are released from the Cash Management module; if this check box is cleared, documents can be released only in the Accounts Payable module.

Accounts Payable transactions may be posted when they are released if the **Automatically Post on Release** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) form; otherwise, you need to post transactions manually by using the [Post Transactions](GL_50_20_00.md) \(GL502000\) form. The system assigns reference numbers to the batches that implement the transactions in accordance with the numbering sequences used for Accounts Payable transactions specified in the **Batch Numbering Sequence** box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. The system updates the account balances with the following transactions, based on whether the cash transaction is a receipt or a disbursement.

|Account|Debit|Credit|
|-------|-----|------|
|Cash Account|Amount|0.00|
|Accounts Payable Account|0.00|Amount|

|Account|Debit|Credit|
|-------|-----|------|
|Cash Account|0.00|Amount|
|Accounts Payable Account|Amount|0.00|

When an Accounts Payable transaction is released, all the further processing of it is performed in the Accounts Payable module. Released vendor prepayments get the *Open* status and can be applied to a document, unapplied, or voided in this module. For details, see [Bill Prepayments: General Information](Finance_ProcessingPrepayments_GeneralInfo.md). Released refunds get the *Closed* status; they can be voided later if necessary.

## Processing Accounts Receivable Documents {#section_gx1_kjv_vxb .section}

After you save cash transactions related to refunds, you have to apply the appropriate documents, such as payments or credit memos, to the refund in the Accounts Receivable module. For more details on recording refunds, see [Refunds: To Create a Refund and Apply a Credit Memo to It](Finance_ProcessingCustomerRefunds_Activity1.md).

The **Release AR Documents from CA Module** check box, which is located on the [Cash Management Preferences](CA_10_10_00.md) form, controls the processing of transactions that correspond to documents in the Accounts Receivable module. If this check box is selected, documents are released from the Cash Management module; if this option is cleared, documents can be released only in the Accounts Receivable module.

Accounts Receivable transactions may be posted when they are released if the **Automatically Post on Release** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR100000\) form; otherwise, you need to post transactions manually by using the [Post Transactions](GL_50_20_00.md) form. The system assigns reference numbers to the batches that implement the transactions in accordance with the numbering sequences used for Accounts Receivable documents specified in the **Batch Numbering Sequence** box on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. The system updates the account balances with the following transactions, based on whether the cash transaction is a receipt or a disbursement.

|Account|Debit|Credit|
|-------|-----|------|
|Cash Account|Amount|0.00|
|Accounts Receivable Account|0.00|Amount|

|Account|Debit|Credit|
|-------|-----|------|
|Cash Account|0.00|Amount|
|Accounts Receivable Account|Amount|0.00|

When an Accounts Receivable transaction is released, all further processing of it is performed in the Accounts Receivable module. Released customer payments get the *Open* status and can be applied to a document, unapplied, or voided. Released refunds get the *Closed*; they can be voided later if necessary.

## Recording and Processing Transactions During Bank Reconciliation {#section_lx1_kjv_vxb .section}

You can quickly add cash-related transactions during the process of bank statement reconciliation by clicking **Create Adjustment** on the table toolbar of the [Reconciliation Statements](CA_30_20_00.md) \(CA302000\) form and adding cash transaction details in the **Quick Transaction Entry** dialog box. For details on performing reconciliation, see [Bank Reconciliation: To Reconcile a Cash Account](Finance_Bank_Reconciliation_Activity.md).

## Viewing Transaction Details {#section_nx1_kjv_vxb .section}

On the [Cash Account Details](CA_30_30_00.md) form, you can view all cash transactions for any cash account during the date range you specify. You can view the details of the generated documents by clicking the link corresponding to the transaction in the **Orig. Doc. Number** column. You can also view the details of the batch associated with a transaction by clicking the batch number in the **Batch Number** column.

Also, you can find and view Accounts Payable and Accounts Receivable documents directly in these modules by selecting the transaction reference numbers in the **Reference Nbr.** boxes on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) and [Payments and Applications](AR_30_20_00.md) \(AR302000\) forms, respectively.

-   **[Cash Entry Processing](../UserGuide/CA__CON_CashEntry_Processing.md)**  


**Parent topic:**[Managing Cash Transactions](../UserGuide/CA__MNG_CashTransactions.md)

