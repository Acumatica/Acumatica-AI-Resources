# Order Synchronization: Multicurrency Accounting {#_31141ba2-9535-abcd-be95-c98e17dc8e4e .concept}

Your Shopify store can support multiple currencies so that customers can pay their orders not only in the default store currency. Whether you use multicurrency accounting in Acumatica ERP, have multiple currencies configured in your Shopify store, or both, the Shopify connector ensures proper synchronization between the two systems.

## System Configuration for Importing Orders in Multiple Currencies { .section}

If the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, sales orders from the Shopify store are imported into Acumatica ERP in the same currency they were placed in Shopify.

To configure the store, you must select the **Use Payment Currency instead of Store Currency** check box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. You also need to create a mapping on the **Payments** tab of the [Shopify Stores](BC_20_10_10.md) form for each combination of store payment method and currency activated in Shopify that will be imported to Acumatica ERP. For details, see [Configuration of Payment Synchronization](Commerce_SP_Syncing_Orders_GeneralInfo.md#_68a3836d-7899-4995-940d-0b3628e19363).

**Tip:** The list of supported payment currencies appears in the **Payment Currencies** box on the **General** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

Also, to import Shopify orders in a currency different from the currency of the brunch specified in the **Branch** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) form, you must select the **Enable Currency Override** check box for the order customer on the [Customers](AR_30_30_00.md) \(AR303000\) form.

## Import of Orders in Multiple Currencies { .section}

When importing an order from the Shopify store in a currency other than the store default currency, the connector assigns this currency to the created sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and its payments and refunds on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) forms.

The connector assigns the currency rate provided by Shopify to an imported sales order and its payments and refunds if all of the following conditions are met:

-   The default currency of the Shopify store is the same as the base currency of the branch specified in **Branch** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
-   The order has been paid in a currency other than the store default currency.
-   The order has been paid through the Shopify Payments payment provider.
-   The order transaction has been captured or processed with the *Sale* operation.

The connector assigns an average currency rate calculated in Acumatica ERP to an imported sales order if it has been paid through the Shopify Payments provider and one of the following conditions is met:

-   The order has authorized-only transactions.
-   The order includes multiple transactions with different currency rates.

For authorized-only payments, the currency rate is calculated in Acumatica ERP.

For refunds processed through the Shopify Payments provider, the system always uses the currency rate provided by Shopify.

If an authorized-only transaction already imported into Acumatica ERP is later captured in Shopify, the connector can update the calculated currency rate in the order and prepayment documents. It replaces the rate with the one provided by Shopify as long as the document workflow in Acumatica ERP allows modifications.

## Import of Orders in the Default Store Currency { .section}

When your Shopify store allows customers to pay in multiple currencies but multicurrency accounting is not required in Acumatica ERP, you can import orders along with related payments and refunds in the default store currency.

**Tip:** The default store currency appears in the **Store Currency** box on the **General** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.

To make the system import documents from the Shopify store in only the default store currency, you leave the **Use Payment Currency instead of Store Currency** check box cleared on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) form, which is its default value. You also configure mappings of store payment methods with Acumatica ERP payment methods using the default store currency on the **Payments** tab. For details, see [Configuration of Payment Synchronization](Commerce_SP_Syncing_Orders_GeneralInfo.md#_68a3836d-7899-4995-940d-0b3628e19363).

With these settings specified, the system imports orders from the Shopify store in the default store currency even if they were paid in another currency. The system also imports all the documents related to these orders as payments and refunds in the default store currency.

The following limitations apply to the import of documents in the default store currency:

-   If a Shopify order has already been imported to Acumatica ERP in a currency that is different than the default store currency, and then the **Use Payment Currency instead of Store Currency** check box is cleared on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) form, all the documents related to that order will be imported in the same order currency.
-   If a credit card payment is imported to Acumatica ERP in a currency other than the one in which the customer paid in the Shopify store, the payment can be captured, voided, or refunded only in the Shopify store.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_SP_Syncing_Orders_Mapref.md)

