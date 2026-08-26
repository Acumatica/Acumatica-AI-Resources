# Contacts: To Create a Contact by Using the Acumatica Mobile App {#_8dac11ec-319c-4353-ad7b-4c7185f2016c .task}

The following activity demonstrates how to create a contact by using the Acumatica mobile app.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company.At the annual conference for food and beverage suppliers, you met with Eva Johnson, a new director of the supply chain at Storehut, a chain of supermarkets in New York. Storehut is a current SweetLife customer. You need to create a new contact in the system for your existing *STOREHUT* customer.

**Tip:** You can find detailed instructions on creating a business account through the Acumatica mobile app in [Business Accounts: To Create a Business Account by Using the Acumatica Mobile App](CRM_Sales_Creating_Bus_Accounts_Create_Account_MobApp.md) and detailed instructions on creating an opportunity in [Opportunities: To Create an Opportunity by Using the Acumatica Mobile App](CRM_Sales_Creating_Opportunities_To_Create_Opportunity_MobApp.md).

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
-   On the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, the *STOREHUT* business account has been created and extended as a customer.

## System Preparation { .section}

Before you start creating a new contact in the system by using the Acumatica mobile app, you should do the following:

1.  Download and install the Acumatica mobile app on the mobile device that you will use for creating a contact in the system. The mobile app for iOS is available in the Apple Store and the mobile app for Android is available in Google Play.

    **Attention:** The instructions in the activity steps below may slightly differ in the Acumatica mobile app depending on whether the device is running iOS or Android.

2.  Make sure that the Acumatica ERP instance has been hosted over HTTPS or ask a system administrator to perform this task for you. For more information, see [Preparation for the Acumatica ERP Installation: System Environment](INST_Preparing_Installation_System_Environment.md).

## Process Overview { .section}

In this activity, you will do the following by using the Acumatica mobile app:

1.  Sign in to the Acumatica mobile app.
2.  Create a contact by using the Acumatica mobile app.

## Step 1: Signing In to the Acumatica Mobile App { .section}

To sign in to the Acumatica mobile app, do the following:

1.  On the mobile device, tap the application icon to launch the app.
2.  Optional: If you are signing in for the first time, in the **Server URL** box, enter the URL of your Acumatica ERP instance \(for example, *https://my.site.acumatica.com*\).
3.  Optional: In the **Account Name** box, specify the name of the user account.
4.  Tap **Next**.
5.  Sign in to the system as the sales manager by using the *chubb* username and the *123* password.

## Step 2: Creating a Contact by Using the Acumatica Mobile App { .section}

To create a contact on the fly by using the Acumatica mobile app, do the following:

1.  On the main menu of the app, make sure that the *U100* tenant is selected.
2.  In the **CRM** workspace, tap the Plus button next to the **Contacts** tile.

    The **Summary** tab of the Contact Summary screen opens.

3.  Specify the following settings:
    -   **First Name**: `Eva`
    -   **Last Name**: `Johnson`
    -   **Job Title**: `Director of Supply Chain`
4.  In the **Business Account** box, select *STOREHUT*.
5.  Swipe upward and tap **Details**. This expands the group of related elements.
6.  In the **City** box, specify `New York`.
7.  Make sure that in the **Country** box, *United States of America* is specified.
8.  Tap the **Other** tab of the screen.
9.  Tap **CRM Info** to expand the group of related elements.
10. In the **Contact Class** box, select *Supermarkets, stores, groceries*.
11. Tap the **Save** button to save the contact.

**Parent topic:**[Creating Contacts](../UserGuide/CRM_Sales_Creating_Contacts_Mapref.md)

