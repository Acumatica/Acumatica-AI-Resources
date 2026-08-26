# Overhead in the Project Budget: Generated Transactions {#_d08ef55a-a142-1a2b-ac25-6b22618a71ba .concept}

When you allocate projects, the system creates allocation transactions based on the settings of the allocation rules associated with the project tasks. Depending on the settings of the allocation rules and project tasks, the system can also create reversing allocation transactions. These transactions are described in the following sections.

## Allocation Transactions Generated on the Allocation of a Project {#_d8c770f7-b28e-4e54-af0b-51e1521350d9 .section}

When a project is allocated, the system generates a batch of allocation transactions shown in the table below. The system assigns the *Allocation for &lt;Project ID&gt;* description to the generated batch.

The system uses the following account groups as the source accounts in the batch it creates:

-   The debit account group, which is specified in the **Account Group** box on the **Allocation Settings** tab \(**Debit Transaction** section\) of the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form
-   The credit account group, which is specified in the **Account Group** box on the **Allocation Settings** tab \(**Credit Transaction** section\) of the [Allocation Rules](PM_20_75_00.md) form

|Debit Account Group|Credit Account Group|Source of Account|Orig. Doc Type|
|-------------------|--------------------|-----------------|--------------|
|Debit account group|Empty|Allocation rule|*Allocation*|

You can review the created allocation transactions on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. In the table, the allocation transactions have the *Allocation* type in the **Orig. Doc. Type** column. You can review only allocation transactions on the **Allocation Transactions** tab.

**Parent topic:**[Capturing Project Overhead](../UserGuide/Projects_Allocation_Overhead_Mapref.md)

