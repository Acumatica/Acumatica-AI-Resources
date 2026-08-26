# Purchases to the Project Site: Generated Transactions {#_e32c7203-1ca3-4f38-bb9a-0e6d4eb485a5 .concept}

When you purchase items for a project that are drop-shipped to the project site and no purchase receipt is processed, you create and process a purchase order of the *Project Drop-Ship* type. To update the vendor balance and record the incurred expenses to the cost budget of the project, the system generates the GL transactions and project transactions described in the following sections.

## GL Transactions Generated on Release of the AP Bill {#section_wrs_wst_pqb .section}

When an accounts payable bill is released, the system creates a batch of the general ledger transactions shown in the following table.

|Account|Source of Account|Project Budget Key|Debit Amount|Credit Amount|
|-------|-----------------|------------------|------------|-------------|
|Accounts Payable account|Vendor|*X* \(Non-project code\)|0.00|Amount|
|Expense account|Determined by the **Use Expense Account From** setting of the project|Project, project task, and cost code in the purchase order line|Amount|0.00|

On the **Financial** tab \(**Link to GL** section\) of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you can click the link in the **Batch Nbr.** box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Project Transaction Generated on Release of the AP Bill {#_7f9dc79b-95dc-460d-b73a-31c065929f39 .section}

On release of the general ledger transactions, the system generates the project transaction shown in the following table.

|Project Budget Key|Account Group|Debit Account|Amount|
|------------------|-------------|-------------|------|
|Project, project task, inventory item, and cost code in the GL transaction|Account group mapped to the Expense account|Expense account in the GL transaction|Amount|

You can review the created project transaction on the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form. In the Selection area of this form, you select the project in the **Project** box. In the table, you can find the project transaction created on release of the accounts payable bill by looking for the reference number of the AP bill in the **Orig. Doc. Nbr.** column.

**Parent topic:**[Purchasing Materials to Project Site](../UserGuide/Projects_Purchase_to_Project_Site_Mapref.md)

