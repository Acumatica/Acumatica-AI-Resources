# Intercompany Funds Transfers: Generated Transactions {#_f7b1cafb-d477-4103-bf45-807395d3b742 .concept}

When you release a funds transfer between different companies, the system generates a transaction in the general ledger. When this batch is posted, the system adds balancing entries to it. You can view the details of the batch associated with a funds transfer by clicking the link in the **Batch Number** box of the [Funds Transfers](CA_30_10_00.md) \(CA301000\) form. The system opens the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form with the batch selected.

For a funds transfer between different companies, the following accounts are involved in the GL transaction generated when the funds transfer is released and the related batch is posted:

-   The account of the originating branch \(that is, the branch from which the funds transfer originates\). In the **Source Account** section of the [Funds Transfers](CA_30_10_00.md) form, you select a cash account in the **Account** box, but in a GL transaction the system will use the GL account associated with the selected cash account.
-   The account of the destination branch \(that is, the branch that is receiving the funds transfer\). In the **Destination Account** section of the [Funds Transfers](CA_30_10_00.md) form, you select a cash account in the **Account** box, but in a GL transaction the system will use the GL account associated with the selected cash account.
-   The offset account to which the system will post the balancing entry in the originating branch; this account is specified in the **Offset Account** column on the **Transactions in the Originating Branch** tab of the [Inter-Branch Account Mapping](GL_10_10_10.md) \(GL101010\) form for the destination branch.
-   The offset account to which the system will post the balancing entry in the destination branch; this account is specified in the **Offset Account** column on the **Transactions in the Destination Branch** tab of the [Inter-Branch Account Mapping](GL_10_10_10.md) form for the destination branch.

For a funds transfer between companies, the following example demonstrates the transactions that are generated. In this example, *MHEAD* is the originating branch that transfers funds and *HEADOFFICE* is the destination branch to receive the transfer. The transaction shown below will be recorded to the general ledger when the funds transfer is released and the related batch is posted.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*MHEAD - Originating Branch*|*10200 - Company Checking Account*|0.00|70.00|
|*HEADOFFICE - Destination Branch*|*10200 - Company Checking Account*|70.00|0.00|
|*MHEAD - Originating Branch*|*19000 - Due from Related Entity*|70.00|0.00|
|*HEADOFFICE - Destination Branch*|*26000 - Due to Related Entity*|0.00|70.00|

**Parent topic:**[Processing Inter-Company Funds Transfers](../UserGuide/Finance_Funds_Transfer_Between_Companies_Mapref.md)

