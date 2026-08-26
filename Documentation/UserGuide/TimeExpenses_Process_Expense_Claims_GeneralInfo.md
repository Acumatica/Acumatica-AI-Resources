# Expense Claims: General Information {#_fe2b7780-4756-4084-bcd6-3e7f04e2cf10 .concept}

Acumatica ERP supports filing claims for the reimbursement of expenses that employees have incurred on behalf of the company. Employees can submit a claim for a single expense receipt or multiple receipts grouped into one claim. You can use this functionality if the *Expense Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create an expense claim and specify its settings
-   Recognize the processing stage of the expense claim based on its status
-   Approve expense claims
-   Release expense claims
-   Create an expense claim with receipts in different currencies

## Applicable Scenarios { .section}

You create an expense claim if you are an employee who has incurred multiple company-related expenses and wants to submit them for reimbursement in a consolidated request.

You approve or reject expense claims if you are a manager or an accountant responsible for reviewing, approving, and processing employee expense reimbursements.

## Creation of Expense Claims { .section}

In Acumatica ERP, an expense claim is a record that consolidates one or more expense receipts submitted for the reimbursement of business-related expenses an employee has incurred on behalf of the company.

You can create an expense claim in one of the following ways:

-   By clicking **Add New Record** on the [Expense Claim](EP_30_10_00.md) \(EP301000\) or [Expense Claims](EP_30_10_30.md) \(EP301030\) form
-   By clicking **Claim** on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form

If you create a new expense claim on the [Expense Claim](EP_30_10_00.md) form, you can manually add any number of expense receipts by using the buttons on the table toolbar of the **Details** tab as described below:

-   You can create a new expense receipt on the fly by clicking **Add Row** and manually entering the settings of the expense receipt in the row. When you save the expense claim, the system creates a new expense receipt and inserts its number in the **Receipt Number** column.

    **Tip:** An expense receipt is created with the *On Hold* status. Before you submit the expense claim, you need to review and submit the expense receipt on the [Expense Receipt](EP_30_10_20.md) form.

-   You can create an expense receipt on the [Expense Receipt](EP_30_10_20.md) form, which opens if you click **Add New Receipt**. After you save the expense receipt, you click the Back button in your browser. The system opens the expense claim and adds a row with the created expense receipt on the **Details** tab.
-   You can also add existing expense receipts by clicking **Add Receipts**. In the **Add Receipts** dialog box, which opens, you select the unlabeled check box for the rows with expense receipts you want to add and click **Add and Close**.

    **Tip:** In the **Add Receipts** dialog box, you can select only expense receipts that have not been added to other expense claims.


On the [Expense Receipt](EP_30_10_20.md) form, if you click **Claim** on the form toolbar for an expense receipt, the system opens the [Expense Claim](EP_30_10_00.md) form with a new expense claim and adds the row with the expense receipt's settings on the **Details** tab. You can also claim multiple expense receipts on the [Expense Receipts](EP_30_10_10.md) \(EP301010\) form by clicking **Claim** \(for the selected expense receipts\) or **Claim All** \(for all expense receipts\) on the form toolbar.

When you click **Claim** or **Claim All**, the system automatically generates the corresponding expense claims. Receipts with common properties can be grouped into a single claim. However, for receipts associated with different employees, branches, or customers, the system always generates separate claims.

If the **Hold Expense Claims on Entry** check box is selected on the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form, all new expense claims have the *On Hold* status, indicating that they are drafts that can be adjusted, if necessary. You need to check the details of every claim before submitting it for approval; you can submit it for approval only if all included receipts have the *Open* status. If the **Hold Expense Claims on Entry** check box is cleared, each newly created expense claim is automatically submitted for approval. Also, its status is set to *Pending Approval* \(if approval is required\) or *Approved* \(if no approval is required\).

After you have saved the expense claim, you can review it, along with other expense claims, on the [Expense Claims](EP_30_10_30.md) form. This form lists the following expense claims:

-   Those with your own expense receipts
-   Those of employees in the workgroups at lower levels in the company tree than your workgroup
-   Those of employees for whom you are an appointed delegate
-   Those that require your approval
-   Those that require approval by employees in the workgroups at lower levels in the company tree than your workgroup

An expense claim can be released if it has the *Approved* status. You can release a single expense claim on the [Expense Claims](EP_30_10_30.md) \(EP301030\) form or multiple expense claims in bulk on the [Release Expense Claims](EP_50_10_00.md) \(EP501000\) form. For details, see [Expense Claims: Expense Claim Release](TimeExpenses_Process_Expense_Claims_Release.md).

## Expense Claims Settings { .section}

On the [Expense Claim](EP_30_10_00.md) form, the following settings can be specified for an expense claim:

-   The date when the claim is created. This date determines the post period of the bill generated by the claim release unless another post period is specified for the claim in the **Post to Period** box on the **Financial** tab of the [Expense Claim](EP_30_10_00.md) form, which is available if the claim has the *Pending Approval* or *Approved* status.
-   The total amount of the claim, which is calculated as the sum of the amounts in the **Amount in Claim Curr.** column for all lines specified for the claim.
-   The part of the total for which the employee is responsible, which is not paid back to the employee in accordance with the company policy.
-   The taxable amount and tax amount for the expense claim. You can review the summary information about the applicable taxes on the **Taxes** tab of the [Expense Claim](EP_30_10_00.md) form. To view information for an expense claim line, click the link in the **Tax Amount** column on the **Details** tab.
-   The currency in which the claim will be reimbursed to the employee; the claim currency may differ from the currency of the included receipts. By default, the claim currency matches the currency specified as the default for the employee, but it can be changed if currency overriding is enabled for the employee on the [Employees](EP_20_30_00.md) \(EP203000\) form.
-   The customer \(if applicable\), which can also be specified for an individual line. The customer specified in the Summary area is inserted by default for claim lines. It can be overridden for each line unless a project is specified for the line and the specified customer is associated with this project. When the **Billable** check box is selected for a particular line, the customer will be billed for the expense in the amount returned to the employee.
-   The branch that will reimburse the expenses to the employee.
-   The department of the employee, which can affect who approves the claim. You can set up assignment rules for claim approval whereby claims from different departments may be approved by different persons.
-   The tax zone and tax calculation mode.

## Statuses of Expense Claims { .section}

On the [Expense Claims](EP_30_10_30.md) \(EP301030\) form, you can view the expense claim's status, which reflects its processing stage. The system assigns one of the following statuses to an expense claim:

-   *On Hold*: The claim is a draft and cannot be released.
-   *Pending Approval*: The claim is pending approval.

    **Tip:** If the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, expense claims can be submitted for approval. For details, see [Expense Claims: Expense Claim Approval](TimeExpenses_Process_Expense_Claims_Approval.md).

-   *Approved*: The claim either has been approved or requires no approval.
-   *Rejected*: The claim has been rejected.
-   *Released*: An accounts payable bill has been generated based on the claim.

**Parent topic:**[Processing Expense Claims](../UserGuide/TimeExpenses_Process_Expense_Claims_Mapref.md)

