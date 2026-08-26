# Inventory Planning with DRP: Forecasts {#_b8099100-76bc-4bb2-ac20-241d88c6a6af .concept}

A forecast predicts future demand \(that is, sales orders that will be placed by customers\) based on historical data. Forecast may depend on seasonality.

You can generate forecasts automatically by using the [Generate Forecasts](AM_50_20_00.md) \(AM502000\) form or create a forecast manually by using the [Forecast](AM_20_20_00.md) \(AM202000\) form.

A manually created forecast may be dependent or independent. For an independent forecast, the check box in the **Dependent** column on the [Forecast](AM_20_20_00.md) form is cleared. Thus, the full quantity specified for the forecast will be included in the demand data by inventory planning regardless of sales orders.

For a dependent forecast, you select the check box in the **Dependent** column and optionally select a customer in the **Customer** column. This means that the forecast depends on the sales created in the system for the customer; that is, the quantity of items in the sales orders will reduce the forecast quantity. For example, suppose that the forecast is an item quantity of 200 for September 1 to September 30, and sales orders with promised dates between September 1 and September 30 have a total open quantity of 150. Then the remaining forecast of 50 is used by inventory planning.

**Parent topic:**[Performing Inventory Planning with DRP](../UserGuide/OrderMgmt_Inventory_Planning_DRP_Mapref.md)

