# Purchase Order Configuration {#_12e1ce13-ad14-4057-bab3-a3b36b9d5f92 .concept}

In the purchase orders functionality of Acumatica ERP, many elements on the data entry forms may have default values. If the default values you set are the values your organization uses most frequently, your users will save time and minimize errors. Users can, of course, override these values at any time.

Some default settings are defined within the purchase orders functionality; others are defined on inventory and accounts payable forms that integrate closely with the purchase orders functionality.

## Default GL Accounts { .section}

To specify the default accounts for use in the purchase orders functionality, use the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. These default accounts include the following ones:

-   Account and subaccount for freight expenses: You need to specify the account and subaccount for the freight expenses incurred in the delivery of purchased goods from vendors. Enter the appropriate **Freight Expense Account** and **Freight Expense Sub.** values.
-   Accounts used for purchase return operations: You can define the accounts and subaccounts used for purchase return operations by assigning a specific reason code for purchase returns in the **PO Return Reason Code** box on the [Purchase Orders Preferences](PO_10_10_00.md) form. Reason codes are defined on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form.

For a detailed description of other settings that you can use to control the workflow of purchase orders and related documents, see [Changing the Processing of Purchase Documents](PO__con_AffectingProcessingDocs.md).

## Vendor Defaults { .section}

Once you select a vendor on a new purchase order, many elements on the order get default values. These values, specified on the [Vendors](AP_30_30_00.md) \(AP303000\) form, are used as default values on data entry forms related to the accounts payable and purchase orders functionality. These settings include the following:

-   The currency used by the vendor. The currency can be overridden on particular documents, if this is allowed by vendor settings located on the **General Info** tab of the [Vendors](AP_30_30_00.md) form.
-   The credit terms.
-   The shipping instructions.
-   The vendor's shipping location.
-   The carrier used by the vendor.
-   The vendor's contact information.
-   The payment settings used for payments made to vendors.
-   GL accounts and subaccounts used to record expenses, freights, prepayments, and total liability.

A vendor's default settings also include the tax zone, which determines the taxes applicable to goods and services purchased from the vendor. You can also define the minimum and maximum percentage of ordered goods that can be accepted, and the actions to be performed if the ordered quantity differs from the received quantity when the quantities of received goods fall outside the specified range.

## Inventory Item Defaults { .section}

The inventory item records provide default values for purchase orders and receipts, such as the units of measure, vendor prices, and accounts involved. You can also provide the item settings associated with the specific warehouse that is used in purchase receipts, and in the inventory receipts automatically generated to update the costs and availability data of the item.

The default settings for stock items are defined on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

