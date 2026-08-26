# Automatic Group Vendor Discounts: Configuration Prerequisites {#_9d70ebea-705e-4cd0-8599-8306dcfe4722 .concept}

This section explains how to prepare the system to be able to apply automatic vendor discounts to multiple document lines.

## Enabling Features { .section}

In order to be able to apply automatic group-level discounts to documents, the following features must be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Standard Financials*, which provides the standard financial functionality
-   *Vendor Discounts*, which provides the ability to maintain discounts offered by vendors
-   *Inventory* \(optional\), which provides the functionality of maintaining stock items

## Other Configuration Settings { .section}

Make sure that the following settings are configured in the system:

The vendors for which you plan to define discounts in Acumatica ERP have been configured on the [Vendors](AP_30_30_00.md) \(AP303000\) form.

For item-specific discounts, the non-stock and stock items for which you plan to define discounts have been configured on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form and [Stock Items](IN_20_25_00.md) \(IN202500\) form, respectively.

**Parent topic:**[Automatic Group Vendor Discounts](../UserGuide/Vendor_Discount_Auto_Group_Mapref.md)

