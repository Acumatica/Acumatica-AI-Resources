# WIP Labor Costs in Cost-Plus Projects: Generated Transactions {#_ac5ef55a-1212-1a2b-ac25-6b22618a71ba .concept}

When you allocate projects, the system creates allocation transactions based on the settings of the allocation rules associated with the project tasks. Depending on the settings of the allocation rules and project tasks, the system also can create reversing allocation transactions. These transactions are described in the following sections.

## Allocation Transactions Generated on Allocation of a Project { .section}

When a project is allocated, the system generates a batch of the allocation transactions shown in the table below. The system assigns the *Allocation for &lt;Project ID&gt;* description to the generated batch.

The system uses the following accounts as the source accounts in the batch it creates:

-   The debit account, which is specified in the **Account Origin** box on the **Allocation Settings** tab \(**Debit Transaction** section\) of the [Allocation Rules](../Shared/../UserGuide/PM_20_75_00.md) \(PM207500\) form
-   The credit account, which is specified in the **Account Origin** box on the **Allocation Settings** tab \(**Credit Transaction** section\) of the [Allocation Rules](../Shared/../UserGuide/PM_20_75_00.md) form

|Debit Account|Credit Account|Source of Account|Orig. Doc Type|Amount|
|-------------|--------------|-----------------|--------------|------|
|Debit account|Credit account|Allocation rule|*Allocation*|Amount|

You can review the created allocation transactions on the [Project Transaction Details](../Shared/../UserGuide/PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. You can review allocation transactions in the table on the **Allocation Transactions** tab.

## Reversing Allocation Transactions Generated on Billing of a Cost-Plus Project { .section}

When a cost-plus project is billed with a time and material billing rule, the system generates a batch of reversing allocation transactions shown in the table below, which prevents the allocation transactions used for billing from affecting the project balance. Reversing transactions copy original allocation transactions and reverse the sign of the amount.

One of the following descriptions is assigned to the reversing batch, depending on when it’s created, based on the option selected in the **Reverse Allocation** box on the **Allocation Settings** tab of the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form:

-   *Allocation Reversal on AR Invoice Release*: The batch is created with the *Released* status on the release of the corresponding accounts receivable document based on the *On AR Invoice Release* option of the allocation rule.
-   *Allocation Reversal on AR Invoice Generation*: The batch is created on the creation of the corresponding accounts receivable document based on the *On AR Invoice Generation* option of the allocation rule.

    If the accounts receivable document is created with the *Balanced* status, the reversing batch is also created with the *Balanced* status. The reversing batch is automatically released or deleted when the corresponding accounts receivable document is released or deleted, respectively.


|Debit Account|Credit Account|Source of Account|Orig. Doc Type|Amount|
|-------------|--------------|-----------------|--------------|------|
|Debit account|Credit account|Allocation transaction|*Allocation Reversal*|–\(Amount\)|

You can review the created allocation transactions on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. In the table, you can find the allocation transactions, which have the *Allocation Reversal* type in the **Orig. Doc. Type** column. You can review only allocation transactions on the **Allocation Transactions** tab.

**Parent topic:**[Accounting for WIP Labor Costs in Cost-Plus Projects](../UserGuide/Projects_Allocation_WIP_CP_Mapref.md)

