# Automated Synchronization: Scheduled Synchronization {#_c6f86a99-bbe1-434c-9980-c93ee0d9c4ed .concept}

Scheduled synchronization is the process in which each of the synchronization operations—that is, data preparation and data processing—for an entity is executed by an automation schedule. Because data preparation and data processing processes are independent of each other, they are scheduled separately and can be performed in parallel.

## Using Predefined Automation Schedules for Data Preparation and Processing { .section}

Acumatica ERP provides a number of predefined automation schedules—some for data preparation and others for data processing—that you can use as starting points for setting up your own automation schedules. The following table lists these schedules by the **Description** settings on the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form, along with each schedule's predefined frequency of execution.

|Schedule Description|Execution Frequency|
|--------------------|-------------------|
|*Prepare Stock, Non-Stock, and Template Items*|Daily, once a day|
|*Prepare Product Availability*|Daily, every hour|
|*Prepare Sales Orders*|Daily, every 10 min|
|*Prepare Shipments*|Daily, every 30 min|
|*Prepare Refunds*|Daily, every 20 min|
|*Process Non-Stock Items*|Daily, every hour|
|*Process Stock Items*|Daily, every hour|
|*Process Template Items*|Daily, every hour|
|*Process Product Availability*|Daily, every hour|
|*Process Sales Orders*|Daily, every 10 min|
|*Process Shipments*|Daily, every 10 min|
|*Process Refunds*|Daily, every 10 min|

Before a predefined schedule can be executed, you need to update it to meet your needs and then activate it. To activate and modify a predefined schedule, you do the following:

1.  You open the [Automation Schedules](SM_20_50_20.md) form.

    **Tip:** You can open this form by clicking **Schedule** &gt; **Add** or **Schedule** &gt; **View** on the form toolbar of the [Prepare Data](BC_50_10_00.md) \(BC501000\) and [Process Data](BC_50_15_00.md) \(BC501500\) forms.

2.  You modify the schedule's settings as follows:

    -   On the **Filters** tab, add a filter condition to include the store for which the schedule should be executed.
    -   On the **Schedule** tab, adjust the schedule execution frequency, if necessary.
    **Important:** The execution frequency of each predefined schedule has been specified according to the general scheduling recommendations and should be fine-tuned to meet the needs of the particular business.

3.  You activate the schedule by selecting the **Active** check box in the Summary area.
4.  You save your changes to the schedule.

Once the store has been specified in the filter settings and the schedule has been activated, the process for which the schedule was defined will be automatically executed according to the schedule's settings.

For detailed instructions on activating a predefined automation schedule, see [Automated Synchronization: To Configure a New Automation Schedule](Commerce_SP_Automated_Sync_To_Configure_Automation_Schedule.md).

## Defining Automation Schedules for Data Preparation and Data Processing from Scratch { .section}

You might need to define an automation schedule from scratch for entities that do not need frequent synchronization \(for example, *Customer*\). Acumatica ERP does not provide predefined automation schedules for these entities.

You set up automation schedules for synchronizing specific entities between the two systems by using the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form, which you can open directly or by clicking **Schedule** &gt; **Add** on the form toolbar of the [Prepare Data](BC_50_10_00.md) \(BC501000\) and [Process Data](BC_50_15_00.md) \(BC501500\) form.

To configure a schedule for data preparation, you do the following:

1.  On the [Prepare Data](BC_50_10_00.md) form, in the Summary area, you specify the Shopify store with which you are configuring synchronization, as well as the data preparation mode.
2.  In the table, you select the unlabeled check box for each entity that should be processed when the schedule is executed.
3.  On the table toolbar, you click **Schedule** &gt; **Add**.

    The system opens the [Automation Schedules](SM_20_50_20.md) form in a pop-up window. The settings that you have specified appear on the **Conditions** and **Filter Values** tabs of the form.

4.  You specify a name and description for the schedule, as well as its frequency, expiration information, execution dates and times, and other settings.
5.  You activate and save the schedule.

To configure a schedule for processing synchronization records with the *Pending* and *Failed* statuses, you do the following:

1.  In the Summary area of the [Process Data](BC_50_15_00.md) form, you specify the Shopify store for which you are configuring synchronization and the entity that needs to be processed.

    **Tip:** To select all entities, clear the value in the **Entity** box.

2.  On the table toolbar, you click **Schedule** &gt; **Add**.

    The [Automation Schedules](SM_20_50_20.md) form opens in a pop-up window. The settings that you have specified appear on the **Filter Values** tab of the form.

3.  You specify a name and description for the schedule, as well as its frequency, expiration information, execution dates and times, and other settings.
4.  You activate and save the schedule.

For detailed instructions on creating a schedule for preparing and processing data, see [Automated Synchronization: To Configure a New Automation Schedule](Commerce_BC_Automated_Sync_To_Configure_Automation_Schedule.md).

**Parent topic:**[Automating Synchronization](../UserGuide/Commerce_SP_Automated_Sync_Mapref.md)

