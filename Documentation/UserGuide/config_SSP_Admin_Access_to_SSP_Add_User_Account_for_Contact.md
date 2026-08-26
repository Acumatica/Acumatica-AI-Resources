# Managing Access to the Self-Service Portal: To Create User Accounts for Contacts {#_6610757d-3d97-464a-93be-aab271335504 .task}

In the following implementation activity, you will create user accounts by using the [Users](SM_20_10_10.md) \(SM201010\) and [Contacts](CR_30_20_00.md) \(CR302000\) forms of Acumatica ERP.

## Story { .section}

Suppose that your company has decided to provide the Self-Service Portal for users of customers' companies. As system administrator, you have already created user roles and user types. Now you need to create two user accounts in the Self-Service Portal for the following customer contacts of Storehut \(a chain of supermarkets\):

-   A customer administrator \(Tonya Lawrence, a buyer\) who will have the access rights to manage other user accounts of this customer in the Self-Service Portal and update company's profile. The *Tonya Lawrence* contact has already been created on the [Contacts](CR_30_20_00.md) \(CR302000\) form of Acumatica ERP, and you need to create a corresponding user account.
-   A customer user \(Ray Newman, an assistant buyer\) who will have restricted access to company profile modification and company contacts. No contact or user account exists for Ray Newman in Acumatica ERP, and you will create both a contact and a user account.

You will then verify that the created users have the proper access rights in the Self-Service Portal.

## Configuration Overview { .section}

For the purposes of this activity, the following tasks have been performed:

-   The Acumatica ERP application instance with the *U100\_SSP\_Admin\_2026 R1* dataset preloaded and the Self-Service Portal application instance have been deployed in the same database.

    **Tip:** This deployment is outside of the scope of this training.

-   In the *U100\_SSP\_Admin\_2026 R1* dataset, on the [User Roles](SM_20_10_05.md) \(SM201005\) form of Acumatica ERP, the *Portal Admin* role has been assigned to the *gibbs* user account. The user account is associated with Kimberly Gibbs, the system administrator in the SweetLife Fruits &amp; Jams company. The role provides full administrative privileges in the Self-Service Portal.
-   In Acumatica ERP, the *STORE* contact class—for the employees of supermarkets and other stores—has been defined on the [Contact Classes](CR_20_50_00.md) \(CR205000\) form.

    **Attention:** For the case classes that should be available for selection to customer contacts in the Self-Service Portal, the **Internal** check box in the Summary area of the [Contact Classes](CR_20_50_00.md) \(CR205000\) form should be cleared.

-   In Acumatica ERP, the *Tonya Lawrence* contact has been created on the [Contacts](CR_30_20_00.md) \(CR302000\) form and associated with the *STOREHUT* business account, which has been created on the [Business Accounts](CR_30_30_00.md) \(CR303000\) form and extended to be a customer.

## Process Overview { .section}

For the two Storehut employees to whom you want to give access to the Self-Service Portal, you will create user accounts.

For Ray Newman, who does not have a related contact in Acumatica ERP, you will first create a contact on the [Contacts](CR_30_20_00.md) \(CR302000\) form. You will then specify the settings to cause the system to create Ray's user account.

For Tonya Lawrence, a contact already exists in Acumatica ERP, and you will use the [Users](SM_20_10_10.md) \(SM201010\) form to create Tonya's user account.

## System Preparation { .section}

Before you start creating user accounts for the Self-Service Portal, do the following:

1.  Make sure that you have performed the following prerequisite activities:
    1.  [Managing Access to the Self-Service Portal: To Create User Roles for a Customer’s Employees](config_SSP_Admin_Managing_Access_to_SSP_Create_Roles_for_Customer_Employees.md)
    2.  [Managing Access to the Self-Service Portal: To Create User Types for User Accounts](config_SSP_Admin_Managing_Access_to_SSP_To_Create_User_Type_SSP.md)
2.  Launch the Acumatica ERP instance that uses the same database and tenant as the Self-Service Portal to be configured.
3.  Sign in as system administrator by using the *gibbs* username and the *123* password.

## Step 1: Creating a User Account for a Contact {#section_gwx_cbb_54b .section}

To create a user account for Tonya Lawrence, who already has a contact defined in the system, do the following:

1.  In Acumatica ERP, open the [Users](SM_20_10_10.md) \(SM201010\) form.
2.  In the **Login** box of the Summary area, type `tonya@storehut.example.com`, which will be used as the username of the new user account.
3.  Clear the **Generate Password** check box.
4.  In the **Password** box, type `1234`.
5.  In the **User Type** box, select the *Customer Admin* user type. For this user type, *Contact* is selected in the **Linked Entity** box on the [User Types](EP_20_25_00.md) \(EP202500\) form, making *Customer User* a contact-related user type: a user type associated with a contact in your system.

    The system displays a warning dialog box asking you to verify that you want to proceed.

6.  In the warning dialog box, click **Yes**. You are proceeding because this temporary issue will be resolved when you select a linked entity.
7.  In the **Linked Entity** box, select `Tonya Lawrence`.

    The system automatically populates the appropriate elements on the form with the contact's name and email address.

8.  To select the security policies to be applied to the user account according to your company's policy, specify the following settings:
    -   **Allow Password Recovery**: Selected
    -   **Allow Password Changes**: Selected
    -   **Password Never Expires**: Cleared
    -   **Force User to Change Password on Next Login**: Selected
9.  On the form toolbar, click **Save**.

The system has created the user account for the *Tonya Lawrence* contact on the [Users](SM_20_10_10.md) form.

## Step 2: Creating a Contact and a User Account for This Contact { .section}

To create a contact, *Ray Newman*, for the *STOREHUT* customer and create a user account of the *Customer User* type for this contact, do the following:

1.  On the [Contacts](CR_30_20_00.md) \(CR302000\) form, add a new record.
2.  In the **Business Account** box of the Summary area, select *STOREHUT*.
3.  On the **Details** tab, do the following:
    1.  In the **First Name** box of the **Contact** section, type `Ray`.
    2.  In the **Last Name** box, type `Newman`.
    3.  In the **Job Title** box, type `Assistant buyer`.
    4.  In the **Email** box, type `ray.newman@storehut.example.com`.
    5.  In the **Address** section, clear the **Override Address** check box. Based on the address information specified in the *STOREHUT* business account, the system fills in the address boxes with the company's address information.
4.  On the **CRM Info** tab, in the **Contact Class** box, select *STORE*.
5.  On the form toolbar, click **Save**.
6.  On the **User Info** tab, do the following:
    1.  In the **User Type** box, select *Customer User*.
    2.  In the **Login** box, make sure that the *ray.newman@storehut.example.com* email address is inserted.
    3.  Clear the **Generate Password** check box. You will instead enter a password for this user.
    4.  In the **Password** box, type `123`.
7.  On the form toolbar, click **Save**.

**Tip:** In a production environment, if the system email account is configured in the Acumatica ERP instance, when you have added the user account for a contact and saved your changes, an email containing the username and password would be sent to the user's email account.

## Step 3: Reviewing the Customer Administrator's Access to the Self-Service Portal { .section}

To verify that the customer administrator user account you created has access rights to create contacts and edit company profile information in the Self-Service Portal, do the following:

1.  Sign in to the Self-Service Portal instance as the customer administrator you have defined by using the *tonya@storehut.example.com* username and the *1234* password.

    The system immediately displays boxes for the new password because the **Force User to Change Password on Next Login** check box was selected on the [Users](SM_20_10_10.md) \(SM201010\) form when you created the user account for this user.

2.  In the New Password and Confirm Password boxes, type `123`; click **Sign In**.
3.  Open the Company Profile \(SP408030\) form.
4.  Verify that you can edit company information by copying the phone number in the **Phone 1** box and inserting it in the **Fax** box.
5.  On the form toolbar, click **Save**.
6.  Open the Contacts \(SP408040\) form.
7.  Verify that the **Add New** button is available on the form toolbar.

    **Tip:** The user account of a customer administrator that you have created in this activity can create user accounts for contacts to access the Self-Service Portal instance for the specific customer. The customer administrator creates contacts directly in the Self-Service Portal. This process of creating contacts, which is similar to this process in the Acumatica ERP instance, is outside of the scope of this training.

8.  Sign out of the Self-Service Portal.

## Step 4: Reviewing the Customer User's Access to the Self-Service Portal {#section_d35_nnf_w4b .section}

To verify that the customer user that you created can sign in to the Self-Service Portal and does not have access to modify the company's information, do the following:

1.  Sign in to the Self-Service Portal instance by using the *ray.newman@storehut.example.com* username and the *123* password.
2.  Open the Company Profile \(SP408030\) form. Make sure that the data on the form is unavailable for editing.
3.  Search for the Contacts \(SP408040\) form, and make sure that the form does not appear in the search results, indicating that it is not accessible.
4.  Sign out of the Self-Service Portal.

In Acumatica ERP, you have created two user accounts by using the [Users](SM_20_10_10.md) \(SM201010\) and [Contacts](CR_30_20_00.md) \(CR302000\) forms. For these user accounts, you have specified different user types, which caused different user roles to be assigned to them. Because of these differences, the created users have different levels of access rights to the same forms in the Self-Service Portal instance.

**Parent topic:**[Managing Access to the Self-Service Portal](../UserGuide/config_SSP_Admin_Access_to_SSP_Mapref.md)

