# WIP Labor Costs in Fixed-Price Projects: Generated Transactions {#_ac5ef55a-a142-1a2b-ac25-6b22618a71ba .concept}

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

## Reversing Allocation Transactions Generated on Billing of a Fixed-Price Project { .section}

When a fixed-price project is billed with a progress billing rule and the accounts receivable document is created, the system generates a batch of reversing allocation transactions shown in the following table, which prevents the allocation transactions from affecting the project balance. The reversing transactions copy the original allocation transactions and reverse the sign of the amount. The reversing batch is created with the *WIP Reversal* description and the *Balanced* status.

|Debit Account|Credit Account|Source of Account|Orig. Doc Type|Amount|
|-------------|--------------|-----------------|--------------|------|
|Debit account|Credit account|Allocation transaction|*WIP Reversal*|–\(Amount\)|

You can review the created reversing allocation transactions on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. You can review only allocation transactions on the **Allocation Transactions** tab. In the table on the tab, you can find the allocation transactions with the *WIP Reversal* type specified in the **Orig. Doc. Type** column.

**Parent topic:**[Accounting for WIP Labor Costs in Fixed-Price Projects](../UserGuide/Projects_Allocation_WIP_FP_Mapref.md)

