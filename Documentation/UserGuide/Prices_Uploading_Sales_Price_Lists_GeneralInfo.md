# Sales Price Uploading: General Information {#_ff2829a8-9096-4e7b-ba0d-4a7faa5856e8 .concept}

In Acumatica ERP, users can update sales prices in a variety of ways. You can modify existing sales price records one by one on the [Sales Prices](AR_20_20_00.md#) \(AR202000\) form if you need to make only minor updates to individual price records, or you can upload multiple price records at once by using the [Sales Price Worksheets](AR_20_20_10.md#) \(AR202010\) form.

## Learning Objectives { .section}

You will learn how to upload a sales price list to Acumatica ERP using a sales price worksheet.

## Applicable Scenarios { .section}

Sales price worksheets in Acumatica ERP are a convenient way of adding new sales prices or updating existing sales price lists in bulk.

By using a sales price worksheet, you can upload prices of any types, except for default prices, from an external source, such as an Excel file. That is, you can upload base prices, prices specific to a customer, and prices specific to a customer price class. These prices can include sales prices that have been marked as promotional or that have been defined for a particular unit of measure or a particular warehouse.

## Uploading Sales Price Lists by Using Sales Price Worksheets { .section}

You upload a sales price list prepared in an external Excel file by performing the following steps. First, you create an empty worksheet on the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form. Then you add the external price list to the worksheet by clicking **Load Records from File** and selecting the prepared Excel file with the prices to be uploaded.

Prices defined in a worksheet become effective only after you release the worksheet \(on the date specified as the effective date\). Before the worksheet is released, you can edit records in it by making changes manually to individual records or by recalculating prices for all records in the worksheet.

For more information about recalculating existing prices, see [Mass-Update of Sales Prices: Process Activity](Prices_Mass_Updating_Existing_Sales_Prices_Process_Activity.md).

## Sales Price Retention { .section}

When you update sales price records in the system by using sales price worksheets on the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form, it might be useful to keep the history of price changes over time.

In Acumatica ERP, you set up how the system keeps the historical sales prices on the **Pricing** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. In the **Price Retention** group of settings, you can select one of the following retention types in the **Retention Type** box:

-   *Last Price*: To keep the last price and the current price for each item.
-   *Fixed Number of Months*: To keep the changes of the price records for a specific number of months. If this option is selected, the **Number of Months** box becomes available, in which you specify a particular number.

**Tip:** By default, **Retention Type** is set to *Fixed Number of Months* and **Number of Months** is set to *12*, which means that the history of prices will be kept for one year.

**Parent topic:**[Uploading a Sales Price List](../UserGuide/Prices_Uploading_Sales_Price_Lists_Mapref.md)

