# Deletion and Restoration

When an email, task, or event that is synchronized through Microsoft Graph integration is deleted in Acumatica ERP or Microsoft 365, the deletion is synchronized to the other system. What happens afterward depends on the type of record and whether the item is restored or permanently deleted.

Contacts are handled differently. If a synchronized contact is deleted in Outlook, the corresponding contact isn't deleted in Acumatica ERP. Instead, the contact is made inactive.

## How Microsoft 365 Deletions Are Detected

After the initial synchronization, Acumatica ERP uses Microsoft Graph delta queries to identify items that have been added, changed, or deleted in Microsoft 365.

When an item is deleted in Outlook, Microsoft Graph reports the item as removed. However, Microsoft Graph doesn't indicate whether an item that later disappears from Deleted Items was permanently deleted or restored to an active folder or list.

If an item is restored, it can later appear in synchronization results as an active item with the same Microsoft Graph ID. Because of this behavior, Acumatica ERP doesn't permanently delete the corresponding ERP record until it can determine that the Microsoft 365 item was permanently deleted.

The resulting behavior differs by entity, as summarized in the following table.

|Entity|Deleted in Microsoft 365|Restored in Microsoft 365|Permanently deleted in Microsoft 365|
|------|------------------------|-------------------------|------------------------------------|
|Email|The corresponding email in Acumatica ERP is marked as deleted.|The email is synchronized again, and its status changes from **Deleted** to **Processed**.|The corresponding email is permanently deleted in Acumatica ERP.|
|Task|The corresponding task is deleted in Acumatica ERP.|A new task is created in Acumatica ERP.|No additional action is required after the task has been deleted in Acumatica ERP.|
|Event|The corresponding event is deleted in Acumatica ERP.|A new event is created in Acumatica ERP.|No additional action is required after the event has been deleted in Acumatica ERP.|
|Contact|The corresponding contact is made inactive in Acumatica ERP.| | |

## Email Deletion and Restoration

Email deletion is synchronized in both directions.

If you delete a synchronized email in Acumatica ERP, its status changes to **Deleted**. During synchronization, the corresponding email in Outlook is moved to Deleted Items.

If the email is restored from Deleted Items in Outlook, the email is synchronized with Acumatica ERP again. The existing email activity isn't replaced with a new one; instead, its status changes from **Deleted** back to **Processed**.

If the email is permanently deleted in Outlook, the corresponding email is permanently deleted in Acumatica ERP. Similarly, if the email is permanently deleted in Acumatica ERP, the corresponding email is permanently deleted in Outlook.

The same general behavior applies when the deletion starts in Outlook. When an email is moved to Deleted Items, the corresponding email activity in Acumatica ERP is assigned the **Deleted** status. If the email is restored to an active mail folder, its status in Acumatica ERP returns to **Processed**. If the email is permanently deleted in Outlook, it is also permanently deleted in Acumatica ERP.

## Task Deletion and Restoration

For tasks, restoration results in a new Acumatica ERP task rather than restoration of the previously deleted task.

If you delete a synchronized task in Acumatica ERP, synchronization deletes the corresponding task in Outlook and moves it to Deleted Items. If the task is later restored from Deleted Items, synchronization creates a new task in Acumatica ERP.

The same behavior applies when the deletion starts in Outlook. When the task is deleted in Outlook, the corresponding task is deleted in Acumatica ERP. If the Outlook task is subsequently restored, a new task is created in Acumatica ERP.

If the Outlook task is permanently deleted after the corresponding task has already been deleted in Acumatica ERP, no additional action is required.

## Event Deletion and Restoration

For events, as for tasks, restoring a deleted Microsoft 365 item results in the creation of a new record in Acumatica ERP.

If you delete an event in Acumatica ERP, synchronization deletes the corresponding Outlook event and moves it to Deleted Items. If the event is subsequently restored in Outlook, synchronization creates a new event in Acumatica ERP.

If an event is deleted in Outlook, the corresponding event is deleted in Acumatica ERP. If the Outlook event is then restored, a new event is created in Acumatica ERP.

If the event is permanently deleted from Outlook after its corresponding Acumatica ERP event has already been deleted, no additional action is required.

## Canceled Events

Cancellation is handled differently from ordinary event deletion.

If you change the status of an event to **Canceled** in Acumatica ERP, synchronization cancels the corresponding event in Outlook. In Outlook, canceling the event also deletes it and moves it to Deleted Items. The event remains in Acumatica ERP with the **Canceled** status.

If the canceled event is permanently deleted from Deleted Items in Outlook, the corresponding canceled event isn't deleted from Acumatica ERP.

If the event is restored from Deleted Items in Outlook, synchronization creates a new event in Acumatica ERP.

If you change the status of the canceled event in Acumatica ERP from **Canceled** back to **Open**, the event is created again in Outlook.

The corresponding behavior applies when an event is canceled in Outlook. After synchronization, the event in Acumatica ERP has the **Canceled** status. If the Outlook event is permanently deleted, the canceled event remains in Acumatica ERP. If the Outlook event is restored, synchronization creates a new event in Acumatica ERP.

## Contact Deletion

Contact deletion doesn't follow the deletion and restoration behavior of emails, tasks, and events.

If a synchronized contact is deleted in Outlook, the corresponding contact isn't deleted in Acumatica ERP. Instead, the contact is made inactive.

The specification doesn't define how restoring the contact in Outlook affects the inactive contact in Acumatica ERP, or whether permanently deleting the Outlook contact results in any additional change. These cases should be confirmed before they are documented.

**Parent topic:**[Microsoft Graph Integration: Overview](../UserGuide/EM__MS_365_Overview.md)

