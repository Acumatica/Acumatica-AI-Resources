# Inventory Planning with MRP: MRP Procedures

In this topic, you will find descriptions of the typical procedures required for inventory planning.

## Daily Procedures

Most businesses will need to perform the regeneration of inventory planning on a daily basis. The frequency in which the process is run is dependent on the transactions processed each day. Inventory planning looks at all open demand and supply and needs to have the most accurate and up to date information in order to produce accurate recommendations on what to make or buy. Procedures that must be performed on the daily basis are listed in the following table.

<table id="_947a2ab2-6af4-4d98-a508-bf9c2edb49d9"><thead><tr><th>

Procedure

</th><th>

Form

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Process and release all distribution and manufacturing transactions

</td><td>

 

</td><td>

-   Sales invoices
-   Purchase receipts
-   Inventory transactions
-   Manufacturing transactions

</td></tr><tr><td>

Update promise dates

</td><td>

 

</td><td>

Having unrealistic promise dates impacts the planned order recommendations.-   Sales orders
-   Production orders
-   Purchase orders

</td></tr><tr><td>

Run MRP regeneration

</td><td>

[Regenerate Inventory Planning](AM_50_50_00.md) \(AM505000\)

</td><td>

This process should be run before the next business day in most cases. It can be run at any time, but typically it is scheduled to be run at a fixed time before each business day.

</td></tr><tr><td>

Review exception messages

</td><td>

[Inventory Planning Exceptions](AM_40_30_00.md) \(AM403000\)

</td><td>

Exception messages are generated for existing supply each time the MRP regeneration process is run. They need to be attended to particularly when they suggest an expedite.-   Expedite
-   Late
-   Cancel
-   On Hold
-   Transfer
-   Defer

</td></tr><tr><td>

Review MRP display

</td><td>

[Inventory Planning Display](AM_40_00_00.md) \(AM400000\)

</td><td>

The inventory planning display lists the recommended supply orders to create.

</td></tr></tbody>
</table>

## Periodic Procedures

Procedures listed in the following table need to be reviewed on a regular basis.

<table id="_e98b15c9-b6e8-4705-b3ba-4900ce7e390b"><thead><tr><th>

Procedure

</th><th>

Form

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Review forecasts

</td><td>

[Forecast Listing](AM_00_00_05.md) \(AM000005\)

</td><td>

Is the forecast still reasonable compared to the actual sales? You can use the [Generate Forecasts](AM_50_20_00.md) \(AM502000\) form to use sales history to suggest a new forecast.

</td></tr><tr><td>

Review MPS orders

</td><td>

[MPS Listing](AM_00_00_04.md) \(AM000004\)

</td><td>

Has the production plan changed?

</td></tr><tr><td>

Review replenishment parameters

</td><td>

[Calculate Replenishment Parameters](IN_50_85_00.md) \(IN508500\)

</td><td>

You need to review the following:-   Safety stock or reorder point
-   Lot sizes

</td></tr></tbody>
</table>

**Parent topic:**[Inventory Planning with MRP](../UserGuide/MFG_MRP_Mapref.md)

