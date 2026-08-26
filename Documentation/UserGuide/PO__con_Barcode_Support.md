# Barcode Support {#_6f3ca599-cdd2-42c5-bd13-f5fe99560d39 .concept}

While barcodes have been in use in retail stores for many years, many warehouses do not fully use this technology. Barcode scanning saves you time when you receive goods to warehouses and increases overall control of operations.

Acumatica ERP supports integration with barcode scanning solutions in the following ways.

## Barcodes as Alternative IDs for Inventory Items { .section}

In Acumatica ERP, you can use product barcodes as alternative identifiers for inventory items. For details on allowed types of alternative IDs, see [Item Cross-References](IN__con_Item_Cross-References.md).

You can enter barcodes for items on the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the **Cross-References** tab, manually or by scanning them. The scanner's software converts the scanned barcode to an alphanumeric string that is immediately visible in the appropriate box as if it had been typed. You can add any number of different barcode strings to the item record in the database. Barcodes are not necessarily associated with particular vendors or customers.

## Data Entry Through Barcode Scanning { .section}

Barcode scanning can be used to effectively receive products at a warehouse and enter warehouse location information for them.

From the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, you can invoke the **Add Receipt Line** dialog box, which has been designed for the following scenario: You scan a product barcode, and the system finds the item record, brings up the item information with the quantity copied from a matching purchase order, and automatically adds a new line to the receipt or adds one unit per each scanned item if you scan items with serial numbers.

To use the dialog box for barcode scanning, make sure the **Add Receipt Line Automatically** option is selected. Then, once the dialog box elements are filled in, the system creates a new line automatically.

If you select the **Add One Unit per Barcode** check box in the dialog box, each time you scan a barcode, the item quantity for the receipt will be increased by one unit. If you clear the check box, when a user scans an item barcode, the system searches for a purchase order that matches the vendor and inventory ID associated with the barcode, and inserts the quantity of the item from the purchase order. If no such order is found, the system inserts one unit.

If no item is found in the system after the item barcode has been scanned, you can enter the inventory ID of the item manually. In this case, this new barcode is automatically associated with the item.

To further simplify data entry in warehouses, you can print barcodes for warehouse IDs and warehouse location IDs. You can print barcodes for such identifiers by using customized Acumatica ERP reports.

Barcodes of the warehouse and its locations also can be used when you create receipts by using the following scenarios:

-   If you create receipts at a desk, print barcodes on a sheet of paper, and put it close at hand. When you're creating a receipt line for an item, scan the barcode from the item, warehouse, and location barcodes from the paper.
-   If you generally create receipts from a cart \(equipped with a scanner and a computer\) after you place items in appropriate locations, perform the following actions prior to receiving goods: print location IDs as barcodes on special labels, and stick them to appropriate shelves, bins, or other storage structures available in your warehouse. Then, take items one by one from the cart, and read the item barcode and location barcode from the shelf. Appropriate receipt lines will be added automatically.

## Using Barcode Scanners for Physical Inventory { .section}

With Acumatica ERP, you can use barcode scanners to perform physical inventory counts.

If product barcodes are used in your system as alternative inventory IDs, you can use barcode scanners for counting—each scanned barcode will increase the quantity of the item by one unit in the physical inventory document open on the [Physical Inventory Count](IN_30_50_10.md) \(IN305010\) if your system is configured for using barcodes and if the scanners are connected as an input device to your computer.

**Parent topic:**[Managing Item Cross-References](../UserGuide/IN__mng_Managing_Item_Cross_References.md)

