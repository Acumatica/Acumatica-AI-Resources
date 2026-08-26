# Opportunities: To Create an Opportunity by Using the Acumatica Mobile App {#_f895129d-fef5-4b55-88ee-15859daa420f .task}

The following activity will help you create an opportunity by using the Acumatica mobile app.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company.You are currently on a business trip and cannot use your laptop at the moment. Fred Robinson, a store manager at the Store Cart supermarket, has called you and asked you to place an urgent order for assorted teas \(black, fruit, and green\), 50 packs of each. You need to create an opportunity in Acumatica ERP.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
-   On the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, the *STORECART* business account has been created in the system and extended as a customer with its settings specified on the [Customers](AR_30_30_00.md) \(AR303000\) form.
-   On the [Contacts](CR_30_20_00.md) \(CR302000\) form, the *Fred Robinson* contact has been created in the system and associated with the *STORECART* business account.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *BLACKTEA06*, *FRUITTEA12*, and *GREENTEA06* stock items, which hold the settings of the products, have been created.

## System Preparation { .section}

Before you start creating a new opportunity in the system by using the Acumatica mobile app, you should do the following:

1.  Download and install the Acumatica mobile app on the mobile device that you will use for creating an opportunity in the system. The mobile app for iOS is available in the Apple Store and the mobile app for Android is available in Google Play.

    **Attention:** The instructions in the activity steps below may slightly differ in the Acumatica mobile app depending on whether the device is running iOS or Android.

2.  Make sure that the Acumatica ERP instance has been hosted over HTTPS or ask a system administrator to perform this task for you. For more information, see [Preparation for the Acumatica ERP Installation: System Environment](INST_Preparing_Installation_System_Environment.md).

## Process Overview { .section}

In this activity, you will do the following by using the Acumatica mobile app:

1.  Sign in to the Acumatica mobile app.
2.  Create an opportunity for an existing customer by using the Acumatica mobile app.

## Step 1: Signing In to the Acumatica Mobile App { .section}

To sign in to the Acumatica mobile app, do the following:

1.  On the mobile device, tap the application icon to launch the app.
2.  Optional: If you are signing in for the first time, in the **Server URL** box, enter the URL of your Acumatica ERP instance \(for example, *https://my.site.acumatica.com*\).
3.  Optional: In the **Account Name** box, specify the name of the user account.
4.  Tap **Next**.
5.  Sign in to the system as the sales manager by using the *chubb* username and the *123* password.

## Step 2: Creating an Opportunity by Using the Acumatica Mobile App { .section}

To create an opportunity with the contact *Fred Robinson* of the *STORECART* customer by using the Acumatica mobile app, do the following:

1.  On the main menu of the app, make sure that the *U100* tenant is selected.
2.  In the **CRM** workspace, tap the Plus button next to the **Opportunities** tile.

    The **Summary** tab of the Opportunity screen opens.

3.  Specify the settings as follows:
    -   **Class ID**: Select *Product Sales*.
    -   **Description**: Type `Sale of assorted teas, black, fruit, and green`.
    -   **Stage**: Select *Development*.
    -   **Business Account**: Select *STORECART*.
4.  Tap the **Save** button to save the opportunity.
5.  On the top of the screen, tap **Open**. This expands the **Details** group of elements.
6.  In the **Details** group of elements, do the following:
    1.  In the **Reason** box, select *In Process*.
    2.  In the **Stage** box, select *Negotiation*.
    3.  Tap **OK**.
7.  On the **Details** tab, do the following to add the *BLACKTEA06* stock item:
    1.  Tap the Plus button.
    2.  In the **Inventory ID** box, select *BLACKTEA06*.
    3.  In the **Quantity** box, type 50.
    4.  Tap the **Update** button in the upper right of the screen.
    5.  Tap the **Save** button in the upper right of the screen.
8.  Add the *FRUITTEA12* stock item as follows:
    1.  Tap the Plus button.
    2.  In the **Inventory ID** box, select *FRUITTEA12*.
    3.  In the **Quantity** box, type 50.
    4.  Tap **Update**.
    5.  Tap **Save**.
9.  Add the *GREENTEA06* stock item as follows:

    1.  Tap the Plus button.
    2.  In the **Inventory ID** box, select *GREENTEA06*.
    3.  In the **Quantity** box, type 50.
    4.  Tap **Update**.
    5.  Tap **Save**.
    On the **Details** tab, notice that the *BLACKTEA06*, *FRUITTEA12*, and *GREENTEA06* stock items have been added.


**Parent topic:**[Creating Opportunities](../UserGuide/CRM_Sales_Creating_Opportunities_Mapref.md)

