# Overtime Rules: General Information {#_8fc025e1-b4de-4e05-9a1f-922fbdf990bf .concept}

Overtime rules are used for automatic tracking of overtime in the system. Overtime rules are applied during the calculation of a paycheck to transform regular hours into overtime hours according to the specified settings. Overtime rules can be disabled at the employee, batch, or paycheck level.

## Learning Objectives { .section}

In this chapter, you will learn how to configure overtime rules and apply these rules to the calculation of paychecks.

## Applicable Scenarios { .section}

You configure overtime rules if you want the system to determine overtime based on a specified set of rules.

## Configuration of Overtime Rules { .section}

You can create new overtime rules and modify existing ones by using the [Overtime Rules](PR_10_40_00.md) \(PR104000\) form. An overtime rule includes the following information:

-   Conditions that determine when the rule should be applied. In the **Type** box, you can select the type of the overtime rule, which can be *Daily*, *Weekly*, or *Consecutive*.

    A rule of the *Daily* or *Weekly* type is applied on a daily basis or weekly. Weekly overtime rules are applicable only to weekly and bi-weekly pay periods. In the **Day of Week** box, which is editable only for the *Daily* type of rule, you can select a particular day of week when the rule is to be applied.

    An overtime rule of the *Consecutive* type can be applied only on a particular day of consecutive work in a workweek, and this day is defined by the number \(from *0* to *7*\) specified in the **Number of Consecutive Days** column.

    In the **Threshold for Overtime \(Hours\)** box, you can specify the number of hours \(for instance, `8` if the rule should be applied daily or `40` if the rule should be applied weekly\) after which the system starts converting hours to overtime hours; if the threshold for overtime is set to `0`, the rule will be applied to all hours entered for the specified overtime earning type.

-   An overtime earning type, based on which overtime is to be calculated. The specified earning type would be the source of the regular earning type and the multiplier that will be used in the calculation of the overtime pay rate. If multiple regular time codes are associated with the overtime code, the system will use the regular time code with the highest rate when calculating overtime pay for employees.
-   Filters, such as **State**, **Union Local**, or **Project**, that you can use to link the rule with only a particular state, union, or project. If these filters are empty, the rule is applicable to all employees that are not exempt from overtime rules.

You can create as many overtime rules of the *Consecutive* type as you need. For example, if the company pays their employees one-and-a-half times their regular rate of pay for eight hours on the seventh consecutive day in a workweek and double-time for more than eight hours on the seventh consecutive day in a workweek, you should create two overtime rules with the following settings.

|Disbursing Earning Type|Multiplier|Type|Threshold for Overtime \(Hours\)|Number of Consecutive Days|
|-----------------------|----------|----|--------------------------------|--------------------------|
|&lt;Overtime earning type&gt;|*1.5*|*Consecutive*|*0*|*7*|
|&lt;Double time earning type&gt;|*2.0*|*Consecutive*|*8*|*7*|

The system will not allow the creation of a duplicate overtime rule. Overtime rules are considered as duplicates if they are active and have the same type, disbursing earning type code, threshold for overtime, day of the week, number of consecutive days, state, union, and project.

In the case of conflicting overtime rules, the system will always use the overtime rule that produces the highest pay rate.

## Calculation of the Overtime Pay Rate { .section}

The overtime pay rate is calculated based on the earning type code, which can belong to only the *Overtime* category, that is specified for the overtime rule in the **Disbursing Earning Type** box. This earning type code contains information about the multiplier by which an employee's regular pay rate is to be multiplied to determine the final pay rate, and an earning type to be used as the source of the regular pay rate. The system compares the calculated pay rate with the labor cost rate \(if applicable\) and the rate from the labor item, and then, during the paycheck calculation, the system uses the highest of the rates as the overtime pay rate.

## Application of Overtime Rules { .section}

Employees of the *Salaried Exempt* employee type cannot have overtime hours and overtime rules are not applicable to them. For such employees, the **Exempt from Overtime Rules** check box is selected and non-editable on the **General** tab of the [Employee Payroll Settings](PR_20_30_00.md) \(PR203000\) form.

For a salaried non-exempt employee, the **Exempt from Overtime Rules** check box is cleared and non-editable. Overtime hours are to be paid additionally to that employee in accordance with overtime rules, but before the paycheck is calculated, you still can disable overtime rules at the payroll batch or paycheck level by doing one of the following:

-   On the **Overtime Rules** tab of the [Payroll Batches](PR_30_10_00.md) \(PR301000\) form, you can clear the **Apply Overtime Rules for the Document** check box to disable all overtime rules for the selected document, or you can deactivate particular rules in the table on that tab if the **Apply Overtime Rules for the Document** check box is selected.
-   You can choose the overtime rules to be applied to a paycheck by using the **Overtime Rules** dialog box, which opens if you click the **Overtime Rules** button on the **Earning** tab of the [Paychecks and Adjustments](PR_30_20_00.md) \(PR302000\) form.

For an employee of any other employee type, you can choose whether you want to select or clear the **Exempt from Overtime Rules** check box on the **General** tab of the [Employee Payroll Settings](PR_20_30_00.md) form. If the check box is cleared, overtime rules will be applied to the calculation of employee paychecks unless you disable overtime rules at the payroll batch or paycheck level. If the check box is selected, the system will not calculate overtime hours for the employee, but a user will still be able to manually assign overtime hours to that employee.

Overtime rules of the *Consecutive* type are applicable only to employees who are paid hourly on a weekly or biweekly basis. For each employee, the number of working days in a workweek is defined through the work calendar assigned to this employee on the [Employee Payroll Settings](PR_20_30_00.md) form. The counter of the days of consecutive work starts on the first day of the workweek and is reset to *0* at the start of each workweek.

An overtime rule of the *Consecutive* type is not applicable if the employee reported no working hours for any day of the specified number of consecutive days starting from the first day of the workweek.

**Parent topic:**[Configuring Overtime Rules](../UserGuide/config_Payroll_Overtime_Rules_Mapref.md)

