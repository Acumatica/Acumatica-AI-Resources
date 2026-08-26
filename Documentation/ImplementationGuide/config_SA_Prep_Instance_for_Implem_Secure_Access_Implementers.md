# Preparing an Instance: System-Wide Security Policy {#_562b7e1c-ef7b-4a3e-93ef-3ff34df5f6ed .concept}

Acumatica ERP provides a wide range of tools for security control. You can implement your organization's security regulations by configuring and maintaining system-wide security policies for user accounts, passwords, and security auditing.

In this topic, you will read about the tools we recommend that you use for ensuring that access to your tenant in implementation is secure.

## User Accounts for Implementers { .section}

Initially, the only active user account \(*admin*\) is available for signing in to a new instance. We do not recommend using this account for implementation purposes, however. The account should be used only for activating and licensing the instance and configuring secure access for the people involved in the implementation.

The system implementation usually involves third-party implementation consultants as well as people from your company who are assigned to the implementation project. We highly recommend creating user accounts for everyone involved in the process to ensure that access is secure and that only authorized people access the system.

In Acumatica ERP, access to information is controlled primarily by the roles assigned to the user who signs in to the system. Roles generally correspond to particular job assignments or functions of groups of users. When they sign in, the users authenticate themselves by using the appropriate username and password, and the associated roles determine which system resources they may access.

You add user accounts for people involved in the implementation by using the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form. For each user, you specify at minimum the username, the initial password \(to be changed on the first sign-in\), and the email address. Implementers should be able to access all system resources to implement the system. To allow this, you need to assign these users a set of predefined roles that allows access to all system resources.

At this point, a system email account is not configured yet, and you need to find a secure way to pass user credentials \(username and initial password\) to the people.

## System-Wide Password Policies {#section_ohp_pbm_5j .section}

In Acumatica ERP, you can use the [Security Preferences](../UserGuide/SM_20_10_60.md) \(SM201060\) form to set up the password policies for all user accounts defined in the system.

**Attention:** If your Acumatica ERP instance is integrated with Active Directory, the password policy for domain users is set at the domain level through Active Directory. For more information about the integration of Acumatica ERP with Active Directory, see [Integration with Active Directory](../UserGuide/US__con_Integration_with_Active_Directory.md).

You can set up the system password policy to control the following:

-   *Password duration*: For maximum security, we recommend that users change passwords periodically, such as every 90 to 180 days. Shorter ranges can reduce the security of accounts, because users may use simple passwords or struggle to create complex, memorable passwords often, which encourages them to write down these passwords. You use the **Password Expiry Period in Days** check box to specify the change frequency.
-   *Password length*: You can set up a minimum required password length. You use the **Minimum Characters in Password** check box to specify the minimum length.
-   *Password complexity*: You can enforce password complexity requirements, which means that a new password must include at least three of the following:

    -   Latin uppercase letters \(A–Z\)
    -   Latin lowercase letters \(a–z\)
    -   Digits \(0 through 9\)
    -   Special characters \(such as *+*, *:*, *=*, and *-*\)
    You use the **Password Must Meet Complexity Requirements** check box to enforce complexity requirements.

-   *Password validation mask*: You can configure an additional password validation mask to enforce your company's password policy. You can specify a regular expression to enforce additional regulations—for example, to exclude some special characters that are not supported by third-party software \(if used\).

    You can use a validation mask in addition to password length or complexity requirements or use only your validation mask and clear the length or complexity requirements. For example, the following regular expression covers length and complexity requirements and forbids the *$* and *^* symbols: ^\(?=.\*\[A-Za-z\]\)\(?=.\*\\d\)\(?=.\*\[@!%\*\#?&amp;\]\)\[A-Za-z\\d@!%\*\#?&amp;\]\{10,\}$. With this validation mask, there is no need to set up password length and complexity settings.

    If you use a validation mask, you should provide a custom alert message that explains to users the password policy enforced by the validation mask. Otherwise, the system displays the default message.

    You use the **Additional Password Validation Mask** and **Incorrect Password Alert** boxes to configure custom password requirements.


To improve password security, a hashing algorithm is used to process passwords, and only hash values are stored in the database.

## System-Wide Account Lockout Policies { .section}

You can configure the system to lock out a user account after a particular number of failed sign-in attempts. This configuration option helps to stop an unauthorized person who might be trying to gain system access by guessing a user's password.

On the [Security Preferences](../UserGuide/SM_20_10_60.md) \(SM201060\) form, you can specify the following system-wide parameters:

-   The number of failed sign-in attempts that will cause a user account to be locked out
-   The duration of the account lockout—that is, the number of minutes the user account remains locked before the system automatically unlocks it
-   The time period before the system resets the counter of the failed sign-in attempts.

**Parent topic:**[Preparing an Instance for Implementation](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Mapref.md)

