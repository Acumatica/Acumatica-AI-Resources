# Correction of a Bill for a Subcontract: Generated Transactions {#_7eab6d7a-fc3f-4044-a98b-1b86a5138cb4 .concept}

To correct billed amounts and quantities for a subcontract, you create and process a debit adjustment to decrease the balance of a vendor in the system. When the debit adjustment is released, the system generates the transactions and updates the project budget as described in the following sections.

## General Ledger Transactions Generated on Debit Adjustment Release {#section_j5x_by4_xnb .section}

On release of a debit adjustment with one subcontract line, a batch of the following general ledger transactions is generated.

|Account|Project and Project Task|Debit Amount|Credit Amount|
|-------|------------------------|------------|-------------|
|Accounts Payable account|*X* \(Non-project code\)|Correction amount|0.00|
|Expense account|Project and project task in the subcontract line|0.00|Correction amount|

The batch created on release of the debit adjustment is numbered in accordance with the numbering sequence selected in the **Batch Numbering Sequence** box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. The batch number is specified on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## Project Transaction Generated on Debit Adjustment Release {#_7f9dc79b-95dc-460d-b73a-31c065929f39 .section}

On release of a batch created on release of the debit adjustment, the system generates the project transaction shown in the following table.

|Project and Project Task|Account Group|Cost Code \(if applicable\)|Inventory ID|Debit Account|Amount|
|------------------------|-------------|---------------------------|------------|-------------|------|
|Project and project task in the subcontract line|Account group mapped to Expense account|Cost code in the subcontract line|Non-stock item in the subcontract line|Expense account in the GL transaction|–\(Amount\)|

You can review the created project transaction on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. In the table, you can find the project transaction with the *Debit Adjustment* type in the **Orig. Doc. Type** column and the reference number of the debit adjustment in the **Orig. Doc. Nbr.** column.

## Update of the Project Budget Lines {#section_u3s_vjx_xnb .section}

On release of the debit adjustment created for the subcontract, the system updates the corresponding project budget values as follows in the columns on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form:

-   **Committed Invoiced Quantity** is reduced by the quantity in the debit adjustment line.
-   **Committed Invoiced Amount** is reduced by the amount in the debit adjustment line.
-   **Committed Open Quantity** is increased by the quantity in the debit adjustment line.
-   **Committed Open Amount** is increased by the quantity in the debit adjustment line.
-   **Actual Quantity** is reduced by the quantity in the debit adjustment line.
-   **Actual Amount** is reduced by the amount in the debit adjustment line.
-   **Performance \(%\)** is recalculated based on the updated amounts and quantities.

**Parent topic:**[Correcting Subcontract Bills](../UserGuide/Construction_Subcontract_Bill_Correction_Mapref.md)

