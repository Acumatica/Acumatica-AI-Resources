# Incremental Synchronization and Conflict Resolution

During the initial synchronization with Microsoft 365, Acumatica ERP synchronizes the applicable emails, contacts, tasks, and events. After the initial synchronization is complete, Microsoft Graph delta queries are used to identify subsequent changes.

Acumatica ERP also keeps identifying and version information for synchronized items. This information helps Acumatica ERP determine whether an item has changed since the preceding synchronization and whether corresponding records have been changed in both Acumatica ERP and Microsoft 365.

If both versions have changed, the **Conflict Resolution Priority** setting of the [Exchange Integration Policies](SM_20_40_10.md) \(SM204010\) form determines how the conflict is resolved.

## Identification of Synchronized Items

Microsoft Graph integration provides information that Acumatica ERP can use to identify synchronized items and track their versions. The information used for this purpose includes the item's ID, ChangeKey, and last-modified timestamp.

The following information has a different role in synchronization:

|Information|Role in synchronization|
|-----------|-----------------------|
|ID|Identifies the Microsoft Graph item that corresponds to a synchronized record in Acumatica ERP.|
|ChangeKey|Identifies the version of the Microsoft Graph item. The value changes when the item is modified.|
|Last-modified timestamp|Indicates when the item was last changed and is used for incremental synchronization and conflict resolution.|

For emails, contacts, and events, Acumatica ERP requests an immutable Microsoft Graph ID so that the ID continues to identify the same item when it is moved between containers, such as mail or contact folders. The specification doesn't describe the same immutable-ID behavior for Microsoft To Do tasks.

The ChangeKey received during the preceding import is retained for comparison during a later synchronization. If the ID still identifies the same item but its ChangeKey has changed, Acumatica ERP can determine that the Microsoft 365 version has been modified.

## Incremental Synchronization

After the initial synchronization, Acumatica ERP uses Microsoft Graph delta queries for subsequent synchronizations.

A delta query returns changes that have occurred since the preceding synchronization instead of requiring Acumatica ERP to retrieve all items again. Depending on the entity, these changes can include items that have been added, updated, or deleted.

Microsoft Graph uses a delta link as a checkpoint for the synchronization. This lets a subsequent synchronization continue from the point reached by the preceding one.

Delta queries are used for the following Microsoft 365 entities:

|Entity|Items tracked by delta synchronization|
|------|--------------------------------------|
|Email|Messages in the applicable mail folder|
|Contact|Contacts in the applicable contact folder|
|Task|Tasks in a Microsoft To Do list|
|Task list|Microsoft To Do lists|
|Event|Calendar events|

Using incremental synchronization reduces the amount of data that must be retrieved and processed after the initial synchronization, particularly for mailboxes and other collections that contain many items.

Deletion requires additional handling because a delta query doesn't always provide enough information to distinguish a restored item from one that has been permanently deleted. For details, see [Deletion and Restoration](EM__MS_365_Deletion_and_Restoration_Concept.md).

## Detection of Conflicting Changes

A conflict can occur with bidirectional synchronization when the corresponding record is changed in both Acumatica ERP and Microsoft 365 between synchronizations.

To identify a conflict, Acumatica ERP compares the identifying and version information for the corresponding records. The Microsoft Graph ID identifies the item, while the ChangeKey indicates whether its Microsoft 365 version has changed since the preceding synchronization.

If the IDs match but the ChangeKey values differ, Acumatica ERP treats the records as conflicting versions of the same item.

For conflict-resolution options that depend on which version was modified most recently, Acumatica ERP also uses the last-modified information maintained for the synchronized records.

## Conflict Resolution Priority

The **Conflict Resolution Priority** setting of the [Exchange Integration Policies](SM_20_40_10.md) \(SM204010\) form determines how Acumatica ERP resolves a conflict during bidirectional synchronization.

The following options are available.

|Setting|Result|
|-------|------|
|**System**|The Acumatica ERP version is retained, and the corresponding record in Microsoft 365 is overwritten with the Acumatica ERP data.|
|**Exchange**|The Microsoft 365 version is retained, and the corresponding record in Acumatica ERP is overwritten with the Microsoft 365 data.|
|**Keep Both**|Both versions are retained. Acumatica ERP creates a duplicate so that the Acumatica ERP and Microsoft 365 versions can both be synchronized.|
|**Last Updated**|The version modified most recently takes precedence.|

## Relationship Between Incremental Synchronization and Conflicts

Incremental synchronization and conflict resolution serve different but related purposes. Incremental synchronization determines **which Microsoft 365 items have changed** since the preceding synchronization. The identifying and version information associated with a synchronized item helps determine **whether corresponding versions have changed**. If the same record has been changed in both systems, the conflict-resolution setting determines **which data is retained**.

Together, these mechanisms allow subsequent synchronizations to process changes without repeating the complete initial synchronization while applying the configured conflict-resolution rule when changes overlap.

**Parent topic:**[Microsoft Graph Integration: Overview](../UserGuide/EM__MS_365_Overview.md)

