# Parent-Child Project Configuration: Setting Up a Parent-Child Relationship

A parent-child relationship is defined at the project and the task levels:

-   At the project level, you link each child project to the parent project and specify how its transactions are rolled up.
-   At the task level, you link child project tasks to parent project tasks so that the rolled-up values update the correct parent budget lines.

## Setting Up a Parent-Child Project Relationship

After you create the needed rollup rules, you can link existing projects in a parent-child hierarchy on the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form. For each child project, the link identifies the parent project, the billing project, the rollup rule, and whether project transactions should be rolled up automatically when they are released.

When you select a parent project in the **Parent Project** box, *Child* is inserted in the **Project Hierarchy Position** box, and the **Parent-Child Billing and Rollup** section appears on the **Summary** tab.

The **Billing Project** option determines where billing is performed for the child project:

-   *Parent Project*: The parent project handles billing, and the child project serves only as a cost center.
-   *Current Project*: The child project keeps its own revenue, costs, and billing, and the parent project is used for consolidated reporting for this child project.

The rule specified in the **Rollup Rule** box determines which child project transactions are rolled up and how their account groups and cost codes are mapped to the parent project's account groups and cost codes. If the **Roll Up Project Transactions on Release** check box is selected, child project transactions are rolled up automatically when they are released.

**Attention:**

-   You can remove or change the parent project if no project transaction of the child project has been rolled up to this parent project.
-   A parent project and its child projects must all use the same project currency and base currency. You can't link projects with different currencies.

When you've set up the needed child projects, you can view the updated parent project's settings on the [Projects](../UserGuide/PM_30_10_00.md) form:

-   *Parent* has been inserted in the **Project Hierarchy Position** box.
-   The **Parent Project** box remains empty and read-only.
-   On the **Child Projects** tab, the child projects are listed.

**Tip:** You can link multiple child projects directly from a parent or standalone project that will become the parent one. On the **Child Projects** tab, you click **Add Child Projects**, and in the dialog box that opens, you select the projects you want to add.

## Linking Parent and Child Tasks

When you've linked a child project to a parent project, you link the child project’s tasks to the corresponding parent project tasks. Along with the rollup rule, the linked tasks determine how child project transactions are rolled up in the parent project.

You link a child task to a parent task by doing either of the following:

-   Selecting the parent tasks in the **Parent Task** column on the **Tasks** tab of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form
-   Selecting the parent task in the **Parent Task** box on the [Project Tasks](../UserGuide/PM_30_20_00.md) \(PM302000\) form

In the parent task, you can view the related child tasks on the **Child Tasks** tab of the [Project Tasks](../UserGuide/PM_30_20_00.md) form. You can also link multiple child tasks from the parent task. To do this, click **Add Child Tasks**, and in the dialog box that opens, select the child tasks you want to link to the parent task.

Each child task can be linked to only one parent task—but one parent task can have multiple child tasks, possibly from different child projects. If a child task has no parent task specified, budget lines related to this child task aren't rolled up to the parent project.

**Parent topic:**[Parent-Child Projects](../ImplementationGuide/config_Mapref_Projects_Parent-Child_Projects.md)

