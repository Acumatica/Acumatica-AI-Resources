# Items with Lot and Serial Numbers: Numbering Settings {#_ae018c29-496e-4200-9453-a6f92640465f .concept}

Your organization may assign lot and serial numbers to the items that it stores and sells. As such, the organization may have internal requirements for the structure of the lot and serial numbers to be assigned. In Acumatica ERP, these requirements can be supported through the use of lot and serial classes. When lot and serial numbers are provided by vendors and entered by users, the appropriate settings need to be specified for the applicable lot or serial classes.

The rules for assigning lot and serial numbers are specified on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, as described in this topic. The appropriate lot or serial class is then assigned to each inventory item whose units have lot or serial numbers, and the class provides the default numbering settings for new items of the class.

## Structure of Lot or Serial Numbers { .section}

For each lot or serial class, in the table of the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, you can specify the structure to be used for lot or serial numbers for items of the class, so that the numbers correspond to the numbering policies of your organization. The number may consist of multiple segments, each of which can be any of the following:

-   Constant: This segment is a predefined alphanumeric string to be used in all lot or serial numbers generated for items of the class.
-   Date: A date-related segment is generated based on the relevant date \(of receipt or usage\). The part of the date to be used may be the day, the month number, the month name, a two- or four-digit year value \(that is, the last two digits or all four\), or a date in a custom format.
-   Auto-incremental value: This segment is automatically generated when a new lot or serial number is assigned to an item. You can specify settings for the generation of the automatically incremented values, as described in the following section.

## Auto-Incremental Values { .section}

If you want to ensure the uniqueness of lot and serial numbers in the system, we recommend that in the table on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, you add a segment of the *Auto-Incremental Value* type to the structure of the lot or serial numbers to be used for the lot or serial class. When segments with auto-incremental value are used, you can specify the initial number to be used.

You can configure the uniqueness of the initial auto-incremental value of a lot or serial number as follows:

-   To make the initial value shared by all items assigned to the lot or serial class: In the Summary area of the [Lot/Serial Classes](IN_20_70_00.md) form, you select the **Share Auto-Incremental Value Between All Class Items** check box; you also specify in the **Auto-Incremental Value** box the initial value to be used for generating new values \(incremented by 1\) in the segment.
-   To make the initial value specific for each stock item of the lot or serial class \(that is, the initial value can be the different for stock items of this class\): You clear the **Share Auto-Incremental Value Between All Class Items** check box in the Summary area of the [Lot/Serial Classes](IN_20_70_00.md) form. Then on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form for each item of the class, you specify the lot or serial class in the **Lot/Serial Class** box and the specific initial value for the item in the **Auto-Incremental Value** box.

## Assignment of Lot or Serial Numbers { .section}

For the items of a particular lot or serial class, the lot or serial numbers can be assigned to items in any of the following ways:

-   When items are received or issued, users enter numbers manually for each serialized item or for each quantity of items in a lot. This way is used when the lot or serial numbers are provided by the vendors from which your organization purchases the items, and it is important to track these items along with the assigned lot or serial numbers in the warehouse where they are stored and in the documents that track their sales and any sales returns.

    To configure a lot or serial class so that users enter lot or serial numbers manually for items of the class, on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, you make sure that the **Auto-Generate Next Number** check box is cleared in the Summary area and that no segments are added to the table.

-   When items are received or issued, users generate numbers manually, based on a predefined structure.

    To configure a lot or serial class so that users can generate lot or serial numbers manually on a receipt or shipment \(depending on the class settings\) for items of the class, on the [Lot/Serial Classes](IN_20_70_00.md) form, you make sure that the **Auto-Generate Next Number** check box is cleared in the Summary area, and you add the segments of the lot or serial number to the table.

    With these settings, users will be able to generate numbers in the **Line Details** dialog box on the following forms:

    -   The [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form for items being received
    -   The [Shipments](SO_30_20_00.md) \(SO302000\) form for items being shipped
    On both forms, users open this dialog box by clicking **Line Details** on the table toolbar of the **Details** tab.

-   The system generates lot or serial numbers when a user releases a purchase receipt or a shipment that includes items of the class.

    To configure a lot or serial class so that the system generates lot or serial numbers for items of the class, on the [Lot/Serial Classes](IN_20_70_00.md) form, you select the **Auto-Generate Next Number** check box in the Summary area and add the segments of the number to the table.

    Additionally, in the Summary area of the form, you can specify the maximum number of lot or serial numbers to be assigned at once in the **Max. Auto-Generate Numbers** box. If a larger quantity of the item is specified in a document, only the maximum number of lot or serial numbers will be generated, with the excess quantity remaining with unassigned numbers.


**Parent topic:**[Managing Items with Lot and Serial Numbers](../UserGuide/Lot_and_Serial_Numbers_Mapref.md)

