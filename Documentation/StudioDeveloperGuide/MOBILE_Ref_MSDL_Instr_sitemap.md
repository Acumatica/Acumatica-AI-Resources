# sitemap {#_2ed71b43-06cc-4f29-a122-0e10dbdee4fd .concept}

Switches the MSDL interpreter to editing mode of the mobile site map.

*Syntax:*

```
sitemap {}
```

The braces are mandatory. Within the braces, you can add instructions for objects of the main menu of the mobile site map.

*Examples:*

The following code adds the new folder to the main menu, sets the attributes of the folder in the mobile site map \(see [folder](mobile_ref_msdl_objtype_folder.md) for details\), and adds the shortcut for the Expense Receipts \(EP301010\) screen with the specified display name to the folder.

```
sitemap {
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

The code below updates the `ExpenseReceipts` folder of the main menu in the following ways:

-   Switches the MSDL interpreter to editing mode for the mobile site map
-   Changes the display name of the folder
-   Removes the shortcut to the Expense Receipts screen from the folder
-   Adds the shortcut to the Expense Receipts screen to the folder with the specified display name
-   Switches the MSDL interpreter back to editing mode for the content of the mobile site map

```
update folder "ExpenseReceipts" {
    displayName = "New display name"
    remove item "EP301010"
    add item "EP503010" {
      displayName = "Other screen"
    }
}
```

The code above can be executed because it operates with the objects that are created in the previous code example.

**Parent topic:**[Instructions](../StudioDeveloperGuide/MOBILE_Ref_MSDL_Instructions.md)

