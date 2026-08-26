# Configuration of Order Management: Disabling of the Inventory and Order Management Features {#_f5c02ce5-b901-40a5-b430-2733470ea949 .concept}

This topic provides the following information about certain features of the *Inventory and Order Management* group:

-   Actions that should be performed in the system before you disable a particular feature
-   Actions that should be performed in the system after you have disabled the feature
-   Other Acumatica ERP features whose functionality depends on any features in this group \(if applicable\)

**Attention:** For recommendations about the possibility and consequences of disabling each feature in the *Inventory and Order Management* group, see the feature descriptions in the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) topic.

## Disabling of the Inventory Feature { .section}

If you disable the *Inventory* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the system automatically disables the *Shipping Carrier Integration* group of features and the following features:

-   *Lot and Serial Tracking*
-   *Drop Shipments*
-   *Multiple Warehouses*
-   *Multiple Warehouse Locations*
-   *Inventory Replenishment*
-   *Automatic Packaging*
-   *Kit Assembly*
-   *Advanced Physical Count*
-   *Sales Order to Purchase Order Link*

**Important:** We recommend that you not disable the *Inventory* feature if the *Manufacturing* or *Retail Commerce* feature is enabled \(or both features are enabled\) because their functionality will become unavailable for users.

We recommend that before disabling the *Inventory* feature, you do the following:

-   If any documents include items that require a purchase receipt or shipment, make sure that the documents have been completely processed or deleted from the system.
-   If you want to use existing non-stock items that have been defined to require a purchase receipt or shipment \(or both\), clear the **Require Receipt** and **Require Shipment** check boxes for them on the [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form.

    **Attention:** You may intend to disable the *Inventory* feature and then enable the *Purchase Receipts Without Inventory* feature. When you enable this feature, the system will select the **Process Item via Receipt** check box on the [Non-Stock Items](../UserGuide/IN_20_20_00.md) form for a non-stock item if the **Require Receipt** check box was selected for the stock item when the *Inventory* feature was enabled.

-   If you want to use any existing stock items as non-stock items, convert stock items to non-stock items. You can convert stock items to non-stock items only if all of the following features are disabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form: *Manufacturing*, *Projects*, *Time Management*, *Service Management*, and *Payroll*. For details on this conversion, see [Stock Status of Items: General Information](../UserGuide/OrderMgmt_Stock_Status_of_Items_GeneralInfo.md).

    **Attention:** You can instead leave stock items in the system. They will be available for selection in documents after the *Inventory* feature has been disabled, but it will not be possible to process the documents with them.


After the *Inventory* feature has been disabled, posting classes cannot be used. Thus, you should make sure of the following:

-   On the **GL Accounts** tab of the [Non-Stock Items](../UserGuide/IN_20_20_00.md) form, the needed accounts have been specified for non-stock items that used posting classes.
-   In the **Posting Settings** section on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, posting classes are not specified as sources for any order type that will be used. These settings determine the accounts to be used for a document of this type.

After the *Inventory* feature has been disabled, users will no longer be able to do the following:

-   Process documents related to existing documents with items that require a shipment or receipt, such as sales or purchase returns.
-   Correct billing for the existing receipts. Users will be able to reverse a bill generated for a receipt, but it will not be possible to create a new bill.
-   View shipments, receipts, and reports related to these documents, such as [Shipment Details by Inventory Item](../UserGuide/SO_62_15_00.md) \(SO621500\) or [Purchase Receipt Billing Details](../UserGuide/PO_63_20_00.md) \(PO632000\), for stock items and non-stock items.
-   View information about inventory transactions by using such forms as [Inventory Transaction Summary](../UserGuide/IN_40_60_00.md) \(IN406000\) or [Inventory Transaction History](../UserGuide/IN_40_50_00.md) \(IN405000\).

## Disabling of the Multiple Units of Measure Feature { .section}

Before disabling the *Multiple Units of Measure* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you need to make sure that you have processed all documents that contain stock items or non-stock items.

After the feature has been disabled, it will be impossible to change the **Sales Unit** and **Purchase Unit** values on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\), [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\), and [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) forms. These UI elements will no longer be displayed, but the system will preserve these settings in the database. Thus, you should change the **Sales Unit** and **Purchase Unit** values to the **Base Unit** value before you disable the feature. This will prevent incorrect default values in documents after the feature has been disabled.

## Disabling of the Lot and Serial Tracking Feature { .section}

Before disabling the *Lot and Serial Tracking* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you need to do the following for each lot- or serial-tracked item:

1.  Process or remove all the documents with the item
2.  Issue the item from warehouses
3.  On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, do the following:
    -   Change the lot or serial class to one for which no tracking of lot or serial numbers is performed
    -   If the *Specific* valuation method is selected for the item, change it to another method

After disabling the feature, you need to receive items back to the appropriate warehouses and locations with the proper costs by processing a receipt on the [Receipts](../UserGuide/IN_30_10_00.md) \(IN301000\) form.

## Disabling of the Blanket and Standard Purchase Orders Feature { .section}

Before disabling the *Blanket and Standard Purchase Orders* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you should complete, cancel, or remove all purchase orders of the *Blanket* and *Standard* types and all child orders of the *Normal* type. After this feature has been disabled, the created orders of the *Blanket* and *Standard* types will remain visible, but users will not be able to create child orders for them.

## Disabling of the Drop Shipments Feature { .section}

Before disabling the *Drop Shipments* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you need to do the following:

1.  Make sure that all the drop-ship sales order lines have been linked to the corresponding drop-ship purchase order lines. You can view all the unlinked drop-ship sales order lines on the [SO Drop-Ship Lines Awaiting Link](../UserGuide/SO_40_20_00.md) \(SO402000\) form. Either create purchase orders for these lines by using the [Create Purchase Orders](../UserGuide/PO_50_50_00.md) \(PO505000\) form or clear the **Mark for PO** check box for these lines on the **Details** tab of the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form.
2.  Make sure that all drop-ship purchase order lines have been linked to the corresponding sales order lines. You can view all the unlinked drop-ship purchase order lines on the [Drop-Ship PO Lines Awaiting Link](../UserGuide/PO_40_10_00.md) form.
3.  Process all purchase orders of the *Drop-Ship* type through the release of their corresponding bills, and process the related sales orders through the release of their corresponding sales invoices.

After the feature has been disabled, purchase orders of the *Drop-Ship* type and the related sales orders will still be visible in the system, but the respective links will no longer be displayed in the documents. Users will not be able to process these drop-ship orders or any related returns.

## Disabling of the Multiple Warehouses Feature { .section}

If you disable both the *Multiple Warehouses* and the *Multiple Warehouse Locations* features on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Inventory Replenishment* feature will be automatically disabled.

Before disabling the *Multiple Warehouses* feature, you need to do the following:

-   Process or remove all open orders and inventory documents, regardless of the warehouse settings.
-   Issue the stock from the warehouses.
-   Clear the **Default Warehouse** box on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) and [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form for all items.
-   If the *Matrix Items* feature is enabled, clear the **Default Warehouse** box for each template item on the [Template Items](../UserGuide/IN_20_30_00.md) \(IN203000\) form.
-   Clear the **Default Warehouse** box on the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form for all item classes.
-   Make sure that the *Branch* option is selected in the **Default Ship Dest. Type** box on the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form.

You need to make sure that the **Warehouse** box is cleared in the following locations:

-   On the [Carriers](../UserGuide/CS_20_77_00.md) \(CS207700\) form for all carriers.
-   On the **Purchase Settings** tab on the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) and [Vendor Locations](../UserGuide/AP_30_30_10.md) \(AP303010\) forms for all vendors and locations. For intercompany vendors—that is, vendors created from a branch or company—clear this box for each branch as well. To do this, you need to select a particular branch on the Company and Branch Selection menu in the top pane of the Acumatica ERP screen.
-   On the **Shipping** tab on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) and [Customer Locations](../UserGuide/AR_30_30_20.md) \(AR303010\) forms for all customers and customer locations. \(This setting is not branch-specific.\)

You also need to clear the **Warehouse** column on the [Sales Prices](../UserGuide/AR_20_20_00.md) \(AR202000\), [Sales Price Worksheets](../UserGuide/AR_20_20_10.md) \(AR202010\), [Vendor Prices](../UserGuide/AP_20_20_00.md) \(AP202000\), and [Vendor Price Worksheets](../UserGuide/AP_20_20_10.md) \(AP202010\) for all unreleased prices and worksheets.

You need to do the following:

-   If the *Manufacturing* feature is enabled, clear the warehouses specified on the forms of the **Profiles** and **Preferences** workspace categories, such as the [Bill of Material](../UserGuide/AM_20_80_00.md) \(AM208000\) or [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form.
-   If the *BigCommerce Connector* or *Shopify Connector* feature are enabled \(or both are enabled\), clear the warehouses specified in the **Warehouse Settings** table on the **Inventory Settings** tab of the [BigCommerce Stores](../UserGuide/BC_20_10_00.md) \(BC201000\) or [Shopify Stores](../UserGuide/BC_20_10_10.md) \(BC201010\) form, respectively. If the *Multiple Warehouses* feature is disabled, make sure that the *All Warehouses* option is selected in the **Warehouse Mode** box.

After the feature has been disabled, you will need to receive the items that have been issued from warehouses back to inventory to update the system with actual inventory quantities and costs. To do this, you need to process a receipt on the [Receipts](../UserGuide/IN_30_10_00.md) \(IN301000\) form. Also, you will need to verify that the correct sources of accounts have been specified for the following entities:

-   Order types in the **Posting Settings** section on the **General** tab of the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form
-   Posting classes on the **General** tab of the [Posting Classes](../UserGuide/IN_20_60_00.md) \(IN206000\) form
-   Service order types in the **Use Sales Account From** box on the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form if the *Service Management* feature is enabled
-   Production order types in the **Scrap Source** box of the [Production Order Types](../UserGuide/AM_20_11_00.md) form if the *Manufacturing* feature is enabled

## Disabling of the Multiple Warehouse Locations Feature { .section}

If you disable both the *Multiple Warehouses* and the *Multiple Warehouse Locations* features on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Inventory Replenishment* feature will be automatically disabled.

Before disabling the *Multiple Warehouse Locations* feature, you need to completely process all open orders and inventory documents and issue the stock items from locations. You should also remove the default location settings as follows:

-   For all warehouses, on the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, clear the default locations in the boxes on the **Locations** tab.
-   Clear the **Default Issue From** and **Default Receipt To** boxes on the **General** tab as follows:
    -   If the *Multiple Warehouses* feature is disabled, on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form for all stock items
    -   If the *Multiple Warehouses* feature is enabled, on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form for all item–warehouse pairs
-   If the *Matrix Items* feature is enabled, for all stock items, clear the **Default Issue From** and **Default Receipt To** boxes on the **General** tab of the [Template Items](../UserGuide/IN_20_30_00.md) \(IN203000\) form.
-   If the *Manufacturing* feature is enabled, clear the specified warehouse locations on the forms of the **Profiles** and **Preferences** workspace categories, such as the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form.
-   If the *BigCommerce Connector* or *Shopify Connector* feature are enabled \(or both are enabled\), clear the warehouse locations specified in the **Warehouse Settings** table on the **Inventory Settings** tab of the [BigCommerce Stores](../UserGuide/BC_20_10_00.md) \(BC201000\) or [Shopify Stores](../UserGuide/BC_20_10_10.md) \(BC201010\) form, respectively. If the *Multiple Warehouses* feature is disabled, make sure that the *All Warehouses* option is selected in the **Warehouse Mode** box.

**Important:** We recommend that you not disable the *Multiple Warehouse Locations* feature if the *Projects* feature is enabled and some projects have the *Track by Location* option selected in the **Inventory Tracking** box on the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form. Users will not be able to assign projects to locations if you disable the feature.

After the feature has been disabled, you will need to receive the items that have been issued from warehouse locations back to inventory by processing a receipt on the [Receipts](../UserGuide/IN_30_10_00.md) \(IN301000\) form in order to record the actual inventory quantities and costs.

## Disabling of the Kit Assembly Feature { .section}

Before disabling the *Kit Assembly* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you need to do the following:

-   Process assembly documents on the [Kit Assembly](../UserGuide/IN_30_70_00.md) \(IN307000\) form through their release, or remove unnecessary assembly documents
-   Process all sales documents with non-stock kits to completion

After this feature has been disabled, the non-stock and stock kits will remain in the system as records on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form. Users will not be able to automatically disassemble stock kits or view the components of non-stock kits in shipments.

## Disabling of the Matrix Items Feature { .section}

Before disabling the *Matrix Items* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you need to completely process the documents containing matrix items. After this feature has been disabled, the created items will remain in the system as records on the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](../UserGuide/IN_20_20_00.md) \(IN202000\) form, but some of their settings—such as item class, type, and valuation method—will not be available for editing.

## Disabling of the Sales Order to Purchase Order Link Feature { .section}

Before disabling the *Sales Order to Purchase Order Link* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you need to do the following:

-   Make sure that there are no purchase requests with the *SO to Purchase* item plan listed on the [Create Purchase Orders](../UserGuide/PO_50_50_00.md) \(PO505000\) form. If some purchase requests have this item plan, either clear the **Mark for PO** check box in the related lines of sales order or create purchase orders for them.
-   On the [Purchase Orders](../UserGuide/PO_30_10_00.md) \(PO301000\) form, process all purchase orders with the *Normal* type that have links to lines of sales orders.

**Parent topic:**[Order Management with Inventory](../ImplementationGuide/config_InvMgmt_Basic_Mapref.md)

