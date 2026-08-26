# Approval Configuration: Implementation Checklist {#_d8654a7b-d28a-4343-a186-0ee3ddea733c .concept}

The following checklist provides details you can use to ensure that the system is configured properly for using the approval functionality, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you can initially start assigning documents for approval, make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)|The *Approval Workflow* feature has been enabled.|
|[Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\)|An approval map has been created for each entity type for which records require approval.|
|[Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\)|New email templates have been created for approval notifications or existing ones have been edited.

 Note that for the system to use these notifications, the created template must be assigned in the preferences related to the entity type.

|
|[General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\)|In a row of the **Approval** tab, the appropriate approval map has been specified in the **Approval Map** column for each needed type of batches of GL transactions selected in the **Type** column. You must select the **Active** check box for the approval map to be used.

 Optionally, you can specify an email template for each approval map in the **Pending Approval Notification** column.

|
|[Time and Expenses Preferences](../UserGuide/EP_10_10_00.md) \(EP101000\)|On the **General** tab, the needed approval maps \(and, optionally, notification templates\) have been specified. You can specify maps and templates for each of the entities whose records require approval: expense receipts, expense claims, employee time cards, and equipment time cards.|
|[Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\)|On the **Approval** tab, in the **Sales Orders** and **Invoices** tables, each needed approval map \(and notification template, if needed\) has been specified. The **Active** check box must be selected for the map to be used.

 In the **Type** column of each row, you specify the sales document type or order type whose records are subject to approval by using the map. Some examples of these records are credit memos, cash returns, cash sales, sales invoices, returns for credit, mixed orders, and sales orders.

|
|[Projects Preferences](../UserGuide/PM_10_10_00.md) \(PM101000\)|On the **Approval** tab, the needed approval maps \(and, optionally, notification templates\) have been specified in the appropriate boxes.

 You can specify maps and templates for each of the entities whose records require approval: projects, pro forma invoices, change orders, change requests, project quotes, cost projections, cost projections by date, and progress worksheets.

|
|[Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\)|On the **Approval** tab, the **Require Approval** check box has been selected. In the table, you specify each needed approval map \(and notification template, if needed\).

 In the **Type** column of each row, you specify the purchase order type whose records are subject to approval by using the map.

|
|[Purchase Requisitions Preferences](../UserGuide/RQ_10_10_00.md) \(RQ101000\)|On the **Approval** tab, the **Require Approval** check box is selected in either or both of the following sections: **Request Settings** \(for purchase requests\) and **Requisition Settings** \(for purchase requisitions\).

 In the table on the **Approval** tab, you specify each needed approval map \(and notification template, if needed\). In the **Type** column of each row, you specify *Request* or *Requisition*.

|
|[Cash Management Preferences](../UserGuide/CA_10_10_00.md) \(CA101000\)|In the table on the **Approvals** tab, each needed approval map to be used for cash transactions and reconciliation statements is listed, and the **Active** check box is selected in the row. Optionally, you can specify a notification template in each row.|
|[Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\)|In the table on the **Approval** tab, each needed approval map \(and notification template, if needed\) is specified and the **Active** check box is selected in the row.

 In the **Type** column of each row, you specify the type of the records that are subject to approval by using the map. These records can be bills, credit adjustments, debit adjustments, payments, cash purchases, prepayment requests, or prepayments.

|
|[Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\)|In the table on the **Approval** tab, each needed approval map \(and notification template, if needed\) is specified and the **Active** check box is selected in the row.

 In the **Type** column of each row, you specify the type of the records that are subject to approval by using the map. These records can be invoices, debit memos, credit memos, payment, prepayments, refunds, cash sales, or cash returns.

|
|[Subcontracts Preferences](../UserGuide/SC_10_10_00.md) \(SC101000\)|On the **General** tab **Approval** section, the needed approval maps \(and, optionally, notification templates\) have been specified in the following boxes: **Approval Map** and **Pending Approval Notification**.|
|[Project Management Preferences](../UserGuide/PJ_10_10_00.md) \(PJ101000\)|On the **Daily Field Report** tab, the needed approval map \(and, optionally, notification template\) has been specified in the following boxes: **DFR Approval Map** and **DFR Approval Notification**.|
|[Customer Management Preferences](../UserGuide/CR_10_10_00.md) \(CR101000\)|On the **General** tab **Quote Approval Settings** section, the needed approval maps \(and, optionally, notification templates\) have been specified in the following boxes: **Approval Map** and **Pending Approval Notification**.|
|[BOM Preferences](../UserGuide/AM_10_10_00.md) \(AM101000\)|On the **ECR Approval** tab and **ECO Approval** tab, the **Active** check box must be selected for the approval map to be used and, optionally, a notification template.|

## Validation of Configuration { .section}

To ensure the correct configuration of the approval functionality, we recommend testing the validation by following instructions similar to those described in the following topics:

-   [Approving Accounts Payable Documents](../UserGuide/AP__con_Approval_of_AP_Bills.md), *Processing of AP Documents with Approvals Set Up* section
-   [Approval of Accounts Receivable Documents](../UserGuide/AR__con_Approval_of_AR_Invoices.md), *Processing AR Documents with Approvals Set Up* section
-   [To Approve a Sales Order](../UserGuide/SO__How_Approve_Order.md)
-   [Expense Receipts: To Approve Expense Receipts](../UserGuide/TimeExpenses_Process_Expense_Receipts_Approval_Activity.md)
-   [Expense Claims: To Approve Expense Claims](../UserGuide/TimeExpenses_Process_Expense_Claims_Approval_Activity.md)
-   [Transactions with Approval: Process Activity](../UserGuide/Finance_GLTransactions_with_Approvals_Process_Activity.md)
-   [Cash Transaction Approval](../UserGuide/CA__con_Cash_Transaction_Approval.md), *Cash Transaction Processing with Approval Required* section

**Parent topic:**[Configuring Approvals](../ImplementationGuide/config_Approvals_Functionality.md)

