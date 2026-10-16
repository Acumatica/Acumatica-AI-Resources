# Synchronizing Microsoft 365 Records

With Microsoft Graph integration, Acumatica ERP can synchronize emails, contacts, tasks, and calendar events with Microsoft 365. Synchronization is bidirectional: Changes made to synchronized records in Acumatica ERP can be reflected in Microsoft 365, and changes made to the corresponding Microsoft 365 items can be reflected in Acumatica ERP.

The synchronization rules differ depending on the type of record. In particular, emails can be selected for synchronization by their location in specific folders, while contacts, tasks, and events use the category specified in the synchronization policy. Tasks are synchronized with Microsoft To Do, rather than Microsoft Planner.

The following table summarizes the Microsoft 365 records involved in synchronization.

|Acumatica ERP record|Microsoft 365 record|How the item is selected for synchronization|
|--------------------|--------------------|--------------------------------------------|
|Email activity|Outlook email|Folder; category-based synchronization is also described for Microsoft Graph|
|Contact|Outlook contact|Category|
|Task|Microsoft To Do task|Category|
|Event|Outlook calendar event|Category|

The synchronization settings are specified on the [Exchange Integration Policies](SM_20_40_10.md) \(SM204010\) form.

## Email Synchronization

Email synchronization lets users send and receive Microsoft 365 email through Acumatica ERP. Emails are synchronized with email activities in Acumatica ERP.

Microsoft Graph supports both folder-based and category-based email synchronization. Folder-based synchronization follows the synchronization model used for the EWS integration.

With folder-based synchronization, the **Folder Name** specified in the synchronization policy identifies two synchronization subfolders in Outlook:

-   A subfolder of **Inbox** for incoming emails
-   A subfolder of **Sent Items** for outgoing emails

If these subfolders don't already exist, they are created when the integration is first synchronized.

Only these two subfolders are used for folder-based synchronization. Other custom subfolders under Inbox, Sent Items, or elsewhere in Outlook aren't synchronized.

An email placed in one of the synchronization subfolders doesn't need to have a category before it is synchronized. After the email has been synchronized, the category specified in the synchronization policy is added to it. An incoming email is then moved from the synchronization subfolder to the main Inbox, and an outgoing email is moved from the synchronization subfolder to the main Sent Items folder.

Microsoft Graph integration also supports category-based email synchronization. With this approach, an email is tracked for synchronization based on the category specified in the synchronization policy, regardless of the folder that contains the email. As long as the applicable category remains assigned to the email, subsequent changes to the email continue to be tracked for synchronization.

## Email Attachments

Attachments are synchronized along with emails if attachment synchronization is enabled in the synchronization policy.

For incoming email, Microsoft Graph integration returns information indicating whether an email has attachments. Acumatica ERP then retrieves the attachment contents separately from the email message. The way Microsoft Graph integration provides the contents depends on the size of the attachment.

For an attachment of about 3 MB or less, Microsoft Graph integration can return the attachment contents with the attachment information. For a larger attachment, Acumatica ERP makes an additional request to retrieve the file contents.

A similar distinction applies when Acumatica ERP sends an email. Small attachments can be included with the message. For an attachment larger than 3 MB, Acumatica ERP first creates the email as a draft, uploads the attachment, and then sends the completed message.

These differences in attachments processing don't change how users work with attachments in an email activity, but they may result in additional requests to Microsoft 365 service when large attachments are synchronized.

## Contact Synchronization

Contacts are synchronized between the [Contacts](CR_30_20_00.md) \(CR302000\) form and Microsoft 365 contacts according to the contact settings in the synchronization policy.

The synchronized information includes the contact's name, job title, email address, phone numbers, and address information.

If a Microsoft 365 contact has multiple email addresses, Acumatica ERP uses the first email address returned for the contact. Similarly, Microsoft 365 can store multiple business and home phone numbers. These numbers are mapped to the corresponding phone boxes of the Acumatica ERP contact.

For address information, Acumatica ERP uses the Microsoft 365 business address. If a business address isn't available, the home address is used instead.

## Matching Existing Contacts

The **Merge Contacts by Email** setting of the [Exchange Integration Policies](SM_20_40_10.md) \(SM204010\) form controls how an imported contact is handled when a contact with the same email address already exists in Acumatica ERP.

If **Merge Contacts by Email** is selected, Acumatica ERP compares the email address of the imported contact with the email addresses of existing contacts. If it finds a matching contact, the synchronized information is merged with that contact.

If the **Merge Contacts by Email** setting isn't selected, synchronization can create another contact with the same email address.

Contacts use the category specified in the synchronization policy for synchronization with Microsoft 365.

## Task Synchronization

Tasks are synchronized between the [Task](CR_30_60_20.md) \(CR306020\) form and Microsoft To Do items.

Microsoft To Do organizes tasks into task lists. Microsoft Planner isn't used for this synchronization.

A task imported from Microsoft 365 retains information about the To Do list to which it belongs. It is displayed in the **Exchange Task List** box of the [Task](CR_30_60_20.md) \(CR306020\) form.

Tasks created in Acumatica ERP are synchronized with the default Microsoft To Do list.

The synchronized task information includes the summary, status, priority, start date, due date, reminder information, and description.

Some Microsoft To Do values are mapped to the corresponding Acumatica ERP values. For example:

|Microsoft To Do|Acumatica ERP|
|---------------|-------------|
|`notStarted`|Open|
|`inProgress`|Processing|
|`completed`|Completed|
|`low`|Low priority|
|`normal`|Normal priority|
|`high`|High priority|

Microsoft To Do stores a date and time for a task's start and due dates. Acumatica ERP uses only the date portion for these values because the corresponding task fields in Acumatica ERP don't store a start or due time.

For reminders, Acumatica ERP converts the Microsoft To Do reminder date and time to the system time zone.

Tasks use the category specified in the synchronization policy.

## Event Synchronization

Events are synchronized between the [Event](CR_30_60_30.md) \(CR306030\) form and Microsoft 365 calendar events.

The synchronized information includes the summary, description, location, start and end times, time zone, all-day setting, availability, status, priority, reminder, and attendees.

Microsoft 365 can provide multiple pieces of information about an event location, such as its display name, location type, address, coordinates, email address, and URI. Acumatica ERP combines the available information for display in the **Location** box.

Attendees are also synchronized. For each attendee returned by Microsoft 365, Acumatica ERP checks the email address against leads, contacts, and employees. If a matching record is found, the corresponding record is shown for the attendee. The attendee's email address, whether attendance is optional, and the invitation response are also synchronized.

Microsoft 365 invitation responses are mapped to the corresponding Acumatica ERP invitation statuses. For example, an accepted or tentatively accepted Microsoft 365 response results in **Accepted** in Acumatica ERP, and a declined response results in **Declined**.

Events use the category specified in the synchronization policy.

## Event Limitations

Recurring events aren't synchronized as recurring events. When Acumatica ERP imports a recurring event from a Microsoft 365 calendar, the occurrences are treated as individual events.

The integration also doesn't support an invitee proposing a new meeting time when responding to an invitation.

## Categories and Different Entity Types

Categories help identify Microsoft 365 items that participate in synchronization. The category is specified in the **Category Name** box of the [Exchange Integration Policies](SM_20_40_10.md) \(SM204010\) form and is applied to synchronized items in Outlook.

Contacts, tasks, and events require a category for synchronization. If no particular category label is needed, you can specify *None* as category name.

Email synchronization differs from the other synchronization entities. For folder-based email synchronization, an email doesn't need a category while it is waiting in one of the designated synchronization subfolders. The category from the synchronization policy is applied after the email is synchronized.

Because Microsoft Graph also supports category-based email synchronization, the role of categories in email synchronization depends on the synchronization method used.

## Synchronization After the Initial Load

During the initial synchronization, Acumatica ERP loads the applicable Microsoft 365 items. After the initial load has completed, Microsoft Graph delta queries are used for subsequent synchronization.

Delta queries let Acumatica ERP retrieve items that have been added, changed, or deleted since the preceding synchronization instead of retrieving all of the items again.

Acumatica ERP also stores Microsoft Graph identifiers and version information for synchronized items. This information is used to recognize corresponding records, identify changes, and detect situations in which the same item has been changed in both Acumatica ERP and Microsoft 365.

If a synchronized item has been changed in both systems, the **Conflict Resolution Priority** setting of the [Exchange Integration Policies](SM_20_40_10.md) \(SM204010\) form determines which version is retained. For details about resolving conflicting changes, see [Incremental Synchronization and Conflict Resolution](EM__MS_365_Conflict_Resolution_Concept.md).

Deletion and restoration require additional handling because Microsoft Graph doesn't always distinguish a restored item from one that has been permanently deleted. For details about these cases, see [Deletion and Restoration](EM__MS_365_Deletion_and_Restoration_Concept.md).

**Parent topic:**[Microsoft Graph Integration: Overview](../UserGuide/EM__MS_365_Overview.md)

