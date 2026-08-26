# Removal of a Data Record {#_b33fc498-1d8e-45e2-b662-138452599b9d .concept}

When a user deletes a data record through the user interface, the system calls the Delete\(\) method of the corresponding cache. If you need to delete a data record in code, you should also call the Delete\(\) method of PXCache or of the data view \(which simply calls the Delete\(\) method of PXCache\).

While a data record is being deleted, the cache raises a number of events. Before the RowDeleting and RowDeleted events are triggered, the data record is placed in the cache and assigned the Deleted status or the InsertedDeleted status \(which means that the data record has been inserted but has not yet been saved to the database\). If the delete operation is canceled, the data record will revert to the previous state and the RowDeleted event will not be raised.

The sequence of events raised during the deletion of a data record is shown in [Sequence of Events: Deletion of a Data Record](BL__con_Events_Delete.md).

**Parent topic:**[Working with Events](../StudioDeveloperGuide/BL__mng_Working_With_Events.md)

