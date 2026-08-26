# Purchasing Services for Projects: Generated Transactions {#_ac5ef55a-a2c7-4a8b-ac25-6b77618a71ba .concept}

When you process an accounts payable bill with a service item for a project, on release of the AP bill, the system generates the GL and project transactions described in the following sections.

## GL Transactions Generated on AP Bill Release { .section}

When an accounts payable bill with a service item is released, the system creates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Project Budget Key|Debit|Credit|
|-------|-----------------|------------------|-----|------|
|Accounts payable account|Vendor|X|0.00|Amount|
|Expense account|Item|Project, project task, cost code|Amount|0.00|

On the **Financial** tab \(**Link to GL** section\) of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you can click the link in the **Batch Nbr.** box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Project Transaction Generated on AP Bill Release { .section}

When a batch of general ledger transactions is created on release of an accounts payable bill, the system also generates the project transaction shown in the following table.

|Debit Account|Credit Account|Source of Account|Amount|
|-------------|--------------|-----------------|------|
|Expense account|Empty|GL transaction|Amount|

You can review the created project transaction on the [Project Transaction Details](../Shared/../UserGuide/PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. In the table, you can find the project transaction created on release of the accounts payable bill by the reference number of the AP bill in the **Orig. Doc. Nbr.** column.

**Parent topic:**[Purchasing Services for Projects](../UserGuide/Projects_Project_Purchases_AP_Bill.md)

