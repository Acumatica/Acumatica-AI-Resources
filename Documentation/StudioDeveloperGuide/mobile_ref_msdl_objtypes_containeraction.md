# containerAction {#_b1bf6034-920e-4964-a6d8-5c611624e92c .concept}

In the mobile site map, an object that defines the appearance and behavior of an action that is related to a container and performs the business logic implemented in Acumatica ERP. This type of action is displayed only on the list view.

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|After|The behavior of the current container after the action is completed. The value can be one of the following:

 -   *Refresh*: The current container should be refreshed after the action is completed.
-   *Close*: The current container should be closed after the action is completed.

 If the Redirect attribute of an action object is set to *true*, the After attribute of this object defines more complex behavior for the current container. See [Redirecting the User to Different Screens and Containers](mobile_msdl_screen_redirection.md) for details.

|
|Behavior|Required. The behavior of the action—which defines how the mobile app obtains from the server the data resulting from the action and processes this data. The value can be one of the following:

 -   *Create*: Creates a new data record. If the Redirect attribute value is *true*, this action redirects the user to a container defined on a different screen.
-   *Open*: Opens the data record for editing on a different screen. If the Redirect attribute value is *true*, this action redirects the user to a container defined on a different screen.
-   *Record*: Indicates that the mobile app should to expect a single record as the server response.
-   *SignReport*: Indicates that the mobile app should add the **Sign** action to the container. This action is not implemented in Acumatica ERP and uses the specific capabilities of the mobile devices to create the user signature as an image file. The user can save the signature in the database of the Acumatica ERP instance as a file attachment for the appropriate form. See [Creating the User Signature](MOBILE_UserSignature.md) for details.
-   *Void*: Tells the mobile app to not use any records that are returned in the server response.

|
|DisplayName|The name of the action in the UI.|
|Icon|The name of the image that is used to display the action icon on the UI. If this attribute is not specified for an action, the action is displayed on the UI without an icon. See [Icons](MOBILE_Ref_Icons.md) for the possible values and the corresponding images for the Icon attribute.

|
|Priority|The priority value that defines the position of the action on the screen or the toolbar relative to other container actions.|
|Redirect|An indicator of whether the action redirects the user to a container of a screen. You can use this attribute to do the following:-   Allow a redirection defined for the action in Acumatica ERP by setting the attribute to *true*.
-   Deny a redirection defined for the action in Acumatica ERP by setting the attribute to *false*. This is the default setting of the Redirect attribute.
-   Define a new redirection for the action by setting the attribute to *true* and specifying the attributes of this tag to set one of the following as the destination of the redirection:

    -   RedirectToScreen, to redirect to the primary container of the specified screen
    -   RedirectToContainer, to redirect to another container of the current screen
    -   RedirectToScreen and RedirectToContainer, to redirect to a specified container of a specified screen
**Note:** See [Redirecting the User to Different Screens and Containers](mobile_msdl_screen_redirection.md) for more details.


|
|RedirectToContainer|The name of the destination container. The name can consist of the following parts separated by the *$* symbol:-   The name of the container
-   The display type of the container: *List* or *Form* \(default\)
-   The optional name of the additional container whose data is used as a filter

The mobile site map has to include the metadata for this container.For details, see [Redirecting the User to Different Screens and Containers](mobile_msdl_screen_redirection.md).

|
|RedirectToDialog|The name of the complex dialog box \(smart panel\) that is the destination. For details, see [Mapping a Smart Panel](MOBILE_MSDL_Screen_SmartPanels.md).|
|RedirectToScreen|The name of the destination screen. The mobile site map has to include the metadata for this screen. For details, see [Redirecting the User to Different Screens and Containers](mobile_msdl_screen_redirection.md).|
|SyncLongOperation|An indicator of whether the mobile app should wait until the action is completed if this action is defined as a PXLongRunOperation one and is executed asynchronously in Acumatica ERP. By default, the SyncLongOperation attribute is set to *false*.**Attention:** The SyncLongOperation attribute will be deprecated in a future release.

|

## Example { .section}

In the following example, an action for creating a new record is added.

```
add containerAction "Insert" {      
    icon = "system://Plus"      
    behavior = Create    
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

