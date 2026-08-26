# Vendor Catalogs {#_eb237ab6-0cc6-452d-85b4-df4e53ef57e4 .concept}

In Acumatica ERP, you can populate and maintain a vendor catalog for each vendor. A vendor catalog is a list of the inventory items you purchase from the vendor, along with the last prices of the items and the purchasing settings of the items, which are generally used for automated replenishment.

By populating and maintaining vendor catalogs, you give users the ability to efficiently select the vendors that sell specific items. For any item in the vendor catalog, you can also specify vendor-specific alternate IDs, so that users can enter them in purchase orders.

## Manual Population of Vendor Catalogs { .section}

You use the [Vendor Inventory](PO_20_10_00.md) \(PO201000\) form to maintain and populate vendor catalogs. On this form, you can select a vendor and populate the table with the items your company can purchase from this vendor.

If the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the **Location** box appears in the Summary area of the [Vendor Inventory](PO_20_10_00.md) form. In this case, you can populate and view the items your company can purchase from the selected vendor location.

For each item, you can specify \(and update after initial entry\) the following information, some of which may be specific to the vendor location:

-   The vendor inventory ID, which is the identifier used by the vendor for the item. If you specify an alternate ID, a user can enter the ID in a purchase order or receipt for the vendor, and the system will insert the correct inventory ID. This alternate ID can be assigned to the item \(or to the item–subitem pair if your organization uses subitems\). When you enter the alternate ID in the vendor catalog, the system copies the alternate ID to the item settings on the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. If the alternate ID is entered for the item, the system inserts in to the vendor catalog automatically.
-   The unit of measure \(UOM\) in which the vendor sells the item at this location \(defined as the item's *purchase unit* in your organization\). The system automatically copies the purchase UOM for the item from the item settings on the [Stock Items](IN_20_25_00.md) or [Non-Stock Items](IN_20_20_00.md) form, but you can override the unit of measure.
-   The economic order quantity, which represents the quantity of this item required to minimize the costs of ordering from this vendor location.
-   The vendor lead time, and the additional lead time \(if any\) for the inventory item purchased from the vendor. The system uses the additional lead time to schedule the purchases from the vendor and calculate the promised date. When a user creates a purchase order with the item, the system automatically calculates the promised date by adding the lead time and additional lead time \(if any was specified for the item\) to the requested date.
-   The purchasing information that is used in automated replenishment:
    -   The minimum frequency of orders.
    -   The minimum and maximum quantity that form the range in which the order quantity must fall.

**Note:** You cannot enter the prices in the **Last Vendor Price** column. The column is populated by the system and updated automatically with the prices that were last used for the items. For details on setting up automatic price updating, see the *Updating of Last Vendor Prices* section.

## System Population of Vendor Catalogs {#section_gtg_wqh_1tb .section}

As mentioned, you can manually add a vendor's items to the vendor catalog on the [Vendor Inventory](PO_20_10_00.md) \(PO201000\) form and edit item settings. The system also populates and updates the vendor's catalog based on events and settings in the system.

The vendors from which an item can be or has been purchased are listed on the **Vendors** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form for a stock item and the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form for a non-stock item. If you add a vendor for an item on one of these forms, when you open the [Vendor Inventory](PO_20_10_00.md) form and select the vendor, the added item is listed in the vendor catalog. Similarly, if you delete the vendor in the item settings because the vendor no longer provides the item or your company prefers not to purchase it from this vendor, the system removes it from the vendor catalog.

If an item not already in the catalog is purchased from a vendor, the system can add the item to the vendor catalog, depending on the option selected in the **Vendor Price Update** box on the **Price/Discount Settings** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. If *On PO Entry* or *On AP Bill Release* is selected, the item is added to the vendor catalog either when the purchase order is created or when the corresponding AP bill is released, respectively. If *None* is selected in the **Vendor Price Update** box, the purchased item is not added to the vendor catalog at all. In this case, you can add the item to the vendor catalog only manually.

## Updating of Last Vendor Prices { .section}

You can update vendor catalogs manually at any time by adding items and updating any changed settings on the [Vendor Inventory](PO_20_10_00.md) \(PO201000\) form. However, the last used prices in the catalogs cannot be entered manually; the system updates these prices automatically from prices used in vendor documents.

The system can automatically update the last used vendor prices in the vendor catalog based on the entry or release of specific vendor documents. To make this possible, on the **Pricing** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, in the **Vendor Price Update** box, select one of the following options:

-   *On PO Entry*
-   *On AP Bill Release*

When the event specified by the respective **Vendor Price Update** option \(purchase order entry, or release of an AP bill that is linked to a purchase receipt or order\) occurs, the item's unit price from the document replaces the last price of the item with the same UOM in the vendor catalog. If the UOM of the last price is the same as in the document, but the currency differs from the document's currency, the item's unit price in the document currency replaces the last price. If the UOM in the document line differs from the UOM of the last price, the system adds a new line to the vendor catalog.

**Note:** The system does not keep the history of price changes in the vendor catalog.

If you do not want to maintain information about the last used prices in the vendor catalogs, select *None* as the **Vendor Price Update** option. With this setting, the last used prices will not be updated automatically.

## Use of the Prices from Vendor Catalogs { .section}

If you regularly receive vendors' price lists for all or most of their items, you can use the [Vendor Prices](AP_20_20_00.md) \(AP202000\) and [Vendor Price Worksheets](AP_20_20_10.md) \(AP202010\) forms instead of the vendor catalog. These forms provide greater flexibility in price maintenance because you can import price lists and calculate the updated prices by applying specific percentages.

Maintaining vendor prices through vendor catalogs on the [Vendor Inventory](PO_20_10_00.md) \(PO201000\) form is a better option if a vendor's prices do not change often or information about prices is not available in advance. Once the system populates the **Last Vendor Price** column for items in the vendor catalogs, the system uses these last used prices as the default prices for the corresponding items on new purchase orders.

When you create a purchase order on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form or a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system inserts the price of each item on the **Details** tab \(**Unit Cost** column\) as follows:

-   If no prices are listed for the item on the [Vendor Prices](AP_20_20_00.md) form, the system inserts the last price from the vendor catalog.
-   If prices are listed for the item on the [Vendor Prices](AP_20_20_00.md) form, the system selects the price to be inserted as described in [Vendor Prices: Automatic Price Selection](Prices_Vendor_Prices_Price_Selection_Rules.md). This may be a warehouse-specific price if the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS1000000\) form. For details about vendor prices, see [Vendor Prices: General Information](Prices_Vendor_Prices_GeneralInfo.md).

When you create a new purchase order based on a purchase requisition that has been created on the [Requisitions](RQ_30_20_00.md) \(RQ302000\) form, the system uses the price defined in the purchase requisition for each item as the unit price of the item in the purchase order. If the [Vendor Prices](AP_20_20_00.md) form includes prices \(including warehouse-specific prices\) for the item, the system will not override the price of the item, even though you changed the warehouse in the created purchase order.

**Note:** If you are browsing the vendor catalog on the [Vendor Inventory](PO_20_10_00.md) form, you can view this vendor's current item prices by clicking the row with the item and then clicking the **Vendor Prices** button on the table toolbar, which opens the [Vendor Prices](AP_20_20_00.md) \(AP202000\) form.

You can override the default catalog prices on a purchase order or purchase receipt if the actual purchase prices for inventory items are different from those listed in the vendor catalog. In this case, the new prices that you enter will automatically appear in the vendor catalog as the last used prices; the particular event triggering this update depends on the option selected in the **Vendor Price Update** box. The new prices will then appear on a new purchase order when a user creates it.

However, if the *Volume Pricing* feature is enabled in your system and you purchase different volumes with different prices from your vendors, consider whether you need to maintain price updating in the catalog, taking into account that you will not know what volume the price listed in the catalog corresponds to.

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

