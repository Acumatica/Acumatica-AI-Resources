# To Schedule Validation of Card Payments {#_248a03d4-6774-40ef-86f5-2c5cb45b4bb3 .task}

You use the [Validate Card Payments](AR_51_30_00.md) \(AR513000\) form to schedule validation of card payments.

## Before You Proceed {#section_nss_4jv_vxb .section}

Make sure that the *Integrated Card Processing* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. With this feature enabled, the [Validate Card Payments](AR_51_30_00.md) \(AR513000\) form appears in the system.

## To Schedule Automatic Validation of Card Payments {#section_pss_4jv_vxb .section}

1.  Open the [Validate Card Payments](AR_51_30_00.md) \(AR513000\) form by searching for or navigating to it.
2.  On the form toolbar, click **Schedules** &gt; **Add**. This opens the [Automation Schedules](../Shared/../UserGuide/SM_20_50_20.md) \(SM205020\) form.
3.  On the [Automation Schedules](../Shared/../UserGuide/SM_20_50_20.md) form, in the **Description** box, enter a description of the new schedule.
4.  Make sure that *Validate Card Payments* is selected in the **Screen ID** box.
5.  In the **Action Name** box, make sure that the *Validate All* action is selected.
6.  On the **Details** tab, specify additional settings of the schedule:
    1.  Optional: In the **Starts On** box, select the start date. By default, the current business date is inserted.
    2.  Optional: If you need to specify an expiration date for the schedule, clear the **No Expiration Date** check box and specify the expiration date in the **Expires On** box.
    3.  Do one of the following:
        -   If you want to limit the number of executions, in the **Execution Limit** box, specify the number of times the schedule should be executed.
        -   If you don’t need to limit the number of executions, select the **No Execution Limit** check box.
    4.  Optional: In the **Process with Branch** box, select the branch under which the schedule should be processed. For example, if the schedule causes documents to be created, the system creates these documents and specifies the selected branch for each document.
    5.  Optional: Change the time zone the schedule uses. By default, the time zone specified on the [User Profile](../Shared/../UserGuide/SM_20_30_10.md#) \(SM203010\) form for the currently signed-in user is selected.
7.  On the **Schedule** tab, specify the execution dates and time:
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
8.  On the **Filter Values** tab, click **Add Row** on the table toolbar and specify the following settings for the added row:
    -   **Field Name**: *Proc. Center ID*
    -   **Value**: Thee ID of the needed processing center
9.  On the form toolbar, click **Save**.

**Parent topic:**[Processing Credit Card Payments](../UserGuide/AR__MNG_ProcessingCCPayments.md)

