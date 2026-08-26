# Gift Cards: General Information {#_53162725-359d-4d24-aebc-cf35efa2b8b0 .concept}

You can sell gift certificates in the Shopify store and then accept them as full or partial payments.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create gift cards so that you can sell them in the Shopify store
-   Set up gift cards as a payment method that can be used to pay orders placed in the Shopify store

## Applicable Scenarios { .section}

You set up gift cards if you want to offer customers the ability to buy a gift card and then accept the sold gift cards as payments for orders.

## Selling Gift Cards { .section}

In order to be able to sell gift cards to customers and then import sales orders containing the gift cards from the Shopify store to Acumatica ERP, you perform the following general steps:

1.  In the admin area of the Shopify store, enable the gift certificate functionality and define gift certificates that will be available to shoppers online.
2.  In Acumatica ERP, define a non-stock item that will be used to represent a gift certificate in imported sales orders.
3.  On the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, in the **Gift Certificate Item** box, specify the created non-stock item that will represent sold gift certificates in imported sales orders.

## Accepting Gift Cards as Payment { .section}

To be able to import orders that are paid, fully or in part, by gift cards from the Shopify store to Acumatica ERP, you need to map the store payment method representing a gift card to a payment method defined in Acumatica ERP on the **Payments** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. For information about payment mapping, see [Order Synchronization: General Information](Commerce_SP_Syncing_Orders_GeneralInfo.md).

When a sales order that has been fully or partially paid by a gift card is imported to Acumatica ERP, a document of the *Prepayment* type is created on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form for the gift card payment. The **Description** of the prepayment contains the identifier of the gift card in the Shopify store.

**Attention:** The identifier of the gift card is not the gift card number entered during the order placement. In Shopify, you can locate the identifier and the last four characters of the number of the gift card used to pay the order by expanding the subsection with gift card payment details in the **Timeline** section of the order page.

For step-by-step instructions for implementing gift cards, see [Gift Cards: Process Activity](Commerce_SP_Gift_Cards_Activity.md).

**Parent topic:**[Selling and Accepting Gift Cards](../UserGuide/Commerce_SP_Gift_Cards_Mapref.md)

