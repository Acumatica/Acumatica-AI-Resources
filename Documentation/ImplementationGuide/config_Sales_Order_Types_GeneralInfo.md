# Sales Order Types: General Information {#_96a00780-a0c3-4314-86ca-093004844268 .concept}

Acumatica ERP provides a number of predefined sales order types for common processing operations, such as sales with shipment, sales without a shipment, sales by cash, sales by check, and customer returns of inventory items. On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, you activate the order types that your company will use and make sure that they are configured to fit your company's processes.

When you create a new order on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, you select the appropriate order type, which determines the information to be entered on the form, the processing operations to be performed for the order to be completed, and the documents to be generated during order processing.

## Learning Objectives { .section}

In this chapter, you will do the following:

-   Become familiar with the predefined order types and processing of orders of these types
-   Activate an order type with the minimum required settings
-   Specify optional settings that affect how an order of the type is processed

## Applicable Scenarios { .section}

You configure order types in the following cases:

-   You are initially configuring order management in Acumatica ERP, and you have to activate at least one order type to be able to create and process sales orders in the system.
-   You need to activate any of the predefined order types that are not yet active to support additional business processes.

## Order Type for Recording Expected Sales { .section}

If you want to track your company's expected future sales, your employees can prepare orders of the *QT* \(*Quote*\) type on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. Quotes can later be converted to sales orders or canceled if the sale is no longer expected to happen. Quotes can also be used as templates for repeating orders for a particular customer. For more information, see [Processing Pre-Sale Quotes](../UserGuide/OrderMgmt_Pre-Sale_Quotes_Mapref.md).

## Order Types for Processing Sales { .section}

Acumatica ERP provides predefined order types for the processes that are used most frequently in sales. Some of the predefined order types for sales on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form are configured for sales that are processed through shipping, while others are configured for sales without shipping.

For an order of a type on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, that requires shipping, you can process a shipment of items with a single shipment document, or with multiple partial shipment documents, each of which may be billed individually. During shipment processing, you can print labels with carrier tracking numbers. Also, while viewing the shipment in the system, you can print a pick list for the warehouse worker \(for verification of the shipped and received quantities\) and the shipment confirmation for the buyer.

The following predefined order types can be used for sales orders that are processed through shipments:

-   *SO* \(*Sales Order*\): An order of the type that you create to represent a customer request to buy goods in the specified quantities on the specified date, with the items in the sales order being shipped. A sales order of this type can be created from scratch or based on a quote or opportunity. For details, see [Opportunity Management: General Information](../UserGuide/CRM_Sales_Managing_Opportunities_General_Info.md).
-   *SA* \(*Sales Order with Allocation*\): An order of the type that you create to represent a customer request to buy particular goods in the specified quantities on the specified date, with the items in the sales order being shipped. When the sales order with allocation is saved, the requested goods are automatically reserved in inventory for this order.

The following predefined order types can be used for sales orders that are processed without shipments:

-   *IN* \(*Invoice*\): You create an order of this type when the goods requested by a customer do not require shipping, so the order processing requires only preparing an invoice for the customer and does not involve shipments. This order type can be used for a point-of-sale \(POS\) system.
-   *CS* \(*Cash Sale*\): You create an order of this type when you sell items directly to the customer and receive payment at that time \(by cash, check, or credit card\).

You choose which types of sales orders to activate and configure depending on the business processes established in your company. The following table shows a comparison of the predefined order types for sales and the ways they relate to business process requirements.

|Business Process Requirement|*SO*|*SA*|*IN*|*CS*|
|----------------------------|----|----|----|----|
|**Shipping of Items to the Customer**|Required|Required|Not needed|Not needed|
|**Payment**|By credit|By credit|By credit|In cash|
|**Billing Document to the Customer**|Invoice|Invoice|Invoice|Cash sale|
|**Reserving Items in Inventory**|Manual|Automatic|Not needed|Not needed|

## Order Type for Processing Recurring Sales { .section}

An order of the predefined *BL* \(*Blanket Order*\) type on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form is used for the sale of large quantities of an item or multiple items that can be delivered to different customer locations over a specified period. This kind of sale can be based on a long-term agreement with the customer. Blanket sales orders can be used for planning, forecasting, and monitoring purposes because the quantities that a user enters on a blanket sales order do not affect the item availability in the warehouse, unlike the quantities in orders of the *SO* type, which are used for sales.

The lines of a blanket sales order on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form are copied to child orders on the date that you specify for shipping. A blanket sales order is completed when all child orders have been shipped.

## Order Types for Processing Customer Returns { .section}

Acumatica ERP provides return order types for the most frequently used return processes, such as return for credit, return for cash, and return for replacement. In the system, sales returns can be processed through a simple workflow, in which you create a return order and then process the invoice directly from the order, or through the full workflow, in which you process the receipt of the returned item, process the shipment of the replacement item, and then prepare the invoice.

You choose which types of return orders to activate and configure on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form depending on your return policies. The following predefined order types are available for orders on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form that are used for processing returns:

-   *CR* \(*Cash Return*\): You create a cash return order to process a return of items that were sold in a cash sale and do not require shipping.
-   *CM* \(*Credit Memo*\): You use a credit memo order to account for unauthorized returns from customers; this order includes a link to the original invoice. You can use credit memo orders to account for unauthorized returns.
-   *RC* \(*Return for Credit*\): You use an order of this type to authorize customer returns for credit in the amount of the returned goods only. No replacement of goods is performed for this customer return. By customer request, you can send a printed or electronic copy of the order to accompany the goods the customer intends to return. Once the goods have been returned, the received goods are returned to inventory, and the customer receives their money back.
-   *RR* \(*Return with Replacement*\): You use an order of this type to create return orders with replacement at the same price.
-   *RM* \(*Merchandise Authorization Return*\): This order type is used for returns with replacement at a different price than the original price or returns for credit within the product’s warranty period. You use an order of this type for the authorization of customer returns.

The following table shows a comparison of the predefined order types for returns of sold goods and the ways they relate to business process requirements.

|Business Process Requirement|*CR*|*CM*|*RC*|*RR*|*RM*|
|----------------------------|----|----|----|----|----|
|**Shipping of Returned Items**|Not needed|Not needed|From the customer to inventory|From the customer to inventory|From the customer to inventory|
|**Shipping of Replacement Items**|Not needed|Not needed|Not needed|From inventory to the customer|From inventory to the customer|
|**Financial Document for the Customer**|Cash return document with the amount to be returned|Credit memo with the amount to be returned|Credit memo with the amount to be returned|Not needed|Invoice in the amount of the difference between the prices of returned and replacement items and \(optionally\) a restocking fee|

## Order Type for Processing Both a Sale and a Customer Return { .section}

An order of the predefined *MO* \(*Mixed Order*\) type on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form is used for processing both a sale and a customer return in the same order on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, as well as the payments and customer refunds related to this order. A mixed order may be used if a customer needs to buy and return products or services \(or receive a replacement for the returned products\) at the same time at a counter or through a point-of-sale \(POS\) system operated by a cashier. The type of the return in a mixed order is a return for cash or return for credit.

The **Process Shipments** check box is cleared on the **Template** tab. This indicates that for an order of the *MO* type, no shipment is created during the processing. Mixed orders are not used for orders requiring shipping because they are designed for in-person returns processed by a cashier.

On the [Sales Orders](../UserGuide/SO_30_10_00.md) form, you can add lines for sales and lines for returns to the mixed order. You then process a customer payment if the order has a positive balance or a customer refund if the order has a negative balance.

Mixed orders support business process requirements as follows:

-   The billing document that is processed for the customer is a credit memo or cash return document with the amount to be returned.
-   The financial document processed for the customer is an invoice or cash sale document.

## Order Type for Processing Transfers { .section}

In a system with multiple warehouses or multiple warehouse locations, you may need to create and process transfer orders on the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, which are orders of the *TR* \(*Transfer*\) order type. A transfer order tracks the goods that need to be moved between warehouses or warehouse locations before a sales order can be fulfilled. Also, transfer orders can be generated in the process of replenishment, to move goods from the source warehouse to the destination warehouse.

**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

