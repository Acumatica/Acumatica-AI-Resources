# placeAt {#_58fa38fa-1a12-4bf7-a7e8-ad23d7a2b29e .concept}

In the mobile site map, moves the object that is referenced in the outer scope of this instruction to the specified position in the same parent object of the mobile site map.

*Syntax:*

```
placeAt positionNumber
```

*Parameter:*

-   positionNumber: The non-negative integer value that specifies the number of the target position in the parent object.

*Example:*

Suppose that you need to add a shortcut to the Expense Receipts \(EP301010\) screen to the first position in the `ExpenseReceipts` folder of the main menu and change the display name of the shortcut. You can add the following code within the sitemap instruction.

```
update folder "ExpenseReceipts" {
    add item "EP301010" {      
        displayName = "Expense Receipts"
        placeAt 0
    }
}
```

**Parent topic:**[Instructions](../StudioDeveloperGuide/MOBILE_Ref_MSDL_Instructions.md)

