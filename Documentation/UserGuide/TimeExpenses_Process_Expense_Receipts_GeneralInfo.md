# Expense Receipts: General Information {#_3203544f-efa6-4d30-ab01-73cafc1cf2af .concept}

Acumatica ERP supports the recording, tracking, and processing of employee-incurred expenses. Users can quickly enter their expense receipts to request reimbursement.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create an expense receipt and specify its settings
-   Create an expense receipt by using the Acumatica mobile app
-   Approve expense receipts
-   Create expense receipts automatically based on bank feeds

## Applicable Scenarios { .section}

You create an expense receipt if you are an employee who incurs company-related expenses and wants to record the details of a transaction.

You approve or reject expense receipts if you are a manager responsible for reviewing and approving employee expenses within your workgroup.

## Creation of Expense Receipts { .section}

You can use the expense receipt functionality if the *Expense Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

In Acumatica ERP, an expense receipt is a record reflecting a transaction made by an employee on behalf of the company, resulting in incurred expenses.

You can manually create an expense receipt on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form. For the expense receipt, you can specify the following settings:

-   The non-stock item of the *Expense* type, which defines the financial accounts, the default tax calculation mode and tax category, and the unit of measure used for the receipt. If a standard cost is specified for the item, it is used as the default unit cost. For example, if your company reimburses expenses for using a personal vehicle for company purposes, the non-stock item would represent mileage, and you can specify the standard rate per mile as the standard cost.
-   The name of the employee who is claiming the expenses. By default, the system specifies the username of the current user. You can also select an employee for whom you are an appointed delegate or an employee in a workgroup at a lower level in the company tree than your workgroup.
-   The default tax zone, which is copied from the employee's settings. You can override the tax zone in a particular receipt. The overridden tax zone value can be saved and used as the default tax zone for new expense receipts and claims of the employee.
-   The total amount of the receipt, the tax amount \(if applicable\), the employee part \(that is, the part of the total amount that will not be reimbursed to the employee\), and the tip amount \(if applicable\).

    The system inserts the claim amount, which is the amount to be reimbursed to the employee. It calculates this amount by first summing the amount, tip amount, and tax total \(if taxes are exclusive\); it then subtracts the employee part.

-   The receipt currency, which can be any currency registered in the system. You can configure new currencies by using the [Currencies](CM_20_20_00.md) \(CM202000\) form.
-   The reference number specified by the employee, which usually matches the number of the original receipt.
-   The project or contract for which the employee incurred the expenses, if applicable. \(If you specify a project or contract, the customer associated with it is filled in automatically.\)
-   The payment source, which indicates how the employee paid for the expense item. You can specify whether the payment was made by using the employee's personal account or a corporate card. For details, see [Processing Expense Receipts with Corporate Cards](TimeExpenses_Expense_Receipts_Mapref.md)
-   The customer, which should be specified if the employee incurred the expenses while working for a particular customer.
-   The tax calculation mode. If the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can select whether the amounts entered in the expense receipt are tax-exclusive \(net\) or tax-inclusive \(gross\). For more information, see [Expense Receipts: Taxes in Expense Receipts](TimeExpenses_Process_Expense_Receipts_Taxes.md).

You can also upload a scanned image or photo of the original receipt while you create an expense receipt or later.

After you have saved the expense receipt, you can review it, along with other expense receipts on the [Expense Receipts](EP_30_10_10.md). This form lists the following expense receipts:

-   Your own
-   Those of employees in the workgroups at lower levels in the company tree than your workgroup
-   Those that require your approval \(if they are included in expense claims\)
-   Those of employees for whom you are an appointed delegate; all delegates of an employee are listed on the **Delegates** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form

If an expense receipt has the *Open* status, it can be included in an expense claim. You can claim expense receipts individually or all at once. An expense claim may include one expense receipt or multiple receipts with common settings. Receipts for different employees, branches, or customers must be split into different claims. For details, see [Expense Claims: General Information](TimeExpenses_Process_Expense_Claims_GeneralInfo.md).

## Expense Receipt Statuses { .section}

An expense receipt can have different statuses, which reflect its processing stage on the [Expense Receipt](EP_30_10_20.md) \(EP301020\) form. The system assigns one of the following statuses to an expense receipt:

-   *On Hold*: The receipt is new or can be edited. If approval is required for this receipt, this status indicates that it has not been submitted for approval yet or it has been rejected and then put on hold while being adjusted.
-   *Open*: The receipt is ready to be added to an expense claim. If approval is required for this receipt, this status indicates that it has been approved. If approval is not required, the status indicates that it has been submitted for further processing.
-   *Pending Approval*: The receipt is pending approval.

    **Tip:** If the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, entered expense receipts can be submitted for approval. For details, see [Expense Receipts: Expense Receipt Approval](TimeExpenses_Process_Expense_Receipts_Approval.md).

-   *Rejected*: The receipt has been rejected.
-   *Released*: The expense claim associated with the receipt has been released.

## Automatic Generation of Expense Receipts Based on Bank Feeds { .section}

If the *Bank Feed Integration* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can integrate Acumatica ERP with the Plaid or MX bank feeds. With this integration, you can automatically import bank transactions and create expense receipts based on these transactions. For details, see [Integrating Acumatica ERP with Bank Feeds](CA__MNG_Bank_Feed_Integration.md).

**Parent topic:**[Processing Expense Receipts](../UserGuide/TimeExpenses_Process_Expense_Receipts_Mapref.md)

