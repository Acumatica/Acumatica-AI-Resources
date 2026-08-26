# container {#_b6aaf8be-e7f3-4206-a721-65853a9f2d32 .concept}

An object that maps a form container to the mobile app. The object can include fields, actions, nested containers, and other elements.

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|AttachmentsControlPriority|The priority value that defines the position of the attachments in the list. **Note:** This attribute is deprecated. Now the attachments icon is displayed on the top toolbar of the app screen. For details, see [Configuring Attachments](mobile_msdl_screen_attachements.md).

|
|Attributes|An indicator of whether this container holds entity attributes. If the indicator value is *true*, you should not specify the items of the container, because the container configuration is generated dynamically.|
|ContainerActionsToExpand|The number of containerAction objects to be visible in the bottom part of the list screen. The default value depends on the platform of the particular mobile device running the app.**Note:** Setting `ContainerActionsToExpand = 1` for a container will cause the action corresponding to the containerAction object that is defined first to be displayed as a button in the bottom part of the corresponding screen.

|
|DisplayName|The name of the container on the UI.|
|FieldsToShow|The number of fields to be displayed in the list.|
|FormActionsToExpand|The number of recordAction objects to be visible in the toolbar on the editing screen. The default value depends on the platform of particular mobile device running the app.|
|ListActionsToExpand|The number of listAction and selectionAction objects to be visible in the bottom part of the list screen when the multiple selection of records is activated. The default value depends on the platform of the particular mobile device running the app.**Note:** Setting `ListActionsToExpand = 1` for a container will cause the action corresponding to the listAction or selectionAction object that is defined first to be displayed as a button in the bottom part of the corresponding screen.

|
|Type|An optional attribute that specifies the type of the container. The possible values are the following:-   *SelectionList*, which is used for a container that is displayed as a list of records. When this type is specified, a user can select records individually but can't do the following in the resulting list:

    -   Select all records
    -   Clear all selected records
See [Providing a Selection List](Mobile_msdl_screen_configure_selection_list.md) for details.

-   *SelectionActionList*, which is used for a listAction object. See [Example: Configuring a Screen with Many-to-One \(Master-Detail\) Containers](mobile_msdl_screen_nested.md#_1e07d417-e059-447d-a693-fb06a87b4850) or [listAction](mobile_ref_msdl_objtypes_lista.md) for details.

|
|Visible|An indicator of whether the link to the container is visible on the editing screen. This attribute can be applied to a secondary container. By default, the value is *true*.|
|includeDialogActions|An indicator of whether the container includes actions for a smart panel. The attribute can be used only for a container object inside the dialog object. For details, see [dialog](MOBILE_Ref_MSDL_ObjType_dialog.md).|

## Example { .section}

In the following example, a container with two fields is added.

```
add container "OrdersToApply" {    
    fieldsToShow = 2       
    add field "AppliedToOrder" {      
        listPriority = 90    
    }    
    add field "NoteText" {      
        textType = PlainMultiLine    
    }    
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

