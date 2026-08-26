# Automated Synchronization: To Activate a Predefined Business Event {#_19696be6-695e-4c25-b2ec-8ab90eaa3062 .task}

The following activity will walk you through the process of configuring a business event that sends an email notification to the store administrator when the synchronization of an order placed in the ecommerce system is aborted.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that you have configured the automated import of sales orders from the ecommerce store and want Jerald Stevens, an ecommerce manager of SweetLife, to be notified when the system has failed to process a synchronization record of a sales order too many times \(based on the setting specified in the system\) and has set its status to *Aborted*, which excludes the record from synchronization. To make the system send a notification to the ecommerce manager, Jerald Stevens, every time the synchronization of a sales order is aborted, you need to activate a predefined business event that will trigger the sending of an email message to the store administrator every time the status of a synchronization record of a sales order changes to *Aborted*. You also want to review the notification template to make sure it is sent to the correct recipient and contains the necessary data about the aborted records.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Email Templates](SM_20_40_03.md) \(SM204003\) form, the *Aborted Synchronization Record* notification template has been defined.
-   On the [Users](SM_20_10_10.md) \(SM201010\) form, the *stevens* user record has been created.

## Process Overview { .section}

You will do the following:

1.  On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, specify the store administrator who should receive email notifications about aborted synchronization records.
2.  On the [Business Events](SM_30_20_50.md) \(SM302050\) form, activate a predefined business event that will trigger the sending of an email when the system fails to process a sales order synchronization record more than the maximum number of synchronization attempts allowed, which by default is five.
3.  On the [Email Templates](SM_20_40_03.md) \(SM204003\) form, review the notification template used for notifications about aborted sales orders.

## System Preparation { .section}

Do the following:

1.  Make sure that the following prerequisites have been met:
    1.  The BigCommerce store has been created and configured, as described in [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).
    2.  The connection to the BigCommerce store has been established and the initial configuration has been performed, as described in [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).
2.  Sign in to Acumatica ERP by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*

## Step 1: Specifying the Store Administrator { .section}

To specify the administrator of the *SweetStore - BC* store, do the following:

1.  On the [BigCommerce Stores](../Shared/../UserGuide/BC_20_10_00.md) \(BC201000\) form, select the *SweetStore - BC* store.
2.  On the **General** tab, in the **Administrator** box \(the **Miscellaneous** section\), select *stevens*.

    The user you select in this box will become the recipient of email notifications sent by the business event that you will activate in the next step.

3.  On the form toolbar, click **Save**.

## Step 2: Activating the Business Event { .section}

To activate the business event that will trigger the sending of email notifications to the store administrator, do the following:

1.  On the [Business Events](../Shared/../UserGuide/SM_30_20_50.md) \(SM302050\) form, select the *BCAbortedOrder* event.

    In the Summary area, notice that the **Screen Name** is set to *BC-DB-AbortedOrders*, which is the generic inquiry that collects aborted synchronization records of the *Sales Order* entity for all stores in Acumatica ERP for which the administrator has been specified.

    Also in this area, notice that **Raise Event** is set to *For Each Record*; on the **Trigger Condition** tab, notice that the operation of the only condition in the table is *Record Inserted*. With these settings, a business event will be raised for each synchronization record that is added to the results of the generic inquiry.

    On the **Subscribers** tab, the only subscriber to this business event is *Email Notification* \(the **Type** column\), which indicates that an email is sent whenever the business event is raised. In the **Subscriber ID** column, which holds the ID of the notification template for an email notification, *Aborted Order Notification* is selected. In the next step, you will review the template used for the email notifications.

2.  In the Summary area, select the **Active** check box.
3.  On the form toolbar, click **Save**.

You have activated the business event that will trigger sending Jerald Stevens an email notification every time a synchronization record of the *Sales Order* entity is assigned the *Aborted* status.

## Step 3: Reviewing the Notification Template { .section}

To review the template for notifications about aborted sales order synchronization records sent to the store administrator, do the following:

1.  While you are still viewing the *BCAbortedOrder* business event on the [Business Events](../Shared/../UserGuide/SM_30_20_50.md) \(SM302050\) form, on the **Subscribers** tab, click the *Aborted Order Notification* link in the **Subscriber ID** column.
2.  On the [Email Templates](../Shared/../UserGuide/SM_20_40_03.md) \(SM204003\) form, which opens in a new tab, review the details of the template.

    In the **To** box, notice that instead of a specific user name or email address, a variable is used. So emails are sent to whoever is specified as the administrator of the store to which the aborted synchronization record belongs.

    On the **Message** tab, review the details of the aborted synchronization record. The information includes the store name, the entity type, the local and external identifiers of the record, the last operation, and the last error. The email body also contains the link to the [Sync History](../Shared/../UserGuide/BC_30_10_00.md) \(BC301000\) form, on which you can review the status of all synchronization records and resynchronize them after the issues are resolved.


In this activity, you have activated the predefined business event that will trigger the sending of an email to the store administrator about aborted synchronization of sales orders.

**Parent topic:**[Automating Synchronization](../UserGuide/Commerce_BC_Automated_Sync_Mapref.md)

