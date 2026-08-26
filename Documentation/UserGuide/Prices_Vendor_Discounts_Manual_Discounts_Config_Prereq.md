# Manual Vendor Discounts: Configuration Prerequisites {#_31712328-c43a-4cef-95a0-d8777a368bbc .concept}

This section explains how to prepare the system so that a user can manually apply discounts to specific lines of a document or to a document as a whole.

## Enabling Features { .section}

In Acumatica ERP, in order to be able to apply manual discounts to financial documents, the following features must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Standard Financials*, which provides the standard financial functionality
-   *Vendor Discounts*, which supports configuring and applying discounts offered by vendors

    **Note:** For vendor discounts that are directly specified in a document—that is, for a particular document line \(as a percentage or an amount\) or a document as a whole \(as an amount\), the *Vendor Discounts* feature is not required. However, this feature must be enabled for vendor discounts that are first configured in the system and then applied in a document—at a line, group or document level—as a discount code or a combination of a discount code and sequence.

-   *Inventory* \(optional\), which provides the functionality of maintaining stock items

## Other Configuration Settings { .section}

Make sure that the following settings are configured in the system:

The vendors for which you plan to define discounts in Acumatica ERP have been configured on the [Vendors](AP_30_30_00.md) \(AP303000\) form.

For item-specific discounts, the non-stock and stock items for which you plan to define discounts are configured on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form and [Stock Items](IN_20_25_00.md) \(IN202500\) form, respectively.

**Parent topic:**[Manual Vendor Discounts](../UserGuide/Prices_Vendor_Discounts_Manual_Discounts_Mapref.md)

