# Adding Landed Costs to Items' Costs {#_3fb8f768-a8ea-44a8-9a4f-8b78ecb947e8 .concept}

On release of the landed cost document, the system generates the inventory adjustment that updates the items' cost in inventory according to the allocated landed cost amounts and the valuation method of these items. The following sections describe how the system updates costs for the items of purchase receipts and transfer receipts.

## Cost Updating When Landed Costs Are Allocated to Purchase Receipts { .section}

Upon release, an inventory adjustment updates the inventory costs of items differently depending on the valuation method of the item:

-   For inventory items with the *FIFO* valuation method, the cost in a particular cost layer \(created by the purchase receipt\) is updated as follows:
    -   If the layer still has the original quantity, the cost of all items on the layer is updated, and the landed cost amount from the Landed Cost Accrual account is transferred to the Inventory account assigned to the item.
    -   If the current quantity on the layer is less than the original quantity, the landed cost amount is moved from the Landed Cost Accrual account to update the Landed Cost Variance account of the stock item and the Inventory account in proportion with the issued from the warehouse and remaining quantities, respectively. \(If you need to adjust the sales account on release of the inventory adjustment, you can use the same account for the COGS account and the Landed Cost Variance account.\)
-   For items with the *Average* valuation method, the landed cost amount from the Landed Cost Accrual account is transferred to the Inventory account assigned to the item and updates the average cost of the unit in a cost layer, which is identified by the warehouse.

    **Tip:** At the moment of inventory adjustment release, if some of the units listed on the purchase receipt were issued from the warehouse, the landed cost amount updates both the Landed Cost Variance account of the stock item and the Inventory account of the stock item proportionally to the issued and remaining quantities \(as on the original purchase receipt\), respectively.

-   For items with the *Specific* valuation method, the landed cost amount from the Landed Cost Accrual account is transferred to the Inventory account assigned to the item. This amount updates the cost of the unit in a cost layer, which is identified by a serial or lot number of the item.

    **Tip:** At the moment of inventory adjustment release, if some of the lot/serial items listed on the purchase receipt were issued from the warehouse, the landed cost amount updates both the Landed Cost Variance account and the Inventory account of the lot/serial item proportionally to the issued and remaining items \(as on the original purchase receipt\), respectively.

-   For items with the *Standard* valuation method, the amount from the Landed Cost Accrual account is moved to the Landed Cost Variance account of the stock item. The system records the cost in a cost layer, which is identified by the warehouse.

## Cost Updating When Landed Costs Are Allocated to Transfer Receipts { .section}

Upon release, an inventory adjustment updates the inventory costs of items differently depending on the valuation method of the item as follows:

-   For items with the *Standard* valuation method, the landed cost amount is moved from the Landed Cost Accrual account to the Standard Cost Variance account. The following transactions are generated:
    -   Standard Cost Accrual account: Cr, landed cost amount
    -   COGS account: Dr, landed cost amount
-   For items with the *Average* cost valuation method, the landed cost amount moved from the Landed Cost Accrual account to the Inventory account \(determined by the posting class of the item\) updates the average cost of the unit. The following transactions are generated:

    -   Landed Cost Accrual account: Cr, landed cost amount
    -   Inventory account: Dr, landed cost amount
    **Tip:** At the moment of the release of the inventory adjustment, if some of the units \(listed on the transfer receipt\) were issued from the warehouse, the landed cost amount updates both the Landed Cost Variance account and the Inventory account of the item proportionally to the issued and remaining quantities \(as specified on the original transfer receipt\), respectively.

-   For items with the *Specific* cost valuation method, the landed cost amount moved from the Landed Cost Accrual account to the Inventory account \(determined by the posting class of the item\) updates the cost of the unit. The following transactions are generated:

    -   Landed Cost Accrual account: Cr, landed cost amount
    -   Inventory account: Dr, landed cost amount
    **Tip:** At the moment of the release of the inventory adjustment, if some of the units \(listed on the transfer receipt\) were issued from the warehouse, the landed cost amount updates both the Landed Cost Variance account and the Inventory account of the lot/serial item proportionally to the issued and remaining items \(as specified on the original transfer receipt\), respectively.

-   For inventory items with the *FIFO* valuation method, the system creates a new cost layer based on the transfer receipt \(this layer has the date and the quantity from the transfer receipt\) and the amounts moved between accounts vary as follows, based on the quantity of the layer:
    -   If the layer still has the original quantity, the cost of all items in the layer is updated, and the landed cost amount from the Landed Cost Accrual account is transferred to the Inventory account assigned to the item.
    -   If the current quantity in the layer is less than the original quantity on the receipt, the landed cost amount is moved from the Landed Cost Accrual account to update the Landed Cost Variance account and the Inventory account in proportion to the sold and unsold quantities, respectively.

## An Example of Cost Updating for a Transferred FIFO Item { .section}

If a stock item with the *FIFO* valuation method was transferred from one warehouse to another, a new cost layer for the transferred quantity is created with the date of the transfer receipt.

The history of receipts in the table below illustrates how the landed costs update the cost of the transferred item with the *FIFO* valuation method.

|N|Tran. Type|Date|Ref. Nbr.|Qty.|Warehouse|Unit Cost|Comment|
|---|----------|----|---------|----|---------|---------|-------|
|1|Receipt|February 01|RCP001|5|WHL1|300|A new cost layer for 5 units was created with the date February 1.|
|2|Receipt|February 01|RCP001|7|WHL2|450|A new cost layer for 7 units was created with the date February 1.|
|3|Transfer from warehouse WHL1|February 08|TRAN001|-3|WHL1|300|The cost layer was updated.|
|4|Transfer receipt at warehouse WHL2Landed cost amount added: 240

|February 09|TRREC01|3|WHL2|\(3 \* 300 + 240\) / 3= 380|A new cost layer for 3 units was created with the date February 9.|

If the item is moved within the same warehouse from a location with the **Cost Separately** check box selected on the [Warehouses](IN_20_40_00.md) \(IN204000\) form to a location with the **Cost Separately** check box cleared \(or if the reverse is true\), a new cost layer is created too; however, it has the date of the original receipt. In the above example, if a transfer was performed between the L1 and L2 locations \(which have different cost settings\) of the same warehouse, the cost layer mentioned in Row 4 would have the date February 1.

**Parent topic:**[Allocating Landed Costs](../UserGuide/PO__MNG_Landed_Costs.md)

