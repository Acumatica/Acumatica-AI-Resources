# Microsoft Graph Permissions

To synchronize data between Acumatica ERP and Microsoft 365 service, the Microsoft Graph application must have permissions for the types of Microsoft 365 data used by the integration. These permissions provide access to email, contacts, calendars, Microsoft To Do tasks, mailbox settings, and user information.

Microsoft Graph integration uses **application permissions**. Unlike permissions granted on behalf of an individual user, application permissions allow the application to access Microsoft 365 data without user interaction. A Microsoft administrator must grant consent to these permissions.

Because application permissions can provide access to data throughout the Microsoft 365 tenant, an administrator should consider the scope of this access when configuring the integration.

## Required Microsoft Graph Permissions

The Microsoft Graph application requires the following permissions.

|Permission|Used for|
|----------|--------|
|`Calendars.ReadWrite`|Synchronizing calendar events|
|`Contacts.ReadWrite`|Synchronizing contacts|
|`Mail.ReadWrite`|Reading, updating, and deleting email|
|`Mail.Send`|Sending email|
|`MailboxSettings.ReadWrite`|Working with Outlook categories|
|`Tasks.ReadWrite.All`|Synchronizing Microsoft To Do tasks|
|`User.Read.All`|Accessing user information|

The permissions required for a particular operation depend on the types of data involved. For example, email synchronization uses `Mail.ReadWrite`, while sending email also requires `Mail.Send`. Contact synchronization uses `Contacts.ReadWrite`, and event synchronization uses `Calendars.ReadWrite`.

Microsoft To Do task synchronization requires `Tasks.ReadWrite.All`. Microsoft Planner isn't used for task synchronization by this integration.

## Application Permissions and Administrator Consent

Application permissions are granted to the Microsoft Graph application itself rather than to an individual Microsoft 365 user. As a result, the application can access the Microsoft 365 resources allowed by its permissions without requiring a user to sign in for each operation.

A Microsoft 365 administrator must consent to the application permissions before Acumatica ERP can use them.

The permissions are tenant-wide. A Microsoft 365 tenant represents the organization's identity boundary and includes its users, groups, applications, and resources. When an administrator grants application permissions, the application can access data across the tenant to the extent allowed by the granted permissions.

For example, permissions that provide access to mailboxes or calendars aren't limited to the mailbox of the administrator who configured the integration. They can provide the application with access to these resources for users throughout the tenant.

## Security Considerations

Application permissions provide broad access to organizational data. Before granting them, the Microsoft administrator should review the permissions required for the integration and determine whether the resulting level of access is appropriate for the organization.

The Microsoft Graph application can perform permitted operations without interaction from individual Microsoft 365 users. Depending on the permissions granted, these operations can include accessing or modifying email, contacts, calendar events, tasks, and mailbox settings.

The organization should therefore apply the security controls that it considers necessary to protect sensitive Microsoft 365 data and restrict access to the application.

**Parent topic:**[Microsoft Graph Integration: Overview](../UserGuide/EM__MS_365_Overview.md)

