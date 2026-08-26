# Reclassification of Expenses: Generated Transactions {#_49b7defa-2550-40d3-8553-c23a1cdde995 .concept}

As you perform the reclassification of expenses, you create and process AP bills or cash purchases. To update vendor balances and balances of the appropriate accounts and subaccounts, the system generates GL transactions on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form. For the two-stage scenario of expense reclassification, the system generates two batches of transactions, which are described in the following sections.

## Transactions Generated for the Pre-Release Stage { .section}

During the first stage of the scenario, once the bill has been pre-released, the system generates a pre-releasing batch that includes the following entries.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable account|The vendor's setting specified in the **AP Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Amount|
|Reclassification account|The vendor's setting specified in the **Reclassification Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) form|Amount|0.00|

You can view the reference number of this batch in the **Pre-releasing Batch Nbr.** box on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

**Attention:** Although the expenses related to a bill are actually recorded to the reclassification account \(as shown in the pre-releasing batch\), note that the document lines keep the default expense accounts and subaccounts that were associated with the vendor specified in the document or the inventory item specified in the line.

Once a cash purchase has been pre-released, the system generates a pre-releasing batch that includes the following entries.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Reclassification account|The vendor's setting specified in the **Reclassification Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) form|Amount|0.00|
|Company Checking account|The account specified in the **Cash Account** box in the Summary area of the [Cash Purchases](AP_30_40_00.md)\(AP304000\) form|0.00|Amount|

You can view the reference number of this batch in the **Pre-releasing Batch Nbr.** box on the **Financial** tab of the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form.

## Transaction Generated for the Release Stage { .section}

During the second stage of the scenario, once an accountant replaces the reclassification account with a specific expense account and releases the bill or cash purchase, the system generates the following transaction.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Expense account|The updated expense account specified in the **Account** column on the **Details** tab for each document line of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) or [Cash Purchases](AP_30_40_00.md) \(AP304000\) form|Amount|0.00|
|Reclassification account|The vendor's setting specified in the **Reclassification Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Amount|

You can view the reference number of this batch in the **Batch Nbr.** box on the **Financial** tab of the [Cash Purchases](AP_30_40_00.md) \(AP304000\) or [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

**Tip:** Depending on the policies established in your organization, you can configure the system so that users with a data entry role will not be able to release the entered documents and instead must pre-release them. For more information on roles, see [User Roles: General Information](User_Roles_GeneralInfo.md).

**Parent topic:**[Configuring Reclassification of Expenses](../UserGuide/Finance_Reclassification_of_Expenses_Mapref.md)

