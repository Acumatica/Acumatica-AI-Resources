# Subcontracts: Generated Transactions {#_1b2a71fd-76be-48ed-890b-c19806b1584d .concept}

To record the services provided by a subcontractor for a particular project and update the balance of the vendor in the system, you create and process a subcontract and an AP bill. On release of the AP bill, the system generates GL transactions and project transactions described in the following sections.

## General Ledger Transactions Generated on AP Bill Release {#section_j5x_by4_xnb .section}

On release of a bill with one subcontract line, a batch of the following general ledger transactions is generated.

|Account|Project and Project Task|Debit Amount|Credit Amount|
|-------|------------------------|------------|-------------|
|Accounts Payable account|*X* \(Non-project code\)|0.00|Amount|
|Expense account|Project and project task in the subcontract line|Amount|0.00|

The batch created on release of the accounts payable bill is numbered in accordance with the numbering sequence selected in the **Batch Numbering Sequence** box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. The batch number is specified on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## Project Transaction Generated on AP Bill Release {#_7f9dc79b-95dc-460d-b73a-31c065929f39 .section}

On release of a batch created on release of the AP bill, the system generates the project transaction shown in the following table.

|Project and Project Task|Account Group|Cost Code \(if applicable\)|Inventory ID|Debit Account|Amount|
|------------------------|-------------|---------------------------|------------|-------------|------|
|Project and project task in the subcontract line|Account group mapped to Expense account|Cost code in the subcontract line|Non-stock item in the subcontract line|Expense account in the GL transaction|Amount|

You can review the created project transaction on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the corresponding project in the **Project** box. In the table, you can find the project transaction with the *Bill* type in the **Orig. Doc. Type** column and the reference number of the AP bill in the **Orig. Doc. Nbr.** column.

## Update of the Project Budget Lines {#section_u3s_vjx_xnb .section}

On release of the accounts payable bill created for the subcontract, the system updates the corresponding project budget values as follows in the columns on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form:

-   **Committed Invoiced Quantity** is increased by the quantity in the bill line.
-   **Committed Invoiced Amount** is increased by the amount in the bill line.
-   **Committed Open Quantity** is reduced by the quantity in the bill line.
-   **Committed Open Amount** is reduced by the quantity in the bill line.
-   **Actual Quantity** is increased by the quantity in the bill line.
-   **Actual Amount** is increased by the amount in the bill line.
-   **Performance \(%\)** is recalculated based on the updated amounts and quantities.

**Parent topic:**[Processing Subcontracts](../UserGuide/Construction_Subcontracts_Mapref.md)

