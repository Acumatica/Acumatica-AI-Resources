# folder {#_24d31513-bdb0-48df-9be7-c8ae721edb19 .concept}

An object of the site map of the mobile app that can hold multiple folders and screen shortcuts.

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|DisplayName|The name of the folder in the UI.|
|Icon|The name of the image that is used to display the folder icon on the main menu \(and on the sidebar menu, if specified\) of the mobile application. This attribute is optional; if this attribute is not specified for a folder, the folder is displayed in the UI without an icon. See the possible values and the corresponding images for the Icon attribute in [Icons](MOBILE_Ref_Icons.md).

|
|IsDefaultFavorite|An indicator of whether a link for the folder is added to the sidebar menu as a favorite folder. If the attribute is set to *True*, a link is added to the sidebar menu. By default, this attribute is set to *False*.|
|Type|The type of the folder \(that is, the way it is displayed and used\), which is one of the following values:-   *ListFolder*: An indicator that the folder contents are displayed as tiles.
-   *HubFolder*: An indicator that the folder contents are displayed as pages that the user navigates by swiping.

|

## Example { .section}

In the following example, a new folder containing the Expense Rexeipts \(EP301010\) screen is added to the mobile site map. The added folder will also appear in the sidebar menu of the mobile app.

```
add folder "ExpenseReceipts" {    
    type = HubFolder    
    isDefaultFavorite = True    
    displayName = "Expense Receipts"    
    icon = "system://NewsPaper"    
    add item "EP301010" {      
        displayName = "Expense Receipts"    
    }  
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

