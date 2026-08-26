# Inventory Planning with MRP: Forecasts and Master Production Schedule {#_05cb7223-9adf-4b4f-9230-09339c960eb2 .concept}

Forecasts and the master production schedule \(MPS\) provide data for inventory planning. In this topic, you will find details about forecasts and the MPS in Acumatica ERP.

## Master Production Schedule { .section}

A master production schedule \(MPS\) is a plan for the production of finished goods within a short-term period, such as a week or a month. The schedule specifies which items must be produced and when they should be produced.

A master production schedule should consider multiple factors, including forecasts, sales order backlog, desired inventory levels, storage constraints, and production resources. MPS orders may depend on open production orders. When this is the case, the system reduces the quantity of the MPS order by the quantity of items in open production orders. To enable this dependency between MPS orders and production orders, you select the **Dependent** check box for the relevant MPS type on the [MPS Type](AM_20_30_00.md) \(AM203000\) form.

You can create MPS orders manually by using the [Master Production Schedule](AM_20_10_00.md) \(AM201000\) form.

## Forecasts { .section}

A forecast predicts future demand \(that is, sales orders expected to be placed by customers\) based on historical sales data, seasonality, or other business-specific patterns. You can adjust these forecasts for factors like promotions or anticipated demand spikes. Forecasts provide insights that you can use to determine replenishment strategies so that inventory levels are optimized to avoid stockouts or overstock.

The forecasted demand is fully integrated into inventory planning workflows. By leveraging forecasts, you can balance inventory-carrying costs while efficiently meeting customer demand.

Forecasts can be generated automatically through the [Generate Forecasts](AM_50_20_00.md) \(AM502000\) form or you can create them manually by using the [Forecast](AM_20_20_00.md) \(AM202000\) form.

If a forecast is marked as dependent \(that is, the **Dependent** check box is selected for the forecast on the [Forecast](AM_20_20_00.md) form\), the system does the following:

-   Reduces the forecasted quantity by the quantity of items in sales orders
-   Excludes the consumed forecasted quantity from inventory planning

This helps reduce the risk of over-ordering or producing excess inventory that may not be needed. For example, suppose the forecast quantity is 200 items for September 1 to September 30, and sales orders with promised dates during this period total an open quantity of 150. In this case, the remaining forecast of 50 will be used for inventory planning.

If you specify a customer on a forecast and select the **Dependent** check box, that forecast will only apply to sales orders for that customer. However, we do not recommend mixing customer-specific and non-specific forecasts for the same inventory item because both forecasts will apply to sales orders for that customer.

Also, you can compare forecasted demand with actual demand for dependent forecasts via a side panel available on the [Forecast](AM_20_20_00.md) and [Forecast Listing](AM_00_00_05.md) \(AM000005\) forms. This provides visibility into actual demand during specific forecast intervals, helping companies refine their inventory planning.

**Parent topic:**[Inventory Planning with MRP](../UserGuide/MFG_MRP_Mapref.md)

