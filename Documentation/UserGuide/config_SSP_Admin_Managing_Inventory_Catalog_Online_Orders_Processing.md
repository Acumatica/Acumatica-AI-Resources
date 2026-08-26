# Managing the Inventory Catalog in the Self-Service Portal: Online Order Processing {#_e6f03114-c5da-4a76-982c-7708aa5e1ff4 .concept}

The Orders suite of the Acumatica Self-Service Portal gives your customers the ability to order products online: They can browse the list of products, view the detailed product information, place orders, and monitor their progress. This topic describes the general steps in online order processing and the flow of data between your Self-Service Portal and Acumatica ERP instances. The specific procedures of this process depend on your company's requirements.

## Using the Catalog { .section}

In Acumatica ERP, you form the catalog and provide product descriptions and images. Your customer signs in to the Self-Service Portal instance and browses the catalog. For every item in the catalog, the customer can see the description, images, price, and availability in different warehouses.

## Placing Orders { .section}

After your customer decides which items to purchase, the customer does the following:

1.  Places an order through the Self-Service Portal, selecting the items to buy and specifying the item quantities
2.  Specifies shipping instructions, including the warehouses the items should be shipped from, the desired delivery date, the shipping location, and the carrier to be used for shipping the ordered goods
3.  Prints the order

## Processing Orders { .section}

This order immediately becomes available on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form of your Acumatica ERP instance, thus helping you plan the fulfillment of the order.

The type of the generated order depends on the online ordering configuration of the Self-Service Portal. For more information, see [Configuring Case Management in the Self-Service Portal: General Information](config_SSP_Admin_Configuring_Case_Management_in_SSP_General_Info.md).

You process the order in accordance with your company's policy and the customer's contract; the order status is changed accordingly with each processing step. The customer can monitor the changes in the order status through the Self-Service Portal.

## Processing Shipments { .section}

You directly create a shipment document for a particular sales order or a consolidated shipment for multiple sales orders of the same customer in Acumatica ERP. Then you process the shipment in accordance with your company's policy and the customer's contract; the shipment status is changed accordingly with each processing step.

Your customer can see all shipments associated with a particular order, print the shipping documents, and track shipping statuses through the Self-Service Portal.

For more information on shipments, see [Processing Partial Shipments](SO__con_Shipments.md).

## Processing Invoices { .section}

All the invoices you generate in Acumatica ERP for a customer become available in the Self-Service Portal for this customer.

**Note:** In the Self-Service Portal, the invoices are not directly associated with the orders.

**Parent topic:**[Managing the Inventory Catalog in the Self-Service Portal](../UserGuide/config_SSP_Admin_Managing_Inventory_Catalog_Mapref.md)

