# Acumatica ERP Access: Access to Your Acumatica ERP Instance {#_b3ec3c43-d418-4597-9b11-bdb2a9abd264 .concept}

Information about the financial records processed in each organization is confidential, so system administrators who deploy and support Acumatica ERP in your organization restrict access to the system by creating user accounts or integrating Acumatica ERP with external identity providers.

In this topic, you’ll read about managing user account information, recovering your credentials, and changing your password.

## Managing User Account Details { .section}

As a user of Acumatica ERP, you have a separate user account that defines what forms you can access, what changes you can make, and what your personal settings are. Your user account contains the following:

-   A username, which is managed by your system administrator
-   A password
-   Additional information about you, which you can manage without contacting your system administrator

On the [User Profile](SM_20_30_10.md) \(SP203010\) form, you can manage the following personal information:

-   Your first name and last name.
-   Your phone number.
-   Your password. For details, see [Changing the Password of Your Acumatica ERP Account](#_f8b328b5-10ee-4321-bca7-4a60e468e53e).
-   Your email account. For information about how to configure your email account, see [To Configure Your Email Account](User_Profile_Email.md).
-   Your password recovery question and answer. For details, see [Recovering Your User Credentials](#_0acb9780-70df-45f9-8143-fd5f9f326a59).

**Attention:** If your Acumatica ERP instance is integrated with Active Directory, for domain users, some of the settings listed above are unavailable; they are set on the domain level in Active Directory.

To open the [User Profile](SM_20_30_10.md) form, in the User menu \(in the top right corner of the screen\), click your username and select **My Profile**.

## Changing the Password of Your Acumatica ERP Account {#_f8b328b5-10ee-4321-bca7-4a60e468e53e .section}

Your system administrator can allow you to change the password of your Acumatica ERP account any time you want. The ability to change your own password is useful, for example, when you suspect that your account is being accessed without your consent. For details, see [Acumatica ERP Access: To Change Your Password](GS__how_User_Profile_Password_Change.md).

## Recovering Your User Credentials {#_0acb9780-70df-45f9-8143-fd5f9f326a59 .section}

If you use Acumatica ERP credentials to sign in to the system, your system administrator can allow you to recover your username and password. The recovery mechanism sends emails to the email address that is specified in your account information. For details about how to recover your credentials, see [Acumatica ERP Access: To Recover a Forgotten Password or Username](GS__how_Login_and_Logout__Recover_password.md).

On the [User Profile](SM_20_30_10.md) \(SM203010\) form, you can specify a password recovery question whose answer you need to enter when you are recovering your password. With a password recovery question, you reduce the risk of your user account being hacked. For a procedure, see [Acumatica ERP Access: To Specify Your Password Recovery Question](GS__how_Change_Password_Recovery_Question.md).

If you have forgotten your password from a domain account, you should contact your system administrator.

If you have forgotten your password from an external identity account, you should use the password recovery tools of the external identity provider.

**Parent topic:**[Accessing Acumatica ERP](../UserGuide/GS_Accessing_Acumatica_ERP_Mapref.md)

