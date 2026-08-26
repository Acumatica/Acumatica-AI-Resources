# Inventory Planning with MRP: MRP Procedures {#_552271ed-2091-4b99-8783-2516b4200108 .concept}

In this topic, you will find descriptions of the typical procedures required for inventory planning.

## Daily Procedures { .section}

Most businesses will need to perform the regeneration of inventory planning on a daily basis. The frequency in which the process is run is dependent on the transactions processed each day. Inventory planning looks at all open demand and supply and needs to have the most accurate and up to date information in order to produce accurate recommendations on what to make or buy. Procedures that must be performed on the daily basis are listed in the following table.

|Procedure|Form|Description|
|---------|----|-----------|
|Process and release all distribution and manufacturing transactions| |-   Sales invoices
-   Purchase receipts
-   Inventory transactions
-   Manufacturing transactions

|
|Update promise dates| |Having unrealistic promise dates impacts the planned order recommendations.-   Sales orders
-   Production orders
-   Purchase orders

|
|Run MRP regeneration|[Regenerate Inventory Planning](AM_50_50_00.md) \(AM505000\)|This process should be run before the next business day in most cases. It can be run at any time, but typically it is scheduled to be run at a fixed time before each business day.|
|Review exception messages|[Inventory Planning Exceptions](AM_40_30_00.md) \(AM403000\)|Exception messages are generated for existing supply each time the MRP regeneration process is run. They need to be attended to particularly when they suggest an expedite.-   Expedite
-   Late
-   Cancel
-   On Hold
-   Transfer
-   Defer

|
|Review MRP display|[Inventory Planning Display](AM_40_00_00.md) \(AM400000\)|The inventory planning display lists the recommended supply orders to create.|

## Periodic Procedures { .section}

Procedures listed in the following table need to be reviewed on a regular basis.

|Procedure|Form|Description|
|---------|----|-----------|
|Review forecasts|[Forecast Listing](AM_00_00_05.md) \(AM000005\)|Is the forecast still reasonable compared to the actual sales? You can use the [Generate Forecasts](AM_50_20_00.md) \(AM502000\) form to use sales history to suggest a new forecast.|
|Review MPS orders|[MPS Listing](AM_00_00_04.md) \(AM000004\)|Has the production plan changed?|
|Review replenishment parameters|[Calculate Replenishment Parameters](IN_50_85_00.md) \(IN508500\)|You need to review the following:-   Safety stock or reorder point
-   Lot sizes

|

**Parent topic:**[Inventory Planning with MRP](../UserGuide/MFG_MRP_Mapref.md)

