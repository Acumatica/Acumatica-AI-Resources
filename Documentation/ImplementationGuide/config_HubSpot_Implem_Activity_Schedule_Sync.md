# Integration with HubSpot: To Schedule Synchronization Processes {#_8d54318e-f23c-40e0-9109-9677b6ea3ba8 .task}

In this activity, you will learn how to schedule the synchronization of entities between HubSpot and Acumatica ERP.

## System Preparation { .section}

Launch the Acumatica ERP website, and sign in to the necessary tenant.

## Step 1: Scheduling the Real-Time Synchronization { .section}

The real-time synchronization process runs all the time; however, in certain cases, it can be interrupted. For these cases, an automated restarting of the process should be scheduled as follows:

1.  Open the [HubSpot Sync](../UserGuide/HS_20_50_30.md) \(HS205030\) form.
2.  In the table, select the unlabeled check box in the row of each entity for which you want to schedule synchronization.
3.  On the form toolbar, click **Schedules** &gt; **Add**.

    The [Automation Schedules](../UserGuide/SM_20_50_20.md) \(SM205020\) form opens.

4.  In the **Description** box of the Summary area, specify a brief description of the schedule.
5.  In the **Action Name** box, select *Start*.
6.  On the **Details** tab, in the **Starts On** box, make sure the date when the schedule has to start running is selected.
7.  On the **Schedule** tab, in the **Schedule Type** section, make sure the **Daily** option button is selected.
8.  In the **Execution Time** section, in the **Every** box, specify how often you want the schedule to run.

    **Note:** We recommend that you specify five or ten minutes for this schedule.

9.  On the form toolbar, click **Save &amp; Close**.

## Step 2: Scheduling the Synchronization of the Out-of-Sync Data { .section}

Do the following to schedule the synchronization of data that has become out of sync:

1.  Open the [HubSpot Data Resync](../UserGuide/HS_20_50_35.md) \(HS205035\) form.
2.  In the **Sync to Start** box of the Selection area, select *Failed &amp; Missed Data Resync*.
3.  In the table, select the Included check box in the row of each entity for which you want to schedule synchronization.
4.  On the form toolbar, click **Schedules** &gt; **Add**.

    The [Automation Schedules](../UserGuide/SM_20_50_20.md) \(SM205020\) form opens.

5.  In the **Description** box of the Summary area, specify a brief description of the schedule.
6.  In the **Action Name** box, select *Process*.
7.  On the **Details** tab, in the **Starts On** box, make sure the date when the schedule has to start running is selected.
8.  On the **Schedule** tab, in the **Schedule Type** section, make sure the **Daily** option button is selected.
9.  In the **Execution Time** section, in the **Every** box, specify how often you want the schedule to run.

    **Note:** We recommend that you specify five or ten minutes for this schedule. If many errors occur on the initial *Full Data Resync* process, we recommend that you run the resynchronization process less often \(for instance, every hour\) until the errors are eliminated.

10. On the form toolbar, click **Save &amp; Close**.
11. When you are returned to the [HubSpot Data Resync](../UserGuide/HS_20_50_35.md) form, in the **Sync to Start** box of the Selection area, select *Full Data Resync*.
12. On the form toolbar, click **Schedules** &gt; **Add**.

    The [Automation Schedules](../UserGuide/SM_20_50_20.md) form opens.

13. On the **Details** tab, in the **Starts On** box, make sure the date when the schedule has to start running is selected.
14. On the **Schedule** tab, in the **Schedule Type** section, make sure the **Daily** option button is selected.
15. In the **Execution Time** section, in the **Starts On** and **Stops On** box, specify when you want the schedule to run.

    **Note:** We recommend that you set this schedule to run every day during the business' off-hours.

16. On the form toolbar, click **Save &amp; Close**.

**Parent topic:**[Integration with HubSpot](../ImplementationGuide/config_HubSpot_Mapref.md)

