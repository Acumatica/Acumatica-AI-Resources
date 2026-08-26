# Configuration of Replenishment: Demand Forecast Model {#_d0bf7375-ba06-4664-a26e-2d656615e629 .concept}

Replenishing the stock in time and in the proper quantities helps your business to retain customers while reducing storage costs. To keep adequate stock of key items, you may need to predict the future demand of these items.

In Acumatica ERP, you can specify the *Moving Average* demand forecast model in the settings of an item to provide the ability to predict its demand.

## Setup of the Forecast Model to Predict Demand {#section_hhn_wkb_fvb .section}

In Acumatica ERP, you can use the moving average demand forecast model, to calculate the demand for a specific future period based on historical sales data for recent consecutive periods. This demand forecast model works well for items with specific trends in sales or with stable sales that are not subject to random significant fluctuations. If you use the model for these items, you can reduce carrying costs, avoid stockouts, minimize excess or obsolete inventory, and improve cash flow. For other items, you will generally not use a demand forecast model.

You can specify the moving average model at the following levels:

-   At the item class level on the **Inventory Planning** tab of the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form: On this tab, you can create a list of replenishment classes that are used by default for new stock items of the item class. For each replenishment class, you can specify the settings to be used in automatic replenishment, including selecting *Moving Average* as the **Demand Forecast Model**. A new stock item of this item class inherits the demand forecast model selected for each replenishment class, but you can override the item class settings at the stock item level.
-   At the stock item level on the **Inventory Planning** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form. For any replenishment class listed in the table, you can leave the **Demand Forecast Model** setting that was specified for the item class or change it for the item.

**Attention:** The default option in the **Demand Forecast Model** column on the [Item Classes](../UserGuide/IN_20_10_00.md) and [Stock Items](../UserGuide/IN_20_25_00.md) forms is *None*, which means that you can change the following replenishment settings only manually: **Transfer ERQ**, **Safety Stock**, and **Reorder Point**.

When you select *Moving Average* as the **Demand Forecast Model** of replenishment on either form, you also specify the following settings:

-   **Forecast Period Type**: The type of time period to be used for the selection of historical data and calculation of the demand. The following options are available: *Quarter*, *Month*, *Week*, and *Day*.
-   **Periods to Analyze**: The number of periods of historical data of the specified type to be used for calculation.
-   **Service Level \(%\)**: The service level, whose default value is *84*%. The service level is the expected probability of not hitting a stockout during the next replenishment cycle; thus, it is also the probability of not losing sales, expressed as a percentage.

    In the calculation of the **Safety Stock** setting on the [Stock Items](../UserGuide/IN_20_25_00.md) form, the system uses the inverse of the normalized service level expressed as a percentage. It uses this formula: `NORMS INV(Service Level)`. With this formula, for a service level of 84%, the safety stock value is 1 and for a service level of 50%, the safety stock is 0.

    **Attention:** We recommend that you set the **Service Level \(%\)** setting to 84% to avoid an increasing or decreasing coefficient when the **Safety Stock** setting is calculated. A higher service level yields a higher **Safety Stock** quantity.

-   **Seasonality**: The seasonality, which can be used to normalize the replenishment quantity to accommodate high and low sales seasons. For details, see the *Use of Seasonality Settings for Forecasting* section below.
-   **Launch Date**: The date that starts the time period when the specified replenishment settings will be in effect.

## Use of the Forecast Model to Predict Demand {#section_ihn_wkb_fvb .section}

The *Moving Average* forecast model uses the data available for the specified number of past periods to forecast demand for the period immediately following the last period whose data is used in forecasting. If you select a month as the forecast period and want to perform a forecast on the 15th day of the current month, the data from the first 15 days of the month will not be used for forecasting; only data from full periods is used. The system calculates the daily demand for the nearest future period based on daily sales in all days during the specified number of prior periods.

As the actual data for the last forecast period becomes available, you can forecast the demand for the next period by using the data of the previous periods shifted by one period. This method normalizes the data; the more time periods to calculate the average demand are used, the more regular the data become.

On the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form, **Lead Time Average** is calculated for each combination of stock item and preferred vendor based on all purchase orders of this vendor in the system. For details, see the formula in the following section. The average lead time is computed as the average difference \(on all purchase orders\) between the following dates:

-   The date when the purchase order line is requested: This date is the **Requested** date on the **Details** tab of the [Purchase Orders](../UserGuide/PO_30_10_00.md) \(PO301000\) form.
-   The date of the receipt that includes this item: This date is in the **Date** box of the Summary area of the [Purchase Receipts](../UserGuide/PO_30_20_00.md) \(PO302000\) form.

## Automatic Calculation of Replenishment Parameters { .section}

By using the calculated average daily demand \(daily sales\), average lead time, and their standard deviation values, the system computes the reorder point and safety stock used in automated replenishment. The reorder point is calculated according to the following formula.

```
Reorder Point = (Average Daily Demand) * (Average Lead Time) + (Safety Stock)
```

To account for possible fluctuations in demand, which is based on daily sales, the system calculates the safety stock. The following formula is used for this calculation.

```
Safety Stock = NORMSINV(Service Level) *    
                        SQRT((Average Lead Time * STDEV(Daily Demand))^2 + (Average Daily Demand * STDEV(Lead Time))^2)
```

The parameters used in these formulas are the following:

-   `Average Daily Demand` is the average daily sales, calculated as the item quantity on all historical data of sales orders in all the time periods used to analyze the data divided by the number of days. The system includes all of the following documents in its sales order calculation: the quantity of sales orders, the quantity of sales order returns with a negative sign, the quantity of transfer orders, and the quantity of kit assembly components.
-   `STDEV(Daily Demand)` is the standard deviation of daily sales quantity from the average quantity.
-   `Average Lead Time` is the average lead time \(in days\). This time is calculated by using the following formula.

    ```
    Average Lead Time = SUM(Purchase Receipt Date - PO Line Requested Date) / (Number of Purchase Receipt Lines)
    ```

    During this calculation, the system excludes lines of purchase orders and receipts in which the `Average Lead Time` deviates significantly from the overall average. Specifically, a line is excluded if it meets the following condition:

    ```
    ((Purchase Receipt Date - PO Line Requested Date) - Average Value) > (2*STDEV of Lead Time)
    ```

    Here, `Average Value` is the mean of all average lead times.

    The average lead time of an item–warehouse pair is specified in the **Lead Time Average** box of the **Inventory Planning** tab of the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form. When the system calculates this lead time for the item in the warehouse, the **Preferred Vendor** \(which is also specified on this tab\) and the applicable replenishment source may affect the calculation as follows:

    -   If a preferred vendor is specified for the item \(or the vendor on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form was overridden\), the average lead time is calculated just for this vendor's documents.
    -   If no preferred vendor is specified for the item–warehouse pair, the system calculates the average lead time for all the purchase orders created for this item.
    -   If *Transfer* is selected in the **Replenishment Source** box of the tab, the average lead time is set to the **Transfer Lead Time** value specified on the **Inventory Planning** tab of the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form for an item class of a stock item.
    -   If there is no historical data for the preferred vendor, the system does not use the formula above to compute the average lead time. It instead copies the **Vendor Lead Time \(Days\)** value on the **Inventory Planning** tab to the **Lead Time Average** box on that tab.
    `Number of Purchase Receipt Lines` is the number of purchase receipt lines for which lead time is calculated.

-   `STDEV(Lead Time)` is the standard deviation of the lead time \(in days\) from the average value.

    If the system excludes any values from the calculation of the average lead time, it recalculates the standard deviation of the lead time, excluding the same values.

-   `NORMSINV(Service Level)` is the service factor, which is calculated based on the service level specified as a percentage.

    The service level is used to optimize the safety stock level. Generally, the service level is specified only for item classes, but it can be specified for each item and for each warehouse if needed.


Calculation of the daily demand forecast depends on whether the launch date is specified in the **Launch Date** column on the **Inventory Planning** tab of the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form as follows:

-   If the box is empty, the calculation period starts on the date of the first sale of an item \(if this date belongs to the current calculation period\).
-   If a launch date is specified, the calculation period starts on the launch date and is rounded to the selected forecast period \(such as a week or month\).

**Attention:** For correct calculation of the daily demand forecast, we recommend that you specify the launch date in the **Launch Date** column of the [Stock Items](../UserGuide/IN_20_25_00.md) form and select the beginning date of the forecast period close to the launch date.

The system calculates the daily demand forecast as follows:

```
(SUM (Sales Total Amount / Actual Number of Days) for each calculation period since the launch date) / Number of periods
```

When the system has calculated replenishment parameters for stock items on the [Calculate Replenishment Parameters](../UserGuide/IN_50_85_00.md) \(IN508500\) form, you apply these parameters to stock items on the [Apply Replenishment Parameters](../UserGuide/IN_50_95_00.md) \(IN509500\) form. When the calculated replenishment parameters for stock items have been processed, the maximum stock quantity \(**Max. Qty.**\) is set to be equal to the **Reorder Point** quantity. Depending on your company's business processes, you may need to optimize the quantity of items in stock, taking into account the time and expenses for delivery of stock items to your warehouses. You can manually change the maximum stock quantity on the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) form for an item–warehouse pair.

For an example of the calculation of the replenishment parameters for the moving average model, see [Configuration of Replenishment: Example of Parameter Calculation](config_OrderMgmt_Replenishment_Calculation_Example.md).

## Use of Seasonality Settings for Forecasting { .section}

The sales of some products follow certain cycles or patterns. For example, the peak of ski sales is in winter. These patterns in sales can be described as seasonality. A set of seasonality settings is a list of low and high seasons with a factor assigned to each season. The factor reflects how sales decrease or increase in each of these specific seasons, as compared to average sales volumes calculated over all time. You can determine the seasons for particular products or groups of products with similar sales behavior and corresponding factors by analyzing sales data spanning multiple financial years.

You define the settings of each seasonality on the [Replenishment Seasonality](../UserGuide/IN_20_66_00.md) \(IN206600\) form. The seasons for one seasonality should not intersect. When you select the start and end dates for each period, these dates should belong to one year.

**Attention:** We strongly recommend that you configure replenishment seasonality for only one year.

For date ranges not included in any season, the factor is 1.0 by default. A low season for groups of products may span multiple financial periods or be contained in a single financial period.

The system uses seasonality settings for forecasting as follows:

1.  Normalizes the historical data available for the specified seasons. The sales volumes for each day of a season are divided by the appropriate seasonality factor to calculate the sales quantities as though it were a normal season.
2.  Calculates the average daily sales quantity based on the historical data of the specified number of periods. For seasons within the specified periods, the system uses the normalized data.

    **Attention:** The standard deviation for the daily demand is calculated for actual sales data, not for normalized data.


## Update of Replenishment Parameters Using Forecast-Based Values { .section}

To calculate and use the updated replenishment parameters based on values from the forecast, you perform the following general steps:

1.  On the [Calculate Replenishment Parameters](../UserGuide/IN_50_85_00.md) \(IN508500\) form, you compute the average daily sales and average lead time, and then calculate the following parameters, which are used in automated replenishment: **Max. Qty.**, **Reorder Point**, and **Safety Stock**.
2.  On the [Apply Replenishment Parameters](../UserGuide/IN_50_95_00.md) \(IN509500\) form, you review the calculated parameter values that are based on the forecast. You can then replace the old values of replenishment parameters with the calculated ones or manually adjust the calculated parameters.
3.  On the [Prepare Replenishment](../UserGuide/IN_50_80_00.md) \(IN508000\) form, you review the stock items that need to be replenished and calculate replenishment quantities for these items.
4.  On the [Create Purchase Orders](../UserGuide/PO_50_50_00.md) \(IN505000\) form, you generate purchase orders for items requiring replenishment.

**Parent topic:**[Replenishment for Stock Items](../ImplementationGuide/config_OrderMgmt_Replenishment_Mapref.md)

