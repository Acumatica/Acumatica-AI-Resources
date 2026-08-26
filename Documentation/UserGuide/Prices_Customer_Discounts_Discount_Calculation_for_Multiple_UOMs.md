# Customer Discounts: Calculation of Discounts for Multiple UOMs {#_68222792-b6fb-4c53-b930-e13d458a196c .concept}

In Acumatica ERP, you can set up any item to be sold in different units of measure \(UOMs\); this may influence the calculation of discounts defined by quantity. In this topic, you will read about application of external discounts in Acumatica ERP.

**Attention:** This functionality is available if the *Multiple Units of Measure* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

In the **Apply Quantity Discounts To** box on the **Pricing** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, you can select one of the following options:

-   *Document Line UOM*: The system uses the document line's UOM and quantity for calculating the discount.
-   *Base UOM*: The system converts the quantity of the ordered items in the document line's UOM to a quantity in the base UOM for the item; the discount is applied to this calculated base quantity.

**Parent topic:**[Configuring and Applying Customer Discounts](../UserGuide/Prices_Customer_Discounts_Mapref.md)

