# Import of Taxes: Tax Calculation Mode {#_5bcb4e06-2321-4994-8df1-029309572a8a .concept}

If the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, for a sales order imported from a Shopify store, the **Tax Calculation Mode** setting on the **Financial** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form is determined based on the tax synchronization settings specified on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form and the price settings specified in the Shopify store.

If only Acumatica ERP is used for tax calculation, the setting is determined by the price settings specified in the Shopify store as follows:

-   If the prices of items in the store include taxes \(that is, if on the **Taxes** settings page, the **All prices include tax** check box is selected\), the system inserts *Gross* in the **Tax Calculation Mode** box of the [Sales Orders](SO_30_10_00.md) form for the imported sales order.
-   If prices are entered for items exclusive of tax \(that is, if the **All prices include taxes** check box is cleared\), the system inserts *Net* in the **Tax Calculation Mode** box of the [Sales Orders](SO_30_10_00.md) form for the imported sales order.

If an external tax provider—for example, Avalara AvaTax—is configured, the system inserts *Tax Settings* in the **Tax Calculation Mode** box of the [Sales Orders](SO_30_10_00.md) form for the imported sales orders. With this option selected, the sales order inherits the settings of the customer, or of the customer's location if the *Business Account Locations* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) form.

**Parent topic:**[Importing Orders with Taxes](../UserGuide/Commerce_SP_Orders_with_Taxes_Mapref.md)

