# Scenario Execution {#_0703d306-d583-4296-b3e7-19f80ff8489d .concept}

Scenario execution is managed under the site map location specified during scenario configuration. To execute a scenario, you need to complete the tasks on the [&lt;Scenario Name&gt;](WZ_20_15_00.md) \(WZ201500\) form. On this form, you can view the list of tasks with their current statuses. The statuses are assigned to the tasks during scenario activation and indicate whether the task is available for execution. For details, see [Scenario Configuration](CS__con_Scenario_Configuration.md).

On the [&lt;Scenario Name&gt;](WZ_20_15_00.md) form, you can view the following lists of tasks by clicking the appropriate tab:

-   **All Records**: The list of all tasks included in the scenario
-   **My Tasks**: The list of tasks assigned to you \(the currently signed-in user\)
-   **Not Completed Tasks**: The list of tasks that are not executed yet

You can start the scenario execution with any of the *Open* tasks. When you click the task name, the [&lt;Scenario Name&gt; - &lt;Task Name&gt;](WZ_20_15_10.md) \(WZ201510\) form opens. This form may contain the following tabs, which are described in more detail below:

-   **Summary** tab: Contains the description of the task or the instructions for execution of the task \(if it was specified during scenario configuration\).
-   **Optional Subtasks**: Contains the list of optional subtasks. This tab is absent if there are no optional subtasks for the selected task. If an optional subtask exists, you can skip it by clicking the **Skip** button.
-   **Predecessors** tab: Contains the list of tasks that have to be completed to make the selected task be available for execution \(its status will change to *Open*\)—that is, the tasks on which the selected task depends on. This tab is absent if there are no predecessor tasks for the selected task.
-   **Successors** tab: Contains the list of tasks that are not available for execution until the current task is completed—that is, the tasks that are blocked by the selected task. This tab is absent if there are no successor tasks for the selected task.
-   **Details** tab: Contains the task details, such as the task status, the employee ID to whom the task is assigned \(if any\), the ID of the employee who completed the task, and the start and end dates of task execution.

You should execute the task by using the instructions located on the **Summary** tab or by opening the appropriate form specified for task execution. To do this, you should click the **Go to Screen** button \(if it is available\).

**Note:** If the task has subtasks, you should execute the subtasks first, starting with those that have the *Open* status. After all subtasks have been completed, you can complete the parent task.

To indicate that the task is in progress, you can click the **Start Task** button on the form toolbar. With this, the task status will change from *Open* to *In Progress*.

**Note:** This step is not required, but can be convenient if multiple users execute the scenario. It allows the users to find out whether a task is in progress. In other cases, you can complete any *Open* task without using the **Start Task** button.

If the task or subtask is optional, you can skip it by clicking the **Skip** button, and complete the scenario without completing the optional tasks or subtasks.

After you have executed the task, click the **Mark As Completed** button. The status of the task will change to *Completed*, and the successor tasks \(if any\) will become available for execution.

When you complete all the tasks, the scenario will be marked as *Completed* automatically. As a result, the whole multistep process is completed without any tasks beeing overlooked.

**Parent topic:**[Managing Scenarios](../UserGuide/CS__MNG_Managing_a_Scenario.md)

