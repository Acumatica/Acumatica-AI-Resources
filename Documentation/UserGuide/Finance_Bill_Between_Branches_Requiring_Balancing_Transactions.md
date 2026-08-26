# Interbranch Bills with Balancing: Generated Transactions {#_6d9f0527-4ef0-49b1-ac1c-7f1fab346732 .concept}

When you release an AP bill between branches that need to be balanced, the system generates a transaction in the general ledger. When this batch is posted, the system adds a balancing transaction to it. You can view the details of the batch associated with a bill by clicking the link in the **Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The system opens the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form with the batch selected.

If there is a single bill from a vendor for the goods purchased for multiple branches requiring balancing, the following accounts are involved in the transaction posted to the general ledger:

-   The AP account of the originating branch \(that is, the branch from which the bill originates and that is purchasing the goods\). The system uses the account specified in the **AP Account** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form. When a bill is created, the system fills in this setting with the AP account specified for the vendor location \(if multiple business locations are used in the system\) or specified for the vendor \(if a single location is used\), but you can override this setting for a particular bill.
-   The expense account for the goods purchased, which is specified for each line of the bill in the **Account** column on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) form. If no non-stock item is selected in a line, by default, the system inserts into this column the expense account specified for the vendor location \(if multiple business locations are used in the system\) or specified for the vendor \(if a single location is used\), but you can override this value.
-   The offset account to which the system will post the balancing entry in the originating branch; this account is specified in the **Offset Account** column on the **Transactions in the Originating Branch** tab of the [Inter-Branch Account Mapping](GL_10_10_10.md) \(GL101010\) form for the destination branch.
-   The offset account to which the system will post the balancing entry in the destination branch; this account is specified in the **Offset Account** column on the **Transactions in the Destination Branch** tab of the [Inter-Branch Account Mapping](GL_10_10_10.md) form for the destination branch.

For a bill that involves two branches requiring balancing, the following example demonstrates the transaction that is generated. In this example, *MHEAD* is the originating branch that is purchasing goods and *MRETAIL* is the destination branch to receive some of the goods. The transaction shown below will be recorded to the general ledger when the bill is released and the related batch is posted.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*MHEAD - Originating Branch*|*20000 - Accounts Payable*|0.00|350.00|
|*MHEAD - Originating Branch*|*62400 - Office Expense*|250.00|0.00|
|*MRETAIL - Destination Branch*|*62400 - Office Expense*|100.00|0.00|
|*MHEAD - Originating Branch*|*19000 - Due from Related Entity*|100.00|0.00|
|*MRETAIL - Destination Branch*|*26000 - Due to Related Entity*|0.00|100.00|

With the other applicable scenario for branches requiring balancing, the bill reflects goods being ordered by one branch \(the originating branch\) and completely transferred to another branch \(the destination branch\). In this example, *MHEAD* is the originating branch that is purchasing goods and *MRETAIL* is the destination branch to which the goods are transferred. In this case, the following transaction will be recorded to the general ledger when the bill is released and the related batch is posted.

|Branch|Account|Debit|Credit|
|------|-------|-----|------|
|*MHEAD - Originating Branch*|*20000 - Accounts Payable*|0.00|350.00|
|*MRETAIL - Destination Branch*|*62400 - Office Expense*|350.00|0.00|
|*MHEAD - Originating Branch*|*19000 - Due from Related Entity*|350.00|0.00|
|*MRETAIL - Destination Branch*|*26000 - Due to Related Entity*|0.00|350.00|

**Parent topic:**[Processing Interbranch Bills With Balancing](../UserGuide/Finance_Bill_Between_Branches_Requiring_Balancing_Mapref.md)

