# Business Accounts: To Create a Business Account by Using the Acumatica Mobile App {#_37429c1f-985e-4714-9eb5-8e7750d0fcbc .task}

The following activity demonstrates how to create a business account by using the Acumatica mobile app.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are David Chubb, a sales manager of the SweetLife Fruits &amp; Jams company.At the annual conference for food and beverage suppliers, you became acquainted with Bruce Ward, a procurement manager at Store National, a chain of supermarkets in the United States. Bruce has decided to choose SweetLife as a new supplier of fresh fruit. You have created the contact in the system, and now you need to quickly create a new business account for further processing of developments with the business in the system \(which involves creating an opportunity\).

**Tip:** You can find detailed instructions on creating a contact through the Acumatica mobile app in [Contacts: To Create a Contact by Using the Acumatica Mobile App](CRM_Sales_Creating_Contacts_Create_Contact_MobApp.md) and detailed instructions on creating opportunities in [Opportunities: To Create an Opportunity by Using the Acumatica Mobile App](CRM_Sales_Creating_Opportunities_To_Create_Opportunity_MobApp.md).

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Customer Management* feature has been enabled: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and campaigns.
-   On the [Contacts](CR_30_20_00.md) \(CR302000\) form, the *Bruce Ward* contact has been created.

## System Preparation { .section}

Before you start creating a new business account in the system by using the Acumatica mobile app, you should do the following:

1.  Download and install the Acumatica mobile app on the mobile device that you will use for creating a business account in the system. The mobile app for iOS is available in the Apple Store and the mobile app for Android is available in Google Play.

    **Attention:** The instructions in the activity steps below may slightly differ in the Acumatica mobile app depending on whether the device is running iOS or Android.

2.  Make sure that the Acumatica ERP instance has been hosted over HTTPS or ask a system administrator to perform this task for you. For more information, see [Preparation for the Acumatica ERP Installation: System Environment](INST_Preparing_Installation_System_Environment.md).

## Process Overview { .section}

In this activity, you will do the following by using the Acumatica mobile app:

1.  Sign in to the Acumatica mobile app.
2.  Create a business account by using the Acumatica mobile app.

## Step 1: Signing In to the Acumatica Mobile App { .section}

To sign in to the Acumatica mobile app, do the following:

1.  On the mobile device, tap the application icon to launch the app.
2.  Optional: If you are signing in for the first time, in the **Server URL** box, enter the URL of your Acumatica ERP instance \(for example, *https://my.site.acumatica.com*\).
3.  Optional: In the **Account Name** box, specify the name of the user account.
4.  Tap **Next**.
5.  Sign in to the system as the sales manager by using the *chubb* username and the *123* password.

## Step 2: Creating a Business Account by Using the Acumatica Mobile App { .section}

To quickly create a business account by using the Acumatica mobile app, do the following:

1.  On the main menu of the app, make sure that the *U100* tenant is selected.
2.  In the **CRM** workspace, tap the Plus button next to the **Business Accounts** tile.

    The **Summary** tab of the Account Summary screen opens.

3.  Do the following:
    -   In the **Business Account** box, type `STORENAT`.
    -   In the **Account Name** box, type `Store National`.
    -   In the **Email** box, type `b.ward@storenational.example.com`.
4.  Swipe upward and tap **Account Address**. This expands the group of related elements.
5.  Specify the address information as follows:
    -   In the **City** box, type `New York`
    -   In the **Country** box, select *United States of America*.
6.  Open the **Other** tab.
7.  Tap **CRM** to expand the group of related elements.
8.  In the **Class** box, select *Supermarkets, stores, groceries*.
9.  Tap the **Save** button to save the business account.

**Parent topic:**[Creating Business Accounts](../UserGuide/CRM_Sales_Creating_Bus_Accounts_Mapref.md)

