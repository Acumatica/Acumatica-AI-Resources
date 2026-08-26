# Stock Kits {#_6bb75d64-c574-49a7-bdd3-cc3a892a9f88 .concept}

A stock kit is a bundle of stock and non-stock components. You create each kit and add it to inventory by processing a production transaction. The kit production subtracts the stock components from inventory and adds the kit units to inventory instead. After you have assembled a kit, you can disassemble it back to its components. When a stock kit is sold, one line item appears in the transaction, and the on-hand quantity of the kit is reduced.

In this topic, you will find details about the configuration, assembly, disassembly, and cost calculation of stock kits.

## Configuration of Stock Kits { .section}

You do the following to configure a stock kit:

1.  You create item classes for kits with similar settings by using the [Item Classes](IN_20_10_00.md) \(IN201000\) form. For details, see [Item Classes for Stock Items: Implementation Activity](Item_Classes_Implem_Activity.md).
2.  You create as many kits as you need by using the [Stock Items](IN_20_25_00.md) \(IN202500\) form. To indicate that each item is a kit, you select the **Is a Kit** check box on the **General** tab of this form. For details, see [To Create a Stock Kit](IN__how_Create_Stock_Kit.md).
3.  You create a specification for each kit by using the [Kit Specifications](IN_20_95_00.md) \(IN209500\) form. In the specification, you select the items that will be included in the kit and specify the settings of each component. Any lot- and serial-tracked stock items can be added to the specification of a stock kit. For details on this step, see [To Create a Specification for a Stock Kit](IN__how_Create_Specification_for_Stock_Kit.md).
4.  You create and release a kit assembly document by using the [Kit Assembly](IN_30_70_00.md) \(IN307000\) form. For details, see [To Assemble a Stock Kit](IN__how_Assemble_Stock_Kit.md).
5.  You assign sales prices to kits as follows:
    -   If you sell a limited number of kits, you assign the default prices on a per-kit basis by using the [Stock Items](IN_20_25_00.md) form.
    -   If you are selling more than ten kits, you assign multiple sales prices to kits by using the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form.

A stock kit may require a serial or lot number and an expiration date to be assigned when the kit is produced or sold, depending on the item class settings. For details on lot and serial numbers, see [Items with Lot and Serial Numbers: General Information](Lot_and_Serial_Numbers_GeneralInfo.md).

You can disassemble a stock kit at any time. You may want to do this, for example, when its expiration date has approached.

## Assembly and Disassembly of Stock Kits { .section}

You must assemble a stock kit by using the [Kit Assembly](IN_30_70_00.md) \(IN307000\) form before you add the kit to a sales order. The kit assembly document lists the components with their quantities and costs, as determined by the kit specification. Each time a stock kit is assembled and its kit assembly document is released, the on-hand quantities of the items used as components are automatically decreased, and the on-hand quantity of the kits is increased. For details, see [To Assemble a Stock Kit](IN__how_Assemble_Stock_Kit.md).

On assembly of stock kits, the standard costs of the kit's non-stock components are recorded to the Expense Accrual accounts specified by the **Use Inventory/Accrual Account From** setting of the posting class \(on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form\) of each of the non-stock components.

If disassembly might be required for a stock kit \(for example, because of an expiration date\), it can be performed in accordance with the revision used to assemble the kit. You can create and release a disassembly document with the *Disassembly* operation selected on the [Kit Assembly](IN_30_70_00.md) form. The quantity of components extracted from the kit is estimated using the disassembly coefficient specified for each stock component. However, the quantities of stock components and non-stock components are not validated in any way, and you can manually adjust the calculated quantities.

For details about how to disassemble a stock kit, see [To Disassemble a Stock Kit](IN__how_Disassemble_Stock_Kit.md).

On the [Kit Assembly](IN_30_70_00.md) \(IN307000\) form, when you assemble or disassemble a kit for which the **Divisible Unit** check box is cleared for the base UOMs on the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the system validates the quantity of the kit: It checks to be sure that the quantity is an integer and displays an error message if it is not.

If a kit that you assemble or disassemble includes stock components for which the **Divisible Unit** check box is cleared for the base UOMs on the [Stock Items](IN_20_25_00.md) form, the system also validates the quantities of the stock components in the document. It makes sure that the quantities are integers and displays an error message if they are not.

## Cost Calculation for Stock Kits { .section}

The cost of stock kits with all valuation methods except *Standard* is calculated based on the costs of components when the document is released. The cost of the stock kit with the *Standard* valuation method is defined by the value in the **Last Cost** box \(**Standard Cost** section\) on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. The total cost of kits with other valuation methods is the total cost of stock components according to the specification's revision, the cost of components added during assembly, and the rates of non-stock components of the *Labor* and *Service* types multiplied by their quantities.

The assembly of stock kits affects the kit's unit cost and quantity on the kit's cost layer depending on the valuation method of the kit as follows:

-   For a kit with the *Average* valuation method, the system updates the existing cost layer or creates a new cost layer if no cost layers exist for the kit in the assembly warehouse.
-   For a kit with the *FIFO* valuation method, the system always creates a new cost layer.
-   For a lot-tracked kit with the *Specific* valuation method, the system updates the existing cost layer or creates a new cost layer if no cost layers exist for the lot in the assembly warehouse. Each lot number has a separate cost layer.
-   For a serial-tracked kit with the *Specific* valuation method, the system creates a new cost layer for each kit.
-   For a kit with the *Standard* valuation method creates a new cost layer if no cost layers exist for the kit in the assembly warehouse. If the cost layer exists for such a kit, the unit cost on this layer is not updated.

If the standard cost method is used for the stock kit, any difference between the currently effective standard cost and the total cost of components is recorded \(as with non-stock kits\) to the Standard Cost Variance account determined by the posting class of the stock kit.

When a stock kit is disassembled, the costs of its stock components, which are returned to inventory, are calculated depending on the valuation method of the components as follows:

-   *Average*: The cost of the component is calculated based on the setting of the **Average Default Cost** box on the [Warehouses](IN_20_40_00.md) \(IN204000\) form. By default, this setting is the average cost of the item at the warehouse. You can also select the last cost as the value of this box.
-   *FIFO*: The cost of the component is calculated based on the setting of the **FIFO Default Cost** box on the [Warehouses](IN_20_40_00.md) form. By default, this setting is the average cost of the item at the warehouse. You can also select the last cost as the value of this box.
-   *Specific*: The cost of the component is the average cost of the item at the warehouse. If there is no average cost of the item at the warehouse, the last cost of the item at the warehouse is used.
-   *Standard*: The cost of the component is the standard cost of the item at the warehouse, if any standard cost is defined on the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form. Otherwise, the global standard cost of the item defined on the [Stock Items](IN_20_25_00.md) \(IN202500\) form is used.

## Cost Calculation for Components of Stock Kits { .section}

The assembly and disassembly operations can generate a cost variance between the cost of stock components and the cost of the kit. To record this variance, a reason code of the *Assembly/Disassembly* type is used. You can create this reason code on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form. For more information about reason codes, see [Reason Codes: General Information](Reason_Codes_GeneralInfo.md).

In the assembly documents—that is, the documents for which the *Assembly* option is selected in the **Type** box in the Summary area—the reason code is required if the quantity of the stock item in the line exceeds the on-hand quantity and overissue is allowed for this item. Overissue is permitted if the **Allow Negative Quantity** check box is selected on the [Item Classes](IN_20_10_00.md) \(IN201000\) form for the item's class. When the overissued quantity of the item is received in stock, the reason code's account is used to record the cost variance. You specify this reason code in the **Reason Code** column on the **Stock Components** tab of the [Kit Assembly](IN_30_70_00.md) \(IN307000\) form for lines of stock components used to assemble the kit.

In disassembly documents—that is, the documents for which the *Disassembly* option is selected in the **Type** box of the Summary area—the reason code is required to record the difference between the kit's cost and the cost of the disassembled kit's components. You can specify this reason code in the **Reason Code** box in the Summary area of the [Kit Assembly](IN_30_70_00.md) \(IN307000\) form.

You can specify the default reason code to be used for the assembly and disassembly operations in the **Assembly/Disassembly Reason Code** box on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form. The system automatically inserts the reason code as follows:

-   In assembly documents, the system automatically inserts the reason code in the **Reason Code** box in the Summary area of the [Kit Assembly](IN_30_70_00.md) \(IN307000\) form. When the assembly document is released, the system also copies this reason code to the **Reason Code** column on the **Stock Components** tab for stock components that do not have a reason code specified manually.
-   In disassembly documents, the system inserts the reason code in the **Reason Code** box in the Summary area of the [Kit Assembly](IN_30_70_00.md) \(IN307000\) form.

## Lot and Serial Numbers for Kits { .section}

If component parts as well as assembled kits have lot or serial numbers, your company will know precisely which assembled kits contain any component, if this information is requested by the component manufacturer.

**Parent topic:**[Managing Inventory Kits](../UserGuide/IN__mng_Managing_Kit_Assemblies.md)

