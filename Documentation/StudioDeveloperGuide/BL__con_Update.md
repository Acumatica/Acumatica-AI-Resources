# Update of a Data Record {#_d648f7e1-6680-4252-9a41-2ed03e48ca0a .concept}

When you modify a data record in code, you should update the data record in the cache by calling the Update\(\) method of the data view or cache. When the user modifies data fields in the UI and the modifications are committed to the server, the Update\(\) method is called automatically.

During the execution of the Update\(\) method, the cache raises a number of events: first the field-level events, and then the row-level events. During the update process, you have access to the modified version of the data record through the NewRow property of event arguments in RowUpdating event handlers or the Row property in other event handlers.

**Note:** In a FieldUpdated event handler, you can modify a field of the data record passed as e.Row. In this case, you do not have to call the Update\(\) method; if you do, an infinite loop will occur.

For details on the order in which events are executed during update of a data record, see [Sequence of Events: Update of a Data Record](BL__con_Events_Update.md).

**Parent topic:**[Working with Events](../StudioDeveloperGuide/BL__mng_Working_With_Events.md)

