# &lt;sm:Action&gt; {#_6231463f-1c26-429d-84b2-d9b2e2f66915 .concept}

The sm:Action tag has the following attributes.

|Attribute|Description|
|---------|-----------|
|After|The behavior of the current container after the action is completed. The value can be one of the following:

 -   *Refresh*: An indicator that the current container is refreshed after the action is completed.
-   *Close*: An indicator that the current container is closed after the action is completed.

 If the Redirect attribute of the sm:Action tag is set to *true*, the After attribute of this tag defines more complex behavior of the current container. See [Redirecting to Different Screens and Containers](MOBILE_Redirects.md) for details.

|
|Behavior|Required. The behavior of the action—which defines how the mobile app obtains from the server the data resulting from the action and processes this data. The value can be one of the following:

 -   *Cancel*: The action that discards the unsaved changes. You must declare the action if it is present in the WSDL.
-   *Create*: The action that creates a new data record. If the Redirect attribute value is *true*, the action redirects the user to a container defined on a different screen.
-   *Delete*: The action that deletes the data record.
-   *Open*: The action that opens the data record for editing from a different screen. If the Redirect attribute value is *true*, the action redirects the user to a container defined on a different screen.
-   *Record*: The type of behavior that is a hint for the mobile app to expect a single record as the server response.
-   *Save*: The action that saves the data record.
-   *SignReport*: An indicator that the mobile app should add the **SIGN** action to the container. This action is not implemented in Acumatica ERP and uses specific capabilities of mobile devices to create the user signature as an image file. The user can save the signature in the database of the Acumatica ERP instance as a file attachment for the appropriate form. See [Creating the User Signature](MOBILE_UserSignature.md) for details.
-   *Void*: The type of behavior that is a hint for the mobile app to do not use any records that are returned in the server response.

|
|Context|Required. The context of the action—that is, what the action is performed on. The value can be one of the following:

 -   *Container*: The action that is related to a container and performs the business logic implemented in Acumatica ERP. Such an action is displayed only on the list view.
-   *List*: The action that is performed on the data records selected in the list. Such an action is displayed only on the list view. You can use this value if the implementation of the action in Acumatica ERP supports processing of multiple records. Then if the user has selected multiple records in the list, the action is applied at once to all the rows selected in the list.
-   *Record*: The action that is performed on the current data record. Such an action is displayed only on the form view.
-   *Selection*: The action that is performed on the data records selected in the list. Such an action is displayed only on the list view. If the user has selected multiple records in the list, the action is applied successively to each selected record.

|
|DisplayName|The name of the action in the UI.|
|Icon|The name of the image that is used to display the action icon on the UI. This attribute is optional. If this attribute is not specified for an action, the action is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in [Icons](MOBILE_Ref_Icons.md).|
|Name|The action identifier, as found in the WSDL schema.|
|Priority|The priority value that defines the position of the action on the screen or the toolbar, depending on the Context value of this tag.|
|Redirect|An indicator of whether the action redirects the user to a container of a screen. You can use this attribute to do the following:-   Allow a redirection defined for the action in Acumatica ERP by setting the attribute to *true*.
-   Deny a redirection defined for the action in Acumatica ERP by setting the attribute to *false*. This is the default setting of the Redirect attribute.
-   Define a new redirection for the action by setting the attribute to *true* and specifying the attributes of this tag to set the following destination of the redirection:

    -   RedirectToScreen, to redirect to the primary container of the specified screen
    -   RedirectToContainer, to redirect to another container of the current screen
    -   RedirectToScreen and RedirectToContainer, to redirect to a specified container of a specified screen
**Note:** See [Redirecting to Different Screens and Containers](MOBILE_Redirects.md) for more details.


|
|RedirectToContainer|The name of the destination container. The name can consist of the following parts separated by the *$* sign:-   The name of the container
-   The display type of the container: *List* or *Form* \(default\)
-   Optional: The name of the additional container whose data is used as a filter

The mobile site map has to include the metadata for this container.|
|RedirectToScreen|The name of the destination screen. The mobile site map has to include the metadata for this screen.|
|SyncLongOperation|An indicator of whether the mobile app should wait until the action is completed if this action is defined as a PXLongRunOperation one and is executed asynchronously in Acumatica ERP. By default, the SyncLongOperation attribute is set to *false*.|

**Parent topic:**[XML Tags](../StudioDeveloperGuide/MOBILE_Ref_Tags.md)

