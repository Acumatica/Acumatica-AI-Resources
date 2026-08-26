# Project Tasks: Tracking Task Completion {#_b0081b16-4e6c-4f15-81b9-48ff2e533933 .concept}

A project task may require more than one financial period to complete. The completion statuses of individual project tasks do not directly affect the status of the corresponding project. That is, the system does not automatically complete a project if all of its project tasks have been completed. However, to be able to complete the project, you first need to complete all project tasks included in this project.

For each project task in a project, you can select which method will be used to evaluate the completion percentage of the project task in the **Completion Method** box on the [Project Tasks](PM_30_20_00.md) \(PM302000\) form \(in the **Task Properties** section of the **Summary** tab\). The following sections describe the available methods that can be used to evaluate or calculate the percentage of project task completion.

## Manual Completion of a Project Task { .section}

In the **Completion Method** box on the [Project Tasks](PM_30_20_00.md) \(PM302000\) form \(in the **Task Properties** section of the **Summary** tab\), you select *Manual* if it is not possible to select one cost line whose actual amount or quantity would reflect the overall project task progress. This may be the case if different cost lines are expressed as quantities measured in different UOMs, or some of the lines have budgets expressed as amounts with other line budgets expressed as quantities.

With this method, you evaluate the project task progress by using all the available information and manually specify the project task completion percentage in the **Completed \(%\)** box. You can change the value as often as is needed; we recommend that you update it before you perform an allocation for the project. When you complete the project task, the **Completed \(%\)** value for the task is automatically set to *100*.

## Completion by Budgeted Quantity { .section}

In the **Completion Method** box on the [Project Tasks](PM_30_20_00.md) \(PM302000\) form \(in the **Task Properties** section of the **Summary** tab\), you select *Budgeted Quantity* to calculate the project task completion percentage for all cost budget lines associated with the project task for which the **Auto Completed \(%\)** check box is selected on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. The method is applicable for only the project tasks having a separate cost budget line whose actual quantity reflects the project task's overall progress, so that you select the **Auto Completed \(%\)** check box for only this cost budget line.

The system calculates the percentage based on the quantities in the **Actual Quantity** and **Revised Budgeted Quantity** columns on the **Cost Budget** tab by using the following formula:

`Completed (%) = SUM (Actual Quantity) / SUM (Revised Budgeted Quantity`\),

where the actual quantities and revised budgeted quantities are summed up by all the cost budget lines related to this project task \(the UOMs specified in cost budget lines are ignored\).

For example, suppose that a project task has a budget for 100 hours of consulting \(at a cost of $100 per hour\) for a customer company and a budget for 25 round trips \(at a cost of $10 per hour\) to the customer location. If you select the consulting cost for tracking the project task completion, with 40 hours of consulting completed, the percentage of the project task completion is calculated as 40%. Splitting or merging consulting sessions may change the number of required round trips; however, the project task progress should be measured by the actual hours of consulting performed.

## Completion by Budgeted Amounts { .section}

In the **Completion Method** box on the [Project Tasks](PM_30_20_00.md) \(PM302000\) form \(in the **Task Properties** section of the **Summary** tab\), you select *Budgeted Amount* for a project task if all cost lines have budgeted amounts. With this method selected, the system calculates the project task completion percentage for all the cost budget lines associated with the project task for which the **Auto Completed \(%\)** check box is selected on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.

The system calculates the percentage based on the amounts in the **Actual Amount** and **Revised Budgeted Amount** columns on the **Cost Budget** tab by using the following formula:

`Completed (%) = SUM (Actual Amount) / SUM (Revised Budgeted Amount)`

where the actual amounts and revised budgeted amounts are summed up by all the cost budget lines related to this project task \(the UOMs specified in cost budget lines are ignored\).

**Parent topic:**[Creating Project Tasks](../UserGuide/Project_Tasks_Mapref.md)

