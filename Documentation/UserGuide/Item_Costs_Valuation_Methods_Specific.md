# Item Costs and Valuation Methods: Specific Method {#_e5dc69d6-fb74-40d8-835c-9978a0bf7173 .concept}

You use the *Specific* valuation method to track each unit of an item in inventory and assign costs to units individually instead of grouping the units together. The cost of each purchased or produced unit of an item is determined by the item's lot or serial number. The *Specific* valuation method is widely used by manufacturers and retailers of technical equipment, healthcare, and medical device companies for precise identification of medical equipment and its parts.

One of the key benefits of the *Specific* method is its precise tracking of inventory items and accurate income calculation when sales occur. The method also makes it easier for companies to assess lost revenue due to damages, losses, or returns. This method's accuracy significantly reduces the risk of misplaced or lost inventory.

You assign this valuation method to a stock item by selecting *Specific* in the **Valuation Method** box on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form. You can assign the *Specific* valuation method to stock items only if the *Lot and Serial Tracking* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Cost Tracking for Items with the Specific Method { .section}

If the *Specific* valuation method is assigned to a stock item, the item's quantity and unit cost are recorded in layers. Each cost layer is identified by a serial or lot number of the stock item. When units of the stock item are received in a warehouse, the unit cost assigned to each unit of the item will remain the same until the item unit is issued, used as a component, or sold. For an item with the same lot number, if a new the receiving document number is released, the cost of the layer is updated.

If an item has the *Specific* valuation method assigned, the costs of its units may be different, and the **Unit Cost** box on the [Issues](IN_30_20_00.md) \(IN302000\) form displays the last unit cost for the item. On this form, you can open the **Line Details** dialog box to view the items to be issued or to select them by lot or serial numbers. When the issue is released, the system will issue the item based on the cost of a particular issued lot or serial number, and the **Unit Cost** and **Ext. Cost** values on the [Issues](IN_30_20_00.md) form will be updated automatically.

**Tip:** A stock item with the *Specific* valuation method is issued from inventory based on the option in the **Issue Method** box on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form. For details, see [Items with Lot and Serial Numbers: Tracking Settings](Lot_and_Serial_Numbers_Class_Settings.md).

You can view a lot or serial-tracked item's cost for each lot or serial number in the **Estimated Unit Cost** column on the [Inventory Summary](IN_40_10_00.md) \(IN401000\) form if the **Expand by Lot Serial Number** check box is selected.

## Example of Cost Calculation for the Specific Method { .section}

Suppose that a stock item was purchased as follows:

-   On May 19, 100 units starting with the serial number 11023423 at $2.00 each
-   On May 21, 100 units starting with the serial number 11023523 at $2.10 each
-   On May 19, 100 units starting with the serial number 11023623 at $1.90 each
-   On May 19, 100 units starting with the serial number 11023723 at $2.20 each

The total stock cost is $820. When items with the serial numbers 11023444 and 11023666 are sold—that is, the item is issued from the warehouse—the unit costs recorded to the COGS account are $2.00 and $1.90, respectively.

**Parent topic:**[Managing Item Costs and Valuation Methods](../UserGuide/Item_Costs_Valuation_Methods_Mapref.md)

