# Inventory Planning with MRP: Planning Transfers in MRP {#_0cbdaa8c-5046-4183-85d0-4eea3516efb7 .concept}

In your production environment, items may be stored in multiple warehouses, such as when items are produced in one warehouse but stored and shipped in another warehouse. In this case, you may want the system to create planning recommendations for the transfer of items during inventory planning. In Acumatica ERP Manufacturing Edition, the system creates planning recommendations for available item transfers during inventory planning if proper settings have been specified, as described in [Inventory Planning Configuration: General Information](../ImplementationGuide/config_Inventory_Planning_GeneralInfo.md).

In the following sections, you will read about planning recommendations for transfers that the system creates during inventory planning.

## Planning Recommendations for Transfers { .section}

The system generates a planning recommendation for an item during inventory planning when both of the following are true:

-   The available item quantity in the warehouse specified in a demand document is insufficient to meet the demand.
-   The item can be transferred from a different \(transfer\) warehouse according to the item settings. That is, *Transfer* is specified in the **Replenishment Source** box of the **Inventory Planning** tab on the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form for the combination of the item and the transfer warehouse.

For a planned transfer order, the system creates the following records on the [Inventory Planning Display](AM_40_00_00.md) \(AM400000\) form:

-   The demand document \(such as a sales order\) that contains the item. This record has the *Transfer* source and the transfer warehouse specified.
-   The planning recommendation for a transfer order itself. This record has the *Planned Transfer Demand* type.

Suppose that your organization assembles juicers and has warehouses in New York, Ohio, and New Jersey. In the New York warehouse, which is a sales center, juicers are shipped to customers. In the Ohio warehouse, which is a production center, the juicers are assembled and stored. When the juicers are out of stock in the New York warehouse, they are produced in the Ohio warehouse and transferred from this warehouse. In the New Jersey warehouse, the purchased materials for the juicers are received from vendors and stored. If any materials are out of stock in the Ohio warehouse, they are transferred from the New Jersey warehouse.

Further suppose that in Acumatica ERP Manufacturing Edition, on the [Item Warehouse Details](IN_20_45_00.md) form, the replenishment source of the juicers in the New York warehouse has been set as *Transfer*, and the Ohio warehouse has been specified as the replenishment warehouse. Also, the replenishment source for materials in the Ohio warehouse has been set as *Transfer*, and the New Jersey warehouse has been specified as the replenishment warehouse. Inventory planning is automatically run every night, and a planning engineer analyzes demand and supply for juicers based on the inventory planning results.

Now suppose that one of your customers would like to buy 10 juicers for its new restaurants. A sales manager has created a sales order for the juicers. Further suppose that you have three juicers in the New York warehouse and five juicers in the Ohio warehouse. To meet the customer's demand, you need to produce two juicers, but the materials are out of stock in the Ohio warehouse and must be transferred from the New Jersey warehouse.

When the planning engineer analyzes the inventory planning results, the engineer sees the following supply records related to the sales order:

-   A planning recommendation for a production order to produce two juicers in the Ohio warehouse
-   A planning recommendation for a transfer order to transfer materials for two juicers from the New Jersey warehouse to the Ohio warehouse
-   A planning recommendation for a transfer order to transfer seven juicers from the Ohio warehouse to the New York warehouse

## Calculation of an Action Date for Planning Recommendations for Transfer Orders { .section}

If the transfer lead time between the warehouse selected in a demand document and the transfer warehouse has been specified during the system configuration, then the system subtracts the transfer lead time from the requested date in the demand document when calculating the action date for the planning recommendation for a transfer order. For example, suppose that transferring of items between warehouses takes two days. If a sales order has a requested date of January 30, then the action date for the planned transfer order is January 28.

**Tip:** You can specify the transfer lead time between warehouses on the **Manufacturing** tab of the [Warehouses](IN_20_40_00.md) \(IN204000\) form. You can also override this time on the **Manufacturing** tab of the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form for a particular item.

## Creation of a Transfer Order Based on Planning Recommendations { .section}

If you decide to transfer items according to the planning recommendations resulting from the inventory planning process, on the [Inventory Planning Display](AM_40_00_00.md) \(AM400000\) form, you select the needed records in the table and click **Transfer** on the form toolbar. The system creates a transfer order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form with a number of lines on the **Details** tab that is equal to the number of the selected records and a **Ship On** date for each line that is the same as the action date of each planning recommendation for a transfer order that you selected.

**Parent topic:**[Inventory Planning with MRP](../UserGuide/MFG_MRP_Mapref.md)

