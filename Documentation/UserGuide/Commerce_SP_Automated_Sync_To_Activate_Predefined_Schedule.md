# Automated Synchronization: To Activate a Predefined Automation Schedule {#_d0dcbdb5-2aaf-4d99-bc18-8a828e907c6c .task}

The following activity will walk you through the setup and activation of two predefined automation schedules that start the data preparation and data processing for sales orders.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that as an implementation consultant helping SweetLife to set up integration with Shopify, you want to configure continuous synchronization of entities. As part of the setup, you need to configure the system to capture new and changed sales orders in Shopify every 10 minutes and import these changes to Acumatica ERP.

## Process Overview { .section}

In this activity, you will set up and activate the predefined automation schedule on the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form to prepare sales order data. Then on the same form, you will set up and activate the predefined automation schedule for processing the prepared sales order data.

## System Preparation { .section}

Before you perform the instructions of this activity, do the following:

1.  Make sure that the following prerequisites have been met:
    -   The Shopify store has been created and configured, as described in [Initial Configuration: To Set Up a Shopify Store](Commerce_SP_Initial_Configuration_To_Set_Up_a_Shopify_Store.md).
    -   The connection to the Shopify store has been established and the initial configuration has been performed, as detailed in [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md).
2.  Sign in to an Acumatica ERP instance with the *U100* dataset preloaded. You should sign in by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  Sign in to the admin area of the Shopify store as the store administrator in the same browser.

## Step 1: Activating and Setting Up the First Synchronization Schedule { .section}

To set up and activate the first predefined synchronization schedule, which will start the data preparation process for the sales order data, do the following:

1.  Open the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form.
2.  In the **Schedule ID** box of the Summary area, select *Prepare Sales Orders*.

    On the **Details** tab, notice that the schedule does not have an expiration date or execution limit \(that is, the **No Expiration Date** and **No Execution Limit** check boxes are selected\). On the **Schedule** tab, the **Daily** schedule type is selected, and in the **Execution Time** section, **Every** is set to *00:10*.

3.  On the **Schedule Details** tab, in the **Next Execution Date** box, make sure the current date \(that is, today's date\) is specified.
4.  On the **Filter Values** tab, add a row to the table, and in the added row, specify the following settings:

    -   **Field Name**: *Store*
    -   **Value**: *SweetStore - SP*
    With these settings, the data preparation process will be started for the *SweetStore - SP* store.

5.  In the Summary area, select the **Active** check box to activate the automation schedule.
6.  On the form toolbar, click **Save**.

    Now when the schedule is executed, which will happen every 10 minutes until you deactivate or delete the schedule, any changes that have occurred in sales orders in *SweetStore - SP* since the previous data preparation, will be pulled to Acumatica ERP and placed in the processing queue. In the next step, you will set up an automation schedule that will start data processing for the prepared sales order data.


## Step 2: Activating and Setting Up the Second Synchronization Schedule { .section}

To set up and activate the second predefined synchronization schedule, which will start data processing for the prepared sales order data, do the following:

1.  Open the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form.
2.  In the **Schedule ID** box of the Summary area, select *Process Sales Orders*.

    On the **Details** tab, notice that the schedule does not have an expiration date or execution limit \(that is, the **No Expiration Date** and **No Execution Limit** check boxes are selected\). On the **Schedule** tab, the **Daily** schedule type is selected, and in the **Execution Time** section, **Every** is set to *00:10*.

3.  On the **Schedule Details** tab, in the **Next Execution Date** box, make sure the current date \(that is, today's date\) is specified.
4.  On the **Filter Values** tab, add a row to the table, and in the added row, specify the following settings:

    -   **Field Name**: *Store*
    -   **Value**: *SweetStore - SP*
    With these settings, data processing will be started for the *SweetStore - SP* store.

5.  In the Summary area, select the **Active** check box to activate the automation schedule.
6.  On the form toolbar, click **Save**.

    The schedule will now start the processing of the prepared sales order data for the *SweetStore - SP* store every 10 minutes.


**Tip:** We recommend that you test the configured schedules by creating a new sales order or updating an existing one in the *SweetStore - SP* store, waiting for 20 minutes to give the schedules enough time to be executed, and then reviewing the corresponding sales order in Acumatica ERP. If for some reason the changes have not been synchronized, review the corresponding synchronization record on the [Sync History](BC_30_10_00.md) \(BC301000\) form.

**Parent topic:**[Automating Synchronization](../UserGuide/Commerce_SP_Automated_Sync_Mapref.md)

