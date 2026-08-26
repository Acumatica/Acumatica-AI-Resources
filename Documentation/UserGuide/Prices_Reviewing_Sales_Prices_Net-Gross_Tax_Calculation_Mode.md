# Sales Prices: Support of Net/Gross Tax Calculation Mode {#_f828d4b9-5e7c-4e34-8f51-9631d24dac05 .concept}

In Acumatica ERP, you can define gross and net prices by assigning business-to-business \(B2B\) and business-to-consumer \(B2C\) customers or customer locations to different customer price classes and setting up prices that depend on the customer's price class.

You can create a sales document with the *Gross* tax calculation mode and specify gross prices or create a sales document with the *Net* tax calculation mode and specify net prices for it. This functionality is available in the system if the *Net/Gross Entry Mode* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. With this feature enabled, the **Tax Calculation Mode** setting appears on the [Sales Prices](AR_20_20_00.md) \(AR202000\) and [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) forms.

## Setup of Tax Calculation Mode for Sales Prices { .section}

To enable the *Net* or *Gross* tax calculation mode for sales prices, you should do the following:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enable the *Net/Gross Entry Mode* feature.
2.  On the [Sales Prices](AR_20_20_00.md) \(AR202000\) form, review the existing prices. In the **Tax Calculation Mode** box in the Summary area, *All Modes* is selected by default, meaning that the system displays all available tax calculation modes.
3.  In the **Tax Calculation Mode** column for a particular price, select the needed mode—*Net* or *Gross*. By default, all existing prices are assigned the *Not Set* mode.
4.  If you want to create a sales price worksheet by clicking **Create Price Worksheet** on the form toolbar, you must select a tax calculation mode in the **Tax Calculation Mode** box in the Summary area. If you leave the default *All Modes* value in this box, the system displays an error message when you click **Create Price Worksheet**.

    If you want to create a new worksheet on the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) forms, be aware that when you click **Copy Prices** on the table toolbar, the system copies only the prices that have a tax calculation mode selected in the **Tax Calculation Mode** box in the Summary area of this form.


## Price Selection Rules { .section}

In addition to the priority of prices copied by default to a document, the system selects only prices that meet particular criteria as follows, depending on the value in the **Tax Calculation Mode** box specified for the document:

-   If the document's tax calculation mode is *Gross*, only prices with the *Gross* or *Not Set* tax calculation mode can be selected.
-   If the document's tax calculation mode is *Net*, only prices with the *Net* or *Not Set* tax calculation mode can be selected.
-   If the document's tax calculation mode is *Tax Settings*, prices with any tax calculation mode can be selected.

For details on automatic price selection rules, see [Sales Prices: Rules of Price Selection](Prices_Sales_Price_Selection_GeneralInfo.md).

**Parent topic:**[Reviewing Sales Prices](../UserGuide/Prices_Reviewing_Sales_Prices_Mapref.md)

