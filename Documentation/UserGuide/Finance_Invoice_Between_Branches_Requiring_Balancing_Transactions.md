# Interbranch Invoices with Balancing: Generated Transactions {#_91f9806c-66d1-455b-ac23-4b33ba3646d0 .concept}

When you release an invoice between branches that need to be balanced, the system generates a transaction in the general ledger. When this batch is posted, the system adds balancing entries to it. You can view the details of the batch associated with an invoice by clicking the link in the **Batch Nbr.** box on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. The system opens the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form with the batch selected.

If an invoice bills a customer for goods provided by multiple branches that require balancing, the following accounts are involved in the transaction generated when the invoice is released and the related batch is posted:

-   The AR account of the originating branch. The system uses the account specified in the **AR Account** box on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form. When an invoice is created, the system fills in this setting with the AR account specified for the customer location \(if multiple business locations are used in the system\) or specified for the customer \(if a single location is used\), but you can override this setting for a particular invoice.
-   The income account, which is specified for each line of the invoice in the **Account** column on the **Details** tab of the [Invoices and Memos](AR_30_10_00.md) form. By default, the system inserts into this column either of the following accounts:

    -   If a non-stock item is specified in the line, the sales account associated with the item on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form
    -   If a non-stock item is not specified in the line, the sales account specified for the customer location being billed \(if multiple business locations are used in the system\) or specified for the customer \(if a single location is used\)
    You can override this setting for a particular invoice line.

-   The offset account to which the system will post the balancing entry in the originating branch; this account is specified in the **Offset Account** column on the **Transactions in the Originating Branch** tab of the [Inter-Branch Account Mapping](GL_10_10_10.md) \(GL101010\) form for the destination branch.
-   The offset account to which the system will post the balancing entry in the destination branch; this account is specified in the **Offset Account** column on the **Transactions in the Destination Branch** tab of the [Inter-Branch Account Mapping](GL_10_10_10.md) form for the originating branch.

For an invoice that involves two branches that require balancing, the following example demonstrates the GL transaction that is generated. In this example, *MHEAD* is the originating branch that bills a customer for providing services and *MRETAIL* is the destination branch that provides part of the services. The transaction shown below will be recorded to the general ledger when the invoice is released and the related batch is posted.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*MHEAD - Originating Branch*|*11000 - Accounts Receivable*|600.00|0.00|
|*MHEAD - Originating Branch*|*40000 - Sales Revenue*|0.00|100.00|
|*MRETAIL - Destination Branch*|*40000 - Sales Revenue*|0.00|500.00|
|*MHEAD - Originating Branch*|*19000 - Due from Related Entity*|0.00|500.00|
|*MRETAIL - Destination Branch*|*26000 - Due to Related Entity*|500.00|0.00|

With the other applicable scenario for branches that require balancing, one branch \(the originating branch\) bills a customer for the services that have been performed by another branch \(the destination branch\). In this example, *MHEAD* is the originating branch that is billing the customer and *MRETAIL* is the destination branch that is providing services. In this case, the following transaction will be recorded to the general ledger when the invoice is released and the related batch is posted.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*MHEAD - Originating Branch*|*11000 - Accounts Receivable*|600.00|0.00|
|*MRETAIL - Destination Branch*|*40000 - Sales Revenue*|0.00|600.00|
|*MHEAD - Originating Branch*|*19000 - Due from Related Entity*|0.00|600.00|
|*MRETAIL - Destination Branch*|*26000 - Due to Related Entity*|600.00|0.00|

**Parent topic:**[Processing Interbranch Invoices with Balancing](../UserGuide/Finance_Invoice_Between_Branches_Requiring_Balancing_Mapref.md)

