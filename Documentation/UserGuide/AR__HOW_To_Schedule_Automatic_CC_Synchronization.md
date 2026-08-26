# To Schedule Automatic Loading of Card Data from External Processing Centers {#_60978c1b-4087-43f2-9c02-619751eb7160 .task}

You use the [Synchronize Cards](CA_20_60_00.md) \(CA206000\) form to schedule the process of automatic synchronization of credit cards from an external processing center, such as Acumatica Payments, to Acumatica ERP.

## Before You Proceed {#section_nss_4jv_vxb .section}

Make sure that the *Integrated Card Processing* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. With this feature enabled, the [Synchronize Cards](CA_20_60_00.md) form appears in the system. Make sure that the *Acumatica Payments* feature has been enabled.

## To Schedule Automatic Synchronization {#section_pss_4jv_vxb .section}

1.  Open the [Synchronize Cards](CA_20_60_00.md) \(CA206000\) form by searching for or navigating to it.
2.  On the form toolbar, click **Schedules** &gt; **Add**. This opens the [Automation Schedules](../Shared/../UserGuide/SM_20_50_20.md) \(SM205020\) form.
3.  On the [Automation Schedules](../Shared/../UserGuide/SM_20_50_20.md) form, in the **Description** box, enter a description of the new schedule.
4.  Make sure that *Synchronize Cards* is selected in the **Screen ID** box.
5.  In the **Action Name** box, select the *Process All* action.

    The schedule will invoke the *Load Card Data* action.

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
8.  On the **Filter Values** tab, make sure that the following rows have been added to the table:
    -   **Scheduled Synch**: Selected
    -   **Load Expired Card Data**: Selected \(to load expired cards\) or cleared \(to skip loading of expired cards\)
9.  On the **Filter Values** tab, click **Add Row** on the toolbar and specify the following settings for the added row:
    -   **Field Name**: *Processing Center*
    -   **Value**: The ID of the needed processing center
10. On the form toolbar, click **Save**.

**Parent topic:**[Processing Credit Card Payments](../UserGuide/AR__MNG_ProcessingCCPayments.md)

