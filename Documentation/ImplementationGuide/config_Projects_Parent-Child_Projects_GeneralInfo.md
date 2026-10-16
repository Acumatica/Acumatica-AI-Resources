# Parent-Child Project Configuration: General Information

You can configure parent-child projects in Acumatica ERP when the basic project accounting functionality has been configured in the system. This configuration includes enabling the required feature, defining rollup rules, creating the parent and child projects, and linking child project tasks to the corresponding parent project tasks.

You use parent-child project relationships to organize related project work in a hierarchy. Depending on your project structure, the parent project can be used as the main customer-facing contract for billing and reporting, or as a reporting container for related child projects that keep their own billing and operational control.

**Attention:** Only a two-level hierarchy is supported. A child project can't be a parent to its own child projects. If you need to break work down further, add more child projects to the parent project.

## Learning Objectives

-   Learn about the general steps involved in workflow of parent-child project configuration
-   Become familiar with project transaction rollup
-   Create rollup rules
-   Set up a parent-child project relationship
-   Recognize how a parent or child task’s visibility settings affect the project's cost collection and billing

## Applicable Scenarios

-   Your organization has one customer-facing contract, but needs to track execution costs separately from parent-level billing and reporting.
-   Your child projects operate independently—with their own costs, revenue, and billing—but their results still need to roll up into a single parent project for consolidated reporting.

## Configuration Workflow for Parent-Child Projects

To configure parent-child projects in Acumatica ERP, you generally follow these steps:

1.  **Creating rollup rules**. On the [Rollup Rules](../UserGuide/PM_20_71_00.md) \(PM207100\) form, you create the rollup rules that will define how project transactions are associated with the parent project. For details, see [Parent-Child Project Configuration: Rollup Rules](config_Projects_Parent-Child_Projects_Rollup_Rules.md).
2.  **Creating the parent and child projects**. On the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form, you create the projects that will be included in the parent-child hierarchy with the needed project tasks, budgets, billing settings, account groups, and cost codes \(if applicable\).
3.  **Setting up a parent-child project relationship**. On the [Projects](../UserGuide/PM_30_10_00.md) form, you specify the parent project for each child project. You also select the billing project and rollup rule for the child project, and specify whether project transactions should be rolled up automatically when they are released. For details, see [Parent-Child Project Configuration: Setting Up a Parent-Child Relationship](config_Projects_Parent-Child_Projects_Relationship_Setup.md).
4.  **Linking child project tasks to parent project tasks**. On the [Projects](../UserGuide/PM_30_10_00.md) or [Project Tasks](../UserGuide/PM_30_20_00.md) \(PM302000\) form, you link the child project tasks whose transactions must be rolled up to parent project tasks to the corresponding parent project task. These links determine which parent project task receives the rolled-up values from the child project task. For details, see [Parent-Child Project Configuration: Setting Up a Parent-Child Relationship](config_Projects_Parent-Child_Projects_Relationship_Setup.md).
5.  **Specifying visibility settings for project tasks**. On the [Project Tasks](../UserGuide/PM_30_20_00.md) form, you review the visibility settings of the parent and child project tasks. These settings control which project tasks will be used in billing and in project-related documents. For details, see [Parent-Child Project Configuration: Cost Collection and Billing with Task Visibility](config_Projects_Parent-Child_Projects_Task_Visibility.md).

## Rolled-Up Transactions in Parent-Level Billing

Before you configure parent-child project relationships, consider how the rolled-up child project transactions will be used in the parent project budget and billing.

When child project transactions are rolled up to the parent project, the system doesn't create duplicate project transactions in the parent project. Instead, the system links the original child project transactions to the parent project by populating parent project-specific values and updates the corresponding parent budget line. The parent budget line is selected based on the parent project, parent task, parent account group, parent cost code \(if applicable\), and inventory item \(if applicable\).

For **progress billing**, rolled-up child project costs affect parent-level billing when the parent project uses automated percentage-of-completion calculation, as described in [Progress Billing: Automated Revenue Percentage Calculation](../UserGuide/Projects_Billing_Project_by_Progress_Auto_Revenue_Percentage_Calculation.md). In this case, the system includes the actual cost amounts and quantities rolled up from child projects when it calculates the completed percentage for the parent project revenue budget.

For **time and material billing**, during parent project billing, the system processes rolled-up child project cost transactions according to the billing rules of the parent project. If the **Create Pro Forma Invoice on Billing** check box is selected for the parent project on the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form, these transactions generate time and material lines in the resulting pro forma invoice. If the check box is cleared, they generate detail lines in the resulting AR invoice.

You can review rolled-up child project transactions on the [Pro Forma Invoices](../UserGuide/PM_30_70_00.md) \(PM307000\) form as follows:

-   In the **Transaction Details** dialog box, both parent project transactions and rolled-up child project transactions related to an invoice line
-   In the **Upload Unbilled Transactions** dialog box, rolled-up unbilled child project transactions that are available for billing through the parent project

For details about billing in parent and child projects, see [Parent-Child Project Management: Billing from the Parent or Child Project](../UserGuide/Projects_Parent-Child_Projects_Parent_Project_Billing.md).

**Parent topic:**[Parent-Child Projects](../ImplementationGuide/config_Mapref_Projects_Parent-Child_Projects.md)

