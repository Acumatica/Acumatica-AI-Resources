# Project Tasks: Tracking Time with the Timer {#_dc823f5b-340f-4f8c-8de0-c526da917a34 .concept}

Tracking your time across multiple project tasks can be challenging, especially when you move between tasks during the day. The project task timer helps you log time accurately—no matter how many tasks you’re working on—and manage your work without interruptions.

**Attention:** The full functionality is available only in the Modern UI if:

-   The *Clock In and Clock Out* feature in the *Experimental* group of features is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Users](SM_20_10_10.md) \(SM201010\) form, your user account is linked to an employee record.

## Starting Time Tracking {#section_vj5_mjh_ngc .section}

To start tracking time for a project task:

1.  Open a project task on the [Project Tasks](PM_30_20_00.md) \(PM302000\) form and click the Timer button on the top pane of the screen.

    The timer panel opens with the current project task selected in the **Available Timers** section.

    **Note:** The available timer is a timer that hasn't been started yet in the current user session.

2.  Select the time type.
3.  Click **Clock In**.

**Tip:** You can change the time type while the timer is running. In this case, the system changes the type of the time in the log to the new type.

Once you’re clocked in, this timer becomes active; that is, it moves to the **Active Timers** section of the timer panel and starts counting the working time. The timer area is shaded in green while the timer is running. To collapse the panel, click anywhere outside it. The top pane will still show the timer area \(with the basic information\). You can click the timer icon to expand the panel.

**Tip:** The timer continues running if you:

-   Sign out from the system
-   Lose the internet connection
-   Switch to the Classic UI

## Pausing and Stopping the Timer {#section_mvl_cv3_ngc .section}

If you need to temporarily stop the timer for the project task, click Pause in the timer panel. The timer stops running, and the timer area has a yellow background to alert you that time tracking has been paused. When you're ready to continue, click Resume in the timer panel.

**Tip:** Although you can start a timer only on the [Project Tasks](PM_30_20_00.md) \(PM302000\) form, you’ll see the timer area on any form, and you can open the collapsed time panel, and pause it or clock out.

When you’re done with the task, click Stop in the timer panel. The system stops the timer and automatically creates a time log. For details, see [Employee Time Entry: Creation of Time Activities from Project Time Logs](TimeExpemses_Entering_Employee_Time_Creation_TA_from_Project_Time_Logs.md).

## Switching Between Multiple Timers { .section}

If you need to work on a different project task, you can pause the timer for the current task or leave it running \(the system will pause it if you start another timer\). Then open the new task and click anywhere in the timer area of the top pane. The timer with the new task appears in the **Available Timers** section, while the timer for the previous task remains in the **Active Timers** section.

Click **Clock In** to start tracking time for the task you’ve opened. The second timer starts running and appears in the **Active Timers** section, while the system automatically pauses the first timer. Only one timer can run at a time.

You can have multiple timers paused in the **Active Timers** section at once. When you click **Clock Out**, the system removes the timer from the timer panel.

**Parent topic:**[Creating Project Tasks](../UserGuide/Project_Tasks_Mapref.md)

