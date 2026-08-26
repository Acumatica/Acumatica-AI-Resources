# To Create a Report Template {#_5adbb4bd-4347-4f81-a1ff-4d4d47d1fb1b .task}

You can save the report parameters you’ve specified as a template, as described below. You then use this template to immediately populate the report form with your preferred parameters so that you can run reports more quickly.

This topic also describes how to remove a report template and how to schedule a report to be run.

## To Create a Report Template { .section}

1.  Open the needed report form.
2.  Specify the report parameters.
3.  Run the report to confirm that it displays the intended data, as described in [Reports: Process Activity](../Shared/../UserGuide/GS_Working_With_Reports_Process_Activity.md).
4.  On the report toolbar, click **Parameters** to view the parameters on the report form.

    **Tip:** You can click **Parameters** to toggle between the report form and the report without losing the changes made on the report form.

5.  Click **Save Template** on the More menu.
6.  In the **Save Template** dialog box, which opens, specify the name of the new template in the **Name** box.
7.  Optional: Select the **Default** check box.
8.  Optional: To share this template with other users, select the **Shared** check box.

    **Tip:** You cannot select a shared template as the default one. If you select the **Shared** check box, the **Default** check box becomes cleared and unavailable.

9.  Click **Save**.

If you have saved the template as the default one, when you open the report form, the template will be selected, and the system will automatically fill in the selections of the template. If you haven’t saved the template as the default one, you can select it in the **Template** box and the system will fill in the settings of the template.

## To Remove a Report Template { .section}

1.  Open the needed report form.
2.  In the **Template** box, select the report template that you want to remove.
3.  On the More menu, click **Delete Template**.

After you remove a template, it cannot be selected in the **Template** box.

## To Schedule the Running of a Report { .section}

1.  Open the needed report form.
2.  In the **Template** box, select the report template that you want to schedule.
3.  On the **Email Notifications** tab, click **Schedule Report** to open the [Email Templates](../Shared/../UserGuide/SM_20_40_03.md) \(SM204003\) form.
4.  In the **Description** box, enter a description of the new email template.
5.  Specify the sender's address in the **From** box.
6.  Specify the email’s recipients in the **To**, **CC**, and **BCC** boxes.
7.  On the **Message** tab, enter the contents of the email notification.
8.  On the **Send By Schedules** tab, click **Create Schedule**.
9.  On the [Automation Schedules](../Shared/../UserGuide/SM_20_50_20.md) form, in the **Description** box, enter a description of the new schedule.
10. On the **Details** tab, specify additional settings of the schedule:
    1.  Optional: In the **Starts On** box, select the start date. By default, the current business date is inserted.
    2.  Optional: If you need to specify an expiration date for the schedule, clear the **No Expiration Date** check box and specify the expiration date in the **Expires On** box.
    3.  Do one of the following:
        -   If you want to limit the number of executions, in the **Execution Limit** box, specify the number of times the schedule should be executed.
        -   If you don’t need to limit the number of executions, select the **No Execution Limit** check box.
    4.  Optional: In the **Process with Branch** box, select the branch under which the schedule should be processed. For example, if the schedule causes documents to be created, the system creates these documents and specifies the selected branch for each document.
    5.  Optional: Change the time zone the schedule uses. By default, the time zone specified on the [User Profile](../Shared/../UserGuide/SM_20_30_10.md#) \(SM203010\) form for the currently signed-in user is selected.
11. On the **Schedule** tab, specify the execution dates and time:
    1.  Specify how often the schedule execution should be performed:
        -   To execute the schedule daily or every *x* days:
            1.  In the **Schedule Type** section, select **Daily**.
            2.  Optional: In the **Next Execution** box of the **Schedule Details** section, select this date and time.
            3.  In the **Every x Day\(s\)** box, type the number of days between successive executions of the schedule.
        -   To execute the schedule weekly or every *x* weeks:
            1.  In the **Execution Date** section, select **Weekly** in the **Frequency** box.
            2.  Optional: In the **Next Execution** box of the **Execution Time** section, select this date and time.
            3.  In the **Every x Week\(s\)** box, type the number of weeks between successive executions of the schedule.
            4.  Select the appropriate check boxes for the day or days of the week when the schedule should be executed.
        -   To execute the schedule monthly or every *x* months, do the following:
            1.  In the **Execution Date** section, select **Monthly**.
            2.  Optional: In the **Next Execution** box of the **Execution Time** section, select this date and time.
            3.  In the **Every x Month\(s\)** box, type the number of months between successive executions of the schedule.
            4.  Select when the schedule should be executed: a fixed day of the month or a fixed day of the week \(such as the third Friday of the month\).
        -   To execute the schedule once per financial period or every *x* financial periods, perform the following steps:
            1.  In the **Execution Date** section, select **Financial Period**.
            2.  Optional: In the **Next Execution** box of the **Execution Time** section, select this date and time.
            3.  In the **Every x Period\(s\)** box, type the number of financial periods between successive executions of the schedule.
            4.  Select the appropriate option button to indicate when the schedule should be executed: at the end of the period, at the start of the period, or on a fixed day of the period \(which you should specify if you select this option button\).
    2.  In the **Execution Time** section, specify the particular time of day to start and stop the processing as follows:
        1.  In the **Start Time** box, select the hour and minute when the first execution of the schedule should start.
        2.  If you want the processing to be stopped at a specific time or you want it to be repeated multiple times a day, in the **Stop Time** box, select the hour and minute when the first execution of the schedule should stop.
        3.  If execution of the schedule should be repeated multiple times a day, in the **Every \(hh:mm\)** box, select the interval between successive executions of the schedule.
        4.  In the **Next Execution** box, make sure the next execution time is correct.
        5.  If you want the system to execute the schedule at exactly the time specified in the **Next Execution** box, select the **Exact Time** check box. If the check box is cleared, the system may shift the next execution time by multiple minutes.
12. Click **Save** on the form toolbar to create the schedule. When you save a new schedule, the system gives it an identifier in accordance with the built-in numbering sequence intended for automation schedules.
13. On the [Email Templates](../Shared/../UserGuide/SM_20_40_03.md) form, click **Add Row** on the table toolbar of the **Send By Schedules** tab and select the created schedule.
14. On the form toolbar, click **Save**.

After you’ve added a schedule for the report to be run, the system will send the report with the parameters specified in the template according to the schedule’s settings.

**Parent topic:**[Reports](../InterfaceGuide/Report_Processing_Options.md)

