# Importing Non-Card Refunds: Returns with Exchanges

Shopify supports refunds and returns of online orders. Although they’re related, returns and refunds are separate actions. A return occurs when a customer sends a product back. A refund returns money to the customer for that product, usually after its receipt at the warehouse or fulfillment center. However, a refund can be issued without a return, and a return can be processed without a refund.

Customers can also return fulfilled items and exchange them for replacement items—which can be the same products or different ones and may have a different value. You can synchronize Shopify returns with Acumatica ERP, including returns with exchange items. You can process the resulting documents in Acumatica ERP, while shipment export sends the corresponding restock and fulfillment updates to Shopify.

## Configuration of the Import of Returns

Returns are imported from the Shopify store to Acumatica ERP as part of the synchronization of the *Refund* entity. Before importing returns, configure refund synchronization as described in [Importing Non-Card Refunds: General Information](Commerce_SP_Importing_nonCC_Refunds_GeneralInfo.md). Also complete the following general steps:

1.  Define an exchange order type.

    On the [Order Types](../Shared/../UserGuide/SO_20_10_00.md), you define an order type to be used for exchange orders created during the import of refunds from the Shopify store to Acumatica ERP. An exchange order type should be created with the following settings selected on the **Template** tab:

    -   **Automation Behavior**: *RMA Order*
    -   **Default Operation**: *Receipt*
    -   **AR Document Type**: *Credit Memo*
    -   **Operations** table: Active rows for the *Receipt* and *Issue* operations with the **Auto Create Issue Line** check box cleared
2.  Define an item to represent imported shipping and restocking fees.

    On the [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) \(IN202000\) form, you define a non-stock item that will represent imported shipping and restocking fees in sales orders and in exchange orders. For this non-stock item, you should specify the following settings on the **General** tab:

    -   **Tax Category**: A tax category corresponding to tax-exempt items
    -   **Require Receipt**: Cleared
    -   **Require Shipment**: Cleared
3.  Specify the return import settings.

    On the **Orders** tab, you specify the identifiers of the entities you have created \(in Steps 1 through 2\) in the following boxes:

    -   **Exchange Order Type**
    -   **Return Fee Item**

## Import of Returns

In Shopify, you can process a return for an already fulfilled order. A return always includes one or more returned items. It can also include one or more exchange items.

You import returns as exchange orders by synchronizing the *Refund* entity. For each Shopify return, the connector creates an exchange order on the [Sales Orders](../Shared/../UserGuide/SO_30_10_00.md) \(SO301000\) form. It does not update the original sales order.

The imported exchange order contains the following:

-   A line with the *Receipt* operation for each returned item
-   A line with the *Issue* operation for each exchange item, if applicable
-   Separate lines for shipping and restocking fees, if applicable

The system uses the same non-stock item for both return shipping fees and restocking fees. If a Shopify return includes both fee types, the system creates a separate line for each, with the line description identifying the fee type.

A Shopify return can be imported only if all the following conditions are met:

-   The original Shopify order has already been imported.
-   The return has been fully processed in Shopify.

## Import of Payments and Refund Payments

The payment document created during return synchronization depends on the total value of the exchange items and return fees compared with the total value of the returned items:

-   A **payment** is created if the total value of the exchange items and return fees exceeds the total value of the returned items.
-   A **refund payment** is created if the total value of the exchange items and return fees is less than the total value of the returned items.
-   **No payment document** is created if the two totals are equal.

Refund payments are imported during synchronization of the *Refund* entity. You do not need to synchronize them separately. If a refund payment is created after the return has already been imported, the next synchronization of the *Refund* entity imports it.

Unlike refund payments, regular payments created for returns are imported during the synchronization of the *Payment* entity.

## Export of Shipments

After you create and process shipment documents in Acumatica ERP for returned or exchanged items, you export the confirmed shipments by synchronizing the *Shipment* entity.

Each shipment operation determines how the corresponding Shopify return is updated:

-   When you export a shipment with the *Receipt* operation, the connector updates the restock status and quantities of the returned items in Shopify.
-   When you export a shipment with the *Issue* operation, the connector updates the fulfillment status and quantities of the exchange items in Shopify.

A single return order can be processed through multiple shipments. Each exported shipment updates the corresponding items and quantities in Shopify. A Shopify return maintains the *Return in Progress* status until all returned items have been restocked.

If a shipment is corrected in Acumatica ERP, the connector updates Shopify to reflect the corrected restocked or fulfilled quantities.

**Parent topic:**[Importing Non-Card Refunds](../UserGuide/Commerce_SP_Importing_nonCC_Refunds_Mapref.md)

