# Gift Certificates: General Information {#_111f63ed-8475-4a07-af18-eb90145c4d11 .concept}

You can sell gift certificates in the BigCommerce store and then accept them as full or partial payments.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create gift certificates so that you can sell them in the BigCommerce store
-   Set up a payment method to use gift certificate balance to pay orders placed in the BigCommerce store

## Applicable Scenarios { .section}

You set up gift certificates if you want to offer customers the ability to buy a gift certificate and then accept the sold gift certificates as payments for orders.

## Selling Gift Certificates { .section}

In order to be able to sell gift certificates to customers and then import sales orders containing the gift cards from the BigCommerce store to Acumatica ERP, you perform the following general steps:

1.  In the control panel of the BigCommerce store, you enable the gift certificate functionality and define gift certificates that will be available to shoppers online.
2.  In Acumatica ERP, define a non-stock item that will be used to represent a gift certificate in imported sales orders.
3.  On the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, in the **Gift Certificate Item** box, you specify the non-stock item that will represent sold gift certificates in imported sales orders.

## Accepting Gift Certificates as Payment { .section}

To be able to import orders that are paid, fully or in part, by gift certificates from the BigCommerce store to Acumatica ERP, you need to map the store payment method representing a gift card to a payment method defined in Acumatica ERP on the **Payments** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. For information about payment mapping, see [Order Synchronization: General Information](Commerce_BC_Syncing_Orders_GeneralInfo.md).

When a sales order that has been fully or partially paid by a gift certificate is imported to Acumatica ERP, a document of the *Prepayment* type is created on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form for the gift certificate payment. The **Description** of the prepayment contains the identifier of the gift certificate in the BigCommerce store.

For step-by-step instructions for implementing gift certificates, see [Gift Certificates: Process Activity](Commerce_BC_Gift_Certificates_Activity.md).

**Parent topic:**[Selling and Accepting Gift Certificates](../UserGuide/Commerce_BC_Gift_Certificates_Mapref.md)

