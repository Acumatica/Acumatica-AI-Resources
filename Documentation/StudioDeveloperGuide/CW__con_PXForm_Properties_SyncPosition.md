# Use of the SyncPosition Property of PXGrid {#_a0f8f9e9-7997-4325-bc69-b58039dd3699 .concept}

If a form contains a grid and the form toolbar includes an action to process a single record that is highlighted in the grid, the action delegate method must have a reference to the highlighted record in the cache.

To use the Current property of a PXCache object to access the record highlighted in a grid, the Current property must be synchronized with record highlighting in the grid. To force the system to provide this synchronization, you have to set the SyncPosition property of the PXGrid container to *True*.

**Parent topic:**[Configuring Tables](../StudioDeveloperGuide/CW__mng_Configuring_Tables.md)

