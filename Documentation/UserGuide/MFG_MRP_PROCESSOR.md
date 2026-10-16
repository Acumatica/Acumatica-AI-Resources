# Inventory Planning with MRP: MRP Processor

<table id="_2653b7f3-873b-442d-9e03-c7c50536b71e"><thead><tr><th>

Step

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Initialization

</td><td>

The first step the FRG performs is an Initialization phase. Certain variables are initialized. A connection is made to the database. Parameters are read from the [Inventory Planning Preferences](AM_10_00_00.md) \(AM100000\) form.

</td></tr><tr><td>

Set Low Level Codes

</td><td>

The next step is to set the low-level codes of all the inventory items. Due to this MRP processes the highest level items that may generate demand for the lower items.

</td></tr><tr><td>

First Pass

</td><td>

First Pass is the information-gathering phase. The MRP Processor will go out and bring together all the various supplies and demands for inventory.

 First Pass first gathers the current inventory values, including the current on-hand quantity. For items that use the *Min./Max.* or *Fixed Reorder Qty.* stocking method, the **Reorder Point** value is the threshold that triggers a replenishment recommendation. The **Safety Stock** value is retained as the lower threshold used when the system evaluates critical replenishment exceptions.

 First Pass then determines where it will get future supplies. This may be Finished Good Items on Open Production Orders or it may Open Purchase Orders. It will then look at demands from Sales Orders, Shippers, and Material Requirements on Purchase Orders.

 First Pass will process the Master Planning Schedule \(MPS\). It first updates the MPS information. Those MPS records that fall outside of the MPS Time Fence are marked as inactive. In addition, existing Production Orders may consume the MPS. The Production Order can consume the MPS even though that Production Order is completed and closed. A Production Order will consume the MPS based on the scheduled End Date of the Production Order.

</td></tr><tr><td>

Forecasts

</td><td>

Forecasts are processed when each level is processed. Therefore, if the forecast is dependent, all requirements may consume the forecast. This allows the user to not only forecast at the sales order level, but also forecast at lower levels.

</td></tr><tr><td>

Adjust Quantities

</td><td>

The next step is to reconcile existing supplies with existing demands at each level. If we have a sales order for 100 units and a production order that is making 100 units in time, then MRP does not have to plan anything for that sales order.

 The key to this routine is that to remember MRP is extremely date sensitive. In other words, in the above example, if that production order was not going to make those units for another 60 days then MRP does need to plan something else for that sales order so that it ships in time. MRP uses the **Grace Period** value on the [Inventory Planning Preferences](AM_10_00_00.md) \(AM100000\) form to determine if that supply can be used for the current demand.

</td></tr><tr><td>

Blowdown

</td><td>

Once the existing data has been reconciled, the blowdown routine plans inventory-planning orders for demand that is not supplied in time. If an item falls below its **Reorder Point** value, the system calculates the planned quantity according to the item's stocking method. With *Min./Max.*, the system replenishes the item up to **Maximum Qty.** With *Fixed Reorder Qty.*, it uses the applicable vendor **EOQ**, **Transfer ERQ**, or **Manufacturing EOQ** based on the replenishment source. If the applicable maximum or fixed quantity is *0*, the system generates a demand-based recommendation by using the applicable lot-sizing settings.

 The key to this phase is to plan accurate action dates. The system will calculate cumulative lead times so that if a sales order needs to ship on March 22nd, that means the production order must be created on March 10th. This also means that the purchase order for the raw material that we do not have needs to be placed by March 5th. During this phase, MRP is writing all of its requirements to the MRP details table. The details are reviewed by using the [Inventory Planning Display](AM_40_00_00.md) \(AM400000\) and [Inventory Planning Exceptions](AM_40_30_00.md) \(AM403000\) forms.

</td></tr><tr><td>

Completion

</td><td>

Finally, once all of the requirements are planned, all the data is brought together into the MRP plan table. This table is used so you can view all of the requirements for an item using the [Inventory Planning Results by Item](AM_40_40_00.md) \(AM404000\) form.

</td></tr></tbody>
</table>

**Parent topic:**[Inventory Planning with MRP](../UserGuide/MFG_MRP_Mapref.md)

