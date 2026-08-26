# Requests for User Confirmation {#_c4473abb-d197-470d-8e88-de42ce9dbd78 .concept}

If you want to display a dialog box that requests confirmation from the user, you should use the Ask\(\) method of a data view.

For example, if you need the user to confirm that deletion should occur, you should invoke the Ask\(\) method in the RowDeleting event handler for the data record that the user is trying to delete.

```
if (ShipmentLines.Ask("Confirm Delete",
                      "Are you sure?",
                       MessageButtons.YesNo) != WebDialogResult.Yes)
{
    e.Cancel = true;
}
```

For details on the deletion process, see [Sequence of Events: Deletion of a Data Record](BL__con_Events_Delete.md).

You can use the Ask\(\) method of a data view everywhere \(that is, not only in RowDeleting\) to display the dialog box requesting the user's confirmation to continue. If the Ask\(\) method is used in an event handler, the event handler will be called twice. The first time, the event handler is interrupted on Ask\(\) invocation, and the dialog box is displayed. The second time, after the dialog box is closed, the Ask\(\) method indicates which button has been clicked, and execution continues.

**Parent topic:**[Configuring the UI from the Backend](../StudioDeveloperGuide/BL__mng_Configuring_UI_from_Back_End.md)

