# Personal Email Accounts {#_6ce134c7-90e6-4975-b377-cec4412b362d .concept}

A *personal email account* is a company email account that belongs to a person and is used for work-related business. Personal email accounts cannot be used for automated email.

An email account becomes the personal email account of an Acumatica ERP user once this user is specified for this account in the **Personal Account For** box in the Summary area of the [Email Accounts](SM_20_40_02.md) \(SM204002\) form. Other users are prohibited from sending emails from this personal email account.

One user can have as many personal email accounts as needed. The procedures of adding a new personal account to the system and performing reauthorization in the external email services can be done by the user and normally do not require assistance of a system administrator.

## Creating Personal Email Accounts { .section}

You use the [Email Accounts](SM_20_40_02.md) \(SM204002\) form to create a new personal email account. The procedure of creating a new personal email account is similar to the creation of a system email account, which is described in [To Create a System Email Account](EM__HOW_To_Create_a_System_Email_Account.md), with the following exceptions:

-   In the Summary area of the [Email Accounts](SM_20_40_02.md) form, in the **Personal Account For** box, you select the user to whom the email account belongs.

    The lookup table for this box lists all the users defined in the system, including inactive ones.

    **Tip:** If the title of an email account contains *Exchange* \(that is, if the email account has the *Exchange* type\), the **Personal Account For** box is unavailable for the selection.

-   The system fills in the **Account Name** and **Email Address** settings in the Summary area and the **Default Email Owner** box of the **Additional Settings** tab of the [Email Accounts](SM_20_40_02.md) form based on the settings of the user specified in the box.

If the email address of the selected user differs from the email address that is specified in the **Email Address** box of the Summary area of the [Email Accounts](SM_20_40_02.md) form, the system shows a warning message next to the **Personal Account For** box.

On the **Email Accounts** tab of the [Users](SM_20_10_10.md) \(SM201010\) form, you can review the list of all personal email accounts related to a selected user. You can add an email account by clicking **Add Email Account** \(![](Images/form_toolbar_buttons_Add_record.png)\) on the table toolbar of the tab. The system then opens the [Email Accounts](SM_20_40_02.md) form in a new browser tab with a new email account record. The **Personal Account For** box is initially filled in with the name of the user account that had been open on the [Users](SM_20_10_10.md) form.

If a user has been deleted on the [Users](SM_20_10_10.md) form and the **Personal Account For** box for an email account on the [Email Accounts](SM_20_40_02.md) form had contained the name of the deleted user, the system clears this box.

## Configuring Personal Email Accounts { .section}

For each personal email account, you specify the outgoing mail server, the incoming mail server \(optional\), and the protocol to be used. Also, you must specify ports, sign-in information for servers of both types, and the type of encrypted connection \(if required by the server\). You can enable and set up the processing of incoming mail for a personal email account, as described in [Incoming Mail Processing](EM__con_Mail_Processing.md).

## Restrictions of Using Personal Email Accounts { .section}

To restrict the usage of the personal email accounts in mass emails, on the [Email Activity](CR_30_60_15.md) \(CR306015\) and [Mass Emails](CR_30_80_00.md) \(CR308000\) forms, the lookup table in the **From** box shows only those email accounts for which either of the following conditions is met:

-   The **Personal Account For** box of the email account contains the name of the currently logged-in user.
-   The **Personal Account For** box of the email account is empty.

The system restricts the usage of personal email accounts in the system-wide preference settings and in emails that are created and sent automatically. The lookup table for the elements on the forms in the following table shows only those email accounts for which the **Personal Account For** box of the email account in the [Email Activity](CR_30_60_15.md) form is empty.

|Form|Element|
|----|-------|
|[Email Preferences](SM_20_40_01.md) \(SM204001\)|**Default Email Account**|
|[Contact Classes](CR_20_50_00.md) \(CR205000\)|
|[Case Classes](CR_20_60_00.md) \(CR206000\)|
|[Lead Classes](CR_20_70_00.md) \(CR207000\)|
|[Business Account Classes](CR_20_80_00.md) \(CR208000\)|
|[Opportunity Classes](CR_20_90_00.md) \(CR209000\)|
|[Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\)|
|[Accounts Receivable Preferences](AR_10_10_00.md)\(AR101000\)|
|[Compliance Preferences](CL_30_10_00.md) \(CL301000\)|
|[Customer Management Preferences](CR_10_10_00.md) \(CR301000\)|
|[Service Management Preferences](FS_10_01_00.md) \(FS100100\)|
|[Equipment Management Preferences](FS_10_03_00.md) \(FS100300\)|
|[Route Management Preferences](FS_10_04_00.md) \(FS100400\)|
|[Inventory Preferences](IN_10_10_00.md) \(IN101000\)|
|[Projects Preferences](PM_10_10_00.md) \(PM101000\)|
|[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)|
|[Purchase Requisitions Preferences](RQ_10_10_00.md) \(RQ101000\)|
|[Subcontracts Preferences](SC_10_10_00.md) \(SC101000\)|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)|
|[Email Templates](SM_20_40_03.md) \(SM204003\)|**From**|
|[Vendor Classes](AP_20_10_00.md) \(AP201000\)|**Email Account**|
|[Vendors](AP_30_30_00.md) \(AP303000\)|
|[Customer Classes](AR_20_10_00.md) \(AR201000\)|
|[Customers](AR_30_30_00.md) \(AR303000\)|
|[Business Account Classes](CR_20_80_00.md) \(CR208000\)|
|[Service Order Types](FS_20_23_00.md) \(FS202300\)|
|[Project Templates](PM_20_80_00.md) \(PM208000\)|
|[Projects](PM_30_10_00.md) \(PM301000\)|
|[Business Accounts](CR_30_30_00.md) \(CR303000\)|
|[Restricted Entities](SM_20_10_40.md) \(SM201040\)|**Entity** \(for the *Email Account* option selected in the **Entity Type** box\)|
|[Restriction Groups](SM_20_10_30.md) \(SM201030\)|
|[Email Account Access](SM_20_10_50.md) \(SM201050\)|**Email Account ID**|

If you change the user account in the **Personal Account For** box of the [Email Accounts](SM_20_40_02.md) form, the system checks whether the email account is specified in any of the elements mentioned in the table above. If it is, you cannot save the record, and the system shows an error message next to the **Personal Account For** box.

If row-level security rules are applied in the system, the lists of email accounts can also be restricted based on these rules.

## Managing Personal Email Accounts { .section}

A user can manage their personal email account by using the elements in the **Personal Email Accounts** section on the **Email Settings** tab of the [User Profile](SM_20_30_10.md) \(SM203010\) form. The table in this section contains the email accounts for which the currently logged-in user is selected in the **Personal Account For** box on the [Email Accounts](SM_20_40_02.md) form. The columns of the table \(excluding **Active**\) are filled in by the system based on the settings of the email account on the [Email Accounts](SM_20_40_02.md) form and are read-only. The state of the **Active** check box can be changed manually; if the user changes this state and then saves their changes, the system updates the state of the **Active** check box on the [Email Accounts](SM_20_40_02.md) form.

On the table toolbar of the section, the following buttons are available:

-   **Test**: A user clicks the button, which is available when an active email account is selected in the table, to open the **Send Test Email** dialog box. The system validates that the selected email account is operational by sending a test email to the email address that is specified in the table.
-   **Sign In**: When the user clicks the button, the system signs in to the external email service specified for the selected email account in the **External Application** box of the [Email Accounts](SM_20_40_02.md) form. This button is not available if the authentication method of the email account is *Basic Authentication*.
-   **Sign Out**: When the user clicks the button, the system signs out from the external email service specified for the selected email account in the **External Application** box of the [Email Accounts](SM_20_40_02.md) form. This button is available if the authentication method of the email account is *OAuth 2.0 for Microsoft 365* or *OAuth 2.0 for Google*.
-   **Update Password**:When the user clicks the button, the **Update Password** dialog box opens. If the user clicks **Update** in the dialog box, the system updates the **Incoming Mail Password** box of the selected email account on the [Email Accounts](SM_20_40_02.md) form with the value that is entered in the **Email Account Password** box of the dialog box. This button is available when a record is selected in the table and the authentication method of the email account is *Basic Authentication*.

**Parent topic:**[Configuring Email Accounts](../UserGuide/EM__con_Configuring_Email_Accounts.md)

