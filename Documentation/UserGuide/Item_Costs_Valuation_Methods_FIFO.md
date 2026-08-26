# Item Costs and Valuation Methods: FIFO Method {#_587addee-e34b-4c31-8f6a-77ef031505b4 .concept}

A company assigns the *FIFO* \(first in, first out\) valuation method to items when the item units purchased or produced first are the first ones to be sold. That is, the inventory that a company has at the end of an accounting period consists of the most recently purchased or produced item units. The primary advantage of the *FIFO* method is minimizing losses related to obsolete and perishable stock. International companies use the *FIFO* method because it is widely accepted by regulatory authorities and standards, including IFRS and GAAP.

With the *FIFO* method, the sale of the oldest stock is prioritized first, and the value of the on-hand inventory is determined by using the most recently acquired items. This ensures a more precise alignment of the inventory cost with the current market value, giving the company a clearer understanding of the inventory value and replacement costs.

You assign this method to a stock item by specifying *FIFO* in the **Valuation Method** box on the **General** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

## Cost Tracking for Items with the FIFO Method { .section}

If the *FIFO* valuation method is assigned to a stock item, the item's unit cost is recorded in layers. Each cost layer is identified by the receiving document number, the inventory ID, and the warehouse. You can view the date, the document number, the inventory ID, the item's quantity, and the cost on the [Inventory Transaction History](IN_40_50_00.md) \(IN405000\) or [Inventory Transaction Details](IN_40_40_00.md) \(IN404000\) inquiry form.

When a stock item is received in a warehouse, on the release of each new document, the system creates a new cost layer. You can update the item cost in a particular cost layer on the [Adjustments](IN_30_30_00.md) \(IN303000\) form by selecting the required the receiving document number in the **Receipt Nbr.** box on the **Details** tab.

When a certain quantity of a stock item with the *FIFO* valuation method is issued, the system assigns the cost for the item starting with the earliest available cost layer. If the quantity to be issued is greater than the quantity in the earliest cost layer, this quantity is issued as follows:

-   The entire quantity from the earliest cost layer \(with the associated unit cost\)
-   The rest of the required quantity from the next earliest cost layer \(with another associated unit cost\)

The **Unit Cost** box on the [Issues](IN_30_20_00.md) \(IN302000\) form displays the unit cost for the first unit to be issued. You can open the **Line Details** dialog box to view particular items to be issued or to select them by a lot or serial number. The **Ext. Cost** value on the [Issues](IN_30_20_00.md) form will be automatically calculated as the sum of the unit costs of all listed items.

## Example of Cost Calculation for the FIFO Method { .section}

Suppose that a stock item was purchased in the following way:

-   Cost layer 1: May 10, 5 units at $8 each
-   Cost layer 2: June 10, 5 units at $10 each

The total stock cost is \(5 \* $8\) + \(5 \* $10\) = $90.

Then suppose that a sales order has been created with 8 items. All units from cost layer 1 and three units from cost layer 2 will be used to complete the issue transaction. The extended cost is \(5 \* $8\) + \(3 \* $10\) = $70.

**Parent topic:**[Managing Item Costs and Valuation Methods](../UserGuide/Item_Costs_Valuation_Methods_Mapref.md)

