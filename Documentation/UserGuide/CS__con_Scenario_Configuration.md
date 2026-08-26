# Scenario Configuration {#_6c2c5d98-e718-425f-94d4-560c6cdd3be1 .concept}

Configuration of a scenario includes the following steps, each of which is described in greater detail below:

1.  Reviewing enabled features
2.  Creating a scenario
3.  Adding the tasks to the scenario

## Reviewing Enabled Features { .section}

Before you start adding a scenario, make sure that the features on which the scenario will be based are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For more information on Acumatica ERP features, see [Preparing an Instance: Activation and Licensing](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Instance_Activation_and_Licensing.md).

## Creating a Scenario { .section}

The first step of configuring a scenario is specifying its general settings on the [Scenarios](WZ_20_10_00.md) \(WZ201000\) form:

-   **Scenario Name**: You should enter any appropriate name, which will be displayed on the Acumatica ERP interface, on the main menu or in the navigation pane \(depending on the location, which you define next\).
-   **Site Map Location**: You should define the location of the scenario on the site map, where it will be available to users for execution. You can specify any appropriate location, depending on the type of the process to be executed.
-   **Role Name** \(optional\): You can limit user access to the scenario by specifying an access role. Only users granted by this role will have access to this scenario. For details, see [Configuring User Roles](User_Roles_Mapref.md). If you do not specify an access role, the scenario will be available to all users under the defined site map location.

**Tip:** The execution date and execution period will be entered automatically by the system after the first scenario execution.

Then you should save the scenario by clicking **Save** on the form toolbar.

After that, you need to add the tasks to the scenario.

## Adding the Tasks to the Scenario { .section}

The second step of configuring a scenario is adding the tasks to the scenario on the [Tasks](WZ_20_20_00.md) \(WZ202000\) form. You can open this form by clicking the scenario name on the [Scenarios](WZ_20_10_00.md) \(WZ201000\) form or by navigating to the Tasks \(EP4040PL\) form, and then selecting the required scenario in the **Scenario Name** box.

To add each task, you need to click **Add Task** on the tree pane toolbar, and in the **Task Summary** area, specify the task-related settings, which are described in detail below:

-   **Name** box: You should enter the task name.
-   **Status** box: You should leave the default task status. The status of the task will be updated automatically, depending on the actions you perform during task execution or the features enabled in your system. For a detailed description of task statuses, see [Tasks](WZ_20_20_00.md).
-   **Optional** check box: You should select this check box if the task you are creating is optional and its completion is not required to complete the whole process. Whether execution of the task is optional depends on the settings made in your system and your business needs. If you select this check box, during scenario execution, the user will be able to skip this task \(by clicking **Skip** on the [&lt;Scenario Name&gt; - &lt;Task Name&gt;](WZ_20_15_10.md) \(WZ201510\) form\).
-   **Assigned To** box: You can assign the task to any user for execution, or reassign the task, if needed.

    **Tip:** You can perform this action after the scenario is already configured and activated in the system \(that is, in the beginning of its execution or at any appropriate moment during the process\).

-   **Details** tab: You can add any information that can be useful for task execution, such as instructions or links to help topics.
-   **Screen Details** tab: You can specify the ID of the form where the task should be executed. In the **Screen ID** box, specify the ID of the form that will be opened when a user clicks the **Go to Screen** button on the [&lt;Scenario Name&gt; - &lt;Task Name&gt;](WZ_20_15_10.md) \(WZ201510\) form. You can also specify the import scenario, if the task requires you to automatically upload data \(for example, to upload the list of customers\). For that, you need to specify the appropriate form ID in the **Screen ID** box, and then select the scenario in the **Import Scenario** box. In that case, when a user clicks the **Go to Screen** button on the task execution form, the system will navigate to the [Import by Scenario](SM_20_60_36.md) \(SM206036\) form. For details, see the [Configuring Import Scenarios](IS__mng_Configuring_Import_Scenarios.md#).

    **Tip:** You can leave these boxes blank if the task does not involve any form or report for its execution. In that case, the **Go to Screen** button will be absent on the [&lt;Scenario Name&gt; - &lt;Task Name&gt;](WZ_20_15_10.md) \(WZ201510\) form.

-   **Predecessors** tab: You need to specify the tasks that have to be completed before the execution of the task you are configuring \(if any\). Specifiyng tasks on this tab is required when the tasks in the scenario have to be performed in a strict order. The task will be available for execution \(its status will change to *Open*\) only when the predecessor tasks are completed.
-   **Successors** tab: Do nothing; the list of tasks \(if any\) is filled in automatically. These are the tasks that can be performed only after the execution of the task you are currently configuring.
-   **Subtasks** tab: Do nothing; the list of subtasks \(if the task has subtasks\) is filled in automatically. If any subtask has the *Pending*, *Open*, or *In Progress* status, the parent task cannot be completed.
-   **Features** tab: You need to select the features that have to be enabled in the system for task execution. If the required features are not activated, the task will be marked as *Disabled* during activation of the scenario.

After you have added all required tasks, save the scenario by clicking **Save** on the form toolbar.

On the [Tasks](WZ_20_20_00.md) \(WZ202000\) form, you can add, delete, and edit the tasks associated with the scenario.

## Activating a Scenario { .section}

To make a scenario available to users on the defined site map location, you should activate it by clicking the **Activate Scenario** button. This button is available on the [Scenarios](WZ_20_10_00.md) form, the [Tasks](WZ_20_20_00.md) form, or the screen at the defined site map location.

After activation, all the tasks that do not have predecessors and can be executed right away are marked as *Open*. The tasks that depend on features that haven't been activated are marked as *Disabled*. The tasks for which required features are activated but that have uncompleted predecessor tasks are marked as *Pending*.

You can start scenario execution with any of the *Open* tasks.

**Tip:** When the scenario is activated, you cannot add new tasks to it, modify the order of tasks, change the list of required features, and edit the list of predecessor tasks.

**Parent topic:**[Managing Scenarios](../UserGuide/CS__MNG_Managing_a_Scenario.md)

