# Non-Stock Kits {#_56813a1a-d769-48f9-a4fc-1041e81dbfad .concept}

A non-stock kit is a bundle of stock and non-stock components; you assign an individual inventory identifier to the non-stock kit, and it can be selected in sales orders. Non-stock kits are virtual kits because they neither produced nor tracked in inventory, unlike stock kits. The stock components of the non-stock kit remain in inventory and can be sold in the kit or as separate units.

In this topic, you will read about the configuration, processing, and cost calculation of non-stock kits.

## Configuration of Non-Stock Kits {#nonstockkits .section}

When you create a non-stock kit, you do the following:

1.  If you need to create a number of kits with similar settings, you create an item class for each group of kits by using the [Item Classes](IN_20_10_00.md) \(IN201000\) form.
2.  You create as many kits as you need by using the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form. To indicate that an item is a kit, you select the **Is a Kit** check box on the **General** tab of this form. For details, see [To Create a Non-Stock Kit](IN__how_Create_Non_Stock_Kit.md).
3.  You create a specification for each kit by using the [Kit Specifications](IN_20_95_00.md) \(IN209500\) form. In the specification, you select the inventory items that will be included in the kit and specify the settings of each component. Any lot- and serial-tracked stock items can be added to the specification of a non-stock kit, except for items with the *When Used* assignment method or with the *User-Enterable* issue method specified for their lot/serial classes on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form. For details on this step, see [To Create a Specification for a Non-Stock Kit](IN__how_Create_Specification_for_Non_Stock_Kit.md).
4.  You assign sales prices to kits as follows:
    -   If you sell a limited number of kits, you assign the default prices on a per-kit basis by using the [Non-Stock Items](IN_20_20_00.md) form.
    -   If you are selling more than ten kits, you assign multiple sales prices to kits by using the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form.

## Processing of Non-Stock Kits { .section}

As with non-stock items, non-stock kits are not stocked. When non-stock kits are added to a sales order, the items are gathered for the sale but no preliminary assembly has been performed. When a non-stock kit is listed on a sales order as a line item, its stock components are specified on a pick list and shipped to the customer. Upon shipment confirmation, the quantity of stock components is decreased while the quantities of non-stock components and kits are not tracked in any way.

On release of a Sales Order invoice for a non-stock kit with stock components, the system generates an inventory issue; on release of the inventory issue, the system debits the COGS accounts of the stock components, thus updating the stock components' costs. On the sale of a non-stock kit with only non-stock components, no inventory issue is generated.

When you process a sale of a non-stock kit, its stock components are issued from inventory, and the sales revenue from all components of the kit is recorded to accounts.

For a non-stock kit that includes stock components for which the **Divisible Unit** check box is cleared for base UOMs on the [Stock Items](IN_20_25_00.md) form, when a user creates and saves a shipment for a sales order with at least one such kit, the system validates the quantity of each component included in the specified quantity of the kit, making sure that it is an integer. If the quantity of any component is not an integer, the system displays an error message. The shipment is not created or is created but placed on hold, depending on the state of the **Hold Shipments on Entry** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form. When a user creates and saves a receipt for a purchase order that includes at least one non-stock kit with similar stock components, the system works similarly.

## Calculation of Cost for Non-Stock Kits { .section}

The cost of a non-stock kit may include the cost of the kit itself and the costs of all stock components included in the kit. You can select one of the following cost calculation rules on in the **Cost Calculation Basis for Non-Stock Kits** box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form:

-   *Stock Component Cost*: The system will use the sum of the costs of the kit's stock components as the cost of a non-stock kit. You can select this rule if the kit does not include non-stock components or the value of the included non-stock components is very low.
-   *Non-Stock Kit Standard Cost*: The system will use the standard current cost of the non-stock kit. You can select this rule if the kit does not include stock components or the value of the included stock components is very low.
-   *Non-Stock Kit Standard Cost Plus Stock Component Cost*: The system will calculate the sum of the standard current cost of a non-stock kit and the costs of the stock components of this kit.

You can enter the kit standard cost directly in the **Pending Cost** box on the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form when you create or modify the non-stock kit.

**Note:** Only the *Standard Cost* valuation method may be assigned to non-stock kits. For more information, see .[Item Costs and Valuation Methods: General Information](Item_Costs_Valuation_Methods_GeneralInfo.md)

**Parent topic:**[Managing Inventory Kits](../UserGuide/IN__mng_Managing_Kit_Assemblies.md)

