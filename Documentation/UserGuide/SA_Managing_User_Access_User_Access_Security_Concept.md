# User Access: User Access Security {#_690f9b9b-07b9-4a51-8e2b-61afae4192a1 .concept}

In addition to the system-wide password policy configured on the [Security Preferences](SM_20_10_60.md) \(SM201060\) form, you can use the following capabilities of Acumatica ERP to apply your organization's security policies to individual user accounts on the [Users](SM_20_10_10.md) \(SM201010\) form.

**Tip:** We recommend configuring system-wide security policies during the preparation of the Acumatica ERP instance for implementation. For details, see [Preparing an Instance: System-Wide Security Policy](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Secure_Access_Implementers.md).

## Password Recovery {#_a4dc92fd-b47a-4ac1-8cf0-951188abd256 .section}

You can allow a particular user to recover the username and reset the password through email by selecting the **Allow Password Recovery** check box on the [Users](SM_20_10_10.md) \(SM201010\) form.

If this check box is selected for a particular user, the user can click the *Forgot Your Credentials?* link on the Sign-In page of Acumatica ERP and receive an email with a link to the password reset form.

## Password Change { .section}

You can allow a specific user to change the password by selecting the **Allow Password Changes** check box on the [Users](SM_20_10_10.md) \(SM201010\) form. The user will be able to change the password at any time by clicking **Change Password** on the [User Profile](SM_20_30_10.md) \(SM203010\) form.

If you have set a system-wide requirement for users to change their passwords periodically by selecting the **Password Expiry Period in Days** check box on the [Security Preferences](SM_20_10_60.md) \(SM201060\) form, the system forces all users to change their passwords, regardless of whether the **Allow Password Changes** check box is selected for the individual user.

## Forced Password Change { .section}

You can require a specific user to change the password on the next sign-in by selecting the **Force User to Change Password on Next Login** check box on the [Users](SM_20_10_10.md) \(SM201010\) form. After the user changes the password, the system clears the check box for this user.

This check box is available only if the **Allow Password Changes** check box is selected.

## Password Expiration { .section}

You can allow a particular user never to change the password by selecting the **Password Never Expires** check box on the [Users](SM_20_10_10.md) \(SM201010\) form. Such a user will not be forced to change the password, even if the **Password Expiry Period in Days** check box is selected on the [Security Preferences](SM_20_10_60.md) \(SM201060\) form to enforce the system-wide requirement to change a password periodically. The only way to make such a user change their password is to select the **Force User to Change Password on Next Login** check box on the [Users](SM_20_10_10.md) form.

## Individual Network Restrictions { .section}

You can limit the range of IP addresses from which a specific user can sign in to your Acumatica ERP instance. If the user attempts to access the system from a computer with an IP address that is outside of the specified range, access will be denied. You specify the range of IP addresses on the **IP Filter** tab of the [Users](SM_20_10_10.md) \(SM201010\) form.

## User Account Deactivation { .section}

While viewing a particular user on the [Users](SM_20_10_10.md) \(SM201010\) form, you can deactivate the user account to temporarily prevent the user from signing in to your Acumatica ERP instance by clicking **Disable User** on the form toolbar. For example, suppose that your organization uses a contractor's services from time to time. When the contractor completes a project, you deactivate the contractor's user account until the next project emerges.

**Attention:**

-   You cannot deactivate your own user account.
-   You can deactivate the built-in `admin` account. However, ensure that at least one other account has the same access permissions and roles.

## User Inactivity Timeout { .section}

You can specify the time interval \(in hours\) of user inactivity after which a user will be forced to sign in again. You specify the value on the [Security Preferences](SM_20_10_60.md) \(SM201060\) form, in the **User Inactivity Timeout** box of the **Timeout Settings** section. This setting will be applied to all tenants of the instance.

You can instead configure the system to use the timeout setting value specified in the `web.config` file. To do this, in the **Timeout Settings** section of the [Security Preferences](SM_20_10_60.md) form, you select the **Use WebConfig Value** check box.

**Parent topic:**[Managing User Access](../UserGuide/SA_Managing_User_Access_Mapref.md)

