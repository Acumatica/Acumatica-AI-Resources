# Sales Prices: Price Lists with Alternate IDs {#_eec482e0-14fc-4bd3-9413-75bb51e02256 .concept}

In the system, you can make it possible to upload prices in worksheets with alternate IDs instead of item identifiers defined in the system, and to create alternate IDs for inventory items on release of worksheets. In this topic, you will read about entering the alternate IDs in price lists in Acumatica ERP.

To be able to use alternate IDs in price lists, you need to do the following:

-   To enable these capabilities for sales price worksheets, you need to select the **Load Sales Prices by Alternate ID** check box on the **Pricing** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. Once you do, the **Alternate ID** column appears on the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form.
-   To enable these capabilities for vendor price worksheets, you need to select the **Load Vendor Prices by Alternate ID** check box on the **Pricing** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. Once you do, the **Alternate ID** column appears on the [Vendor Price Worksheets](AP_20_20_10.md) \(AP202010\) form.

After you enter the **Alternate ID** on either of these price worksheet forms \(or upload an Excel file with alternate IDs and prices specified\), the system searches for the items by their alternate IDs \(that is, cross-references\) and automatically populates the following columns in the worksheet lines:

-   **Inventory ID**: The ID of the stock or non-stock item, which the system located by using its alternate ID.
-   **Description**: The description that has been specified for the item.
-   **UOM**: The cross-reference unit of measure, if one has been defined for alternate ID that was entered in the worksheet line. If a cross-reference unit of measure has not been defined, this column is populated with the default sales unit \(in the sales price worksheet\) or purchase unit \(in the vendor price worksheet\).

If the alternate ID specified in the worksheet line is not found, when the worksheet is released, the system will create a global alternate ID and assign it to the inventory ID that is specified in the price worksheet line.

**Parent topic:**[Uploading a Sales Price List](../UserGuide/Prices_Uploading_Sales_Price_Lists_Mapref.md)

