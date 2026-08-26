# Finance Charge Transactions {#_438c4829-23c0-4de8-ab13-a5f83ebfe8c6 .concept}

On the release of each document with charges, the system generates a batch of transactions that update the cash account, the customer receivables account or vendor payable account, and the General Ledger expense accounts selected to accrue charges of the respective entry types \(specified as an offset account\). The system behavior differs depending on the module you use to record finance charges or the document for which you add charges.

## Generation of Finance Charge Transactions for AP Documents {#section_jzc_kjv_vxb .section}

When you release a document with charges in Accounts Payable module, the system generates a batch of transactions that update the cash account, the vendor payable account, and the General Ledger expense accounts specified as an offset accounts. Accounts are affected as shown below.

|Account|Debit|Credit|
|-------|-----|------|
|\(Bank\) Cash Account|Payment amount|0.00|
|AP Account|0.00|Payment amount|
|\(Bank\) Cash Account|0.00|Charge amount|
|Bank Charges and Fees \(expense account\)|Charge amount|0.00|

## Generation of Finance Charge Transactions for AR Payments {#section_mzc_kjv_vxb .section}

You can define how the system should record finance charges for the payments made in Accounts Receivable based on whether you select the **Deduct From Payment** check box for the particular entry type on the [Entry Types](CA_20_30_00.md) \(CA203000\) form, as described below.

If the bank deducts the amount of charges from the payment amounts and displays only the resulting amounts on the statements, select the check box for the entry type. For example, when you release an Accounts Receivable payment, the system generates the following transactions \(this example displays only the basic transactions; for the complete list of possible transactions for an Accounts Receivable payment, see [Invoice Payments: Release of Payments](AR__CON_PaymentRelease.md)\).

|Account|Debit|Credit|
|-------|-----|------|
|\(Bank\) Cash Account|Payment amount– Charge amount|0.00|
|AR Account|0.00|Payment amount|
|Bank Charges and Fees \(expense account\)|Charge amount|0.00|

If the financial institution presents the charges as separate transactions on its statements, you clear the **Deduct From Payment** check box for the appropriate entry types. The sample batch transactions for an Accounts Receivable payment are shown in the following table.

|Account|Debit|Credit|
|-------|-----|------|
|\(Bank\) Cash Account|Payment amount|0.00|
|\(Bank\) Cash Account|0.00|Charge amount|
|AR Account|0.00|Payment amount|
|Bank Charges and Fees \(expense account\)|Charge amount|0.00|

## Generation of Finance Charge Transactions for Customer Refunds { .section}

For customer refunds created on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, the system generates a batch of transactions that update the AR account, the checking account, and the offset account. The amount of the finance charge can be either a positive or a negative value. When the refund is released, the positive amount of the charge will credit the cash account, and the negative amount of the charge will debit the cash account.

The sample transaction is shown in the following table.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|Refund amount|0.00|
|Bank Charges and Fees \(expense account\)|Charge amount|0.00|
|\(Bank\) Cash Account|0.00|Refund amount|
|\(Bank\) Cash Account|0.00|Charge amount|

When you void a refund on the [Payments and Applications](AR_30_20_00.md) form, the system creates a document with the *Voided Refund* type. On the **Charges** tab of the form, the system automatically adds charges with the opposite sign of the values in the original refund. The sample transaction is shown in the following table.

|Account|Debit|Credit|
|-------|-----|------|
|\(Bank\) Cash Account|Refund amount|0.00|
|\(Bank\) Cash Account|Charge amount|0.00|
|Bank Charges and Fees \(expense account\)|0.00|Charge amount|
|Accounts Receivable account|0.00|Refund amount|

## Generation of Finance Charge Transactions for Funds Transfers {#section_qzc_kjv_vxb .section}

For funds transfers, the system generates a batch of transactions that update the source cash account, the destination cash account, and the General Ledger expense account; the batch generates separate GL transactions for each registered expense. Accounts are affected as shown below.

|Account|Debit|Credit|
|-------|-----|------|
|Source Cash Account|0.00|Transfer amount|
|Destination Cash Account|Transfer amount|0.00|
|Cash Account \(specified for registering expense\)|0.00|Expense amount|
|Bank Charges and Fees \(expense account\)|Expense amount|0.00|

## Generation of Finance Charge Transactions for Bank Deposits {#section_tzc_kjv_vxb .section}

Once the deposit is released, the system generates a batch of deposit-associated transactions to transfer the payment amounts from clearing accounts to the bank account, and to post the bank charges incurred for the deposit as expenses. The total amount of the bank charges will be deducted from the deposit amount. Accounts are affected as shown below.

|Account|Debit|Credit|
|-------|-----|------|
|\(Bank\) Cash Account|Deposit amount– Charge amount|0.00|
|Clearing Account|0.00|Payment 1 amount|
|Clearing Account|0.00|Payment 2 amount|
|Clearing Account|0.00|Payment N amount|
|Bank Charges and Fees \(expense account\)|Charge amount|0.00|

To indicate to the system that bank charges should be posted as separate transactions in the batch, before you release the deposit, select the **Separate Charges** check box on the **Financial** tab of the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form. In this case, accounts are affected as shown below.

|Account|Debit|Credit|
|-------|-----|------|
|\(Bank\) Cash Account|Deposit amount|0.00|
|\(Bank\) Cash Account|0.00|Charge amount|
|Clearing Account|0.00|Payment 1 amount|
|Clearing Account|0.00|Payment 2 amount|
|Clearing Account|0.00|Payment N amount|
|Bank Charges and Fees \(expense account\)|Charge amount|0.00|

**Parent topic:**[Registration of Finance Charges](../UserGuide/CA__CON_FinCharges.md)

