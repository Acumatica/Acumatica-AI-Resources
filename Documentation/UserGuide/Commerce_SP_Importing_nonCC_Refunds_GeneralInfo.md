# Importing Non-Card Refunds: General Information {#_22edad16-d3e8-4157-8d6f-8a982bf97c9f .concept}

You can import to Acumatica ERP non-card refunds: that is, refunds issued for orders in your Shopify store that have been paid and refunded with non-card payment methods or with card payment methods that are mapped to an Acumatica ERP payment method for which integrated card processing is not configured.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure the import of refunds for non-card payment methods from a Shopify store to Acumatica ERP
-   Import refunds for non-card payment methods from a Shopify store to Acumatica ERP

## Applicable Scenarios { .section}

You import refunds of payments based on a non-card payment method from Shopify to Acumatica ERP so that you can keep track of refunded payments and restocked items. You may issue refunds in the Shopify store in the following cases:

-   A customer has been overcharged in error and part of the order amount needs to be refunded.
-   A customer has not received the purchased item or has received an excessive quantity of the item.
-   A customer has received the purchased item but is not satisfied with its quality or performance and wants to return it.

## Configuration of the Import of Refunds { .section}

To configure the import of refunds from a Shopify store to Acumatica ERP, you perform the following general steps:

1.  Define a return order type.

    On the [Order Types](SO_20_10_00.md) \(SO201000\) form, you define an order type to be used for return orders created during the import of refunds from the Shopify store to Acumatica ERP. A return order type should be created with the following settings selected on the **Template** tab:

    -   **Automation Behavior**: *RMA Order*
    -   **Default Operation**: *Receipt*
    -   **AR Document Type**: *Credit Memo*
2.  Define an item to represent imported refund amounts.

    On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, you define a non-stock item that will represent imported refund amounts in sales orders and in return orders. For this non-stock item, you should specify the following settings on the **General** tab:

    -   **Tax Category**: A tax category corresponding to tax-exempt items
    -   **Require Receipt**: Cleared
    -   **Require Shipment**: Cleared
3.  Define a reason code.

    On the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, you create a define a reason code to be inserted in return orders for refunds imported from the Shopify store. This reason code must be of the *Issue* usage type.

4.  Activate the *Refund* entity.

    On the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you activate the *Refund* entity for the Shopify store.

5.  Specify the refund import settings.

    On the **Orders** tab, you specify the identifiers of the entities you have created \(in Steps 1 through 3\) in the following boxes:

    -   **Return Order Type**
    -   **Refund Amount Item**
    -   **Refund Reason Code**
6.  Specify the payment methods for which you need to import refunds.

    On the **Payments** tab of the [Shopify Stores](BC_20_10_10.md) form, you select the **Process Refunds** check box for each payment method for which you want to import refunds. For details, see [Order Synchronization: General Information](Commerce_SP_Syncing_Orders_GeneralInfo.md).


## Import of Refunds for Non-Card Payment Methods { .section}

Refunds are imported from the Shopify store to Acumatica ERP as part of the synchronization of the *Refund* entity, which can be synchronized only in the *Import* direction. During the preparation of refund data for synchronization, the system creates one synchronization record for all refunds that have been issued for a single sales order in the Shopify store.

For a refund to be imported successfully, all of the following conditions must be met for the sales order associated with the refund:

-   The original sales order has been synchronized.
-   The payment for the original sales order to which the refund pertains has been imported and released.

**Important:**

If automatic tax recalculation is disabled for orders imported from the Shopify store, the system imports each sales order with the **Disable Automatic Tax Calculation** check box selected on the **Financial** tab of the [Sales Orders](../Shared/../UserGuide/SO_30_10_00.md) \(SO301000\) form. If such an order is partially shipped and an invoice has been created for the shipment, the prepayment amount applied to the invoice includes the total tax amount of the order. The prepayment amount is shown in the **Applied to Documents** box on the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) \(AR302000\) form.

When a refund is created for the remaining items of the order that have not been shipped yet, the refund amount becomes greater than the remaining prepayment amount, which is shown in the **Applied to Orders** box on the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) form. In this case, during the import, the system sets the **Payment Amount** of the imported refund to be equal to the remaining prepayment amount. Also, in the **Available Balance** box on the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) form, the system records the difference as the available balance of the refund.

For information about the synchronization process, see [Data Synchronization: General Information](Commerce_SP_Data_Sync_GeneralInfo.md). For information about the import of various types of refunds, see [Importing Non-Card Refunds: Order-Level Refunds](Commerce_SP_Importing_nonCC_Refunds_Order_Level_Refunds.md) and [Importing Non-Card Refunds: Item-Level Refunds](Commerce_SP_Importing_nonCC_Refunds_Item_Level_Refunds.md).

**Parent topic:**[Importing Non-Card Refunds](../UserGuide/Commerce_SP_Importing_nonCC_Refunds_Mapref.md)

