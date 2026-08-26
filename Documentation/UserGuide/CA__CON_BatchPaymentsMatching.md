# Batch Payment Matching {#_8252de4e-6f9a-46f9-ab1d-c6cf127f9dbe .concept}

Because processing payments in a batch is a common practice, Acumatica ERP offers batch processing for both accounts payable and accounts receivable payments. You can group your payments to vendors in a batch and export this batch for further processing by a money transfer operator, such as ACH. Check and cash payments from your customers can be tracked by means of deposits. For details, see [Payment Methods for Vendors](CA__CON_PMs_for_Vendors.md) and [Preparation of Deposits](CA__CON_Preparation_of_Deposits.md).

Financial institutions may report a payment batch as a single line on the bank statement or provide a detailed list of the payments included in a batch. Some banks offer their customers the choice if they want detailed reporting in the statement or not. Other banks always report in one of both ways and it can be different for accounts receivable and accounts payable.

In this topic, you will read about the clearing and reconciliation of batch payments in Acumatica ERP.

## Accounts Payable Batch Payment Matching {#section_x5d_kjv_vxb .section}

If your bank delivers a statement in which an Accounts Payable batch payment is reported as a single transaction, you should indicate to the system that during processing of the imported bank transactions on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form, the system should search for a match among released Accounts Payable batch payments, as well as among individual payments. To do this, you select the **Match Bank Transactions to Batch Payments** check box on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form for the cash account that represents your bank account. Additionally, you may indicate to the system to search for a match also among the Accounts Payable batches that are not released yet, by selecting the **Allow Matching to Unreleased Batch Payments** check box on the **Bank Statements** tab of the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form.

**Attention:** If your bank reports a batch payment as a list of individual payments, make sure that the **Match Bank Transactions to Batch Payments** check box is cleared for the cash account that represents your bank account.

With the **Match Bank Transactions to Batch Payments** check box selected, when you process imported transactions on the [Process Bank Transactions](CA_30_60_00.md) form and match \(manually or automatically\) a bank transaction to an Accounts Payable batch, the system clears the batch and all payments from this batch.

**Tip:** If you cannot find the particular AP batch on the [Process Bank Transactions](CA_30_60_00.md) form to match a bank transaction, check whether payments from this batch have been matched already to some other bank transactions. If at least one payment from an AP batch has been matched, the system does not display this batch on the [Process Bank Transactions](CA_30_60_00.md) form. You can clear the **Matched** check box for such a payment and perform the matching process once again.

Then when you prepare a reconciliation statement on the [Reconciliation Statements](CA_30_20_00.md) \(CA302000\) form, the system displays this AP batch in the list of transactions instead of the individual payments from this batch.

When you save the reconciliation statement for the first time and the system assigns a reference number to it, the value of the **Match Bank Transactions to Batch Payments** check box at this moment is preserved by the system for this particular statement. If you change the value of the check box after the reconciliation statement was first saved, the system will display the **Bank Transactions Are Matched to Batch Payments** check box on the [Reconciliation Statements](CA_30_20_00.md) form. This check box will reflect the value of **Match Bank Transactions to Batch Payments** at the moment when the statement was first saved. The system will handle AP batch payments based on the original setting before you first saved the reconciliation statement.

## Bank Deposit Matching {#section_evd_kjv_vxb .section}

If your bank reports a deposit as a list of included payments, you should also record the individual payments in the system, so they can be easily reconciled with the lines in the bank statement.

If your bank reports deposits as a single line, we recommend that you use the bank deposit processing offered by Acumatica ERP. For details about the configuration and processing of deposits, see [Preparation of Deposits](CA__CON_Preparation_of_Deposits.md).

After you match \(manually or automatically\) a bank transaction to a deposit registered in the system and process matched bank transactions on the [Process Bank Transactions](CA_30_60_00.md) form, the system clears the deposit and all payments it includes.

Then when you prepare a reconciliation statement on the [Reconciliation Statements](CA_30_20_00.md) form, the system displays the deposit in the list of transactions instead of the individual payments it includes.

**Parent topic:**[Processing Imported Transactions](../UserGuide/CA__CON_ProcessingImportTrans.md)

