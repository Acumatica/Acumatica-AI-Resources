# Project Tasks: General Information {#_d7fbd4aa-6e32-4bf7-acc2-1aa2f22dc0fe .concept}

In Acumatica ERP, each project can consist of one project task or multiple project tasks. A project task is the smallest identifiable piece of work that is a part of the project, and you can select a billing rule for each project task to determine how it will be billed. In the following sections, you will find information about creating project tasks.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a project task for a particular project
-   Configure the rules of the project task completion
-   Configure a project task to be billed separately from other project tasks
-   Set a project task as a default for a project
-   Track time spent on a project task

## Applicable Scenarios { .section}

You create a project task in the following cases:

-   When you are configuring a new project from the beginning
-   When you need to add a new project task to an existing project

## Project Task Creation and Settings { .section}

Each project task is linked to a particular project and has a unique identifier. Project tasks are always defined within the scope and limitations of a specific project; a particular project task may have additional limitations within the scope of the project. You create new project tasks in a project by adding a row for each task to the **Tasks** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. You can then review the settings of the project task on the [Project Tasks](PM_30_20_00.md) \(PM302000\) form.

**Tip:** You can create new project tasks directly on the [Project Tasks](PM_30_20_00.md) form by specifying the identifier of the project to which the project task relates, the identifier of the new project task, and the settings specific for the project task.

For a project task, you can define the following settings, which are specific to the task and do not extend to the project:

-   Date range: You can narrow the date range of the task, as long as it remains within the start and end dates of the project. The start and end dates are specified for informational purposes and do not affect any processes performed for this project task.
-   Billing rule \(and optional rate\): By default, the system assigns to the added project task the billing rule that is specified on the **Summary** tab of the [Projects](PM_30_10_00.md) form for the project. Billing rules are defined on the [Billing Rules](PM_20_70_00.md) \(PM207000\) form.

    If complex billing rules have to be configured for billing the project task, you also need to assign the appropriate rate table to the project task.

-   Separate billing: You can select the **Bill Separately** check box on the **Summary** tab of the [Project Tasks](PM_30_20_00.md) form to make the system create a separate invoice for the project task.
-   Allocation rule: You can define the allocation rule for a particular project task.

    By default, the system assigns to a newly added project task the default allocation rule of the project which is specified on the **Summary** tab of the [Projects](PM_30_10_00.md) form.

-   Method of calculating task completion percentage: You can define the project task to be completed manually or based on the budgeted quantity or amount.
-   Visibility settings: The project task may be visible only in the parts of the system in which the associated project is visible. You can leave these default visibility settings, or apply additional visibility limitations for the project task.

In addition, you can specify that a particular project task is the default task of the project, so that the system will populate this task automatically in all related documents in which a user will select this project.

## Statuses of Project Tasks { .section}

A project task can be assigned one of the following statuses:

-   *In Planning*: The project task is a draft; this status is automatically assigned to a new task. A project task with this status is available for selection only in employee activities and project commitments.
-   *Active*: The project task is active and available for selection on data entry forms. An active task can be assigned the *In Planning* status.
-   *Completed*: The project task is completed. A completed task can be activated again if the corresponding project is not completed.
-   *Canceled*: Progress on the project task was started but then stopped before task completion and there is no intention to continue work on the task. A canceled project task can be activated again if the corresponding project is not completed.

## Document Entry and Processing { .section}

Users cannot select projects and project tasks with the *In Planning* status in any records, except for the following types of records that are available for planning:

-   Employee activities on the [Activity](../Shared/../UserGuide/CR_30_60_10.md) \(CR306010\) form
-   Tasks on the [Task](../Shared/../UserGuide/CR_30_60_20.md) \(CR306020\) form
-   Email activities on the [Email Activity](../Shared/../UserGuide/CR_30_60_15.md) \(CR306015\) form
-   Purchase orders on the [Purchase Orders](../Shared/../UserGuide/PO_30_10_00.md) \(PO301000\) form
-   Subcontracts on the [Subcontracts](../Shared/../UserGuide/SC_30_10_00.md) \(SC301000\) form

For instance, you can add an employee activity for planning budgets for project tasks, or record a project commitment. However, if your user account does not have the *Project Accountant* role assigned on the [User Roles](../Shared/../UserGuide/SM_20_10_05.md) \(SM201005\) form, these documents can be processed further only after the *Active* status is assigned to the project task.

If your user account has the *Project Accountant* role, you can release employee activities with project tasks that have the *In Planning* status.

## Default Project Tasks in Record Lines {#section_nq2_xvf_z4b .section}

When you create a project-related record, you must specify a project task for each line of the record. When you are creating a project, you can define one project task of a project as the default one to speed up data entry. The system will automatically insert this project task in the lines of documents when you select the project.

If you are entering an employee activity on the [Activity](CR_30_60_10.md) \(CR306010\) form, a task on the [Task](CR_30_60_20.md) \(CR306020\) form, or an email on the [Email Activity](CR_30_60_15.md) \(CR306015\) form, the system also checks the status of the selected project’s default project task. If you select a project whose default project task has the *In Planning* or *Active* status, this project task is inserted automatically. If the project has no default project task or the default project task has the *Canceled* or *Completed* status, the **Project Task** box on the form remains empty.

## Default Project Tasks for Particular GL Accounts { .section}

When you process an AR invoice or AP bill related to the project, the system may automatically generate additional GL transaction lines—for instance, to include a discount or freight charge. To automatically associate these transaction lines with specific project tasks, you need to map particular general ledger accounts to specific project tasks within the project in the **Default Task for GL Account** table on the **Defaults** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form. In the automatically generated transaction lines posted to the GL account mapped to a project task, the system will specify this project task by default.

When you select a GL account mapped to a project task in the **Account** column in a line of a project-related AR invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, the system will automatically specify the mapped project task in the line. If the account is not mapped to any project task, the default project task \(if one is specified for the project\) is inserted in the line.

**Attention:** The defined account mapping does not affect the entry of project-related bills on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. In the bill lines, the system inserts the default task of the project if it is configured on the **Tasks** tab of the [Projects](PM_30_10_00.md) form.

## Tracking of Time on Project Tasks { .section}

When you start working on a project task, you can track the spent time by using the timer on the [Project Tasks](PM_30_20_00.md) \(PM302000\) form.

**Attention:** The full functionality is available only in the Modern UI if:

-   The *Clock In and Clock Out* feature in the *Experimental* group of features is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Users](SM_20_10_10.md) \(SM201010\) form, your user account is linked to an employee record.

One timer per project task can produce multiple time logs: Each time you stop the timer, the system creates time log entries on the **Time Log** tab of the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) form. You can then create time activities based on these time logs and record them as project costs. For details, see [Project Tasks: Tracking Time with the Timer](Project_Tasks_Tracking_Time_with_Timer.md).

## Ability to Add User-Defined Fields to Project-Related Forms { .section}

User-defined fields are site-specific elements that have been defined to track information deemed as important to the organization. If your user account has the *Administrator* or *Customizer* role, you can add user-defined fields to project-related forms, such as [Project Templates](../Shared/../UserGuide/PM_20_80_00.md) \(PM208000\), [Project Quotes](../Shared/../UserGuide/PM_30_45_00.md) \(PM304500\), [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\), [Project Template Tasks](../Shared/../UserGuide/PM_20_80_10.md) \(PM208010\), or [Project Tasks](../Shared/../UserGuide/PM_30_20_00.md) \(PM302000\).

Suppose that you've added user-defined fields and specified their values in a project template on the [Project Templates](../Shared/../UserGuide/PM_20_80_00.md) form. When you create a project on the [Projects](../Shared/../UserGuide/PM_30_10_00.md) form and select this template, the system copies the template’s values of shared user-defined fields to the project.

Similarly, you can add user-defined fields to the [Project Template Tasks](../Shared/../UserGuide/PM_20_80_10.md) and [Project Tasks](../Shared/../UserGuide/PM_30_20_00.md) forms and specify their values in a template task. If a project template includes this template task, the system copies the values of its user-defined fields to each project task created from the task template.

For details, see [Adjustment of the Acumatica ERP UI: Managing User-Defined Fields](../Shared/../UserGuide/GS_Personalization_UI_User_Defined_Fields.md).

**Parent topic:**[Creating Project Tasks](../UserGuide/Project_Tasks_Mapref.md)

