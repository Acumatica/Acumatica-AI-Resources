# Parent-Child Project Management: General Information

Complex construction work is often managed as multiple related projects: A phase, work scope, building, site, or internal cost center may need its own budget and execution details—while the overall contract still requires one consolidated budget control, billing, and reporting.

Acumatica ERP lets you link projects in a parent-child hierarchy. Child projects can keep their own detailed costs, revenue, and billing information. Depending on how you set up the parent-child project relationship, you can:

-   Bill the customer for all child projects' work through the parent project
-   Consolidate the child projects' data in the parent project for reporting—while each child project keeps its own billing process

Either way, you can roll up selected child project transactions to the parent project without creating duplicate project transactions.

## Learning Objectives

-   Learn how to roll up child project transactions to the parent project manually or automatically
-   Review rolled-up project transactions
-   Become familiar with billing from a parent project or child project
-   Learn how to complete a parent project

## Applicable Scenarios

-   Your organization manages one customer-facing contract, but separate project teams need to track execution costs by scope of work, phase, location, or internal cost center.
-   One or more child projects represent independent parts of the work with their own revenue, costs, and billing, but their financial results still need to be rolled up to the parent project for consolidated reporting.

## General Steps of Managing Parent-Child Projects

Managing parent-child projects consists of the following general steps:

1.  Creating and releasing project-related documents for child projects. The released documents create project transactions in the child projects.
2.  Rolling up child project transactions to the parent project manually or automatically.
3.  Reviewing rolled-up project transactions and the updated project budget.
4.  Billing the parent project or child project, depending on the **Billing Project** setting of the child project on the [Projects](PM_30_10_00.md) \(PM301000\) form. For details, see [Parent-Child Project Management: Billing from the Parent or Child Project](Projects_Parent-Child_Projects_Parent_Project_Billing.md).
5.  Reviewing parent-level billing details.
6.  Completing parent and child tasks or projects. A parent task or parent project can be completed only after the related child tasks or child projects have been completed or canceled.

## Rolling Up Project Transactions

A child project’s project transactions can be rolled up to a parent project in the following ways:

-   You can roll up selected transactions manually.
-   The system can roll up transactions automatically when they’re released or when an automation schedule triggers the process.

To manually initiate project transaction rollup, you click **Roll Up Project Transactions** on the **More** menu of the [Projects](PM_30_10_00.md) \(PM301000\) form. The [Roll Up Project Transactions](PM_50_35_00.md) \(PM503500\) mass-processing form opens with the parent and child projects filled in. When you click **Roll Up** on the form toolbar, the system doesn't create additional project transactions. Instead, it links the original child project transactions to the parent project and updates the corresponding parent budget lines.

To automatically roll up project transactions to the parent project, you select the **Roll Up Project Transactions on Release** check box in each child project on the [Projects](PM_30_10_00.md) form.

After the rollup, note that the system:

-   Creates a new budget line if the matching parent budget line can't be found.
-   Displays a warning in the processing dialog box if the transaction amount can be rolled up but the quantity can't be converted to the parent budget line’s unit of measure. The warning indicates that the parent budget line’s actual quantity wasn't updated.

**Attention:** The system uses the inventory item for rollup only when inventory items are included in the parent project’s budget level—matching the item from the original child project transaction to the corresponding parent budget line. Otherwise, it skips item-based matching of budget lines.

## Reviewing Rolled-Up Project Transactions

After the rollup, the parent-related settings in the original child project transactions are displayed on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form: parent project, parent task, parent account group, and parent cost code \(if applicable\). The **Rolled Up** check box is selected for the lines of the child project transactions.

For a broader view of the information about the child project's transaction, you open the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form and make sure that the **Include Child Project's Transactions** check box is selected. You can view the transaction settings related to the parent project. To review the rollup status as well, you can make the **Rolled Up** and **Excluded from Rollup** columns visible. Use the **Excluded from Rollup** column when reviewing child project transactions; transactions excluded from rollup aren't shown at the parent project level.

Also, you can view already rolled-up project transactions on the [Roll Up Project Transactions](PM_50_35_00.md) \(PM503500\) form. To do this, you clear the **Exclude Rolled-Up and Skipped Transactions** check box in the Selection area.

## Viewing the Parent Project’s Updated Budget

After the project transaction rollup, you can view the updated actual amounts and actual quantities \(if applicable\) of the matching budget lines in the parent project on the [Projects](PM_30_10_00.md) \(PM301000\) form. The parent project's actual line values are based on the corresponding line values of the child projects.

The child project costs are reflected in parent-level billing and reporting:

-   For **time and material billing**, rolled-up child cost transactions are processed by the parent project’s billing rules and generate time and material lines in the parent project's pro forma invoice and AR invoice.
-   For **progress billing**, rolled-up child costs can be used in the automated percent-of-completion calculation for the parent project revenue budget.

## Completing a Parent Project

Before you can complete a parent project, you complete the related child records in the correct order:

-   You can complete a parent task only after all child tasks have the *Completed* or *Canceled* status.
-   You can complete a parent project only after all child projects have the *Completed* or *Canceled* status.

Note that:

-   After a parent task is completed, you can't reopen its completed or canceled child tasks.
-   After a parent project is completed or closed, you can't reopen its completed, closed, or canceled child projects.

**Parent topic:**[Managing Parent-Child Projects](../UserGuide/Projects_Parent-Child_Projects_Mapref.md)

