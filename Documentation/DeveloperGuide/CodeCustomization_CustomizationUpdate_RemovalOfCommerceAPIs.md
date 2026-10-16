# Customization Update to 2026 R2: Removal of Obsolete Commerce APIs

In Acumatica ERP 2026 R2, a number of obsolete methods, properties, and classes have been removed from the Commerce functional area. These items had already been marked with the `[Obsolete]` attribute in earlier releases.

This cleanup does not change any functionality. However, if you’ve developed customization projects or integrations that reference or override the removed APIs, you may need to update that code.

## Upgrade Notes

Before the upgrade, you need to review customization or integration code that uses APIs for Amazon, BigCommerce, or Shopify connectors. If your code overrides a removed virtual method, remove the override or migrate the customization to the replacement listed for the removed item.

The following sections list the removed obsolete items.

## Removed Amazon Connector APIs

The following items have been removed from the `PX.Commerce.Amazon` namespace.

<table id="_41d20a4a-d490-4e49-94f2-706781697bb3"><thead><tr><th align="left" id="d1937884e71">

Removed Item

</th><th align="left" id="d1937884e74">

Replacement or Action

</th></tr></thead><tbody><tr><td>

The `AmazonInvoiceProcessor` and `AmazonInvoiceBucket` classes

</td><td>

Use the `AmazonFBASalesOrderProcessor` class.

</td></tr><tr><td>

The `AmazonHelper.GetInventoryCDByExternID(`

`string sku, string asin,`

`string message, out string uom)`

 overload

</td><td>

Use the `AmazonHelper.GetInventoryCDByExternID(`

 `SearchInventoryItemOption)` overload.

 **Tip:** The `SearchInventoryItemOption` type is located in the `PX.Commerce.Objects` namespace.

</td></tr></tbody>
</table>

## Removed BigCommerce Connector APIs

The following items have been removed from the `PX.Commerce.BigCommerce` namespace.

<table id="_5b1c7e36-557d-49ad-9326-c0b49bfc96a3"><thead><tr><th align="left" id="d1937884e151">

Removed Item

</th><th align="left" id="d1937884e154">

Replacement or Action

</th></tr></thead><tbody><tr><td>

The `BCHelper.GetInventoryCDByExternID(..., out string uom, out string alternateID)` overload

</td><td>

Use the `BCHelper.GetInventoryCDByExternID(`

 `SearchInventoryItemOption)` overload.

</td></tr><tr><td>

The `BCHelper.GetInventoryCDByExternID(..., out string uom, out string alternateID, out string itemStatus)` overload

</td><td>

Use the `BCHelper.GetInventoryCDByExternID(`

 `SearchInventoryItemOption)` overload.

</td></tr></tbody>
</table>

## Removed Shopify Connector APIs

The following items have been removed from the `PX.Commerce.Shopify` namespace.

<table id="_0062f31a-d4a0-4d92-a3ff-b03e0b6acac1"><thead><tr><th align="left" id="d1937884e219">

Removed Item

</th><th align="left" id="d1937884e222">

Replacement or Action

</th></tr></thead><tbody><tr><td>

The`SPHelper.AddCreditCardProcessingInfo(`

 `BCPaymentMethods methodMapping,`

 `Payment payment, string transactionType)` method

</td><td>

Use the `SPHelper.AddCreditCardInfo(`

 `string processingCenterID, Payment payment, string paymentID, string transactionType)` method.

</td></tr><tr><td>

The `SPHelper.GetInventoryCDByExternID(..., out string uom, out string alternateID, out string itemStatus)` overload

</td><td>

Use the `SPHelper.GetInventoryCDByExternID(`

 `SearchInventoryItemOption)` overload.

</td></tr><tr><td>

The `SPHelper.GetInventoryCDByExternID(..., out string uom, out string alternateID, out string itemStatus, out bool? stkItem, out bool? nonStockShip)` overload

</td><td>

Use the `SPHelper.GetInventoryCDByExternID(`

 `SearchInventoryItemOption)` overload.

</td></tr><tr><td>

The `SPHelper.GetSubstituteTaxName(`

 `BCBindingExt bindingExt, string taxID, decimal taxRate, string countryCode, string provinceCode)` method

</td><td>

Use the `SPHelper.TryGetSubstituteTaxName(`

 `TaxNameSubstitutionFilter taxNameSubstitutionFilter, out string substitutedTaxName)` method.

</td></tr><tr><td>

The `SPSalesOrderProcessor.GetPaymentTerms(`

`string externalPaymentTerms, Customer customer)`

 method

</td><td>

Use the `SPHelper.GetLocalPaymentTerms(...)` method.

</td></tr></tbody>
</table>

The following items have been removed from the `PX.Commerce.Shopify.API.GraphQL` namespace.

<table id="_c08497a3-be42-44b1-82ac-fbdedd79b163"><thead><tr><th align="left" id="d1937884e364">

Removed Item

</th><th align="left" id="d1937884e367">

Replacement or Action

</th></tr></thead><tbody><tr><td>

The `OrderExchangeGQL` class

</td><td>

Use the `OrderDataGQL` class.

</td></tr><tr><td>

The `OrderExchangeAdditionGQL` class

</td><td>

Use the `OrderDataGQL` class.

</td></tr><tr><td>

The `OrderExchangeLineItemGQL` class

</td><td>

Use the `OrderLineItemGQL` class.

</td></tr><tr><td>

The `OrderExchangeReturnGQL` class

</td><td>

Use the `OrderDataGQL` class.

</td></tr><tr><td>

The `IOrderGQLDataProvider`

 `.GetOrderExchangesAsync(`

 `string orderId, CancellationToken cancellationToken)` method

</td><td>

Use the `IOrderGQLDataProvider.GetOrdersAsync(`

 `...)` method.

</td></tr></tbody>
</table>

The following items have been removed from the `PX.Commerce.Shopify.API.REST` namespace.

<table id="_03649de3-7d21-42a3-826f-3d74289135d8"><thead><tr><th align="left" id="d1937884e477">

Removed Item

</th><th align="left" id="d1937884e480">

Replacement or Action

</th></tr></thead><tbody><tr><td>

The `OrderData.ExchangeOrders` property

</td><td>

Use the `PX.Commerce.Shopify.API`

 `.GraphQL.OrderDataGQL` class.

</td></tr><tr><td>

The `OrderLineItem.OriginLocation` property

</td><td>

Use the `PX.Commerce.Shopify.API.REST`

 `.FulfillmentOrder.AssignedLocationId` property.

</td></tr></tbody>
</table>

**Parent topic:**[Updating Customization Projects to Acumatica ERP 2026 R2](../DeveloperGuide/CodeCustomization_CustomizationUpdate_Mapref.md)

