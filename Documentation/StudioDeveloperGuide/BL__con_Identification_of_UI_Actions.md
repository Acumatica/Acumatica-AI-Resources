# Determination of Whether an Action Was Initiated in the UI {#_5b99d9d1-3d36-49fc-8583-d400d30c6f9e .concept}

In the RowInserting, RowInserted, RowUpdating, RowUpdated, RowDeleting, and RowDeleted event handlers, you can check whether the action was initiated in the UI. You should use the ExternalCall property of the event arguments for this.

The ExternalCall property returns true if the deletion has been initialized in the UI or through the web services APIs. If you do not need to invoke particular logic for data modifications made in code \(such as the removal of a record\), you can exit the method if the ExternalCall property is false as follows.

```
if (!e.ExternalCall) return;
```

**Parent topic:**[Configuring the UI from the Backend](../StudioDeveloperGuide/BL__mng_Configuring_UI_from_Back_End.md)

