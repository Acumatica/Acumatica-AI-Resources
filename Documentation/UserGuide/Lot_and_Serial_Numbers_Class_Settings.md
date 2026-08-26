# Items with Lot and Serial Numbers: Tracking Settings {#_7d0568cc-3a1a-4e9c-a7ea-9df31601d445 .concept}

You define lot or serial classes on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form and specify the appropriate settings to be used for lot- or serial-tracked items of the class. You then assign the appropriate lot or serial class to specific item classes and items on the [Item Classes](IN_20_10_00.md) \(IN201000\) or [Stock Items](IN_20_25_00.md) \(IN202500\) form, respectively. \(The lot or serial class assigned to an item class is assigned by default to all items of the class, but it can be overridden.\)

A lot or serial class contains settings that define the tracking method, the method of assignment of the number, and the issue method, as well as an indicator of whether items of this class must be tracked by expiration date.

## Tracking Methods { .section}

With regard to lot and serial numbers, your company may track different items differently. Some stock items may not need to be tracked by lot or serial number, other items may be tracked by lot number, and still other items may be tracked by serial number. To specify which method of tracking you will use for a lot or serial class, you select the method in the **Tracking Method** box on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form as follows:

-   If you are creating a class for items that should not be tracked by lot number or serial number and you do not need to track an expiration date, you select *Not Tracked*. For a class with this method selected, the system ignores all other settings of the lot/serial class. The *DEFAULT* class, which has this tracking method, is predefined in the system and can be used for all non-tracked items.
-   If you are creating a class for tracking items by lot numbers, you select *Track Lot Numbers*.
-   If you are creating a class for tracking items by serial numbers, you select *Track Serial Numbers*.

**Attention:** You cannot change the tracking method of a lot or serial class after the class has been assigned to at least one item class or stock item.

## Assignment Methods { .section}

The assignment method of a lot or serial class defines when the lot or serial number is assigned to a stock item of the class; it can be assigned manually by a user or automatically by the system based on the lot or serial class setting. You select an assignment method in the **Assignment Method** box of the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form as follows:

-   To begin tracking items of the class by lot or serial numbers as soon as they enter a warehouse, you select *When Received*. With this method, lot or serial numbers should be assigned to items on receipt. When you select this assignment method, you need to specify an issue method. For details, see [Issue Methods](#_a68fde4f-20d4-4bcc-89b7-1fffff8366de).
-   To begin tracking items of the class by lot or serial numbers when the items are issued or shipped from a warehouse, you select *When Used*. On the issue or shipment of an item of the class, a lot or serial number is assigned to all units of the items in the inventory issue or shipment based on the numbering settings. For details, see [Items with Lot and Serial Numbers: Numbering Settings](Lot_and_Serial_Numbers_Autonumbering_Settings.md).

**Attention:** You cannot change the assignment method selected for the lot or serial class in any of the following cases:

-   Historical inventory transactions include any item of the class in the system.
-   Any unreleased documents include an item of the class in the system.
-   A nonzero quantity of any item of the class is stored in a warehouse.

## Issue Methods {#_a68fde4f-20d4-4bcc-89b7-1fffff8366de .section}

If you have selected the *When Received* assignment method for a lot or serial class, you need to specify the order in which the system issues units of items of this class by selecting an issue method. You specify this setting in the **Issue Method** box of the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form as follows:

-   If units should be automatically picked for issue by receipt date so that the unit that has been in the warehouse the longest is picked first, you select the *FIFO* \(first-in-first-out\) method. When the system is issuing units from a particular location, it picks the units with the earliest receipt date.
-   If units should be automatically picked for issue by receipt date so that the unit in the warehouse the least time is picked first, you select the *LIFO* \(last-in-first-out\) method. When the system is issuing units from a particular location, it picks the units with the latest receipt date.
-   If units should automatically be picked for issue in sequential order of their lot or serial numbers, you select the *Sequential* method. When the system is issuing units from a particular location, it selects them in ascending order based on their lot or serial number.
-   If units should automatically be picked for issue by expiration date \(earliest date first\), you select the *Expiration* method. When the system is issuing units from a particular location, it picks them based on their expiration dates, starting with the earliest.
-   If a user should select items for issue manually, you select the *User-Enterable* method.

## Tracking the Expiration Date of Items { .section}

If you need to track items in a warehouse along with their expiration date \(for example, to ship or issue items expiring soonest first\), you can select the **Track Expiration Date** check box for a lot or serial class on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form. When this check box is selected, a user who enters a receipt with the item of this class must specify an expiration date in the receipt.

**Tip:** The **Track Expiration Date** check box is cleared and unavailable for classes with the *Not Tracked* tracking method.

**Parent topic:**[Managing Items with Lot and Serial Numbers](../UserGuide/Lot_and_Serial_Numbers_Mapref.md)

