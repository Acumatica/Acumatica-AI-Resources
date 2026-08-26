# Inventory Planning Configuration: Setting Up Forecasts {#_3830405b-30dd-4f5a-a78a-79532ae5dbe1 .concept}

In Acumatica ERP, users can create sales forecasts to plan the demand for stock items.

To give users the ability to generate and manually create sales forecasts, you should do the following:

-   Create a numbering sequence for forecasts on the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form
-   Specify the numbering sequence in the **Numbering Sequence** box on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form

A user can manually create a sales forecast on the [Forecast](../UserGuide/AM_20_20_00.md) \(AM202000\) form or use the sales history in the system to predict the demand by generating sales forecasts on the [Generate Forecasts](../UserGuide/AM_50_20_00.md) \(AM502000\) form. To create a forecast for a stock item by using the sales history for a particular customer, the user specifies the forecast date, the growth rate, and the number of years of history in the Selection area. Then they click **Calculate** on the form toolbar. The system adds a table row with the calculated data. If they select the unlabeled check box in the row in the table and click **Process** on the form toolbar, this row is no longer shown on the [Generate Forecasts](../UserGuide/AM_50_20_00.md) form, and the row with the forecast data is added on the [Forecast](../UserGuide/AM_20_20_00.md) form.

## Demand Time Fence in Inventory Planning { .section}

You can set up the system to exclude forecast records from demand data. The *demand time fence* is the time period during which a forecast is excluded from the total demand and the projected available inventory calculations. You specify the number of days in the **Demand Time Fence** box of the **Forecast** section on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form. The demand time fence consists of all the days before the date of inventory planning regeneration on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) \(AM505000\) form and the number of days specified in the **Demand Time Fence** box.

During the demand time fence period, the system considers only customer orders when planning inventory. Beyond this period, the dependent forecasts or the actual demand—whichever value is greater—drives inventory planning. You choose the number of days of the demand time fence based on the period during which the planning process ignores forecast demand and only considers actual demand, starting from the current date.

A forecast that has the **Dependent** check box selected on the [Forecast](../UserGuide/AM_20_20_00.md) \(AM202000\) form is consumed by released invoices and open sales orders with ship dates within the starting and ending forecast date. Inventory planning does not use forecast intervals or one-time forecasts on the [Forecast](../UserGuide/AM_20_20_00.md) form if the interval's end date is earlier than the date when inventory planning was regenerated plus the number of days specified in the **Demand Time Fence** box.

On the [Forecast](../UserGuide/AM_20_20_00.md) form, the **Active** check box is automatically cleared for a forecast record if its **End Date** is earlier than the **Last Completed At** date on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) form plus the number of days specified in the **Demand Time Fence** box on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) form. This happens because no remaining intervals have been considered by the process that was run on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) form.

## MPS Time Fence in Inventory Planning { .section}

If the *Material Requirements Planning* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you can set up the system to automatically exclude master production schedule \(MPS\) orders from demand data.

The *MPS time fence* is the time period that starts on the day when inventory planning is regenerated on the [Regenerate Inventory Planning](../UserGuide/AM_50_50_00.md) \(AM505000\) form and lasts the specified number of days. During this period, the system excludes MPS orders for which production orders have not been created from the data used for planning. You specify the number of days in the MPS time fence in the **MPS Time Fence** box of the **MPS** section on the [Inventory Planning Preferences](../UserGuide/AM_10_00_00.md) \(AM100000\) form.

**Parent topic:**[Configuring Inventory Planning](../ImplementationGuide/config_Inventory_Planning_Mapref.md)

