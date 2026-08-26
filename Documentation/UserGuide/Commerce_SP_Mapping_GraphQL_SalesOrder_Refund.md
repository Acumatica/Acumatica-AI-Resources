# Sales Order and Refund Entities {#_abc1234a-11ab-22cd-b89b-c27762ab8ee4 .concept}

This topic highlights the field mapping changes for the *Sales Order* and *Refund* entities in Acumatica ERP following Shopify's migration from the REST API to GraphQL.

In the [Fields Unavailable in GraphQL](#_3c04f7b9-0909-46e3-a795-f1efe356bfe7) section, you'll find a table listing all the fields used for entity mapping that are not available in GraphQL but were available in the REST API.

## Sales Order and Refund Mapping { .section}

In the [Shopify\_GraphQL\_SalesOrder.xlsx](Files/Shopify_GraphQL_SalesOrder.xlsx) file, you can find the mapping of Acumatica ERP fields on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form to Shopify default and custom fields. The system uses this mapping during the export, import, and bidirectional sync of the sales order and refund data to Shopify.

Particularly, you can see how each Acumatica ERP field was previously mapped to Shopify fields through the REST API, and how it's now mapped now using GraphQL.

## Fields Unavailable in GraphQL {#_3c04f7b9-0909-46e3-a795-f1efe356bfe7 .section}

The following table lists the fields that were:

-   Used for the export and import mapping and import filtering of the *Sales Order* entity on the [Entities](BC_20_20_00.md) \(BC202000\) form
-   Supported by the Shopify connector with the REST API, but not with GraphQL

|Tab on the Entities Form|External Object|External Field|REST API Field|
|------------------------|---------------|--------------|--------------|
|**Export Mapping**|*Order Data*|*Currency*|`OrderData` -&gt; `Customer.Currency`|
|**Import Filtering**|n/a|*Current Total Discounts*|`OrderData.LandingSite`|
|**Import Mapping**, **Import Filtering**|*Order Data*|*Landing Site*|`OrderData.LandingSite`|
|**Import Mapping**, **Import Filtering**|*Order Data*|*Order Number*|`OrderData.OrderNumber`|
|**Import Mapping**, **Export Mapping**, **Import Filtering**|*Order Data*|*Referring Site*|`OrderData.ReferringSite`|
|**Import Mapping**, **Export Mapping**, **Import Filtering**|*Order Data*|*Send Receipt*|`OrderData.SendReceipt`|
|**Import Mapping**, **Export Mapping**, **Import Filtering**|*Order Data*|*Send Fulfillment Receipt*|`OrderData.SendFulfillmentReceipt`|
|**Import Mapping**, **Import Filtering**|*Order Data*|*Token*|`OrderData.Token`|
|**Import Mapping**, **Export Mapping**, **Import Filtering**|*Order Data*|*Order Status URL*|`OrderData.OrderStatusURL`|
|**Import Mapping**|n/a|n/a|`OrderData.MerchantRecordAppId`|
|**Export Mapping**|*Order Data -&gt; Billing Address*|*Name*|`OrderData` -&gt; `BillingAddress.Name`|
|**Export Mapping**|*Order Data -&gt; Billing Address*|*Province*|`OrderData` -&gt; `BillingAddress.Province`|
|**Export Mapping**|*Order Data -&gt; Billing Address*|*Country*|`OrderData` -&gt; `BillingAddress.Country`|
|**Export Mapping**|*Order Data -&gt; Billing Address*|*Latitude*|`OrderData` -&gt; `BillingAddress.Latitude`|
|**Export Mapping**|*Order Data -&gt; Billing Address*|*Longitude*|`OrderData` -&gt; `BillingAddress.Longitude`|
|**Export Mapping**|*Order Data -&gt; Shipping Address*|*Name*|`OrderData` -&gt; `ShippingAddress.Name`|
|**Export Mapping**|*Order Data -&gt; Shipping Address*|*Province*|`OrderData` -&gt; `ShippingAddress.Province`|
|**Export Mapping**|*Order Data -&gt; Shipping Address*|*Country*|`OrderData` -&gt; `ShippingAddress.Country`|
|**Export Mapping**|*Order Data -&gt; Shipping Address*|*Latitude*|`OrderData` -&gt; `ShippingAddress.Latitude`|
|**Export Mapping**|*Order Data -&gt; Shipping Address*|*Longitude*|`OrderData` -&gt; `ShippingAddress.Longitude`|
|**Import Mapping**|*Order Data -&gt; Order Risk*|*ID*|`OrderData` -&gt; `OrderRisks.Id`|
|**Import Mapping**|*Order Data -&gt; Order Risk*|*Order ID*|`OrderData` -&gt; `OrderRisks.OrderId`|
|**Import Mapping**|*Order Data -&gt; Order Risk*|*Is New Sync*|`OrderData` -&gt; `OrderRisks.IsNewSync`|
|**Import Mapping**|*Order Data -&gt; Line Item*|*Fulfillment Service*|`OrderData` -&gt; `LineItems.FulfillmentService`|
|**Import Mapping**|*Order Data -&gt; Line Item*|*Fulfillment Status*|`OrderData` -&gt; `LineItems.FulfillmentStatus`|
|**Import Mapping**|*Order Data -&gt; Line Item*|*Weight*|`OrderData` -&gt; `LineItems.WeightInGrams`|
|**Import Mapping**|*Order Data -&gt; Line Item*|*Inventory Management*|`OrderData` -&gt; `LineItems.VariantInventoryManagement`|
|**Import Mapping**|*Order Data -&gt; Line Item*|*Tip Payment Gateway*|`OrderData` -&gt; `LineItems.TipPaymentGateway`|
|**Import Mapping**|*Order Data -&gt; Line Item*|*Tip Payment Method*|`OrderData` -&gt; `LineItems.TipPaymentMethod`|
|**Import Mapping**|*Order Data -&gt; Refund*|*Order ID*|`OrderData` -&gt; `Refunds.OrderId`|
|**Import Mapping**|*Order Data -&gt; Refund*|*Date Processed*|`OrderData` -&gt; `Refunds.ProcessedAt`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Order Adjustment*|*Order Id*|`OrderData` -&gt; `Refunds` -&gt; `OrderAdjustments.OrderId`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Order Adjustment*|*Refund ID*|`OrderData` -&gt; `Refunds` -&gt; `OrderAdjustments.RefundId`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Order Adjustment*|*Kind*|`OrderData` -&gt; `Refunds` -&gt; `OrderAdjustments.Kind`|
|**Import Mapping**|*Order Data -&gt; Customer -&gt; Addresses*|*Country Name*|`OrderData` -&gt; `Customer` -&gt; `Addresses.CountryName`|
|**Import Mapping**|*Order Data -&gt; Customer -&gt; Addresses*|*Customer ID*|`OrderData` -&gt; `Customer` -&gt; `Addresses.CustomerId`|
|**Import Mapping**|*Order Data -&gt; Customer*|*Currency*|`OrderData` -&gt; `Customer.Currency`|
|**Import Mapping**|*Order Data -&gt; Discount Codes*|*Is New Sync*|`OrderData` -&gt; `DiscountCodes.IsNewSync`|
|**Import Mapping**|*Order Data -&gt; Line Items -&gt; Discount Allocations*|*Discount Amount*|`OrderData` -&gt; `LineItems` -&gt; `DiscountAllocations.DiscountAmount`|
|**Import Mapping**|*Order Data -&gt; Line Items -&gt; Discount Allocations*|*Is New Sync*|`OrderData` -&gt; `LineItems` -&gt; `DiscountAllocations.IsNewSync`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item -&gt; Discount Allocation*|*Processed At*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem` -&gt; `DiscountAllocations.DiscountAmount`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item -&gt; Discount Allocation*|*Presentment Discount Amount*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem` -&gt; `DiscountAllocations.DiscountAmountPresentment`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item -&gt; Discount Allocation*|*Is New Sync*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem` -&gt; `DiscountAllocations.IsNewSync`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item -&gt; Properties*|*Name*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem` -&gt; `Properties.Name`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item -&gt; Properties*|*Value*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem` -&gt; `Properties.Value`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item -&gt; Tax Line*|*Is New Sync*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem` -&gt; `TaxLines.IsNewSync`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item -&gt; Tax Line*|*Tax Line Amount*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem` -&gt; `TaxLines.TaxAmount`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item -&gt; Tax Line*|*Presentment Tax Amount*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem` -&gt; `TaxLines.TaxAmountPresentment`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item -&gt; Tax Line*|*Tax Name*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem` -&gt; `TaxLines.TaxName`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item -&gt; Tax Line*|*Tax Rate*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem` -&gt; `TaxLines.TaxRate`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Current Quantity*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.CurrentQuantity`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Fulfillment Service*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.FulfillmentService`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Fulfillment Status*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.FulfillmentStatus`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*ID*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.Id`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Gift Card*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.IsGiftCard`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Is New Sync*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.IsNewSync`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Name*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.Name`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Price*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.Price`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Presentment Price*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.PricePresentment`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Product ID*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.ProductId`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Quantity*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.Quantity`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Requires Shipping*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.RequiresShipping`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*SKU*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.Sku`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Taxable*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.Taxable`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Tip Payment Gateway*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.TipPaymentGateway`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Tip Payment Method*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.TipPaymentMethod`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Title*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.Title`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Total Discount*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.TotalDiscount`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Presentment Total Discount*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.TotalDiscountPresentment`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Variant ID*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.VariantId`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Inventory Management*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem`.`VariantInventoryManagement`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Variant Title*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.VariantTitle`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Vendor*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.Vendor`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Refund Item -&gt; Line Item*|*Weight*|`OrderData` -&gt; `Refunds` -&gt; `RefundLineItems` -&gt; `OrderLineItem.WeightInGrams`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions -&gt; Payment Detail*|*AVS Result Code*|`OrderData` -&gt; `Refunds` -&gt; `Transactions` -&gt; `PaymentDetail.AvsResultCode`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions -&gt; Payment Detail*|*Credit Card BIN*|`OrderData` -&gt; `Refunds` -&gt; `Transactions` -&gt; `PaymentDetail.CreditCardBin`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions -&gt; Payment Detail*|*Credit Card Company*|`OrderData` -&gt; `Refunds` -&gt; `Transactions` -&gt; `PaymentDetail.CreditCardCompany`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions -&gt; Payment Detail*|*Credit Card Expiration Month*|`OrderData` -&gt; `Refunds` -&gt; `Transactions` -&gt; `PaymentDetail.CreditCardExpMonth`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions -&gt; Payment Detail*|*Credit Card Expiration Year*|`OrderData` -&gt; `Refunds` -&gt; `Transactions` -&gt; `PaymentDetail.CreditCardExpYear`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions -&gt; Payment Detail*|*Credit Card Name*|`OrderData` -&gt; `Refunds` -&gt; `Transactions` -&gt; `PaymentDetail.CreditCardName`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions -&gt; Payment Detail*|*Credit Card Number*|`OrderData` -&gt; `Refunds` -&gt; `Transactions` -&gt; `PaymentDetail.CreditCardNumber`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions -&gt; Payment Detail*|*Credit Card Wallet*|`OrderData` -&gt; `Refunds` -&gt; `Transactions` -&gt; `PaymentDetail.CreditCardWallet`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions -&gt; Payment Detail*|*CVV Result Code*|`OrderData` -&gt; `Refunds` -&gt; `Transactions` -&gt; `PaymentDetail.CvvResultCode`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions -&gt; Payment Detail*|*Is New Sync*|`OrderData` -&gt; `Refunds` -&gt; `Transactions` -&gt; `PaymentDetail.IsNewSync`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions*|*Device ID*|`OrderData` -&gt; `Refunds` -&gt; `Transactions.DeviceId`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions*|*Message*|`OrderData` -&gt; `Refunds` -&gt; `Transactions.Message`|
|**Import Mapping**|*Order Data -&gt; Refund -&gt; Transactions*|*Receipt*|`OrderData` -&gt; `Refunds` -&gt; `Transactions.Receipt`|
|**Import Mapping**|*Order Data -&gt; Shipping Line -&gt; Discount Allocation*|*Discount Amount*|`OrderData` -&gt; `ShippingLines` -&gt; `DiscountAllocations.DiscountAmount`|
|**Import Mapping**|*Order Data -&gt; Shipping Line -&gt; Discount Allocation*|*Is New Sync*|`OrderData` -&gt; `ShippingLines` -&gt; `DiscountAllocations.IsNewSync`|
|**Import Mapping**|*Order Data -&gt; Orders Transaction -&gt; Payment Detail*|*Is New Sync*|`OrderData` -&gt; `Transactions` -&gt; `PaymentDetail.IsNewSync`|
|**Import Mapping**|*Order Data -&gt; Orders Transaction*|*Device ID*|`OrderData` -&gt; `Transactions.DeviceId`|
|**Import Mapping**|*Order Data -&gt; Orders Transaction*|*Message*|`OrderData` -&gt; `Transactions.Message`|
|**Import Mapping**|*Order Data -&gt; Orders Transaction*|*Receipt*|`OrderData` -&gt; `Transactions.Receipt`|
|**Import Mapping**|*Order Data*|*Items Total*|`OrderData.ItemsTotal`|
|**Import Mapping**|*Order Data*|*Presentment Items Total*|`OrderData.ItemsTotalPresentment`|

**Parent topic:**[Shopify GraphQL Mapping](../UserGuide/Commerce_SP_Mapping_Reference_GraphQL.md)

