# Employee Time Entry: Creation of Time Activities from Project Time Logs {#_97b50710-ee43-4b02-a184-792ba15cba0b .concept}

If you work on a project task and track time by using the timer on the [Project Tasks](PM_30_20_00.md) \(PM302000\) form, the system records a time log every time you stop the timer.

**Attention:** The full functionality is available only if:

-   The *Clock In and Clock Out* feature in the *Experimental* group of features is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Users](SM_20_10_10.md) \(SM201010\) form, your user account is linked to an employee record.

You can review and update the logged time on the **Time Log** tab of the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) or [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form and then create time activities based on the time logs, as described below.

**Tip:** You can save the time card if the **Time Log** tab has at least one time log.

## Updating the Time Log { .section}

For each time log entry on the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) or [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form for which no time activity has been created yet, you can change:

-   The time type

    **Attention:** A time type must be specified in the time log for the system to create a time activity for it.

-   The logged hours
-   Entry descriptions
-   Start and end times

You cannot change:

-   The linked project and project task
-   The time zone where the time entry was recorded

If a time activity created based on the time log entry already exists, you must delete it before you make changes to the time log entry.

## Creating Time Activities { .section}

Once you have reviewed an employee’s time logs, you can create time activities based on the time log entries, as follows:

1.  Open the [Employee Time Cards](EP_30_50_00.md) \(EP305000\) or [Daily Field Report](PJ_30_40_00.md) \(PJ304000\) form.
2.  Go to the **Summary** tab of the [Employee Time Cards](EP_30_50_00.md) form or the **Labor Time and Activities** tab of the [Daily Field Report](PJ_30_40_00.md) form.
3.  On the table toolbar, click **Load from Time Log** button. The system creates time activities based on the time logs.

If a time log spans multiple days, when you click **Load from Time Log**, the system creates time activities for only the unrecorded portion of the time log that belongs to the time card period or the daily field report date. After a time activity is created, the corresponding time log becomes read-only. You can create a time activity for the remaining portion of the time log when you create the time card for that period or the daily field report for that date, even though the time log is read-only.

**Example**: Suppose that a time log for a particular project task starts at 8:00 PM on January 20 and ends at 1:00 AM on January 21. Also suppose that January 20 and January 21 belong to different time card periods. When you click **Load from Time Log** in the time card for the period that includes January 20, the system does the following:

-   Creates a time activity for four hours on January 20
-   Makes the time log read-only

When you click **Load from Time Log** on the time card for the period that includes January 21, the system creates a time activity for the remaining hour if no time activity has already been created from this time log.

If January 20 and January 21 belong to the same time card period, the system creates two time activities in the same time card.

When you create time activities from time logs, the system fills in the following columns based on each time log:

-   On the **Summary** tab of the [Employee Time Cards](EP_30_50_00.md) form:
    -   **Project**
    -   **Project Task**
    -   **Cost Code**
-   On the **Labor Time and Activities** tab of the [Daily Field Report](PJ_30_40_00.md) form:
    -   **Project Task**
    -   **Cost Code**

If the system has left these columns empty, you need to populate them manually to be able to save the time card or daily field report. The columns could be left empty in either or both of the following cases:

-   Access to the project is restricted for employees, and the employee who ran the timer hasn't been added to the **Employees** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form.
-   Time tracking is turned off for the project or project task—that is, the **Time Entries** check box is cleared on the **Summary** tab of the [Projects](PM_30_10_00.md) or [Project Tasks](PM_30_20_00.md) \(PM302000\) form.

To confirm that a time activity is linked to a time log, you can review the **Time Log** check box on the **Details** tab of the [Employee Time Cards](EP_30_50_00.md) form. If it's selected, then the time activity has a link to the time log. A single time log can be linked to multiple time activities, but a time activity can be linked to only one time log.

**Parent topic:**[Entering Employee Time](../UserGuide/TimeExpenses_Entering_Employee_Time_Mapref.md)

