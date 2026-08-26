# Importing Card Refunds: General Information {#_0c349eee-1216-4d14-9b87-7d7ac4c25349 .concept}

You can import to Acumatica ERP refunds issued for orders paid with card-based payment methods to customers in your BigCommerce store.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure the import of refunds for card-based payment methods from a BigCommerce store to Acumatica ERP
-   Import refunds for card-based payment methods from a BigCommerce store to Acumatica ERP

## Applicable Scenarios { .section}

You import refunds of payments based on a card-based payment method from BigCommerce to Acumatica ERP to keep track of refunded payments and restocked items. You may issue refunds in the BigCommerce store in the following cases:

-   A customer has been overcharged in error and part of the order amount needs to be refunded.
-   A customer has not received the purchased item or has received an excessive quantity of the item.
-   A customer has received the purchased item but is not satisfied with its quality or performance and wants to return it.

## Configuration of Refund Import { .section}

To configure the import of refunds from a BigCommerce store to Acumatica ERP, you perform the following general steps:

1.  Define a return order type.

    On the [Order Types](SO_20_10_00.md) \(SO201000\) form, you define an order type to be used for return orders imported from the BigCommerce store to Acumatica ERP. A return order type should be created with the following settings selected on the **Template** tab:

    -   **Automation Behavior**: *RMA Order*
    -   **Default Operation**: *Receipt*
    -   **AR Document Type**: *Credit Memo*
2.  Define a refund amount item.

    On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, you define a non-stock item that will represent imported refund amounts in sales orders and in return orders. This non-stock item should be defined with the following settings on the **General** tab:

    -   **Tax Category**: A category corresponding to tax-exempt items
    -   **Require Receipt**: Cleared
    -   **Require Shipment**: Cleared
3.  Define a reason code.

    On the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, you create a define a reason code to be inserted in return orders for refunds imported from the BigCommerce store. This reason code must be of the *Issue* usage type.

4.  Activate the *Refund* entity.

    On the **Entities** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you activate the *Refund* entity for the BigCommerce store.

5.  Specify the refund import settings.

    On the **Orders** tab, you specify settings in the following boxes:

    -   **Return Order Type**
    -   **Refund Amount Item**
    -   **Refund Reason Code**
6.  Specify payment methods for which you need to import refunds.

    On the **Payments** tab of the [BigCommerce Stores](BC_20_10_00.md) form, you select the **Process Refunds** check box for each payment method for which you want to import refunds. For store payment methods that are mapped to card-based payment methods in Acumatica ERP, this check box is selected by default and cannot be edited.


## Import of Refunds for Card-Based Payment Methods { .section}

Refunds are imported from the BigCommerce store to Acumatica ERP as part of the synchronization of the *Refund* entity, which can be synchronized only in the *Import* direction. During the preparation of refund data for synchronization, the system creates one synchronization record for all refunds that have been issued for a single sales order in the BigCommerce store.

For a refund to be imported successfully, all of the following conditions must be met:

-   The original sales order has been synchronized.
-   The original sales order has not been shipped at all or has been shipped in full. If the sales order has been shipped partially, the refund will not be imported.
-   The original payment to which the refund pertains has been imported and released.

For information about the synchronization process, see [Data Synchronization: General Information](Commerce_BC_Data_Sync_GeneralInfo.md).

## Import of Refunds for the Acumatica Payments Payment Method { .section}

For BigCommerce orders paid with Acumatica Payments, the following refund workflow is recommend:

1.  Create a refund in BigCommerce.
2.  Import the refund into Acumatica ERP as refunds in the *Pending Processing* status..
3.  Process the refund in Acumatica ERP.

Following this workflow helps ensure that refunds are synchronized correctly across BigCommerce, Acumatica ERP, and the Acumatica Payments gateway and processed without errors.

The connector applies the following rules when importing refunds for BigCommerce orders paid with Acumatica Payments to Acumatica ERP:

-   Offline refunds without a matching gateway refund transaction for the same amount are imported as refunds pending processing.
-   Offline refunds that have a matching gateway refund transaction for the same amount are treated as a single refund and imported as processed refunds.
-   If an order contains only gateway refund transactions and no matching offline refunds, no refund is imported.
-   If an order contains multiple offline refunds and gateway refunds that do not match any of them, the connector fails to sync the refunds for that order.
-   Refunds processed directly through the payment gateway aren’t synchronized unless they’re also added to BigCommerce as offline refunds. If a refund is issued only through the gateway, it must be manually added to BigCommerce to be imported.
-   Void operations for refund transactions can’t be synchronized because this action isn’t supported in Acumatica ERP for card refunds. If an order contains one or more refunds and at least one of these has been voided, the refund must be created manually in Acumatica ERP.

**Parent topic:**[Importing Card Refunds](../UserGuide/Commerce_BC_Importing_CC_Refunds_Mapref.md)

