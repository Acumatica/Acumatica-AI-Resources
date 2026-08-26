# Configuration of Replenishment: To Calculate and Apply Replenishment Parameters {#_faa9f6eb-fb76-421c-9466-bbf837789422 .task}

In the following implementation activity, you will set up automatic calculation of replenishment parameters for the reordering of a stock item in a particular warehouse based on historical sales data.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are Matt Parker, a purchasing manager of the SweetLife Fruits &amp; Jams company, and you want the system to calculate replenishment parameters for reordering oranges based on the historical sales of the three previous weeks. Also, winter is high season for oranges, and SweetLife sells more oranges in the winter than it does in other seasons. You need to configure the system to calculate a demand forecast based on historical sales data and seasonality settings.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   The following features have been enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form:
    -   *Inventory Replenishment*
    -   *Multiple Warehouses*
-   The basic configuration of order management with inventory has been performed, as described in [Order Management with Inventory](config_InvMgmt_Basic_Mapref.md).
-   On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, the *WHOLESALE* warehouse has been created.
-   On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, the *ORANGES* stock item has been created.
-   Also, the dataset includes sales orders on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form and purchase orders on the [Purchase Orders](../UserGuide/PO_30_10_00.md) \(PO301000\) form for the previous three weeks.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Replenishment Seasonality](../UserGuide/IN_20_66_00.md) \(IN206600\) form, create the *HIGHSEASON* replenishment seasonality.
2.  On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, specify the replenishment settings for the *ORANGES* stock item.
3.  On the [Calculate Replenishment Parameters](../UserGuide/IN_50_85_00.md) \(IN508500\) form, calculate the replenishment parameters for the *ORANGES* stock item in the *WHOLESALE* warehouse.
4.  On the [Apply Replenishment Parameters](../UserGuide/IN_50_95_00.md) \(IN509500\) form, apply the calculated parameters to the *ORANGES* stock item in the *WHOLESALE* warehouse.

## System Preparation { .section}

Before you start setting up the calculation of replenishment parameters, you should do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as purchasing manager Matt Parker with the *parker* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button, and select *1/30/2026* on the calendar.
3.  On the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, make sure the *SweetLife Head Office and Wholesale Center* branch is selected.

## Step 1: Creating the Replenishment Seasonality { .section}

To create a seasonality for SweetLife's high-purchase season for citrus fruits, do the following:

1.  On the [Replenishment Seasonality](../UserGuide/IN_20_66_00.md) \(IN206600\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Seasonality ID**: `HIGHSEASON`
    -   **Description**: `High season for citrus fruits`
    -   **Calendar**: *MAIN*
3.  On the table toolbar, click **Add Row**.
4.  In the added row, specify the following setting:
    -   **Active**: Selected
    -   **Season Start Date**: *11/1/2025*
    -   **Season End Date**: *2/28/2026*
    -   **Factor**: `3`

        This factor shows the increase of sales of oranges in the high-purchase season, that is, three times increase in sales.

5.  On the form toolbar, click **Save**.

## Step 2: Specifying Replenishment Settings for a Stock Item { .section}

To specify the settings that will be used to calculate replenishment parameters for oranges based on the moving average model of demand forecasting, do the following:

1.  On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, open the *ORANGES* item.
2.  On the **Inventory Planning** tab, in the only table row, modify the replenishment settings as follows:
    -   **Seasonality**: *HIGHSEASON*
    -   **Demand Forecast Model**: *Moving Average*
    -   **Forecast Period Type**: *Week*
    -   **Periods to Analyze**: `3`
3.  In the **Service Level \(%\)** column, notice that *84* is specified. In Acumatica ERP, 84% is considered the optimal service level because in general, it gives a company the ability to keep a balance between opportunity costs and operation costs for inventory management. The **Safety Stock Suggested** setting on the [Apply Replenishment Parameters](../UserGuide/IN_50_95_00.md) \(IN509500\) form will be calculated by using the service level. For details, see [Configuration of Replenishment: Demand Forecast Model](config_OrderMgmt_Replenishment_Demand_Forecast_Model.md).
4.  On the form toolbar, click **Save**.

With these settings, during the calculation of the replenishment parameters for oranges, the system will analyze the three previous weeks of historical purchase and sales data.

## Step 3: Calculating the Replenishment Parameters { .section}

To calculate replenishment parameters for oranges in the *WHOLESALE* warehouse, do the following:

1.  Open the [Calculate Replenishment Parameters](../UserGuide/IN_50_85_00.md) \(IN508500\) form.
2.  In the Selection area, specify the following settings:
    -   **Forecast Date**: *1/30/2026*
    -   **Action**: *Calculate*
    -   **Warehouse**: *WHOLESALE*
    -   **Seasonality**: *HIGHSEASON*
3.  In the table, select the unlabeled check box in the row with the *ORANGES* item.
4.  On the form toolbar, click **Process**. The **Processing** dialog box opens, showing the progress and then the results. The system has calculated the replenishment parameters for oranges in the *WHOLESALE* warehouse based on the historical sales data of the three previous weeks.
5.  Close the **Processing** dialog box. Notice that the row with the *ORANGES* stock item is no longer displayed in the table.

## Step 4: Applying Replenishment Parameters to the Stock Item { .section}

To apply the calculated replenishment parameters to the *ORANGES* stock item in the *WHOLESALE* warehouse and adjust these parameters, do the following:

1.  On the [Apply Replenishment Parameters](../UserGuide/IN_50_95_00.md) \(IN509500\) form, select the *WHOLESALE* warehouse. In the only table row, review the replenishment parameters that the system has calculated for the *ORANGES* item, which should be the following:

    -   **Safety Stock Suggested**: *43.12*
    -   **Reorder Point Suggested**: *146.94*
    -   **Max. Qty. Suggested**: *146.94*
    -   **Daily Demand Forecast**: *30.14*
    -   **Lead Time Average**: *3.44*

        This setting shows that on average, it takes 3.44 days to ship the item from the default vendor's location to the *WHOLESALE* warehouse.

    **Attention:** The values of replenishment parameters depend on the calculation date and the purchase and sales documents that have been entered into the system. \(For details, see [Configuration of Replenishment: Demand Forecast Model](config_OrderMgmt_Replenishment_Demand_Forecast_Model.md).\) You may see different values if you select a different calculation date or your system has a different set of purchase and sales documents than those in the initial *U100* dataset.

2.  In this row, select the check box in the unlabeled column.
3.  On the form toolbar, click **Process**. The **Processing** dialog box opens, showing the progress and then the results.
4.  Close the **Processing** dialog box. Notice that the row with the *ORANGES* stock item is no longer displayed in the table.
5.  Open the [Item Warehouse Details](../UserGuide/IN_20_45_00.md) \(IN204500\) form.
6.  In the Selection area, specify the following settings:
    -   **Inventory ID**: *ORANGES*
    -   **Warehouse**: *WHOLESALE*
7.  In the **Replenishment Parameters** section of the **Inventory Planning** tab, make sure that the system has inserted the values it calculated for the *ORANGES* item in the *WHOLESALE* warehouse, which should be the following:

    -   **Safety Stock**: *43.12*
    -   **Reorder Point**: *146.94*
    -   **Max. Qty.**: *146.94*
    **Tip:** The system sets the maximum stock quantity to the reorder point quantity. You can manually increase the maximum stock quantity if you need to optimize the quantity of items in stock while taking into account the time and expenses for delivery of stock items to your warehouses. For details, see [Configuration of Replenishment: Demand Forecast Model](config_OrderMgmt_Replenishment_Demand_Forecast_Model.md).

8.  Suppose that you want to round the first two values to the nearest ten and increase the maximum stock quantity. Adjust the replenishment parameters as follows:
    -   **Safety Stock**: `50`
    -   **Reorder Point**: `150`
    -   **Max Qty.**: `200`
9.  On the form toolbar, click **Save**.

You have calculated, applied, and adjusted the replenishment parameters for the replenishment of oranges in the high season in the *WHOLESALE* warehouse.

**Parent topic:**[Replenishment for Stock Items](../ImplementationGuide/config_OrderMgmt_Replenishment_Mapref.md)

