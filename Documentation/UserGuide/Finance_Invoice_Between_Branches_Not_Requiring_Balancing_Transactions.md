# Interbranch Invoices Without Balancing: Generated Transactions {#_c77c0d49-4593-4ee8-b9f4-96eddadc8203 .concept}

When you release an invoice that involves branches that do not need to be balanced, the system generates a transaction in the general ledger. You can view the details of the batch associated with an invoice by clicking the link in the **Batch Nbr.** box on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. The system opens the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form with the batch selected.

If an invoice bills a customer for goods provided by multiple branches that do not require balancing, the following accounts are involved in the GL transaction generated when the invoice is released:

-   The AR account of the originating branch. The system uses the account specified in the **AR Account** box on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form. When an invoice is created, the system fills in this setting with the AR account specified for the customer location \(if multiple business locations are used in the system\) or specified for the customer \(if a single location is used\), but you can override this setting for a particular invoice.
-   The sales account to be used for the transaction. This account is specified for each line of the invoice in the **Account** column on the **Details** tab of the [Invoices and Memos](AR_30_10_00.md) form. By default, the system inserts into this column either of the following sales accounts:

    -   If a non-stock item is specified in the line, the sales account associated with the item on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form
    -   If a non-stock item is not specified in the line, the sales account specified for the customer location being billed \(if multiple business locations are used in the system\) or specified for the customer \(if a single location is used\)
    You can override this setting for a particular invoice line.


For an invoice that involves two branches not requiring balancing, the following example demonstrates the GL transaction that is generated. In this example, *HEADOFFICE* is the originating branch that bills a customer for providing services and *RETAIL* is the destination branch that provides part of the services. The transaction shown below will be recorded to the general ledger when the invoice is released and the related batch is posted.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*HEADOFFICE - Originating Branch*|*11000 - Accounts Receivable*|290.00|0.00|
|*HEADOFFICE - Originating Branch*|*40000 - Sales Revenue*|0.00|90.00|
|*RETAIL - Destination Branch*|*40000 - Sales Revenue*|0.00|200.00|

For an invoice that involves another branch of the company, one branch \(the originating branch\) bills a customer for the services that have been performed by another branch \(the destination branch\). In this example, HEADOFFICE is the originating branch that is billing the customer and RETAIL is the destination branch that is providing services. In this case, the following transaction will be recorded to the general ledger when the invoice is released and the related batch is posted.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*HEADOFFICE - Originating Branch*|*11000 - Accounts Receivable*|290.00|0.00|
|*RETAIL - Destination Branch*|*40000 - Sales Revenue*|0.00|290.00|

**Parent topic:**[Processing Interbranch Invoices Without Balancing](../UserGuide/Finance_Invoice_Between_Branches_Not_Requiring_Balancing_Mapref.md)

