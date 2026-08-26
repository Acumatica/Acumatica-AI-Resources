# Configuring Case Management in the Self-Service Portal: Implementation Activity {#_adc75c13-892d-4878-af0a-5ec8ec95aab3 .task}

In the following implementation activity, you will configure the case management functionality in the Acumatica Self-Service Portal.

## Story { .section}

Suppose that you are Kimberly Gibbs, system administrator at the SweetLife Fruits &amp; Jams company. You need to configure the case management functionality in the SweetLife Self-Service Portal to give customers the ability to submit and track cases.

## Configuration Overview { .section}

For the purposes of this activity, the following tasks have been performed:

-   The Acumatica ERP application instance with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded and the Self-Service Portal application instance have been deployed in the same database.

    **Tip:** This deployment is outside of the scope of this training.

-   In the *U100\_SSP\_Admin\_2026 R1* dataset, on the [User Roles](SM_20_10_05.md) \(SM201005\) form of Acumatica ERP, the *Portal Admin* role has been assigned to the *gibbs* user account. The user account is associated with Kimberly Gibbs, the system administrator in the SweetLife Fruits &amp; Jams company. The role provides full administrative privileges in the Self-Service Portal.
-   On the [Contact Classes](CR_20_50_00.md) \(CR205000\) form, the *STORE* contact class has been created.
-   On the [Case Classes](CR_20_60_00.md) \(CR206000\) form, the *DELIVERY* and *JREPAIR* \(repair of juicers\) case classes have been created.
-   On the [Cases](CR_30_60_00.md) \(CR306000\) form, the *Cleaning and maintenance of juicers* case has been created and assigned to Jeffrey Vega.

## Process Overview { .section}

In this activity, you will do the following:

1.  Sign in to Acumatica ERP. In Acumatica ERP, on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enable the features needed for case management.
2.  Sign in to the Self-Service Portal. On the Portal Preferences \(SP800000\) form, specify the basic settings for case management. You will then select a notification template that the system will use for sending email notifications to the case owners about new comments in cases.
3.  In the Self-Service Portal, verify that a user can create a case.
4.  In Acumatica ERP, verify that a case owner receives an email notification about a new comment in a case.

## System Preparation { .section}

Before you start configuring case management in the Self-Service Portal, do the following:

1.  Launch the Acumatica ERP website with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded and sign in as system administrator by using the *gibbs* username and the *123* password.
2.  In Acumatica ERP, for the *STOREHUT* business account on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form, make sure that the *STORE* business account class is selected in the **Class** box.
3.  Make sure that you have performed the following prerequisite activities:
    1.  [Configuring the Self-Service Portal: To License the Self-Service Portal Instance](config_SSP_Admin_To_License_SSP_Instance.md)
    2.  [Configuring the Self-Service Portal: To Specify the General Settings of the Self-Service Portal](config_SSP_Admin_To_Specify_General_Settings_of_Instance.md)
    3.  [Managing Access to the Self-Service Portal: To Create User Roles for a Customer’s Employees](config_SSP_Admin_Managing_Access_to_SSP_Create_Roles_for_Customer_Employees.md)
    4.  [Managing Access to the Self-Service Portal: To Create User Types for User Accounts](config_SSP_Admin_Managing_Access_to_SSP_To_Create_User_Type_SSP.md)
    5.  [Managing Access to the Self-Service Portal: To Create User Accounts for Contacts](config_SSP_Admin_Access_to_SSP_Add_User_Account_for_Contact.md)

**Attention:**

To be sure that the needed workspaces, forms, reports, and dashboards will be available in the Self-Service Portal, before completing the activity, add the following key to the `web.config` file located in the folders of the Acumatica ERP and Self-Service Portal websites.

```
<add key="IsMultiSiteMode" value="true" />
```

You should also reload the webpages of the Acumatica ERP instance and the Self-Service Portal. Synchronization of the Acumatica ERP and Self-Service Portal instances may take some time.

## Step 1: Enabling the Needed Features { .section}

To enable the features needed for case management, do the following:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  Make sure that under the *Customer Management* group of features, the **Case Management** check box is selected.
4.  Under the *Customer Portal* groups of features, select the **Case Management on Portal** check box.
5.  Make sure that the **Financials on Portal** check box is selected.
6.  On the form toolbar, click **Enable** to enable the features.

## Step 2: Specifying the Basic Case Management Settings { .section}

To specify the basic settings for case management in the Self-Service Portal, do the following:

1.  Launch the Self-Service Portal and sign in to the system as system administrator by using the *gibbs* username and the *123* password.
2.  Open the Portal Preferences \(SP800000\) form.
3.  In the **CRM Settings** section of the **General Settings** tab, do the following:
    1.  In the **Default Case Class** box, select *JREPAIR* \(the case class defined for cases for the repair of juicers\). This class will be inserted by default when a user creates a new case, but the user can change the case class.
    2.  In the **Priority** box, make sure that the *Medium* is selected.
    3.  In the **Default Contact Class** box, select *STORE*. This class will be inserted by default when a user creates a new contact, but the user can change the contact class.
4.  On the form toolbar, click **Save**.

## Step 3: Setting Up Email Notifications About a New Comment in a Case { .section}

You can set up the Self-Service Portal so that each time a user creates a new comment in a case, an email notification will be sent to the case owner \(an employee of your company\).

To set up these email notifications, do the following:

1.  While you are still viewing the Portal Preferences \(SP800000\) form, in the **Case Activity Notification Template** box, select *New Case Comment from Portal*. This template will be used in an email to a case owner if a new comment has been added to the case.

    **Tip:** This template is among the predefined notification templates that are provided with Acumatica ERP.

2.  On the form toolbar, click **Save**.
3.  Sign out of the Self-Service Portal.

## Step 4: Verifying That a User Can Create a Case in the Self-Service Portal { .section}

To create a case in the Self-Service Portal for testing purposes, do the following:

1.  Sign in to the Self-Service Portal as Ray Newman by using the *ray.newman@storehut.example.com* username and the *123* password.
2.  On the main menu panel, click **Support** to open the **Support** workspace.
3.  Click *New Case*.
4.  In the Summary area of the New Case \(SP203000\) form, which opens, do the following:
    1.  In the **Priority** box, select *Medium*.
    2.  In the **Class ID** box, select *DELIVERY*.
    3.  In the **Subject** box, type `Delivery of the missing 5 jars of apple jam`.
5.  On the **Details** tab, in the text area, describe the issue, as shown in the following example:

    `Hi! The order of 15 jars each of pear, plum, and apple jam was not delivered in full because only 10 jars of apple jam were provided. Please deliver the missing 5 jars of apple jam.`

6.  On the **Attributes** tab, in the **Value** column of the only row, select *Apple jam 32 oz*.
7.  On the form toolbar, click **Submit**.

    The system saves the case, closes the New Case \(SP203000\) form, and opens the Case Details \(SP203010\) form with the case you have created. On the **Case Description** tab of this form, you can view the details of the case.

    **Tip:** You use the New Case \(SP203000\) form only when you enter and submit a case; once the case has been submitted, you view the case and its information on the Case Details \(SP203010\) form.


You have verified that a portal user can create cases in the Self-Service Portal.

## Step 5: Adding a Comment to a Case { .section}

To add a comment to the *Cleaning and maintenance of juicers* case, do the following:

1.  On the main menu panel, click **Support**. The **Support** workspace opens.
2.  Click *Open Cases*. The Open Cases \(SP204000\) form opens.
3.  In the Selection area, clear the **Me** check box. Now you can see all the cases created by the employees of Storehut.
4.  In the row with *Cleaning and maintenance of juicers* in the **Subject** column, click the link in the **Case ID** column. The case opens on the Case Details \(SP203010\) form. Notice that in the **Assigned To** box of the Summary area, *Jeffrey Vega* is specified.
5.  On the form toolbar, click **Add Comment**.
6.  In the **New Comment** dialog box, which opens, do the following:
    1.  In the **Summary** box, type `Appointment`.
    2.  In the text area, type your comment, such as the following:

        `You can come on Monday or Tuesday, anytime from 9 AM to 4 PM. Thanks!`

    3.  On the dialog box toolbar, click **Save &amp; Close**.

The system has added your comment as an activity of the *Note* type on the **Activities** tab of the form. Now you can verify that Jeffrey Vega, a technician at SweetLife and the owner of the case, has received an email notification about the new comment in the case.

## Step 6: Verifying Receipt of the Email Notification About a New Comment in the Case { .section}

To make sure that the case owner *Jeffrey Vega* has received an email notification about a new comment in the case, do the following:

1.  Sign in to Acumatica ERP as system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the [Cases](CR_30_60_00.md) \(CR306000\) form, open the *Cleaning and maintenance of juicers* case.
3.  On the **Activities** tab, notice that a row with the *Note* type has been added to the table.
4.  Open the [All Emails](CO_40_90_70.md) \(CO409070\) form.
5.  On the **All Records** tab, open the *New comment on Case \#000014* email, and verify that it contains the text defined in the previous step of the current activity.

    **Tip:** The case number may be different depending on the number of cases you submitted.


**Parent topic:**[Configuring Case Management in the Self-Service Portal](../UserGuide/config_SSP_Admin_Configuring_Case_Management_in_SSP_Mapref.md)

