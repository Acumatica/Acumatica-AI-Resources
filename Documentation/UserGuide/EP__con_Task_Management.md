# Task Management {#_857cf6cd-b89d-4cae-88f8-906552defe1c .concept}

With the task management capabilities of Acumatica ERP, you can do the right things at the right time, so you can improve your performance and efficiency. You can do the following:

-   Create tasks
-   Keep personal to-do lists
-   Configure reminders for all tasks or only the most important ones
-   Track tasks assigned to you
-   Assign tasks to other users
-   Associate tasks with one another

## Tasks { .section}

Each task has a *creator* and an *owner*: The task's creator is the employee who created the task, and its owner is the employee to whom the task is assigned. \(The creator and owner may be the same employee.\) Before saving a task, the creator should make sure the needed owner is assigned. By default, the system inserts the creator's employee name in the **Owner** box of the [Task](CR_30_60_20.md) \(CR306020\) form, but the creator can select a different owner.

You can associate a task with a record of a particular type that belongs to any of the following entities: leads, contacts, opportunities, business accounts, cases, employees, and projects. You can create such an association by using one of the following methods:

-   Specifying a related record by using the [Task](CR_30_60_20.md) form when you create a new task or edit an existing one. To do this, on the **Details** tab, you first select the related record's type in the **Related Entity Type** box. The system displays the records of that type in the **Related Entity** box, and you select the one to be associated with the task.
-   Creating a task on the **Activities** tab of the data entry form corresponding to the record type. For instance, to create a task that will be associated with a certain case, you would use this tab on the [Cases](CR_30_60_00.md) \(CR306000\) form.

A task can be associated with any existing task, that is a parent task. You can select the needed task in the **Parent Activity** box on the [Task](CR_30_60_20.md) form. The box is available if the current task has the *Draft*, *Open*, or *Processing* status. If the parent task has been associated with a project, the system copies the value of the project \(and project task, if one has been specified\) to the **Project** and **Project Task** boxes on the [Task](CR_30_60_20.md) form for the child task.

Tasks can also be created as associated with no specific record. You create a standalone task in any of the following ways:

-   From the **Time and Expenses** workspace, by clicking the **New** button right of the *Tasks* link, which is under the **Tasks** category.

    For more information, see [The Acumatica ERP UI: General Information](GS_Learning_UI_GeneralInfo.md)

-   By clicking **New Record** on the form toolbar of the Tasks \(EP4040PL\) list of records or the [Task](CR_30_60_20.md) form.
-   By using the Clipboard menu on the form toolbar of the [Task](CR_30_60_20.md) form. The system copies to the new task the value or state of the following elements of the **Details** tab for the task you were viewing:

    -   **Summary**
    -   **Owner**
    -   **Workgroup**
    -   **Internal**
    -   **Related Entity Type**
    -   **Related Entity**
    -   **Project**
    -   **Project Task**
    -   **Cost Code**
    -   **Priority**
    -   **Category**
    -   **Service**
    -   Task description area
    **Note:** If the user role does not have the rights to access the related record in the selected task, the system displays the following error message next to the **Related Entity** box of a new task: *You have insufficient rights to access the object*.

    For more information, see [Record Entry: Copy-and-Paste Options and Record Templates](SM__con_Copy-and-Paste_Options_and_Document_Templates.md) in the Acumatica ERP Getting Started Guide.

-   By clicking **Complete and Follow Up** on the form toolbar of the [Task](CR_30_60_20.md) form for the selected task. The created task has the *Not Started* status and contains the same details as the completed task. Also, in the **Parent Activity** box of the created task, the system inserts a link to the completed task \(that is, the current task\) .

## Task Reminders { .section}

When creating a task, the creator can configure a reminder for it and specify on what day and time before the due date the owner should receive the reminder. On the specified date, the reminder will appear in the info area of the owner's screen and will be blinking or highlighted in red until either the creator or the owner completes the task or changes its status.

**Attention:** Before you can start using reminders, you must ask your system administrator to enable the reminder functionality. For more information, see [To Enable Reminders](../Shared/../UserGuide/Configuring_reminders.md) in the Acumatica ERP Installation Guide.

## Task Tracking Options {#_b3f37502-4193-474e-9f21-d496e84ea2fc .section}

You can view a list of tasks on the Tasks \(EP4040PL\) list of records, which you open in the **Time and Expenses** workspace under the **Tasks** category.

On the following tabs of this list of records, you can view the described tasks:

-   **All Records** tab: All tasks created in the system that are available for review, based on the role or roles assigned to your user account.
-   **My Tasks** tab: Tasks to which you have been assigned as owner.
-   **My Workgroup Tasks** tab: Tasks assigned to the users in your workgroup and any workgroups in the company tree that are positioned on levels lower than your workgroup, but in the same node.
-   **Due Today and Overdue Tasks** tab: Tasks for which the due date is the current date or sooner \(that is, overdue tasks\) with the *Open* or *Processing* status.
-   **Open Tasks** tab: Active tasks with the *Draft*, *Open*, or *Processing* status.

In the Tasks \(EP4040PL\) list of records, you can quickly see the following key settings of every task:

-   **Summary**
-   **Status**
-   **Start Date**
-   **Due Date**
-   **Category**
-   **Related Entity**
-   **Contact** \(of the related entity\)
-   **Phone 1** \(of the related contact\)
-   **Email** \(of the related contact\)
-   **Completed At**
-   **Owner**

To make the most important tasks noticeable at a glance, you can use the [Event and Task Categories](EP_20_40_40.md) \(EP204040\) form to associate different colors with different categories of tasks. For example, if you select red for the most important tasks, yellow for less important tasks, and green for normal tasks, you will see the tasks marked by exclamation marks \(in the column with the **!** heading\) highlighted with the respective colors.

In the Tasks list of records, you can easily see if the task is overdue. A task is overdue if the **Due Date** of the task is earlier than the current date. The due date of overdue tasks is indicated in red type.

To see all details of a selected task \(that is, one that you have clicked on a tab\) without opening the task in a new window, you can use the **Task** tab on the side panel of the Tasks \(EP4040PL\) list of records. In the side panel, the system displays the opened task on the [Task](CR_30_60_20.md) \(CR306020\) form.

**Note:** You can hide a task from external users by selecting the **Internal** check box on the [Task](CR_30_60_20.md) \(CR306020\), [Event](CR_30_60_30.md) \(CR306030\), or [Activity](CR_30_60_10.md) \(CR306010\) form, respectively.

Tasks do not require approvals; they are completed by the owners or canceled by the creators.

**Parent topic:**[Managing Your Tasks and Events](../UserGuide/GS__mng_Tasks_Events.md)

