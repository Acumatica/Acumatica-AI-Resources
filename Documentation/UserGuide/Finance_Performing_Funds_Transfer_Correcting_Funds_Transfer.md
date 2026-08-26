# Funds Transfers: Correcting a Released Funds Transfer {#_2757f9da-c3f6-4f12-a9f4-9020dda180ce .concept}

If you have released a funds transfer that you now realize is incorrect and you want to correct the transactions, you can reverse this transfer and then create a correct transfer. You reverse the funds transfer on the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form by selecting the needed transfer and then clicking **Reverse** on the form toolbar. \(For instructions, see [To Correct a Funds Transfer](CA__HOW_To_Reverse_Funds_Transfer.md).\)

The system creates a reversed funds transfer on the same form, with the settings from the **Destination Account** section \(Summary area\) for the original transfer copied to the **Source Account** section for the created transfer. The system also copies the settings from the **Source Account** section for the original transfer to the **Destination Account** section for the created transfer.

For each expense associated with the original funds transfer and listed in the table of the form, when you reverse the transfer, in the reversed funds transfer, the system adds a reversed expense with a negative amount.

When you release the reversed funds transfer, the system changes the status of the created transfer to *Released* and records batches with transactions to the general ledger. The transactions recorded to the general ledger for the source and destination accounts are detailed in [Funds Transfers: Generated Transactions](Finance_Performing_Funds_Transfer_Transactions.md).

If an expense has been added to the reversed finds transfer, the system creates a GL transaction that debits the cash account and credits the bank charges account with the expense amount, as shown in the following table.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|Expense amount|0.00|
|Bank charges account|0.00|Expense amount|

**Parent topic:**[Performing Funds Transfers](../UserGuide/Finance_Processing_Funds_Transfers_Mapref.md)

