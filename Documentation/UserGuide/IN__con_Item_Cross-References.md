# Item Cross-References {#_07b78589-6e40-4fb0-826c-7ed4d1e08e91 .concept}

For convenience during the processing of purchase and sales orders, in Acumatica ERP, you can define the relationships between the inventory item identifiers maintained by your company and those used by your vendors and customers. These cross-references associate the internal inventory ID of an inventory item with an alternate ID for the item that is used by the vendor or customer. For information on inventory IDs, see [Stock Items: Identifiers of Items](Stock_Items_Identifiers_of_Items.md).

Once these cross-references are established in the system, when you enter a customer's sales order and specify an alternate ID for an inventory item, the system inserts the associated inventory ID and item price in the order line. Cross-referencing saves time that would be spent on handling customer and vendor orders and helps you avoid costly errors. You can also enable the ability to load prices specified by alternate IDs to sales price worksheets and vendor price worksheets.

The types of cross-references that are supported in Acumatica ERP are described in the sections below.

## Using Alternate IDs { .section}

You can create cross-references for inventory items by using the **Cross-References** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form for a stock item and of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form for a non-stock item. When you add a cross-reference to the table on the **Cross-References** tab, you select one of the following types in the **Alternate Type** column:

-   *Global*: This is a global cross-reference for the item. For this type, you do not need to specify a particular customer or vendor. You can use global alternate IDs in sales orders, invoices, purchase orders, purchase receipts, purchase requests and purchase requisitions, sales price worksheets, and vendor price worksheets.
-   *Customer Part Number*: The alternate ID is specific to a particular customer \(specified in the **Customer/Vendor**column\); this ID can be used in sales orders.
-   *Vendor Part Number*: The alternate ID is specific to a particular vendor \(specified in the **Customer/Vendor**column\); this ID can be used in purchase orders and purchase requisitions.
-   *Barcode*: The barcode associated with the item. You can use barcodes in sales orders, invoices, purchase orders, purchase receipts, purchase requests and purchase requisitions, sales price worksheets, and vendor price worksheets.
-   *GTIN/EAN/UPC/ISBN*: The Global Trade Item Number \(GTIN\) created for the item by using any of the following barcodes: European Article Number \(EAN\), Universal Product Code \(UPC\), or International Standard Book Number \(ISBN\).You can use barcodes in sales orders, invoices, purchase orders, purchase receipts, purchase requests and purchase requisitions, sales price worksheets, and vendor price worksheets.

If subitems are used in your system to split an inventory ID by item properties \(such as color, fabric, or size\), alternate IDs are specified for the inventory ID–subitem pair. The way alternate IDs are specified depends on whether the partner \(the customer or vendor\) uses the same classification of items or its classification has more or fewer details than are maintained in Acumatica ERP. If the partner IDs include classification by properties specified by subitem, you match its IDs to your inventory ID–subitem pairs. If the partner's alternate IDs don't include classification provided by subitems, you use the partner IDs concatenated with subitems as alternate IDs. In any case, to ensure unique identification by alternate IDs, you should establish internal rules on specifying alternate IDs.

If subitems are not used in your system along with inventory IDs to identify inventory, then for each inventory item, you can provide multiple alternate IDs used by customers and by vendors. You can also specify alternate IDs specific to particular units of measure, as described in the sections below.

The system does not verify the uniqueness of alternate IDs in the system. However, an alternate ID is unique for each vendor or customer, and you can find the items you want to add to an order by typing their alternate IDs in the **Inventory ID** column on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) or [Purchase Orders](PO_30_10_00.md) \(PO301000\) form.

## Configuring the *INVENTORY* Segmented Key { .section}

If you plan to use customer and vendor alternate IDs for stock and non-stock items, keep in mind that alternate IDs may have more characters than you have planned for your inventory IDs and that they may have different lengths in the systems of different vendors and customers. To avoid inserting unnecessary zeros or other characters in each inventory ID, take into account the following recommendations when you configure the *INVENTORY* segmented key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form:

1.  You should configure the *INVENTORY* segmented key as a single-segment key. The length of the segment must be equal to the maximum possible length of alternate IDs.
2.  You select the *Unicode* option in the **Edit Mask** column for this segment of the *INVENTORY* segmented key. Otherwise, errors may result from alternate IDs that contain numbers, letters, special characters, and spaces.
3.  If you plan to use automatic numbering for inventory items, you should do the following:
    1.  Select the **Auto-Number** option for the segment.
    2.  In the **Numbering ID** box, select the numbering sequence to be used to generate identifiers for new items. This numbering sequence may be defined on [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form with the **Start Number** and **End Number** that have fewer characters than the segment length.
4.  If you plan to enter the inventory IDs for items manually, you should make sure the **Validate** check box is cleared for the segment—then the users will be able to enter identifiers with less characters than the specified segment length.

## Using Customer Alternate IDs { .section}

Customer alternate IDs are inventory identifiers \(such as part numbers\) used by customers for the items. Because different customers may use different identifiers to refer to the same product \(defined as an item in Acumatica ERP\), you can create multiple alternate IDs for the product \(one for each customer per item\). You can specify a customer alternate ID for an item by using the **Cross-References** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form or the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

If you have specified an alternate ID for the item, the system shows this ID in the **Alternate ID** column on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. If you enter a new value in this column while editing a sales order, the system will create a new customer-specific alternate ID or replace the existing customer-specific alternate ID for the item specified in the document line.

When you create a sales order, once you select the customer, you can add each item to the order by typing its alternate ID \(that is, the alternate ID associated with this customer\) in the **Inventory ID** column. Once you enter the alternate ID, the system will automatically search for the stock or non-stock item and insert its settings in the document line. When you add items to a sales order by using the **Inventory Lookup** dialog box, which you invoke by clicking the **Add Items** button on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you can also search for stock items in this dialog box by alternate ID.

**Note:** The **Alternate ID** column in the **Inventory Lookup** dialog box becomes populated only after you have typed a string in the **Inventory** box and the system has performed a search for the items with inventory IDs, alternate IDs, and descriptions that match the string.

## Using Vendor Alternate IDs { .section}

Vendor alternate IDs are inventory identifiers used by your company's vendors for the product \(defined as an item in Acumatica ERP\). As with customer alternate IDs, you can maintain multiple vendor alternate IDs \(one for each vendor per item\) in the Inventory module. You can specify a vendor alternate ID for an item by using the **Cross-References** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form or the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

If you have specified an alternate ID for an item, the system shows this ID in the **Alternate ID** column on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. If you enter a new value in this column while editing a purchase order, the system will create a new vendor-specific alternate ID or replace the existing vendor-specific alternate ID for the item specified in the document line.

When you create a purchase order on the [Purchase Orders](PO_30_10_00.md) form, once you select the vendor, you can add each item to the order by typing its alternate ID \(that is, the alternate ID associated with this vendor\) in the **Inventory ID** column. Once you enter the alternate ID, the system will automatically search for the stock or non-stock item and insert its settings in the document line. When you add items to a purchase order by using the **Inventory Lookup** dialog box, which you invoke by clicking the **Add Items** button on the **Details** tab of the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, you can also search for the stock items in this dialog box by alternate ID.

**Note:** The **Alternate ID** column in the **Inventory Lookup** dialog box becomes populated only after you have typed a string in the **Inventory** box and the system has performed a search for the items with inventory IDs, alternate IDs, and descriptions that match the string.

## Using Vendor Catalogs { .section}

For inventory items your company frequently purchases from a particular vendor, you can maintain a vendor catalog on either the [Vendor Inventory](PO_20_10_00.md) \(PO201000\) form or the **Vendor Info** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. Along with alternate IDs, you can specify the vendor's last prices for the items and update them with the prices quoted on vendor documents, such as receipts or even purchase orders. When they create purchase orders, users will be able to see the vendor's last prices for the items listed on the orders. For more information, see [Vendor Catalogs](PO__con_Vendor_Catalog.md).

## Using Barcodes { .section}

Most products \(items\) that are sold or purchased have barcodes. A barcode is a machine-readable graphical representation of data that contains information about the product to which the barcode is attached. A special scanner is used to read the information encoded in the image. Scanner software converts barcodes to alphanumeric strings. Barcodes are specific to the company that manufactures or resells the products. Different barcode standards are used for different types of products and in different world regions.

With Acumatica ERP, you can use barcodes as alternate IDs for inventory items. On creating a receipt by using the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, a user scans a barcode of the product and associates it with the inventory ID used for this product in the system.

Alternatively, barcodes can be entered manually or by using a scanner on the **Cross-References** tab of the [Stock Items](IN_20_25_00.md) form. Any number of barcodes can be entered for the same item. For barcodes, no association with a particular vendor or customer is required. For details, see [Barcode Support](PO__con_Barcode_Support.md).

## Using Cross-Reference Units of Measure {#_119e97a3-c747-4cea-a699-ef56e2ead6b5 .section}

The system provides you with the ability to define and use cross-reference units of measure other than the default sales or purchase units specified for the item. For an alternate ID of any type specified on the **Cross-References** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, you can specify the unit of measure in the **Unit of Measure** column.

When you add items to the sales order or purchase order by entering the alternate ID in the **Inventory ID** column of the [Sales Orders](SO_30_10_00.md) form or [Purchase Orders](PO_30_10_00.md) form, the system searches for the item by its alternate ID, replaces the alternate ID identifier in this column with the item, and specifies the cross-reference unit of measure in the **UOM** column. If an alternate ID does not have a unit of measure specified, the system will use the default sales or purchase unit in the document line.

**Note:** In the **Unit of Measure** column, you can specify only those units of measure that are defined for the item in the **Unit Conversion** table on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

## Uploading Prices with Alternate IDs and Creating Alternate IDs from Price Worksheets {#IDworksh .section}

In the system, you can make it possible to upload prices in worksheets with alternate IDs instead of item identifiers defined in the system, and to create alternate IDs for inventory items on release of worksheets. To be able to use alternate IDs in price lists, you need to do the following:

-   To enable these capabilities for sales price worksheets, you need to select the **Load Sales Prices by Alternate ID** check box on the **Pricing** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
-   To enable these capabilities for vendor price worksheets, you need to select the **Load Vendor Prices by Alternate ID** check box on the **Pricing** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. Once you do, the **Alternate ID** column appears on the [Vendor Price Worksheets](AP_20_20_10.md) \(AP202010\) form.

After you enter the **Alternate ID** on either of these price worksheet forms \(or upload an Excel file with alternate IDs and prices specified\), the system searches for the items by their alternate IDs \(that is, cross-references\) and automatically populates the following columns in the worksheet lines:

-   **Inventory ID**: The ID of the stock or non-stock item, which the system located by using its alternate ID.
-   **Description**: The description that has been specified for the item.
-   **UOM**: The cross-reference unit of measure, if one has been defined for alternate ID that was entered in the worksheet line. If a cross-reference unit of measure has not been defined, this column is populated with the default sales unit \(in the sales price worksheet\) or purchase unit \(in the vendor price worksheet\).

If the alternate ID specified in the worksheet line is not found, when the worksheet is released, the system will create a global alternate ID and assign it to the inventory ID that is specified in the price worksheet line.

**Parent topic:**[Managing Item Cross-References](../UserGuide/IN__mng_Managing_Item_Cross_References.md)

