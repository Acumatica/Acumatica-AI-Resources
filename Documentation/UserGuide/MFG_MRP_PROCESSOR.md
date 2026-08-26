# Inventory Planning with MRP: MRP Processor {#_88f23960-cc71-4bba-9208-691aad4eb2a0 .concept}

|Step|Description|
|----|-----------|
|Initialization|The first step the FRG performs is an Initialization phase. Certain variables are initialized. A connection is made to the database. Parameters are read from the [Inventory Planning Preferences](AM_10_00_00.md) \(AM100000\) form.|
|Set Low Level Codes|The next step is to set the low-level codes of all the inventory items. Due to this MRP processes the highest level items that may generate demand for the lower items.|
|First Pass|First Pass is the information-gathering phase. The MRP Processor will go out and bring together all the various supplies and demands for inventory.

 First Pass first gathers current inventory values, what the current quantity on hand is. The safety stock is removed from this value; MRP treats safety stock as if those quantities were not available.

 First Pass then determines where it will get future supplies. This may be Finished Good Items on Open Production Orders or it may Open Purchase Orders. It will then look at demands from Sales Orders, Shippers, and Material Requirements on Purchase Orders.

 First Pass will process the Master Planning Schedule \(MPS\). It first updates the MPS information. Those MPS records that fall outside of the MPS Time Fence are marked as inactive. In addition, existing Production Orders may consume the MPS. The Production Order can consume the MPS even though that Production Order is completed and closed. A Production Order will consume the MPS based on the scheduled End Date of the Production Order.

|
|Forecasts|Forecasts are processed when each level is processed. Therefore, if the forecast is dependent, all requirements may consume the forecast. This allows the user to not only forecast at the sales order level, but also forecast at lower levels.|
|Adjust Quantities|The next step is to reconcile existing supplies with existing demands at each level. If we have a sales order for 100 units and a production order that is making 100 units in time, then MRP does not have to plan anything for that sales order.

 The key to this routine is that to remember MRP is extremely date sensitive. In other words, in the above example, if that production order was not going to make those units for another 60 days then MRP does need to plan something else for that sales order so that it ships in time. MRP uses the **Grace Period** value on the [Inventory Planning Preferences](AM_10_00_00.md) \(AM100000\) form to determine if that supply can be used for the current demand.

|
|Blowdown|Once all the existing data is reconciled, the blowdown routine will now plan MRP orders. This routine is looking at all demand items that are not being supplied in time for the level being processed. These are being planned out. If a **Reorder Qty.** is set for an Inventory Item, MRP will plan its orders in multiples of that reorder quantity. If the item is a manufactured item, MRP will explode through its bill of material and create more requirements for its materials that will be processed at a lower level.

 The key to this phase is to plan accurate action dates. The system will calculate cumulative lead times so that if a sales order needs to ship on March 22nd, that means the production order must be created on March 10th. This also means that the purchase order for the raw material that we do not have needs to be placed by March 5th. During this phase, MRP is writing all of its requirements to the MRP details table. The details are reviewed by using the [Inventory Planning Display](AM_40_00_00.md) \(AM400000\) and [Inventory Planning Exceptions](AM_40_30_00.md) \(AM403000\) forms.

|
|Completion|Finally, once all of the requirements are planned, all the data is brought together into the MRP plan table. This table is used so you can view all of the requirements for an item using the [Inventory Planning Results by Item](AM_40_40_00.md) \(AM404000\) form.|

**Parent topic:**[Inventory Planning with MRP](../UserGuide/MFG_MRP_Mapref.md)

