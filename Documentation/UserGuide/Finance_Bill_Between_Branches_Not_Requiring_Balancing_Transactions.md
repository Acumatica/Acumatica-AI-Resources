# Interbranch Bills Without Balancing: Generated Transactions {#_6d9f1527-4ef0-49b1-ac1c-7f1fab346732 .concept}

When you release an AP bill between branches that do not require balancing, the system generates a transaction in the general ledger. You can view the details of the batch associated with a bill by clicking the link in the **Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The system opens the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form with the batch selected.

If there is a single bill from a vendor for the goods purchased for multiple branches not requiring balancing, the following accounts are involved in the transaction posted to the general ledger when the bill is released:

-   The AP account of the originating branch \(that is, the branch from which the bill originates and that is purchasing the goods\). The system uses the account specified in the **AP Account** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form. When a bill is created, the system fills in this setting with the AP account specified for the vendor location \(if multiple business locations are used in the system\) or specified for the vendor \(if a single location is used\), but you can override this setting for a particular bill.
-   The expense account, which is specified for each line of the bill in the **Account** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) form. If no non-stock item is selected in a document line, by default, the system inserts into this column the expense account specified for the vendor location \(if multiple business locations are used in the system\) or specified for the vendor \(if a single location is used\), but you can override this value.

For a bill that involves two branches not requiring balancing, the following example demonstrates the transaction that is generated. In this example, *HEADOFFICE* is the originating branch that is purchasing goods and *RETAIL* is the destination branch to receive some of the goods. The transaction shown below will be recorded to the general ledger when the bill is released and the related batch is posted.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*HEADOFFICE - Originating Branch*|*20000 - Accounts Payable*|0.00|450.00|
|*HEADOFFICE - Originating Branch*|*62400 - Office Expense*|300.00|0.00|
|*RETAIL - Destination Branch*|*62400 - Office Expense*|150.00|0.00|

If one branch purchases goods for another branch of the company and the branches do not require balancing, the bill reflects goods being ordered by one branch \(the originating branch\) and completely transferred to another branch \(the destination branch\). In this example, *HEADOFFICE* is the originating branch that is purchasing goods and *RETAIL* is the destination branch to which the goods are transferred. In this case, the following transaction will be recorded to the general ledger when the bill is released and the related batch is posted.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*HEADOFFICE - Originating Branch*|*20000 - Accounts Payable*|0.00|450.00|
|*RETAIL - Destination Branch*|*62400 - Office Expense*|450.00|0.00|

**Parent topic:**[Processing Interbranch Bills Without Balancing](../UserGuide/Finance_Bill_Between_Branches_Not_Requiring_Balancing_Mapref.md)

