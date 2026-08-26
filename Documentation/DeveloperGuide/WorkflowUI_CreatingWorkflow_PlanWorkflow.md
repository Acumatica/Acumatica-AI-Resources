# Workflow Creation: Planning a Workflow for a Form {#_fdec2ee1-01af-4be6-bb75-892a1a79545c .concept}

If an Acumatica ERP form does not have a workflow, you might want to create a workflow for it. In this topic, you will consider such a form, the predefined [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form in Acumatica ERP, and explore an example of defining a workflow for the form.

## Overview of the Predefined Task Form { .section}

Open the *Tasks* \(EP4040PL\) list of records and click **New Record** on the form toolbar. On the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form, which opens, notice the following:

-   A user can change the status of the selected task by selecting an option in the **Status** box. This indicates that the form does not have a workflow. For a form with a workflow, the only way to change the status of the selected task for a user would be clicking buttons or commands to invoke actions that change the status.
-   In the **Status** box, the following options are available:

    -   *Open*
    -   *Draft*
    -   *Processing*
    -   *Canceled*
    -   *Completed*
    The corresponding states have the same names.

-   On the form toolbar, the following buttons \(which have underlying actions\) are available:
    -   **Complete**
    -   **Complete &amp; Follow-Up**
    -   **Cancel**
-   When you create a new task, the **Start Date** box is empty; the system does not insert the current date in this box.
-   If you change the status of a task to *Completed*, the value in the **Completion \(%\)** box changes to *100*; however, if you then change the value in the **Status** box to any other value \(*Open* or *Processing*\), the value in the **Completion \(%\)** box remains *100*.

## The Needed Workflow for the Task Form {#_3d752d74-433d-40c1-898f-8dd0ec67724c .section}

Suppose that you want to create the workflow so that a task can have the following statuses: *Draft*, *Open*, *Processing*, *Completed*, and *Postponed*. You do not need the `Canceled` state in the workflow, and you do not need any of the predefined actions \(or the corresponding buttons\).

You also want the task workflow to have the transitions shown in the following table. You do not need to use any of the predefined buttons and command available on the form. Instead, you will create custom workflow actions.

|Original State|Action|Target State|
|--------------|------|------------|
|`Draft`|`Open`|`Open`|
|`Postpone`|`Postponed`|
|`Open`|`Start Work`|`Processing`|
|`Resolve`|`Completed`|
|`Postpone`|`Postponed`|
|`Processing`|`Resolve`|`Completed`|
|`Postpone`|`Postponed`|
|`Completed`|`Reopen`|`Open`|
|`Postponed`|`Open`|`Open` if the value in the **Completion \(%\)** box is *0*|
|`Open`|`Processing` if the value in the **Completion \(%\)** box is not *0*|

Further suppose that you want to implement the following changes to the [Task](../UserGuide/CR_30_60_20.md) \(CR306020\) form:

-   When a user creates a new task, by default, the task's status should be *Draft*, the **Start Date** should be the current date, and the **Completion \(%\)** box should be unavailable.
-   If a task has the *Open* or *Processing* status, the user must fill in the **Owner** box.
-   If a task has the *Processing* status and the user specifies *100* in the **Completion \(%\)** box, the status of the task automatically changes to *Completed*.
-   If the status of a task changes from *Completed* to *Open*, the user must specify a new value in the **Completion \(%\)** box.

**Parent topic:**[Creating Workflows](../DeveloperGuide/WorkflowUI_CreatingWorkflow_Mapref.md)

