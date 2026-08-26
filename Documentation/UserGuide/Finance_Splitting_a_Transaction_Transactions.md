# Splitting Transactions: Generated Transactions {#_3ba99451-2e0a-4cc5-8032-fd77a1841f33 .concept}

Suppose that you classify all your expenses by department by using a dedicated subaccount segment for each department code. By mistake, you have posted all your expenses to one subaccount: *000-OPS*. This means that the amount has been posted to the Expense subaccount of one department \(Operations\) instead of three different departments:

-   Operations, which is represented by *OPS* in the second subaccount segment
-   Financial, which is represented by *FIN* in the second subaccount segment
-   Purchasing, which is represented by *PUR* in the second subaccount segment

Now you need to split the incorrect journal entry by creating a correcting transaction, so that the total amount will be split to the subaccounts of three departments in the following proportions: 40% to the subaccount of the Financial department \(*000-FIN*\), 20% to the subaccount of the Purchasing department \(*000-PUR*\), and the remaining 40% in the subaccount of the Operations department \(*000-OPS*\).

The following table shows the journal entries of the original GL transaction of the *Normal* type.

|Account|Subaccount|Debit|Credit|
|-------|----------|-----|------|
|Accounts Payable account|*000-000*|*00.00*|Amount|
|Expense account|*000-OPS*|Amount|*00.00*|

The following table shows the lines of the correcting GL transaction of the *Reclassification* type.

|Account|Subaccount|Debit|Credit|
|-------|----------|-----|------|
|Expense account|*000-OPS*|*00.00*|0.4 \* Amount|
|Expense account|*000-FIN*|0.4 \* Amount|*00.00*|
|Expense account|*000-OPS*|*00.00*|0.2 \* Amount|
|Expense account|*000-PUR*|0.2 \* Amount|*00.00*|

As a result, if $100 had been originally posted to the Expense subaccount of the Operations department, $40 will be posted to the Expense subaccount of the Financial department, $20 will be posted to the Expense subaccount of the Purchasing department, and $40 remains posted to the subaccount of the Operations department.

**Parent topic:**[Splitting Transactions](../UserGuide/Finance_Splitting_a_Transaction_Mapref.md)

