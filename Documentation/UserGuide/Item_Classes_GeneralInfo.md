# Item Classes for Stock Items: General Information {#_aed90c2d-786a-4226-9a70-a79ff04d9bb0 .concept}

In Acumatica ERP, you can create item classes on the [Item Classes](IN_20_10_00.md) \(IN201000\) form to group stock items with similar properties and to provide default settings for new items.

Users specify an item class when they create a new stock item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form, and the system fills in many values, thus saving users time and increasing the accuracy of the entered data. Some of these default values can be overridden for individual items, if needed. The item class is a required setting for a stock item.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Prepare the system for the creation of item classes
-   Create an item class for stock items

## Applicable Scenarios { .section}

You create item classes in the following cases:

-   You are initially configuring inventory in Acumatica ERP.
-   Your organization is going to sell a new type of goods whose shared settings are different than those specified in existing item classes.

## Information Provided by an Item Class { .section}

Each item class created on the [Item Classes](IN_20_10_00.md) \(IN201000\) form can include the following information:

-   The default settings that the item class provides to items of the class, most of which you can change later by using the [Stock Items](IN_20_25_00.md) \(IN202500\) form. For details, see [Default Settings for Inventory Items](#_9e658006-b406-451d-bed2-ad6ea6d0aca4).
-   The availability calculation rule that applies to the items of the item class, if the item class groups stock items. For details, see [Availability Calculation Rules in an Item Class](#_63b3a549-060a-441e-a27f-9f82fdecfdeb).
-   The method of demand calculation for the replenishment of items that are grouped by the item class. For more information, see [Configuration of Replenishment: Replenishment Methods](../ImplementationGuide/config_OrderMgmt_Replenishment_Methods.md).
-   The configuration of custom attributes that items might have, such as color and size. For details, see [Stock Items: Attributes](Stock_Items_Attributes.md).

You can specify a default item class for stock items in the **Default Stock Item Class** box on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form. If you do, the system will copy the settings of the default item class to newly created stock item classes and stock items. You can override any of these settings.

## Default Settings for Inventory Items {#_9e658006-b406-451d-bed2-ad6ea6d0aca4 .section}

When you select an item class for a stock item you are creating, the system copies the following default settings from the item class:

-   Item type
-   Valuation method
-   Tax category
-   Posting class
-   Lot/Serial class
-   Default warehouse
-   Units of measure
-   Attributes
-   Replenishment settings

You can plan item classes so that they aggregate as much information as possible about groups of similar inventory items, including the posting classes. If you configure the item classes in this way, you can specify the minimum of information for individual inventory items during manual data entry or import—for example, only **Inventory ID**, **Description**, and **Item Class**—while the rest of the information will be automatically populated based on the selected item class.

## Availability Calculation Rules in an Item Class {#_63b3a549-060a-441e-a27f-9f82fdecfdeb .section}

The system tracks the on-hand quantity of items in inventory and calculates the available quantities of items, which can be used for inventory planning and replenishment. In the availability calculation rules, you can include in the available quantity \(or exclude from the available quantity\) goods in various stages of the purchasing or sales process. The availability calculation rule is defined at the item class level and cannot be changed for particular items. For more information, see [Availability Calculation Rules: General Information](Availability_Calculation_Rules_GeneralInfo.md).

**Parent topic:**[Creating Item Classes for Stock Items](../UserGuide/Item_Classes_Mapref.md)

