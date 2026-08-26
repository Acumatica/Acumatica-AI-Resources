# Inventory Planning with DRP: Transfers {#_2a0ce059-5966-4175-a909-c1c64a2065e9 .concept}

Items may be stored in multiple warehouses, such as when items are purchased to one warehouse but stored in and shipped from another warehouse. In this case, you may want the system to create planning recommendations for the transfer of items during inventory planning.

As you perform distribution requirements planning \(DRP\) in Acumatica ERP, the system creates planning recommendations for available item transfers during inventory planning if the proper settings have been specified, as described in the *Transfer Orders in Inventory Planning* section of [Inventory Planning Configuration: General Information](../ImplementationGuide/config_Inventory_Planning_GeneralInfo.md).

## Planning Recommendations for Transfers { .section}

The system generates a planning recommendation for an item during inventory planning when both of the following conditions are met:

-   The available item quantity in the warehouse specified in a demand document is insufficient to meet the demand.
-   The item can be transferred from a different warehouse \(referred to as a *transfer warehouse*\) according to the item settings. This condition is met if *Transfer* is specified in the **Replenishment Source** box of the **Inventory Planning** tab on the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form for the combination of the item and the source warehouse.

For a planned transfer order, the system displays the following records on the [Inventory Planning Display](AM_40_00_00.md) \(AM400000\) form:

-   The demand document \(such as a sales order\) that contains the item. This record has the *Transfer* source and the transfer warehouse specified.
-   The created planning recommendation for the transfer order. This record has the *Planned Transfer Demand* type.

Suppose that your organization purchases juicers and has warehouses in New York and New Jersey. In the New York warehouse, which is a sales center, juicers are shipped to customers. In the New Jersey warehouse, the purchased juicers are received from vendors and stored. If any materials are out of stock in the New York warehouse, they are transferred from the New Jersey warehouse.

Further suppose that in Acumatica ERP, on the [Item Warehouse Details](IN_20_45_00.md) form, the *Transfer* replenishment source is specified for the juicers in the New York warehouse, and the New Jersey warehouse has been specified as the replenishment warehouse. Inventory planning is automatically run every night, and a planning manager analyzes the demand and supply for juicers based on the inventory planning results.

Now suppose that one of your customers would like to buy 10 juicers for its new restaurants. A sales manager has created a sales order for the juicers. Further suppose that you have five juicers in the New York warehouse and two juicers in the New Jersey warehouse. To meet the customer's demand, you need to purchase three juicers, which will be received in the New Jersey warehouse, and then transfer five juicers from the New Jersey warehouse to the New York warehouse.

When the planning manager analyzes the inventory planning results, they see the following supply records related to the sales order:

-   A planning recommendation for a purchase order to purchase three juicers \(which will be shipped to the New Jersey warehouse\)
-   A planning recommendation for a transfer order to transfer five juicers from the New Jersey warehouse to the New York warehouse

## Creation of a Transfer Order Based on Planning Recommendations { .section}

If you decide to transfer items according to the planning recommendations resulting from the inventory planning process, on the [Inventory Planning Display](AM_40_00_00.md) \(AM400000\) form, you select the needed records in the table and click **Transfer** on the form toolbar. The system creates a transfer order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. On the **Details** tab, each line has a number of lines that is equal to the number of the selected records and a **Ship On** date that is the same as the action date of each planning recommendation that you selected for the transfer order.

**Parent topic:**[Performing Inventory Planning with DRP](../UserGuide/OrderMgmt_Inventory_Planning_DRP_Mapref.md)

