# To Create a Send and Receive Email Schedule {#_303282a4-487b-46a8-9362-d3320afebfec .task}

To schedule the process of sending and receiving emails in Acumatica ERP, do the following:

1.  Open the [Send and Receive Email](SM_50_70_10.md) \(SM507010\) form.
2.  In the **Action** box, select *Send/Receive All*.
3.  On the form toolbar, click **Schedules** &gt; **Add**. This opens the [Automation Schedules](../Shared/../UserGuide/SM_20_50_20.md) \(SM205020\) form.
4.  On the [Automation Schedules](SM_20_50_20.md), in the **Description** box, type a brief description of the schedule, such as `Send and Receive Email Schedule`.
5.  On the **Details** tab, select the following settings:
    -   **No Execution Limit**: Selected
    -   **No Expiration Date**: Selected
6.  On the **Schedule** tab, specify the following settings \(assuming, as an example, that a daily schedule is best for optimal response time\):
    1.  In the **Execution Date** section, select **Daily** for the schedule to be executed every day.
    2.  In **Execution Time** section, in the **Next Execution Date** box, select the current date.
    3.  In the **Every** box of the **Execution Date** section, type `1` .**Day\(s\)**.
    4.  In the **Every** box of the **Execution Time** section, type the interval between successive sessions of schedule execution in hours and minutes—for example, type `00:05` to execute the schedule every five minutes.
7.  On the **Filter Values** tab, add a row in the table with the following settings:
    1.  **Field Name**: *Action*
    2.  **Value**: *Send/Receive All*
    3.  **Ignore Error**: Cleared
8.  Click **Save &amp; Close** on the form toolbar to apply the settings.

**Parent topic:**[Mail Sending and Receipt](../UserGuide/EM__con_Sending_and_Receiving_Emails.md)

