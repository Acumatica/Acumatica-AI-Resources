# Configuration of Landed Cost Codes {#_1d956146-dd65-4f1f-bfd6-026c312e7c09 .concept}

The total cost of goods purchased generally includes the purchase price and additional charges, such as freight or other shipping costs and insurance; for an international shipment, it may also include customs duties and other taxes. All these charges, often referred to as *landed costs*, affect the total product cost. Landed costs are the costs incurred, beyond the purchase price the vendor charges for the goods, in the process of bringing the goods to one of your company's warehouses.

To accurately calculate the total product cost, you must consider all landed costs. By accurately analyzing total product cost statistics, your company can assign the most appropriate prices to the products you sell.

## Landed Cost Code Definition { .section}

In Acumatica ERP, landed cost codes are used to capture various types of landed costs. For each type of landed costs your company may encounter, create a landed cost code to be used to enter and process that type of landed costs.

Most landed costs are not fixed amounts associated with a specific inventory item. Landed costs may be fees, such as for shipping and handling, whose amount depends on the weight, volume, or quantity of items. Accordingly, you need to define how to allocate the incurred amounts among all items in the receipt. The landed cost amounts are ultimately paid to a carrier or customs office—the landed cost vendor—rather than to the vendor that sells the goods.

In Acumatica ERP, you create and maintain landed cost codes by using the [Landed Cost Codes](PO_20_20_00.md) \(PO202000\) form. For each code, you specify the following information:

-   The type of landed cost
-   The method of allocating landed cost amounts among the lines of the documents added to landed cost document
-   The reason code to be used in the inventory adjustment that is generated on release of a landed cost document
-   The accounts and subaccounts used to accrue landed cost amounts and landed cost variance
-   The tax category \(if the landed costs are subject to taxes\)

A landed cost code is not associated with any specific currency, so if multicurrency support has been enabled in the system, landed costs are considered as specified in the currency of the document.

## Landed Cost Allocation Method { .section}

The allocation method of a landed cost defines how the landed cost is distributed among lines of the documents specified in the landed cost document. When you are creating a landed cost code for specific type of landed cost, you can select one of the following allocation methods:

-   *By Quantity*: The landed cost amount is distributed among the document lines in proportion to their quantities. This adds a greater percentage of the landed cost to the goods purchased in the largest quantities. If units of measure \(UOMs\) other than the base UOMs are specified for items, item quantities are calculated with respect to the base UOMs.

    **Important:** Use this option for only documents that include similar items with the same base UOM or similar base UOMs. Do not use this option for documents that include disparate items with base units that cannot be compared, such as pallets and tons, or meters and pounds.

-   *By Cost*: The landed cost amount is distributed among the document lines in proportion to their extended cost. The extended cost is calculated based on the item's valuation method. This adds a greater percentage of the landed cost amount to more expensive goods.
-   *By Weight*: The landed cost amount is distributed among the inventory items proportionally to their weights. This adds a greater percentage of the landed cost to the goods that weigh the most. The weight of the base unit of the inventory item is specified on the **Packaging** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.
-   *By Volume*: The landed cost amount is distributed among the applicable items proportionally to their volumes. This adds a greater percentage of the landed cost to goods with more bulk. The volume of the base unit of the inventory item is specified on the **Packaging** tab of the [Stock Items](IN_20_25_00.md) form.

When you add purchase receipts \(or transfer receipts\) to a landed cost document, the system automatically allocates the landed cost amounts between the added document lines. The system uses the allocation method to calculate the landed cost amount to be added to the cost of a particular inventory item listed on the adjustment. The system also recalculates the allocated amounts on any changes in the landed cost amounts or document lines to which these amounts are allocated.

On release of the landed cost document, the system generates an inventory adjustment for the inventory items listed in the landed cost document to adjust the items' costs.

**Parent topic:**[Allocating Landed Costs](../UserGuide/PO__MNG_Landed_Costs.md)

