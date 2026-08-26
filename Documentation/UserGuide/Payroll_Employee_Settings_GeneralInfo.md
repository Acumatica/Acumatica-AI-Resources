# Employee Payroll Settings: General Information {#_89816987-d5a4-4010-96ea-e24b3f530967 .concept}

To be able to process payroll documents related to a particular employee, you need to create a linked payroll record for that employee and specify necessary payroll settings for that record.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a payroll employee record linked with an employee
-   Specify necessary payroll settings for payroll employees
-   Update taxes to take into account the employee addresses specified for payroll employee records

## Applicable Scenarios { .section}

You create a payroll employee record and specify employee payroll settings if you are going to process payroll documents for this employee and need to maintain all the payroll-related data of the employee.

## Creating a Payroll Employee Record { .section}

In Acumatica ERP, you use the [Employees](EP_20_30_00.md) \(EP203000\) form to set up your employees. On this form, you need to fill in the following information:

-   The general information, especially the employee’s address for tax purposes
-   The work calendar that determines the number of hours worked by the employee during a week
-   The labor item to be used by default in the payroll transactions
-   The employment history, including the employee’s current position and hire date; some validations will be run to prevent the user from paying an employee before the start date or after the end date
-   The required GL accounts

After an employee has been set up, you create a linked payroll record by clicking the **Create Payroll Employee** command on the More menu. As a result, the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form opens, populated with the settings of the employee.

Depending on whether the *US Payroll* or *Canadian Payroll* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, an employee may have a payroll record only if *US* or *Canada* is selected, respectively, in the **Country** box in the address information specified for each of the following entities:

-   The employee record, on the [Employees](EP_20_30_00.md) form, in the **Address Info** section of the **General** tab
-   The company or branch to which the employee belongs, on the [Companies](CS_10_15_00.md) \(CS101500\) or [Branches](CS_10_20_00.md) \(CS102000\) form, respectively, in the **Main Address** section of the **Company Details** or **Branch Details** tab

## Specifying Employee Payroll Settings { .section}

On the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form, you can specify the following payroll settings of an employee:

-   On the **General** tab, if you need to change the default values that have been set up for the employee class, clear the **Use Class Default Value** check box next to each box you need to change and then make your change. On this tab, you also can modify the settings copied from the employee record.

    **Attention:** If the employee works on certified projects, make sure that they have a proper employee type and pay group specified—an employee must be paid hourly on a weekly basis so that they may be included in certified reporting. For more information, see [Certified Projects: General Information](CertifiedProject_GeneralInfo.md).

-   On the **Employment History** tab, you can adjust the end date of the probation period for a newly hired employee.
-   On the **Tax Settings** tab, you need to enter the social security number for the employee as well as all the items that pertain to your employee taxes.
-   On the **Taxes** tab, you need to make sure that all taxes that apply to this employee have been set up \(home taxes and work location taxes\). If you select a tax in the left panel, the system displays the attributes that belong to that tax on the right panel. You must fill in the items that apply.
-   On the **Compensation** tab, you need to add the earning types that will be used as the normal earnings \(wages\) that apply to the employee. You can select the pay rate, such as hourly or annual \(or miscellaneous for piecework\). Also, you should enter a start date for each earning type. If you enter an earning type with the same code, you’ll also have to specify an end date for the previous rate.
-   On the **Deductions and Benefits** tab, you can enter the items that apply to the employee. You can change the default settings if you clear the **Use Deduction Defaults** or **Use Contribution Defaults** check box.
-   On the **Paid Time Off** tab, you need to review the paid time off settings associated with the employee payroll class. You can change the default settings if you clear the **Use Custom Settings** check box.
-   On the **Payment** tab, you must specify a payment method and a cash account and enter the direct deposit information \(if applicable\) for the employee. Employees can distribute their direct deposit payments into an unlimited number of bank accounts.
-   On the **GL Accounts** tab, you can specify general ledger accounts to be used for this employee.

You can delete a payroll record with all the payroll settings only for an employee that has no linked payroll transactions.

After a new employee payroll record has been created or the resident address has been modified for an employee, you may need to update the tax details in the system by clicking **Update Taxes** on the form toolbar of the [Tax Maintenance](PR_20_80_00.md) \(PR208000\) form, and then you may need to reassign the relevant taxes to employees by clicking **Assign Taxes to Employees** on the form toolbar of the same form.

**Parent topic:**[Specifying Employee Payroll Settings](../UserGuide/config_Payroll_Employee_Payroll_Settings_Mapref.md)

