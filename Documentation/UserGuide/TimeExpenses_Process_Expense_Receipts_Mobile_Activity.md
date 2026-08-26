# Expense Receipts: To Create an Expense Receipt by Using the Acumatica Mobile App {#_9cd940e7-4356-4c4c-bad8-f0a04f094c72 .task}

The following activity will walk you through the process of creating an expense receipt by using the Acumatica mobile app.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that David Chubb, an employee of the sales department at the SweetLife Fruits &amp; Jams company, purchased food and drink during a break in the negotiations with a potential customer. During the break, David bought coffee and a pastry at the nearest cafe and paid $10 with a personal credit card.

Acting as David Chubb, you will use a mobile device to enter the expense into the system and request reimbursement.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The *Expense Management* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   On the [Non-Stock Items](IN_20_20_00.md#) \(IN202000\) form, the *MEAL* non-stock item with the *Expense* type has been created.
-   On the [Employees](EP_20_30_00.md#) \(EP203000\) form, the account for David Chubb has been created and associated with the *chubb* user account.

## Process Overview { .section}

You will create an expense receipt for David Chubb's coffee and pastry purchase on the Expense Receipts screen of the Acumatica mobile app.

## System Preparation { .section}

Before you start creating a new expense receipt in the system by using the Acumatica mobile app, you should do the following:

1.  Download and install the Acumatica mobile app on the mobile device that you will use for creating an expense receipt in the system. The mobile app is available for iOS in the Apple Store and for Android in Google Play.

    **Attention:** The instructions in the activity steps below may slightly differ in the Acumatica mobile app depending on whether the device is running iOS or Android.

2.  Make sure that the Acumatica ERP instance has been hosted over HTTPS or ask a system administrator to perform this task for you. For more information, see [Preparation for the Acumatica ERP Installation: System Environment](INST_Preparing_Installation_System_Environment.md).
3.  Sign in to the Acumatica mobile app as follows:
    1.  On the mobile device, tap the application icon to launch the app.
    2.  Optional: If you are signing in for the first time, in the **Server URL** box, enter the URL of your Acumatica ERP instance \(for example, *https://my.site.acumatica.com*\).
    3.  Optional: In the **Account Name** box, specify *chubb*.
    4.  Tap **Next**.
    5.  Sign in to the system as the sales manager by using the *chubb* username and the *123* password.

## Step: Creating an Expense Receipt by Using the Acumatica Mobile App { .section}

To create an expense receipt on the fly by using the Acumatica mobile app, do the following:

1.  On the main menu of the app, make sure that the *U100* tenant is selected.
2.  In the **Time and Expenses** workspace, tap the More menu next to the **Expense Receipts** tile.
3.  Tap **Create New**.

    **Tip:** You can tap **Capture Expense Receipt** or **Select Image** to take a photo of the receipt or attach an existing one from your device. In a production environment, if your company’s license includes the *Image Recognition for Expense Receipts* feature and it is enabled, the system can automatically fill in an expense receipt with recognized values from the photo. For details, see[Expense Receipts: Scanning of Expense Receipts in the Mobile App](TimeExpenses_Process_Expense_Receipts_Scanning_Expense_Receipts.md) .

4.  On the Expense Receipt screen, which opens, specify the following settings:
    -   **Description**: `Coffee and pastry`
    -   **Date**: The current date
    -   **Expense Item**: `Meal and drinks`
    -   **Unit Cost**: `10`
    -   **Paid With**: *Personal Account*
5.  Optional: At the top of the screen, tap the camera icon to take a photo of the receipt or attach an existing one from your device.
6.  Tap **Save** to save the expense receipt.

    Note that the expense receipt's status is *Open*, which means that you can claim it.


**Parent topic:**[Processing Expense Receipts](../UserGuide/TimeExpenses_Process_Expense_Receipts_Mapref.md)

