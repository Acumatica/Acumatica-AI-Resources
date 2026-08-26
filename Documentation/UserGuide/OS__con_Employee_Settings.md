# Employee Settings {#_34b5f777-f645-4352-8b6e-b43333819d2a .concept}

In Acumatica ERP, each employee has a personal employee account with the following groups of settings, each of which is described in more detail in the sections below:

-   [Contact information](#_4099905a-64b1-44b7-b105-cf8ea79522dd)
-   [User account information](#_5cb085b6-ef02-4194-9f71-1ebbc5fae4a4)
-   [Employment settings](#_8144a063-fe46-421b-bb47-8cb482f07ac2)
-   [Financial settings](#_3618211d-8346-4d1c-9c4c-13ae0dbb94c9)
-   [Approval settings](#_5c864a6a-6724-4fbe-b5cf-3f8f7b9a265a)

On the [Employee Classes](EP_20_20_00.md) \(EP202000\) form, you can specify default values of some of these settings for an employee class. When you create a new employee on the [Employees](EP_20_30_00.md) form, you specify an employee class, and then the system fills in many of the elements on the form with default values provided by the class.

## Contact Information {#_4099905a-64b1-44b7-b105-cf8ea79522dd .section}

When you create an employee on the [Employees](EP_20_30_00.md) form, a contact record associated with this employee is created automatically. The name, contact information, and address specified on the **General Info** tab of the [Employees](EP_20_30_00.md) form always match those specified for the related contact on the [Contacts](CR_30_20_00.md) \(CR302000\) form. If you modify these settings for an employee \(or a contact\), the changes are immediately reflected for the related contact \(or an employee\).

## User Account Information {#_5cb085b6-ef02-4194-9f71-1ebbc5fae4a4 .section}

An employee may have an associated user account so that the employee can access Acumatica ERP. On the **User Info** tab of the [Employees](EP_20_30_00.md) form, a system administrator can view and edit information about the user account, create a new user account if none exists, activate, enable, disable, or unlock the user account, assign roles to the existing user, and manage the user's password.

For more details about user accounts, see [User Access: General Information](SA_Managing_User_Access_GeneralInfo.md).

## Employment Settings {#_8144a063-fe46-421b-bb47-8cb482f07ac2 .section}

On the **Employee Settings** tab of the [Employees](EP_20_30_00.md) form, you can specify the following settings:

-   The branch with which all transactions related to this employee will be associated
-   The calendar that describes the work hours of the employee and the time zone the employee works from \(see [Support of Multiple Work Calendars](EP__con_Multiple_Calendar_Support.md) for information about how you can define and maintain multiple calendars in the system\)
-   The requirement for using time cards for the employee \(For details about time cards and time reporting, see [Employee Time Entry: Time Cards](TimeExpenses_Entering_Employee_Time_Time_Cards.md).\)
-   The extent of validation of regular work hours for the employee. The requirements for the hourly rates of the employee are specified on the **Employee Cost** tab of the [Employees](EP_20_30_00.md) form.
-   The non-stock item of the *Labor* type used as a source of expense accounts for transactions associated with projects or contracts. You can use the **Labor Item Overrides** tab of the [Employees](EP_20_30_00.md) form to define the relationship between an earning type and a labor item, which is the source of expense accounts.

**Attention:** You cannot change the status of your own employee record.

On the **Employment History** tab of the [Employees](EP_20_30_00.md) form, you can maintain information about the employee's history of employment in the company.

## Financial Settings {#_3618211d-8346-4d1c-9c4c-13ae0dbb94c9 .section}

On the **Financial Settings** tab of the [Employees](EP_20_30_00.md) form, you can specify the accounts involved in the recording of employee compensation and payments, the employee's tax zone, and the payment method to be used by default for compensation payments.

## Approval Settings {#_5c864a6a-6724-4fbe-b5cf-3f8f7b9a265a .section}

An employee may be assigned as an approver to approve a document or as an owner to process a record. On the**Assignment and Approval Maps** tab of the [Employees](EP_20_30_00.md) form, you can review the list of all assignment and approval maps in which the employee is involved.

On the [Approvals](EP_50_30_10.md) \(EP503010\) form, an employee can approve or reject the documents of various types that have the *Pending Approval* status. Only the following documents are visible to the currently signed-in employee on this form:

-   Those assigned to the employee.
-   Those assigned to other users included in the workgroup to which the employee belongs.
-   Escalated documents assigned to users of workgroups that are at lower levels in the company tree but in the node of the employee's workgroup. See [Company Tree and Workgroups](EP__con_Company_Organizational_Chart.md) for details about the company tree.

The [Approvals](EP_50_30_10.md) form is available only if the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. If the *Approval Workflow* feature is disabled, no approval of documents can be set up, with an exception of expense claims; in this case, the system assigns an expense claim for approval to the employee specified in the **Reports to** box on the **General Info** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form for the employee who is claiming the expenses; if the **Reports to** box is empty, the claim requires no approval—it is assigned the *Open* status, and it can be released immediately after submission. \(For more information about the approval of expense claims, see [Expense Claims: Expense Claim Approval](TimeExpenses_Process_Expense_Claims_Approval.md).\)

For details about assignment maps, see [Managing Assignment Maps](EP__con_Assignment_Automation.md) and approval maps, see [Approval Configuration: Approval Maps](../ImplementationGuide/config_Approvals_Create_Approval_Maps.md).

**Parent topic:**[Managing Employees](../UserGuide/OS__MNG_Employees.md)

