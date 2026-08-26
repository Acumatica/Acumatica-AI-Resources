# Construction Project Budget: General Information {#_3ebb114e-1f9f-4d60-8b09-45080c2a3ef2 .concept}

The project budget is used to provide both a financial plan and cost constraints for a project. That is, you define the amount of money and resources to be spent on the project. As the project progresses, you can continuously track actual project costs and either adjust expenditures or revise the budget.

## Learning Objectives {#section_x4x_lkd_crb .section}

In this chapter, you will learn how to do the following:

-   Configure the revenue budget and the cost budget for a project
-   Update the actual values of the project budget
-   Review project balances
-   Lock the original budgeted values
-   Control whether AP bills, purchase orders, and change orders created for a project may exceed the project budget
-   Restructure the budget before and after billing

## Applicable Scenarios {#section_y4x_lkd_crb .section}

You configure a project budget in any of the following cases:

-   If you want to plan the revenue of a project and track its completion
-   If you want to plan and control the amount of money and resources spent on a project
-   If you want to configure a fixed-price project that is billed for progress

## Budget Planning {#section_z4x_lkd_crb .section}

You plan a project budget during the estimation stage of the project, before any project transaction occurs. To estimate the project income, you add lines to the revenue budget of the project. To estimate the resources to be spent on the project, you add lines to the cost budget. During the execution stage of the project, when you process project transactions and bill the project, the actual values of the project budget are updated so that you can control the project execution and compare the actual values against the budgeted ones.

On the **Revenue Budget** and **Cost Budget** tabs of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\) form, you can add, revise, and delete budget lines. Each budget line is defined by the project budget key, which is a unique combination of the following settings:

-   A project
-   A project task, which is a small identifiable piece of work that is a part of the project
-   An account group, which determines the category of the revenue or expenses that are expected during the project execution.
-   A particular inventory item needed to complete the task. If you do not need to associate the budget line with a particular item but the budget level is configured to include the item, you can select the empty item code \(*N/A*\) as the inventory item.
-   A cost code if the *Cost Codes* features is enabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.

The level of details of revenue budget lines and cost budget lines—that is, whether you need to specify the inventory item and cost code or not, depends on the option selected in the **Revenue Budget Level** and **Cost Budget Level** boxes on the **Summary** tab \(**Project Properties** section\) of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form. In each box, you can select one of the following options: *Task*, *Task and Item*, *Task and Cost Code*, and *Task, Item, and Cost Code*.

Other information that you can specify in a budget line includes the original budgeted quantity of the selected inventory item, the unit rate, and the original budgeted amount, which is calculated automatically as the original budgeted quantity multiplied by unit rate if you have not specified a value manually.

The revised budgeted quantity and amount are initially equal to the original budgeted values. During the estimation, acceptance, or execution stages of the project, you may want to revise the budget but keep the original budgeted amounts and quantities unchanged. This gives you the ability to analyze the accuracy of your original estimates while also adjusting the revised budgeted quantities and amounts. For more information, see [Project Budget Control: Budget Locking](../Shared/../UserGuide/Projects_Budget_Lock.md).

## Budget Tracking {#section_apx_lkd_crb .section}

As a project is being processed, you create project-related documents, such as AP bills, purchase orders, or AR invoices. The release of these project-related documents causes the creation of project transactions. When these transactions are released, the system updates the **Actual Quantity** and **Actual Amount** on the **Revenue Budget** and **Cost Budget** tabs of the [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\) form.

**Note:** The system also updates the project budget when a change order line is released, a commitment line is added, a pro forma invoice line is added, an accounts receivable invoice line is added, and a new change request line is added or linked to a change order.

The system uses the project budget key to match the project transaction with a project budget line. If a budget line with the same combination exists, the system updates the actual values of the existing line. For a new combination that does not exist in the project budget, the system creates a new budget line.

For the revenue budget, the system creates a revenue budget line with the same inventory item as the inventory item of the transaction if the *Detailed* option is selected in the **Revenue Budget Update** box on the **General** tab of the [Projects Preferences](../Shared/../UserGuide/PM_10_10_00.md) \(PM101000\) form. If the *Summary* option is selected, the system creates a revenue budget line with the empty item code \(*N/A*\) instead of the inventory item of the transaction. Similarly, the system creates cost budget lines based on the option selected in the **Cost Budget Update** box on the **General** tab of the [Projects Preferences](../Shared/../UserGuide/PM_10_10_00.md) form.

**Tip:** The *Summary* option is useful if the following conditions are met:

-   Only certain articles are budgeted at a very detailed level.
-   There may be many transactions processed with different cost codes and items.
-   All these transactions are budgeted in a single line of a project.

You track the **Actual Amount** of project budget lines on the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form and compare this amount with the **Revised Budgeted Amount** when reviewing the budget. In the **Performance \(%\)** column, the system estimates the percentage of the actual amount to the revised budgeted amount. In a project, you can track the performance at different levels as follows:

-   For a project budget line on the **Revenue Budget** or **Cost Budget** tabs

    A fully performed budget line has the performance of 100%. For a revenue budget line, this percent shows the progress of completion of your financial plan. For a cost budget line, the percentage shows how much expenses you have incurred against the planned amount.

-   For a project task on the **Revenue Budget** or **Cost Budget** tabs if the **Group by Task** check box is selected on the table toolbar
-   For an account group on the **Balances** tab

Similarly, you can compare the actual quantity of project budget lines with the revised budgeted quantity to control how the project execution fits the planned quantity. The actual quantity is updated only if the UOM is specified in the budget line and if the system can convert the UOM of the corresponding project transaction to the UOM of the budget line by using the list of unit conversions defined on the [Units of Measure](../Shared/../UserGuide/CS_20_35_00.md) \(CS203500\) form.

**Parent topic:**[Managing the Construction Project Budget](../UserGuide/Construction_Project_Budget_Mapref.md)

