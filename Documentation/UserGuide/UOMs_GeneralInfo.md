# Units of Measure: General Information {#_0b5677b4-e4a0-4b08-adc4-62a12d516c4e .concept}

Some inventory items can be purchased, tracked, or sold by your company in multiple ways: by the piece, or in storage containers into which they have been packaged. Storage containers can include boxes, packages, or crates. In Acumatica ERP, you can define and maintain any number of different units of measure \(UOMs\) to account for and express these quantities of the items. You can also define conversion rules, so that for different UOMs of the same items, the system can calculate the prices of items to your specifications.

Some units of measure apply to many items and, as such, are defined at the system level. Other units of measure are used only for particular items or for item classes \(which group similar items\). In Acumatica ERP, you can define UOMs and conversion rules at all of these levels, as described in the following sections.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Create units of measure that can be used system-wide
-   Create conversion rules for system-wide units of measure

## Applicable Scenarios { .section}

You create system-wide units of measure in the following cases:

-   You are initially configuring inventory in Acumatica ERP.
-   You need to measure stock items in specific units that are not defined among the system-wide UOMs.

## System-Wide Units of Measure { .section}

When you deploy a tenant from scratch, the tenant already contains predefined units of measure, which you can view on the [Units of Measure](CS_20_35_00.md) \(CS203500\) form. If you need to define additional units of measure, you use the same form. Units of measure defined on this form can be used system-wide, for example, for all inventory items and item classes.

For each UOM, you can also specify how this unit is converted to units already defined in the table, if applicable. For more information on conversion rules, see [Conversion Rules](#_acc02a9f-a7a2-4c9e-aeb2-34611b38a72b).

In addition to system-wide UOMs, you can create UOMs when you are creating an item class or inventory item. For details, see [UOMs for Item Classes and Stock Items](#_005ac844-6b2d-4e09-b509-f0b24a053e46).

## UOMs for Item Classes and Stock Items {#_005ac844-6b2d-4e09-b509-f0b24a053e46 .section}

You specify UOMs for item classes or stock items in the **Units of Measure** section of the **General** tab on the [Item Classes](IN_20_10_00.md) \(IN201000\) or [Stock Items](IN_20_25_00.md) \(IN202500\) form, respectively. The UOMs specified in the settings of an item class are copied to the corresponding boxes of a new stock item of this class created on the [Stock Items](IN_20_25_00.md) form. For both item classes and stock items, you can select system-wide UOMs or type new item class-specific or item-specific UOMs.

**Attention:**

-   New UOMs added on the [Item Classes](IN_20_10_00.md) form are not copied automatically to the [Units of Measure](CS_20_35_00.md) \(CS203500\) form. If you want to use these units globally, you must manually add the units to the [Units of Measure](CS_20_35_00.md) form.
-   New UOMs added by using the [Stock Items](IN_20_25_00.md) form are copied automatically to the [Units of Measure](CS_20_35_00.md) form.

If the *Multiple Units of Measure* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, for each item class defined on the [Item Classes](IN_20_10_00.md) form and for each stock item defined on the [Stock Items](IN_20_25_00.md) form, you can specify the following units:

-   **Base Unit** \(required\): The unit of measure used to calculate unit costs and to maintain availability data for stock items \(that is, the system counts the quantities of each stock item at warehouses by using the UOM specified as its base unit\). For recommendations on selecting base units, see [Stock Items: Units of Measure](Stock_Items_UOMs.md).
-   **Sales Unit** \(optional\): The unit of measure typically used when your company sells the item.
-   **Purchase Unit** \(optional\): The unit of measure typically used when your company purchases the item.

**Attention:** If you need to change any UOM of an item class or item, make sure that rules for conversion between the current and new UOM are specified on the [Units of Measure](CS_20_35_00.md) \(for system-wide units\), [Item Classes](IN_20_10_00.md) \(for item class-specific units\), or [Stock Items](IN_20_25_00.md) \(for item-specific units\) form before you use the item with the new UOM in any new transaction.

If the *Multiple Units of Measure* feature is not enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you can specify only base units for item classes and for individual stock items.

When you enter a sales transaction and specify the quantity and UOM of the inventory item, the system converts the specified UOM to the base unit for cost-of-sold-goods calculation and to the default sales unit for finding the proper price \(or to any other unit of the item for which a price can be found\).

For stock items, you can configure units of measure \(UOMs\) for items that can be measured only in quantities that are integers. This helps to eliminate the number of errors in inventory, sales, and purchase documents. For more information, see [Stock Items: Units of Measure That Are Not Divisible](Stock_Items_Not_Divisible_UOMs.md).

For more information about UOMs for stock items, see [Stock Items: Units of Measure](Stock_Items_UOMs.md).

## Conversion Rules {#_acc02a9f-a7a2-4c9e-aeb2-34611b38a72b .section}

If the same item can be measured in multiple UOMs, you should define conversion rules between these UOMs so that the system can recalculate item quantities to the base UOM of the item. For system-wide UOMs, you add conversion rules to the settings of a unit on the [Units of Measure](../Shared/../UserGuide/CS_20_35_00.md) \(CS203500\) form. If you specify different UOMs for base, sales, and purchase units for an item on the [Stock Items](../Shared/../UserGuide/IN_20_25_00.md) \(IN202500\) form, you need to add conversion rules for the sales and purchase UOMs with respect to the base UOM on this form.

**Tip:** You define conversion rules similarly for a non-stock item on the [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) \(IN202000\) form.

Before you define conversion rules for UOMs, you must make sure that the decimal precision of the base currency in the **Base Currency ID** box on the [Currencies](../Shared/../UserGuide/CM_20_20_00.md) \(CM202000\) form corresponds to your organization's rounding policy for your base currency. You can click the base currency ID to open its settings on the [Currencies](../Shared/../UserGuide/CM_20_20_00.md) \(CM202000\) form and view the value in the **Decimal Precision** box.

In conversion rules, you use the operations of multiplication and division and the conversion factor, which is a number the system uses to convert one UOM to another UOM. For example, suppose that your organization purchases bottled lemonade in crates and sells lemonade by boxes and crates. The base UOM for lemonade is *BOTTLE*. The *BOX* UOM contains 10 bottles. The *CRATE* UOM includes six boxes or 60 bottles. The conversion rules between these UOMs are listed in the following table.

|UOM|To Unit|Multiply/Divide|Conversion Factor|
|---|-------|---------------|-----------------|
|*BOX*|*BOTTLE*|*Multiply*|`10`|
|*CRATE*|*BOTTLE*|*Multiply*|`60`|
|*CRATE*|*BOX*|*Multiply*|`6`|

The conversion rules are not reversible—that is, the system cannot use the rule in the first row of the table above to recalculate the quantity specified in bottles to the quantity specified in crates. To convert bottles to boxes and crates, you need to add the conversion rules listed in the following table.

|UOM|To Unit|Multiply/Divide|Conversion Factor|
|---|-------|---------------|-----------------|
|*BOTTLE*|*BOX*|*Divide*|`10`|
|*BOTTLE*|*CRATE*|*Divide*|`60`|

**Parent topic:**[Creating Units of Measure](../UserGuide/UOMs_Mapref.md)

