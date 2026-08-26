# To Set Up Automatic File Synchronization {#_8af2b749-8998-4da9-8b4a-50904ca7c2c0 .task}

You can use automation schedules to perform periodic synchronization between a file on an Acumatica ERP site and a file on a local computer or network.

You find the file whose synchronization you want to schedule by using the [Search in Files](SM_20_25_20.md) \(SM202520\) form, configure file synchronization by using the [File Maintenance](SM_20_25_10.md) \(SM202510\) form, and then schedule the synchronization on the [File Synchronization](SM_20_25_30.md) \(SM202530\) form.

## To Configure File Synchronization { .section}

You can synchronize files stored in Acumatica ERP with files on a shared network folder or with files stored on a File Transfer Protocol \(FTP\), Hypertext Transfer Protocol \(HTTP\), or Secure File Transfer Protocol \(SFTP\) server. The following topics describe how to configure each type of synchronization:

-   [To Configure File Synchronization Through FTP or HTTP](SM__How_to_configure_file_FTP_HTTP_synch.md)
-   [To Configure File Synchronization Through SFTP](SM__How_to_configure_file_SFTP_synch.md)
-   [To Configure File Synchronization Through a Shared Folder](SM__How_to_configure_file_Shared_Folder_synch.md)

## To Schedule File Synchronization { .section}

After you have configured the file synchronization, you can perform synchronization manually by using the [File Synchronization](SM_20_25_30.md) form. Alternatively, you can assign the process to a schedule to be performed automatically by using the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form. For more information about automation schedules, see [Automated Processing: General Information](SA_Scheduling_Automated_Processing_GeneralInfo.md).

To schedule file synchronization, do the following:

1.  Open the [File Synchronization](SM_20_25_30.md) \(SM202530\) form.
2.  In the **Operation** box, select the synchronization operation to be performed, *Import File* or *Export File*. In the table in the lower part of the form, the system displays the pairs of files for which synchronization of the selected type has been configured.
3.  Select the check boxes for the files you want to have automatically updated.
4.  On the form toolbar, click **Schedules** &gt; **Add**. This opens the [Automation Schedules](../Shared/../UserGuide/SM_20_50_20.md) \(SM205020\) form.
5.  On the [Automation Schedules](../Shared/../UserGuide/SM_20_50_20.md) form, in the **Description** box, enter a description of the new schedule.
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
8.  On the **Conditions** tab, specify conditions to select only specific pairs of files for automatic synchronization:
    -   In the **Field Name** box, select **Name**.
    -   In the **Condition** box, select **Equals**.
    -   In the **Value** box, select the file by its name.
9.  On the **Filter Values** tab, choose the synchronization operation to be performed, **Import File** or **Export File**.
10. Click **Save** on the form toolbar to create the schedule. When you save a new schedule, the system gives it an identifier in accordance with the built-in numbering sequence intended for automation schedules.

## To View the History of Schedule Application { .section}

1.  On the **Configuration** tab, click **Document Management**. In the left pane, click **Schedule** &gt; **File Synchronization**.
2.  On the form toolbar, click **Schedules** &gt; **History**.
3.  In the dialog box that opens, select the schedule whose history you want to view, and specify the date range for which you want to view the history.
4.  Click **History** to view the history of the schedule execution and the list of file pairs that were synchronized automatically as the result of the schedule application.

**Parent topic:**[Managing External Storage for File Attachments](../UserGuide/SA_External_Storage_Management_Mapref.md)

