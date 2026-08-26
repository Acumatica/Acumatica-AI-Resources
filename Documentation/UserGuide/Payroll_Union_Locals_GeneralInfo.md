# Unions: General Information {#_d91cf885-67f1-4cca-b340-27b22cb4ab6e .concept}

In Acumatica ERP, you can configure the unions that employees are part of. Different earning rates can be applied to different ranks inside a union. A union can be linked with specific benefits and deductions.

## Learning Objectives { .section}

In this chapter, you will learn how to create a union and define specific earning rates within the union. Also, you will link deductions and benefits with the union.

## Applicable Scenarios { .section}

You configure a union to be able to define specific earning rates within the union and to keep track of deductions and benefits associated with the union.

## Creation of a Union { .section}

You can create a union record by using the [Union Locals](PR_20_97_00.md) \(PR209700\) form. Employees can be assigned only to unions that are marked as active.

## Earning Rates { .section}

On the **Earning Rates** tab of the [Union Locals](PR_20_97_00.md) form, you can specify a list of labor items and their rates within the union. The system may use a rate from this list if the combination of the union and labor item is specified in the earning details of the employee. When calculating a paycheck, the system always uses the higher rate between the calculated pay rate and the union rate specified for the labor item.

In the table on the **Earning Rates** tab, you can add a row with no labor item specified, but with a specific earning rate. In this case, the system will use this rate for any labor entered for a union employee.

## Deductions and Benefits { .section}

On the **Deductions and Benefits** tab of the [Union Locals](PR_20_97_00.md) form, you can specify deductions and benefits, such as union dues or health insurance, that will be included in paychecks of union employees. A deduction or benefit can be applied to any labor entered for a union employee if no particular labor item is specified for the deduction and benefit code, or you can associate a deduction or benefit with a specific labor item. The amount or percentage \(depending on what is applicable\) is editable for each deduction and benefit code listed in the table.

On this tab, you can select only deduction and benefit codes that have *Union* selected in the **Associated With** box on the [Deduction and Benefit Codes](PR_10_10_60.md) \(PR101060\) form.

**Parent topic:**[Creating Unions](../UserGuide/config_Payroll_Union_Locals_Mapref.md)

