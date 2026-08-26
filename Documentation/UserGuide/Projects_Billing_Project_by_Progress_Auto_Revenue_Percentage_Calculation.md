# Progress Billing: Automated Revenue Percentage Calculation {#_943ec190-1948-42dd-9ca8-5aed573ac842 .concept}

Acumatica ERP automatically calculates the recommended completion percentages for revenue budget lines by using predefined rules. You can select the rule the system uses for these calculations: actual costs versus the revised budgeted amount, actual costs versus the projected costs at completion or actual quantity versus the revised budgeted quantity. You can also create your own rules to match your business workflows.

## Grouping Logic of a Revenue Percentage Calculation Rule { .section}

In the **Group by Task** box on the [Revenue Percentage Calculation Rules](PM_20_65_00.md) \(PM206500\) form, you select the type of task to be used for grouping cost budget lines. With *Revenue Task* \(the default option\) selected, the system does the following for each revenue task:

1.  Finds all cost budget lines with this revenue task
2.  Totals actual amounts and budgeted amounts for the cost budget lines with this revenue task
3.  Uses the total amount to calculate the completion percentage for the revenue budget lines with this revenue task

If you instead select *Project Task* in this box, the system does the following for each project task:

1.  Finds all cost lines with this project task
2.  Totals actual amounts and budgeted amounts for the cost budget lines with this project task
3.  Uses the total amount to recommend the completion percentage for the revenue budget lines with this project task

On the [Revenue Percentage Calculation Rules](PM_20_65_00.md) \(PM206500\) form.

## Assigning the Rules { .section}

After you've chosen a revenue percentage calculation rule for a project that uses progress billing, you assign it to the project. That is, you select it in the **Revenue Percentage Calculation Rule** box on the **Summary** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.

For each task of the *Revenue* or *Cost and Revenue* type added to the project, the system inserts this rule in the **Revenue Percentage Calculation Rule** column on the **Tasks** tab of the [Projects](PM_30_10_00.md) form. \(For existing project tasks, you must specify the rule manually.\) You can override the inserted default rule. Once the rule is assigned to a project task, the system calculates the recommended values for each revenue budget line of a project with this task.

You can specify the default revenue percentage calculation rule for a project task, common task, project template, or project template task. The rule assigned to a project task affects the calculation of the recommended revenue completion percentage for it, and if you change this rule, the system uses the new rule to recalculate the recommended percentage.

## Creating a Revenue Percentage Calculation Rule { .section}

You may want to create other rules on the [Revenue Percentage Calculation Rules](PM_20_65_00.md) \(PM206500\) form to support your company's business processes. Here's what you do:

1.  Enter the rule ID and description to identify the new revenue percentage calculation rule.
2.  Click the Edit button in the **Formula** box and specify the formula in the dialog box that opens \(for details, see [Formulas](CS__ARM_Formulas.md)\).

In addition, depending on your requirements, you can do any of the following:

-   For the system to consider only cost lines with the same inventory ID as in the revenue budget line, select the **Group by Item** check box.
-   For the system to use the project task of the revenue budget line to find the matching cost lines, select *Project Task* in the **Group by Task** box.
-   If you use cost codes and need the system to use cost lines with the same cost code as the revenue budget line, select the **Group by Cost Code** check box.

**Parent topic:**[Billing Projects by Progress](../UserGuide/Projects_Billing_Project_by_Progress_Mapref.md)

