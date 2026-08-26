# Employment Termination: General Information {#_b11f7ef8-0f08-48b0-999d-10585b1b9cf2 .concept}

When a person's employment in the company comes to an end, a final settlement is calculated for this person and relevant PTO banks may be disbursed on the final day of the employment. Also, the person's employment information is updated in the system and the employee payroll record becomes deactivated.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a final paycheck
-   Disburse accrued PTO hours
-   Update an employment history
-   Deactivate an employee payroll record

## Applicable Scenarios { .section}

You issue a final paycheck when you need to terminate a person's employment in the company.

## Final Paychecks { .section}

You use the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form to create a paycheck of the *Final* type. A final paycheck is used for the final settlement with a person whose employment in the company has been terminated.

In the Summary area of the form, you need to specify the following settings that are specific to a final paycheck:

-   In the **Termination Date** box, select the date when the person’s employment in the company was terminated. This date must belong to the last pay period \(specified in the **Pay Period** box\) when the person was employed in the company. For a salaried employee, the system sets this date to the pay period's end date by default, but you can change it manually.
-   In the **Termination Reason** box, select the reason the person’s employment in the company was terminated.

Also, you can select the **Eligible for Rehire** check box if the person is eligible for rehire in the future.

These settings will appear on the **History** tab of the [Employees](EP_20_30_00.md) \(EP203000\) form and on the **Employment History** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form when the final paycheck is released.

On the [Paychecks and Adjustments](PR_30_20_00.md) form, after you have specified the details of the employee earnings during the last pay period of their employment, you can calculate the paycheck by clicking the **Calculate** command on the More menu. As a result, the system calculates the paycheck and accrues the PTO hours up to the previously specified termination date. In the table on the **Earnings** tab, the system may insert \(depending on the settlement rules specified for the relevant PTO banks on the [PTO Banks](PR_20_40_00.md) form\) additional earnings detail lines with disbursed PTO hours and amounts. A warning will be displayed next to each of these lines informing you about the line's origin.

When the paycheck is calculated, the status of the paycheck changes from *Pending Calculation* to *Pending Payment*.

You can make changes to a previously calculated paycheck. When the changes are made, the status of the paycheck changes back to *Pending Calculation*, and you need to calculate the paycheck again.

Final paychecks can be processed in the same way as other paychecks can. You can release a final paycheck only if the employee has no released paychecks for pay periods that follow the pay period of the final paycheck. If the employee has such released paychecks, you first need to void all these paychecks to be able to release the final paycheck.

If you void a released final paycheck, the disbursed PTO banks \(if any\) become as they were before the final paycheck was calculated.

## Employment Termination { .section}

After an employee's final paycheck is released on the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form, the system clears the **Active** check box in the Summary area of the [Employee Payroll Settings](PR_20_30_00.md) form for the related employee record and updates the information on the **Employment History** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form as follows:

-   In the **Termination Date** box and in the **End Date** column, for the latest active position that is listed in the table, the system inserts the date from the **Termination Date** box on the [Paychecks and Adjustments](PR_30_20_00.md) form.
-   The check box in the **Terminated** column becomes selected and the **Active** check box becomes cleared for the latest active position.
-   In the **Termination Reason** box, the option that is selected in the **Termination Reason** box on the [Paychecks and Adjustments](PR_30_20_00.md) form is specified.
-   The state of the check box in the **Eligible for Rehire** column for the latest active position matches the state of the **Eligible for Rehire** check box on the [Paychecks and Adjustments](PR_30_20_00.md) form.

The system may insert a new detail line in the table on the **Employment History** tab of the [Employee Payroll Settings](PR_20_30_00.md) form if none of the existing lines corresponds to the information in the released final paycheck. This new line is non-editable. If the final paycheck is voided, the system deletes this detail line.

**Parent topic:**[Terminating Employment](../UserGuide/Payroll_Employment_Termination_mapref.md)

