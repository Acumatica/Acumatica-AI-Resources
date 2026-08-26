# Corrections: General Information {#_ea65e65e-89e5-4ffa-99be-b7af937a4f2a .concept}

In Acumatica ERP, you can correct a mistake in a released payroll document by doing one of the following:

-   By voiding the incorrect paycheck and creating a new one with corrected data
-   By creating an adjustment or special paycheck

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Void a paycheck and create a replacement paycheck
-   Create an adjustment paycheck
-   Create a PTO adjustment
-   Reverse a liability bill
-   Create a special paycheck

## Applicable Scenarios { .section}

You may need to make a correction to a payroll document in the following cases:

-   You have entered an incorrect rate or number of hours, which resulted in incorrect amounts paid
-   You have linked an earning detail line with an incorrect project, union, labor item, or workers' compensation code

## Corrections in Payroll { .section}

If you have released a paycheck with incorrect information specified, you can void the paycheck and then create and release a similar paycheck but with the correctly adjusted details.

Another way to make the necessary correction is to create and release an adjustment. In the adjustment, you need to enter the exact earning detail line \(or multiple lines\) from the released paycheck that you want to correct but with negative hours. This will cancel out the effect of the incorrect lines in the previously released paycheck. Also, if needed, you can add the correct lines to the document to replace the previously released incorrect ones.

If you have underpaid an employee, you can create and release a special paycheck with an amount that will compensate the underpayment. If you have overpaid an employee, you only can make a verbal agreement with the employee that the amount of the next paycheck will be less \(presumably for the amount of the overpayment\) than the amount of the previous paycheck; there is no other way to correct an overpayment because the payroll functionality does not allow claiming overpayment from employees.

## PTO Adjustments { .section}

To modify PTO balances for specific employees, you can use a dedicated document, a PTO adjustment, which you create and process on the [PTO Adjustments](PR_30_60_00.md) \(PR306000\) form.

When creating a PTO adjustment, you must fill in the table on the form, specifying in each row an employee, a PTO bank for balance adjustment, and the adjustment hours \(positive or negative\). In the **Adjustment Reason** column, you must select a reason for the PTO adjustment, which can be one of the following: *Initial Balance Correction*, *Bonus or Incentive Allocation*, *Accrual Modification*, *Time Card Usage Correction*, *Accrual Earned Correction*, *Data Entry Correction*, *Carryover Correction*, *Maximum Accrual Correction*, or *Other*. If you select the *Other* adjustment reason, the **Reason Details** column becomes editable for custom input. In the **Initial Balance**, **New Balance**, and **Balance Limit** read-only columns, the system displays the PTO balance before the adjustment, the adjusted balance, and the established balance limit for the PTO bank, respectively.

You can import PTO adjustments from an Excel file by using the **Load Records from File** button on the table toolbar.

The system does not allow the entry of multiple rows for the same combination of employee and PTO bank.

When you save a new PTO adjustment, the system assigns it the *New* status and inserts the current system date in the **Date** box. This date is non-editable to prevent adjustments to PTO balances in the past or future.

PTO adjustments with the *New* status can be deleted from the system.

For a PTO adjustment with the *New* status, the **Release** command is available on the More menu of the form. By clicking this command, you can release the PTO adjustment, causing the year-to-date available hours of the selected PTO bank to be corrected by the number of adjustment hours for the selected employee. The status of the PTO adjustments changes to *Released* as a result.

You can void a released PTO adjustment by clicking the **Void** command on the More menu of the form. This action generates a PTO adjustment with the *Voiding Adjustment* type, mirroring the original PTO adjustment but with reversed values in the **Adjustment Hours** column. Releasing this voiding adjustment restores the initial balances of the selected PTO banks for the selected employees. The original PTO adjustment is assigned the *Voided* status as a result.

On the *PTO Adjustments \(PR3060PL\)* list of records, which can be used to view PTO adjustments created on the [PTO Adjustments](PR_30_60_00.md) \(PR306000\) form, you can view the history of all PTO adjustments.

## Adjustments and Special Paychecks { .section}

The [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form may be used to make any necessary adjustments if you select the *Adjustment* option in the **Type** box. In an adjustment, you can edit any setting except for the settings related to paid time off, and then you can release the document to update the corresponding value in the employee record. You can also use adjustments to enter employee beginning balances, typically by entering one check per employee per month or per quarter. You can enter negative amounts in adjustments, which may result in a negative net check.

You can enter the data on the **Earning** tab and then click the **Calculate** command on the More menu to have the system populate the **Deductions** and **Taxes** tabs. You can then override any or all amounts in order to make the net check come out as you need it to.

For taxes, you need to make sure the amount entered in the tax is equal to the amount entered in the tax details and tax split when using the labor item or earning type as the source of the expense accounts or if you assign the labor burden to the project. The source of the expense accounts can be specified on the [Payroll Preferences](PR_10_10_00.md) \(PR101000\) form.

The transactions that are created when an adjustment is released impact the general ledger as usual. Projects and cash accounts are also affected.

Special paychecks \(that is, paychecks with the *Special* option selected in the **Type** box on the [Paychecks and Adjustments](PR_30_20_00.md) form\) are mostly used for special payments, such as bonuses, outside the normal payroll run. In a special paycheck, you are not allowed to enter negative hours.

## Voiding of Paychecks { .section}

The [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form may be used to void a paycheck of any type.

You can void only a released paycheck—that is, a paycheck with the *Released*, *Liability Partially Paid*, or *Closed* status. If the pay group of the employee has changed since a paycheck was released, you still can void the paycheck.

When you click the **Void** command on the More menu, a paycheck with the *Voiding Paycheck* type is created. The voiding paycheck is identical to the voided paycheck but all its hours and amounts are negative. If the voided paycheck has linked liabilities that have already been processed, the system creates similar liabilities with negative amounts linked to the voiding paycheck. When you release the voiding paycheck, the employee's payroll information—such as gross pay, taxable wages, taxes, deductions, benefits, and sick time and PTO accrual—is automatically updated.

Upon the release of a voiding paycheck, GL posting amounts are automatically generated into a GL batch. For GL accounts and amounts, the system uses the activity previously generated for the check, reversing all amounts, rather than using the current system configuration, because the configuration may have changed since the check was originally released.

The system marks the original check as being voided and keeps a record of the activity related to the voided check.

In most cases, a voided payroll check needs to be immediately replaced by a new check that is either identical to the original check \(in the case of a lost check\) or very similar to it \(in the case of a check that contained a mistake\). To quickly make a copy of the voided paycheck, you can use the standard copy-and-paste options in the **Clipboard** menu on the form toolbar.

## Copying and Pasting of Paychecks { .section}

By using the standard copy-and-paste options in the **Clipboard** menu on the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form, you can create a copy of any paycheck of the *Regular*, *Special*, or *Adjustment* type regardless of its status. The copied document can be pasted to a new paycheck of any type. The new document will be assigned the *Pending Calculation* status.

The following information is copied from the original document to the target document:

-   In the Summary area: All settings are copied if you have not specified an employee in the target document. If an employee is already specified in the target document, the system copies all settings except the employee and pay group. If an employee and pay period are already specified in the target document, the system copies all settings except the employee, pay period, and pay group.
-   On the **Earning** tab: The system copies all settings, including the overtime rules. If the pay period has been changed for the target document, the system adds the difference between the start date of the copied pay period and the start date of the new pay period to the earning detail record.
-   On the **Deductions** and **Paid Time Off** tabs: The system copies all settings related to deductions and benefits and PTO banks. If any of the copied settings is no longer used for the specified employee, the system marks it as inactive in the target document.
-   On the **Financial** tab: The system copies all editable settings, such as the branch, the regular amount to be paid \(if applicable\), and the employee type.

These settings can be also copied through the use of a document template, which you can create by using the **Save as Template** option on the **Clipboard** menu.

**Parent topic:**[Correcting Payroll Documents](../UserGuide/process_Payroll_Corrections_mapref.md)

