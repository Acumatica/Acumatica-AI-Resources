# Configuration of Callbacks {#_417ca500-35a1-4f3d-9d76-e64a198126af .concept}

Events are generated on the server side of your application when the client side requests data or posts changes made by a user. When the client posts data to the server, the client is initiating a callback to the server. Callbacks are initiated in the following cases:

-   Focus is lost for an input control with the CommitChanges property set to True.
-   Focus is lost for a grid column with the CommitChanges property set to True.
-   A user finishes editing a row in a grid by proceeding to the next row or by pressing Ctrl+Enter on the keyboard.
-   A user clicks a button with the CommitChanges property set to True, which is the default value.

By default, an Acumatica Framework form executes a callback when a user clicks one of the buttons on the form toolbar and when a user changes the value in a key field. You can also enable a callback for any input control by setting the CommitChanges property to True in the ASPX page. By default, the callback of an input control is off, so when a user changes a value in some field and shifts the focus away from it, the browser does not post anything to the server; it does, however, keep the change in memory.

When a callback is triggered, the client posts all the data from the whole form that has been modified since the last callback.

For information on how to configure the callback on a control, see [To Enable Callback for a Control](CW__how_Enable_Callback.md). For details on how to configure the callback for a button, see [Action Definition: General Information](CodeCustomization_ActionsDefinition_GeneralInfo.md).

**Parent topic:**[Configuring the ASPX Page](../StudioDeveloperGuide/CW__mng_Configuring_Page.md)

