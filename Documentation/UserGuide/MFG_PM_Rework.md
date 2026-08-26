# Rework/Repair Orders {#_4581d321-08db-4bbb-bb44-0b86dfcadae9 .concept}

A rework or repair order can be used to issue an existing item from inventory, do something to it, and return it to stock with the same or different inventory id. There are a number of reasons why this may be necessary:

-   The item is an old revision and needs to be upgraded.
-   A component from a supplier was found to be defective and needs to be replaced.
-   It was returned by a customer or someone else and needs to be inspected and repaired if necessary.
-   It can be converted into a different item that someone wants.
-   You want to disassemble it for it's parts and dispose it.

## Create a Repair/Rework Bill of Material { .section}

If you frequently do repair work for your customers you might create a repair bill of material for the stock item. You would list the operations to be performed and if required, any materials always used in the process. By having a special bill of material you can also add notes, attach procedures, or add attributes to the bill that will be copied to the production order based on the production order type settings specified on the [Production Order Types](AM_20_11_00.md) \(AM201100\) form.

## Create a Production Order Type { .section}

On the [Production Order Types](AM_20_11_00.md) \(AM201100\) form, you create an order type for repair and rework orders to help identify them and to use different settings, such as:

-   Numbering Sequence
-   WIP and WIP Variance Accounts \(only if Posting Class is not used\)
-   Default Costing Method
-   Copy Notes Settings
-   Data Entry Settings

## Create the Production Order { .section}

To start you need to create a production order for the item you plan to receive into inventory. If the item has a bill of material you can decide if you want to use an existing bill, either the default or a special repair bill, to start and then amend it as necessary by using the [Production Order Details](AM_20_90_00.md) \(AM209000\) form. You delete unneeded operations with their materials; change, delete, or add materials; modify overhead and/or tools as required. Be sure to review the backflush check boxes for an operation or material and clear them when necessary.

Alternatively, you can remove the *BOM ID* on the **References** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form. If you do this, you will need to create at least one operation in order to report the quantity completed and issue materials. The first material to add is the inventory item to issue to the production order which can be the same as the item being reworked.

If known if advance, you can add other materials to the details or simply issue them as needed during the rework process; there is no restriction on materials being issued that are not in the production details. If some materials are recoverable and are known in advance, make the quantity required a negative and a receipt will be created to return the item to inventory when you use the [Select Production Orders](AM_30_00_10.md) \(opened from the [Materials](AM_30_00_00.md) \(AM300000\) form\) to create a materials batch.

**Attention:** Whether or not you use an existing bill of material or manually enter the production details you will need to add the item being issued from inventory for repair and this can be the same item you will return to stock or dispose. Although you cannot specify an inventory item as a component of itself in a bill of material because it would cause a circular reference in MRP Regeneration or the Cost Roll process, you can do this for a production order.

If you are using posting classes defined on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form to specify default WIP and WIP Variance accounts, you can override these settings on the **References** tab of the [Production Order Maintenance](AM_20_15_00.md) form.

## Returning Materials to Stock { .section}

If there are components that are removed and can be used elsewhere or need to be returned to vendor, you can enter a negative quantity on the [Materials](AM_30_00_00.md) \(AM300000\) form. The cost of an item returned to stock is dependent on the *Default Returns Cost* settings for warehouses. If the materials need further processing \(inspection, disposal, repair, return to vendor, etc.\), you should indicate a warehouse bin location that is not included in the quantity available calculations and excluded from MRP.

The cost of materials returned to stock will credit the work in process account specified on the production order and debit the inventory account associated with each inventory item.

## Returning Materials to Vendors { .section}

After returning the item to stock, you use the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form to create a vendor return. For more information about vendor returns, see [Purchase Returns at the Original Cost: General Information](OrderMgmt_Purchase_Return_Original_Cost_GeneralInfo.md) and [Purchase Returns at the Calculated Cost: General Information](OrderMgmt_Purchase_Return_Calc_Cost_GeneralInfo.md).

## Posting the Completion or Disposal { .section}

If the repairs were successful, then you can receive the unit to stock by creating a move or labor transaction. If the unit is lot- or serial-tracked, you can use a new lot or serial number. You can add a suffix to indicate that the unit has been repaired.

If the repairs were not completely successful, then you can enter the scrap quantity on the Move or Labor transaction to complete the production order. Using this method can leave a balance for the WIP amount on the production order. Alternatively, you could receive the item into a disposal location and use an Inventory Issue with an appropriate reason code to charge the costs to whatever account you desire.

## Closing the Production Order { .section}

The final step is to close production orders by using the [Close Production Orders](AM_50_60_00.md) \(AM506000\) form to zero out any WIP balance and to post those costs to the WIP Variance account. You can update the production order to change the WIP Variance account before closing the order.

**Parent topic:**[Production Management](../UserGuide/MFG_PD_00_00.md)

