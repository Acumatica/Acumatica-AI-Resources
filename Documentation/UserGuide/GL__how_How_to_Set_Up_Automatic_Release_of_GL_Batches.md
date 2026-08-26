# To Set Up Automatic Release of General Ledger Batches {#_eef4373d-8216-4fb4-9a72-eab8889804fc .task}

In Acumatica ERP, you can set up the release of balanced batches to be performed automatically at the specified time with specific periodicity. Suppose the internal policies at your company require that only batches with amounts less than a certain threshold amount \($1000\) can be released in bulk on the [Release Transactions](GL_50_10_00.md) \(GL501000\) form, while batches with larger amounts should be released individually through the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, on which the **Release** action is enabled only for the users with *Batch Approver* role. Batches with smaller amounts are released automatically at the frequency you choose.

## To Create a Schedule for Processing {#section_dxg_mjv_vxb .section}

1.  Open the [Release Transactions](GL_50_10_00.md) \(GL501000\) form.

    **Attention:** To open any form, you can navigate to it or search for it \(by its name or by its form ID without periods\).

2.  On the form toolbar, click **Schedules** &gt; **Add**. This opens the [Automation Schedules](../Shared/../UserGuide/SM_20_50_20.md) \(SM205020\) form.
3.  On the [Automation Schedules](../Shared/../UserGuide/SM_20_50_20.md) form, in the **Description** box, enter a description of the new schedule.
4.  In the **Action Name** box, make sure *Process All* is selected.
5.  On the **Details** tab, specify additional settings of the schedule:
    1.  Optional: In the **Starts On** box, select the start date. By default, the current business date is inserted.
    2.  Optional: If you need to specify an expiration date for the schedule, clear the **No Expiration Date** check box and specify the expiration date in the **Expires On** box.
    3.  Do one of the following:
        -   If you want to limit the number of executions, in the **Execution Limit** box, specify the number of times the schedule should be executed.
        -   If you don’t need to limit the number of executions, select the **No Execution Limit** check box.
    4.  Optional: In the **Process with Branch** box, select the branch under which the schedule should be processed. For example, if the schedule causes documents to be created, the system creates these documents and specifies the selected branch for each document.
    5.  Optional: Change the time zone the schedule uses. By default, the time zone specified on the [User Profile](../Shared/../UserGuide/SM_20_30_10.md#) \(SM203010\) form for the currently signed-in user is selected.
6.  On the **Schedule** tab, specify the execution dates and time:
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
7.  On the **Conditions** tab, add the following two conditions to select only batches with amounts less than $1000 by performing the following steps:
    -   As the **Field Name**, select *Module* as the boxes available on the [Release Transactions](GL_50_10_00.md) form. In the **Condition** box, select *Equals*, and in the **Value** box, select `GL`.
    -   As the **Field Name**, select *Control Total* as the boxes available on the [Release Transactions](GL_50_10_00.md) form. In the **Condition** box, select *Is Less Than*, and in the **Value** box, type `1000`.
8.  Click **Save** on the form toolbar to create the schedule. When you save a new schedule, the system gives it an identifier in accordance with the built-in numbering sequence intended for automation schedules.

**Parent topic:**[Processing Transactions](../UserGuide/Finance_Processing_Batch_Mapref.md)

