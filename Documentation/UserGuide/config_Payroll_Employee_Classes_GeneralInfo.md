# Employee Payroll Classes: General Information {#_27a9ac93-e778-42d5-a235-91e4b94aba59 .concept}

In Acumatica ERP, an employee payroll class is used to group payroll employees by type and establish certain default settings for new employees of the class.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a new employee payroll class
-   Specify class settings that will be used as default settings for new employees of the class

## Applicable Scenarios { .section}

You create an employee payroll class in the following cases:

-   You need to group payroll employees based on specific characteristics.
-   You need to establish specific default settings for new payroll employees.

## Employee Payroll Classes { .section}

You can create, view, and edit employee payroll classes by using the [Employee Payroll Class](PR_20_20_00.md) \(PR202000\) form.

When you create a linked payroll record for an employee, you must specify an employee payroll class for that record. As a result, the system will fill in many of the elements on the form with default values provided by the class.

For a class, you can specify the following settings on the **Default Settings** tab of the form:

-   An employee type, which can be one of the following:
    -   *Salaried Exempt*: Employees of the class are compensated based on their salary, which is typically paid once or twice a month. For employees of this type, overtime hours are not allowed, and the payroll batch will always use the quick functionality and create one earning line per pay period with always the same amount for the entire year.
    -   *Salaried Non-Exempt*: Employees of the class are compensated based on their salary, with overtime hours paid additionally. An employee of this type will be paid the same amount every pay period regardless of the number of regular hours worked.
    -   *Hourly*: Employees of the class are paid \(usually weekly or biweekly\) based on an hourly rate for hours worked.
    -   *Other*: Employees of the class are compensated based on some other factor \(for example, for each item produced\).
-   A pay group, which is defined on the [Pay Groups](PR_20_50_00.md) \(PR205000\) form
-   A work calendar to be used by default to import the hours to the payroll batch for quick pay and to calculate the number of hours worked during the week. Work calendars are defined on the [Work Calendar](CS_20_90_00.md) \(CS209000\) form.
-   A workers' compensation code to be used as the default code when a transaction is generated if no other specific code is specified in the payroll batch or paycheck. You use the [Workers' Compensation Codes](PR_20_98_00.md) \(PR209800\) form to define the workers' compensation codes.
-   A union to be used as the default union when a transaction is entered if no specific union is specified. You use the [Union Locals](PR_20_97_00.md) \(PR209700\) form to define unions.
-   Work locations to be used for employees of the class. You can mark one of the specified work locations as the default. Only the work locations that are specified on this form are available in an employee's paychecks and adjustments and in the related payroll batches if the **Use Class Default Value** check box is selected for the employee on the **General** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form.

Also, you can specify whether overtime rules should not be applied by default to employees of the class.

All these settings can be overridden for any employee if the **Use Class Default Value** check box is cleared for this employee on the **General** tab of the [Employee Payroll Settings](PR_20_30_00.md) form.

**Note:** If the **Use Class Default Value** check box is selected for a setting on the [Employee Payroll Settings](PR_20_30_00.md) form, the system will automatically update this setting for the employee with the changes made to the corresponding class setting on the [Employee Payroll Class](PR_20_20_00.md) form.

**Note:** By using the **Employee Classes** tab of the [PTO Banks](PR_20_40_00.md) \(PR204000\) form, you can establish the default settings for paid time off for employees that belong to a particular class. These settings also may be overridden at the employee level on the [Employee Payroll Settings](PR_20_30_00.md) form.

**Parent topic:**[Creating Employee Payroll Classes](../UserGuide/config_Payroll_Employee_Classes_Mapref.md)

