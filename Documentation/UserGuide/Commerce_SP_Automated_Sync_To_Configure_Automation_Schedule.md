# Automated Synchronization: To Configure a New Automation Schedule {#_a99f1ec0-6772-474c-854f-46f49dd6b0e7 .task}

The following activity will walk you through the process of creating an automation schedule from scratch. To gain greater familiarity with the process, you will create two automation schedules: one that starts data preparation, and one that starts data processing for the customer data.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that as an implementation consultant helping SweetLife to set up integration with Shopify, you want to configure continuous synchronization of entities. As part of the setup, you need to configure the system to synchronize new and updated customers between Acumatica ERP and the Shopify store once a day \(at night\). Because Acumatica ERP does not provide any predefined automation schedules for the *Customer* entity, you need to create two automation schedules from scratch. The first schedule will prepare the customer data for processing, and the second schedule will start the processing of the prepared data.

## Process Overview { .section}

You will do the following:

1.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, define the conditions for preparing the data of the *Customer* entity.
2.  On the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form, create an automation schedule to start data preparation for the *Customer* entity once a day.
3.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, define the conditions for processing the data of the *Customer* entity.
4.  On the [Automation Schedules](SM_20_50_20.md) form, create an automation schedule to start the data processing for the *Customer* entity once a day.

## System Preparation { .section}

Before you perform the instructions of this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The Shopify store has been created and configured, as described in [Initial Configuration: To Set Up a Shopify Store](Commerce_SP_Initial_Configuration_To_Set_Up_a_Shopify_Store.md).
    -   The connection to the Shopify store has been established and the initial configuration has been performed, as detailed in [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md).
2.  Sign in to an Acumatica ERP instance with the *U100* dataset preloaded. You should sign in by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  Sign in to the admin area of the Shopify store as the store administrator in the same browser.

## Step 1: Schedule the Automatic Data Preparation for Customers { .section}

To configure an automation schedule that will start the data preparation process for the *Customer* entity once every night, do the following:

1.  On the [Prepare Data](BC_50_10_00.md) \(BC501000\) form, specify the following settings in the Summary area:
    -   **Store**: *SweetStore - SP*
    -   **Prepare Mode**: *Incremental*

        With this option selected, only data that has been modified since the previous data synchronization will be placed in the processing queue.

2.  In the table, select the check box in the unlabeled column in the row of the *Customer* entity.
3.  On the form toolbar, click **Schedules** &gt; **Add**. The dialog box with the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form opens.
4.  In the Summary area, enter `Prepare Customers` in the **Description** box.

    In the Summary area, notice that the system has inserted *Prepare Data* in the **Screen ID** box and *Prepare All* in the **Action Name** box. The **Active** check box has been selected.

    On the **Filter to Apply** tab, the system has added the settings summarized in the following table, which correspond to the settings you have made in the Selection area of the [Prepare Data](BC_50_10_00.md) form earlier in this step.

    |Field Name|Value|
    |----------|-----|
    |*Store*|*SweetStore - SP*|
    |*Entity*|*Customer*|
    |*Prepare Mode*|*Incremental*|

5.  On the **Details** tab, specify the additional settings of the schedule as follows:
    -   In the **Starts On** box, leave the default value, which is the current business date.
    -   Select the **No Execution Limit** check box.
6.  On the **Schedule** tab, specify the execution dates and times as follows:

    -   In the **Frequency** box \(the **Execution Date** section\), select *Daily*.
    -   In the **Starts Time** box \(the **Execution Time** section\), select *11:30 PM*.
    With these settings, the schedule execution will be started every day at 11:30 PM.

7.  On the form toolbar, click **Save &amp; Close** to save the changes to the automation schedule and close the dialog box.

## Step 2: Schedule Automatic Data Processing for Customers { .section}

To configure an automation schedule that will start data processing for the *Customer* entity once a day, do the following:

1.  On the [Process Data](BC_50_15_00.md) \(BC501500\) form, specify the following settings in the Summary area:
    -   **Store**: *SweetStore - SP*
    -   **Entity**: *Customer*
2.  On the form toolbar, click **Schedules** &gt; **Add**. The dialog box with the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form opens.
3.  In the Summary area, enter `Process Customers` in the **Description** box.

    In the Summary area, notice that the system has inserted *Process Data* in the **Screen ID** box and *Process All* in the **Action Name** box. The **Active** check box has been selected.

    Also, on the **Filter to Apply** tab, the system has added the settings summarized in the following table, which correspond to the selections you have made on the [Process Data](BC_50_15_00.md) form earlier in this step.

    |Field Name|Value|
    |----------|-----|
    |*Store*|*SweetStore - SP*|
    |*Entity*|*Customer*|
    |*Row Limit*|*No Limit*|

4.  On the **Details** tab, specify the additional settings of the schedule as follows:
    -   In the **Starts On** box, leave the default value, which is the current business date.
    -   Select the **No Execution Limit** check box.
5.  On the **Schedule** tab, specify the execution dates and times as follows:

    -   In the **Frequency** box \(the **Execution Date** section\), select *Daily*.
    -   In the **Starts Time** box \(the **Execution Time** section\), select *12:30 AM*.
    With these settings, the schedule execution will be started every day at 12:30 AM.

6.  On the form toolbar, click **Save &amp; Close** to save your changes to the automation schedule and close the dialog box.

You have configured two automation schedules for the *Customer* entity. Now the first automation schedule will start the data preparation process every night at 11:30 PM to retrieve the changed customer data if any changes have occurred in Acumatica ERP, in the *SweetStore - SP* store, or in both systems \(depending on the synchronization direction set for the *Customer* entity\) since the previous data preparation, and will place it in the processing queue. The second schedule will start the data processing for the *Customer* entity to process the synchronization records that are out of sync. During data processing, the system will also attempt to synchronize the customer synchronization records that could not be processed before \(that is, the synchronization records that have the *Failed* status\).

**Parent topic:**[Automating Synchronization](../UserGuide/Commerce_SP_Automated_Sync_Mapref.md)

