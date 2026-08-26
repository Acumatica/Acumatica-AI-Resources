# Printers: Configuration of Printer Access {#_4f9c4e38-7dfb-44a1-9a7f-920928772ca4 .concept}

Configuring restrictions for printer access is crucial for a company to maintain data security and manage resources efficiently. On the [Printer Access](../UserGuide/SM_10_60_00.md) \(SM106000\) and [Restriction Groups by Printer](../UserGuide/SM_10_60_01.md) \(SM106001\) forms, you can create restriction groups for managing the visibility of printers to users.

For more information on restriction groups, see [Configuration of Restriction Groups](../UserGuide/RS__con_Configuration_Restriction_Groups.md).

## Adding a Restriction Group { .section}

To add a new restriction group for printers, you add a new record on the [Printer Access](../UserGuide/SM_10_60_00.md) \(SM106000\) form. You specify the name of the new group in the **Group Name** box and select the group type. Depending on the group type, you will restrict the printer access either to all users in the group or to all users outside the group. For more information about the restriction group types, see [Types of Restriction Groups](../UserGuide/SM__con_Types_of_Restriction_Groups.md).

On the **Users** tab, you select the unlabeled check box in the row of each user to be added to the group. On the **Printers** tab, you select the unlabeled check box in the row of each printer to be added to the group. You then save your changes.

## Configuring Restriction Groups by Printer { .section}

You can assign existing restriction groups to printers on the [Restriction Groups by Printer](../UserGuide/SM_10_60_01.md) \(SM106001\) form. To do so, you open the form, and in the **Printer** box of the Summary area, select the printer for which you want to configure restriction groups. Then you select the check box in the unlabeled column for each restriction group to which you want to add this printer, and clear the check box for each restriction group from which you want to exclude this printer.

**Parent topic:**[Configuring Printers](../ImplementationGuide/Config_Printers_DeviceHub_Mapref.md)

