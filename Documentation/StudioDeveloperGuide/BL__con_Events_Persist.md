# Sequence of Events: Saving of Changes to the Database {#_e08a2496-d5fc-416a-966c-4a8b6332345c .concept}

The following figure illustrates the sequence of events that are raised when a data record is saved.

![](Images/Ref_Events_Persist.png "Save (commit) of a data record to the database")

While a user is inserting, updating, or deleting a data record, no changes are committed to the database. The system stores the modified data records in the session, and you can access them through the appropriate PXCache object. The system commits the changes to the database when the user clicks **Save** in the user interface, the save request is sent through the Web Service API, or `Actions.PressSave()` is invoked on the business logic controller \(BLC\) instance. In both cases, the [Persist\(\)](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=198bc715-56b2-37c5-895f-fd136023c404) method of the graph is invoked. The Actions.PressSave\(\) method additionally checks that the Save action exists in the graph and is enabled. The Save action then invokes the Persist\(\) method.

When changes are saved to the database, events are raised as follows:

1.  `RowPersisting` is raised. At this moment, a database transaction has already been opened. If any of the handlers sets `e.Cancel` to *true*, the process will be canceled for the currently processed data record without an error being reported to the user. To cancel the process of committing changes and indicate the error to the user, you should throw the PXException exception.
2.  If `e.Cancel` does not equal *true*:
    1.  `RowPersisted` is raised. The commit operation for the current data record \(available through `e.Row` in the handler\) is completed, but the transaction is still open: `e.TranStatus` equals `Open`.
    2.  `RowPersisted` is raised one more time, either with `e.TranStatus` equal to *Completed* \(if all changes have been saved successfully\) or with `e.TranStatus` equal to *Aborted* if an error has occurred and all changes have been canceled.

**Parent topic:**[Working with Events](../StudioDeveloperGuide/BL__mng_Working_With_Events.md)

