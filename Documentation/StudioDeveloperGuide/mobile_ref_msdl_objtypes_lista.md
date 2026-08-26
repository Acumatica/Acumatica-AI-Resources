# listAction {#_991ea6af-5514-47cd-8b78-3ee089ac70b7 .concept}

**Note:** This object type is deprecated.

In the mobile site map, an object that defines the appearance and behavior of an action that is performed on the data records selected in the list. Such an action is displayed only on the list view. You can use this object if the implementation of the action in Acumatica ERP supports the processing of multiple records. Then if the user has selected multiple records in the list, the action is applied at once to all the rows selected in the list.

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|After|The behavior of the current container after the action is completed. The value can be one of the following:

 -   *Refresh*: The current container should be refreshed after the action is completed.
-   *Close*: The current container should be closed after the action is completed.

 If the Redirect attribute of the sm:Action tag is set to *true*, the After attribute of this object defines more complex behavior for the current container. See [Redirecting to Different Screens and Containers](MOBILE_Redirects.md) for details.

|
|Behavior|Required. The behavior of the action—which defines how the mobile app obtains from the server the data resulting from the action and processes this data. The value can be one of the following:

 -   *Cancel*: Discards the unsaved changes. You must declare the action if it is present in the WSDL.
-   *Create*: Creates a new data record. If the Redirect attribute value is *true*, this action redirects the user to a container defined on a different screen.
-   *Delete*: Deletes the data record.
-   *Open*: Opens the data record for editing on a different screen. If the Redirect attribute value is *true*, this action redirects the user to a container defined on a different screen.
-   *Record*: Indicates that the mobile app should expect a single record as the server response.
-   *Save*: Saves the data record.
-   *SignReport*: Indicates that the mobile app should add the **Sign** action to the container. This action is not implemented in Acumatica ERP and uses the specific capabilities of the mobile devices to create the user signature as an image file. The user can save the signature in the database of the Acumatica ERP instance as a file attachment for the appropriate form. See [Creating the User Signature](MOBILE_UserSignature.md) for details.
-   *Void*: Tells the mobile app to not use any records that are returned in the server response.

|
|DisplayName|The name of the action in the UI.|
|Icon|The name of the image that is used to display the action icon on the UI. If this attribute is not specified for an action, the action is displayed on the UI without an icon. See [Icons](MOBILE_Ref_Icons.md) for the possible values and the corresponding images for the Icon attribute.

|
|Priority|The priority value that defines the position of the action on the screen or the toolbar relative to other list actions.|
|Redirect|An indicator of whether the action redirects the user to a container of a screen. You can use this attribute to do the following:-   Allow a redirection defined for the action in Acumatica ERP by setting the attribute to *true*.
-   Deny a redirection defined for the action in Acumatica ERP by setting the attribute to *false*. This is the default setting of the Redirect attribute.
-   Define a new redirection for the action by setting the attribute to *true* and specifying the attributes of this tag to set one of the following as the destination of the redirection:

    -   RedirectToScreen, to redirect to the primary container of the specified screen
    -   RedirectToContainer, to redirect to another container of the current screen
    -   RedirectToScreen and RedirectToContainer, to redirect to a specified container of a specified screen
**Note:** See [Redirecting to Different Screens and Containers](MOBILE_Redirects.md) for more details.


|
|RedirectToContainer|The name of the destination container. The name can consist of the following parts separated by the *$* symbol:-   The name of the container
-   The display type of the container: *List* or *Form* \(default\)
-   The optional name of the additional container whose data is used as a filter

The mobile site map has to include the metadata for this container.|
|RedirectToDialog|The name of the destination complex dialog box \(smart panel\). For details, see [Mapping a Smart Panel](MOBILE_MSDL_Screen_SmartPanels.md).|
|RedirectToScreen|The name of the destination screen. The mobile site map has to include the metadata for this screen.|
|SyncLongOperation|An indicator of whether the mobile app should wait until the action is completed if this action is defined as a PXLongRunOperation one and is executed asynchronously in Acumatica ERP. By default, the SyncLongOperation attribute is set to *false*.**Attention:** The SyncLongOperation attribute will be deprecated in a future release.

|

## Example { .section}

In the following example, an action for processing the list of records is added.

```
add listAction "Process" {
  behavior = Void      
  redirect = True
  syncLongOperation = True
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

