# Synchronizing Microsoft 365 Mailboxes

For Microsoft 365 integration, you select the employee mailboxes that you want to synchronize with Acumatica ERP. For each selected mailbox, Acumatica ERP creates a Microsoft 365 email account that is used for synchronization.

You manage the mailboxes on the **Mailboxes** tab of the [Exchange Integration Configuration](SM_20_40_15.md) \(SM204015\) form. The tab lists employees who have user profiles and keeps each selected mailbox associated with its corresponding email account.

## Mailboxes Available for Synchronization

After the Microsoft 365 integration has been configured, the **Mailboxes** tab lists the employees who have user profiles. You can select the **Sync Account** check box for the employees whose Microsoft 365 mailboxes you want to synchronize.

When you save the configuration, Acumatica ERP creates an email account for each newly selected mailbox. The created account has *Microsoft 365* as its account type and can be viewed on the [Email Accounts](SM_20_40_02.md) \(SM204002\) form.

The Microsoft 365 email account represents the employee's mailbox in Acumatica ERP and is used for synchronization with Microsoft 365.

## Changes to Mailboxes and Email Accounts

After an email account has been created for a selected mailbox, changes to the mailbox selection or the email account can affect the other record. This keeps the mailboxes selected for synchronization consistent with the Microsoft 365 email accounts in Acumatica ERP.

The following table summarizes these changes.

|Action|Result|
|------|------|
|The **Sync Account** check box is selected for an employee and the configuration is saved.|A Microsoft 365 email account is created for the employee's mailbox.|
|The **Sync Account** check box is cleared and the configuration is saved.|The corresponding email account becomes inactive.|
|The **Active** check box is cleared for the corresponding email account.|The **Sync Account** check box is cleared for the mailbox.|
|The corresponding email account is deleted.|The **Sync Account** check box is cleared for the mailbox.|
|The employee is deleted.|The employee is removed from the **Mailboxes** tab, and the corresponding email account is deleted.|

Clearing the **Sync Account** check box doesn't delete the corresponding email account. Instead, the account becomes inactive. If the email account itself is deleted, the employee can remain on the **Mailboxes** tab, but the mailbox is no longer selected for synchronization.

By contrast, deleting the employee removes both the employee's entry from the **Mailboxes** tab and the corresponding Microsoft 365 email account.

## Relationship to Synchronization

Selecting a mailbox identifies the employee account that participates in Microsoft 365 integration. The actual synchronization behavior is controlled by the exchange integration policies configured on the [Exchange Integration Policies](SM_20_40_10.md) \(SM204010\) form.

At least one synchronization policy must be configured to use Microsoft Graph integration. The policy defines the synchronization settings for the supported types of records, including emails, contacts, tasks, and events.

**Parent topic:**[Microsoft Graph Integration: Overview](../UserGuide/EM__MS_365_Overview.md)

