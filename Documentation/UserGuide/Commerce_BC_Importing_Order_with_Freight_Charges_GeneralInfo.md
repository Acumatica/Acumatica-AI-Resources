# Importing an Order with Freight Charges: General Information {#_6d10311b-ef76-430f-8760-d685576bc324 .concept}

When you provide delivery service to customers of your organization, you need to calculate the freight prices to charge customers. When a sales order is placed in the BigCommerce store, the freight price, which is calculated based on the shipping rules configured in the store, is added to the sales order.

## Learning Objectives { .section}

In this chapter, you will learn how to configure shipping rules to charge customers for freight and how freight fees are represented in sales orders imported from BigCommerce to Acumatica ERP for fulfillment.

## Freight Charges in Imported Orders { .section}

When you set up your BigCommerce store, one of the things you do is configuring shipping. This includes specifying the address of the shipping origin and the geographical areas to which you plan to ship products \(the shipping zones\), as well as configuring the shipping options available to customers \(the shipping methods\). For each shipping zone, you can also specify a fee for handling orders. The shipping options and their accompanying costs are displayed to the customer in the cart and at checkout. The sales order includes the total of the shipping fees corresponding to the shipping method selected by the customer and the handling fees, if any have been configured for the customer's shipping zone. For more information about the configuration of shipping in the BigCommerce store, see [Shipping Setup](https://support.bigcommerce.com/s/article/Shipping-Setup) in the BigCommerce documentation.

During the configuration of the synchronization settings of the store on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form of Acumatica ERP, in the **Shipping Zone Mapping** section on the **Orders** tab, you map each shipping method set up in BigCommerce with the ship via code \(which represents a particular service method provided by a carrier and determines the freight cost\) and, optionally, and, optionally, with the shipping zone or shipping terms \(or both\) configured in Acumatica ERP. For more information about ship via codes and shipping terms in Acumatica ERP, see [Integration with Carriers](CS__con_Integration_with_Carriers.md) and [Freight Price Calculation](CS__con_Freight_Calculation.md#_beeed649-3493-45fd-b8f0-6601b2f4f5a1).

**Important:** In Acumatica ERP, when an invoice is created for a sales order imported from the online store, the system recalculates the freight price amount based on the freight information from the sales order or the shipment. If the freight price is calculated based on shipments, there might be a discrepancy between the freight amount in the invoice generated in Acumatica ERP and the order amount paid by the customer in the online store. To present customers with the correct amount to be paid in the online store and avoid the discrepancy, you need to be sure that the shipping terms mapped to the shipping method selected by the customer at checkout stipulate that freight in a sales order invoice be calculated based on a sales order rather than shipment—that is, in the Summary area of the [Shipping Terms](CS_20_80_00.md) \(CS208000\) form, the **Invoice Freight Price Based On** box should be set to *Sales Order*.

When the sales order is imported from the BigCommerce store to Acumatica ERP, the shipping fees and handling fees are added together and the resulting amount is displayed in the **Freight Price** box on the **Totals** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

**Attention:** When you create a sales order on the [Sales Orders](SO_30_10_00.md) form of Acumatica ERP, you specify additional freight charges for handling an order in the **Premium Freight Price** box on the **Totals** tab. However, in orders imported from BigCommerce, handling fees are included in the freight price and are not displayed in this box.

**Parent topic:**[Importing Orders with Freight Charges](../UserGuide/Commerce_BC_Importing_Order_with_Freight_Charges_Mapref.md)

