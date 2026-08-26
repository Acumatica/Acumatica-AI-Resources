# Stock Items: Units of Measure {#_5921dc97-50ab-4231-9b36-baa5254b32c5 .concept}

When you define each stock item in the system, you should specify the units of measure \(UOMs\) in which the item will be tracked in a warehouse and specified in documents. In the following sections, you can find information about units of measure for stock items.

## UOMs for Stock Items { .section}

If the *Multiple Units of Measure* feature is not enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can use one UOM for each stock item. The system uses this UOM, called the *base UOM*, to track item quantities in the system and calculate item costs. The base UOM, which is a required setting for a stock item, is specified in the **Units of Measure** section of the **General** tab on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

If the *Multiple Units of Measure* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, you can add multiple UOMs that can be applied to the same stock item, and users can specify item quantities in these UOMs in sales and purchase documents. If your organization typically sells the item in a particular UOM, in the **Units of Measure** section on the [Stock Items](IN_20_25_00.md) form, you can specify this UOM in the **Sales Unit** box, and the system will use this UOM by default on sales orders. If your organization typically purchases the item in a particular UOM, in the **Units of Measure** section on the [Stock Items](IN_20_25_00.md) form, you can specify this UOM in the **Purchase Unit** box, and the system will use this UOM by default on purchase documents.

If sales or purchase UOMs differ from the base UOM, you have to specify conversion rules in the **Units of Measure** section on the [Stock Items](IN_20_25_00.md) form so that the system can recalculate the item quantities specified in sales and purchase documents to the base UOM.

You can add specific prices for sales and purchase UOMs of an item. For details, see [Sales Prices: General Information](Prices_Reviewing_Sales_Prices_GeneralInfo.md) and [Vendor Prices: General Information](Prices_Vendor_Prices_GeneralInfo.md).

If the item can be sold or purchased in UOMs that are not the base, sales, or purchase units, you should make sure that these UOMs have been added to the [Units of Measure](CS_20_35_00.md) \(CS203500\) form and that conversion rules between the base UOM and these UOMs have been added on this form before you use the item with these UOMs in transactions. For more information about conversion rules, see [Conversion Rules](#_2b2f0ac2-a287-4a74-8eb4-70dbea077777).

You can configure units of measure \(UOMs\) for items that can be measured only in quantities that are integers. For details, see [Stock Items: Units of Measure That Are Not Divisible](Stock_Items_Not_Divisible_UOMs.md).

## Basic Process of UOM Configuration { .section}

When the *Multiple Units of Measure* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the process of configuring UOMs for stock items is the following:

1.  You add system-wide UOMs by using the [Units of Measure](CS_20_35_00.md) \(CS203500\) form if these UOMs will be used for multiple items.
2.  You specify the default base UOM when creating each item class for items on the [Item Classes](IN_20_10_00.md) \(IN201000\) form by selecting a system-wide UOM or by entering a new UOM that is specific to the item class.

    **Attention:** If you enter a new UOM on the [Item Classes](IN_20_10_00.md) form, the system does not copy this UOM to the [Units of Measure](CS_20_35_00.md) form.

3.  Optional: You change the default base UOM when creating an item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form by selecting a system-wide UOM or by entering a new UOM that is specific to the item.

    **Attention:** If you enter a new UOM on the [Stock Items](IN_20_25_00.md) form, the system copies this UOM to the [Units of Measure](CS_20_35_00.md) form.


## Base Unit Selection {#_788b67e9-65bb-4801-b40c-34dff40b2cc9 .section}

When the *Multiple Units of Measure* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can sell or purchase a stock item in multiple UOMs. In this case, you need to select the appropriate base UOM to simplify calculations of the item quantities in the system. For each item, we recommend that you select a base UOM that is the smallest unit you would ever use when tracking, buying, or selling the item, so that you can avoid any data inconsistencies caused by rounding.

For example, suppose that your organization purchases and stores canned juice in boxes of 12 cans, and you select a box as the base unit for this item. If sales managers then decided to sell juice by cans, they would need to specify quantities in decimals or define the sales unit as 0.0833333 \(one-twelfth\) of the base unit.

Further suppose that two customers want to buy 5 cans each. In both cases, the sales order would specify 0.417 units \(5 \* 0.0833333\), and each customer would get 5 cans. However, the remaining 0.166 units don't equate to two cans actually left in the box. During a financial period, in a warehouse, these rounding problems could cause a significant discrepancy between the quantities on the books and the physical quantities.

Inappropriately selected base UOMs may cause incorrect situations during physical inventory because counting is performed in base units. If the base unit for the product is not the smallest UOM applicable to the item, employees involved in counting may encounter difficulties. In the example with the canned juice, counting only boxes can result in an incorrect total number of cans because some of the boxes may not be full. In this example, we recommend that you select a can as the base UOM for the canned juice item.

## Conversion Rules {#_2b2f0ac2-a287-4a74-8eb4-70dbea077777 .section}

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

**Parent topic:**[Creating Stock Items](../UserGuide/Stock_Items_Mapref.md)

