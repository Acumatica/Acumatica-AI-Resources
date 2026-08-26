# Importing Card Refunds: Implementation Activity {#_8d7bd826-a45c-48da-b8d0-3d2855258a45 .task}

The following activity will walk you through the configuration of refund import so that you can import to Acumatica ERP refunds issued to a customer in the Shopify store for an order paid by a credit card and processed by using the Shopify Payments payment gateway.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company sells several kinds of jams in its Shopify store and wants to track returns and refunds issued in the Shopify store from within Acumatica ERP. Acting as an implementation consultant, you need to set up the import of returns and refunds issued in the Shopify store for orders paid by a card and processed by using the Shopify Payments payment gateway. Further suppose that the Shopify Payments payment gateway is configured to be used for processing card payments both in the Shopify store and in Acumatica ERP.

## Configuration Overview { .section}

For the purposes of this activity, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Retail Commerce*
-   *Shopify Connector*
-   *Custom Order Types*

The following entities, which you will use in this activity, have been predefined in the system:

-   The *ER* order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form
-   The *REFUNDAMT* non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form
-   The *EREFUND* reason code on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form

## Process Overview { .section}

In this activity, you will do the following:

1.  On the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, activate the *Refund* entity.
2.  On the **Orders** tab, you will review the settings of refund import.
3.  On the **Payments** tab, you will activate the import of refunds for the Shopify Payments payment method.

## System Preparation { .section}

Do the following:

1.  Make sure the connection to the Shopify store has been established and the minimum configuration has been performed, as described in [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md).
2.  Make sure that the mapping of the Shopify Payments payment method has been set up as described in [Order Synchronization: To Configure and Import Shopify Payments](Commerce_SP_Syncing_Orders_To_Use_Shopify_Payments.md).
3.  Launch the Acumatica ERP website, and sign in as an administrator by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*

## Step 1: Activating the Refund Entity { .section}

Before you start importing refunds from the Shopify store to Acumatica ERP, you need to activate the *Refund* entity as follows:

1.  Open the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form.
2.  In the **Store Name** box, select *SweetStore - SP*.
3.  On the **Entities** tab, make sure that the **Active** check box has been selected for the *Refund* entity.

    You select the **Active** check box for an entity to indicate that the entity data needs to be synchronized between Acumatica ERP and the Shopify store.

4.  On the form toolbar, click **Save** to save your changes.

## Step 2: Reviewing the Refund Import Settings { .section}

To review the settings that will be applied to refunds imported from the Shopify store, do the following:

1.  While you are still viewing the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, go to the **Orders** tab.
2.  In the **Order** section of the **Orders** tab, make sure that the following settings have been specified:
    -   **Return Order Type**: *ER - eCommerce Return Order*

        This order type is based on the *RC* order template.

    -   **Refund Amount Item**: *REFUNDAMT*

        This tax-exempt non-stock item is used to represent refunded amounts in documents.

    -   **Refund Reason Code**: *EREFUND*

        This reason code of the *Issue* usage type is inserted in documents to indicate that the line represents a refund issued.

3.  On the form toolbar, click **Save** to save your changes.

## Step 3: Reviewing the Refund Import Settings for the Payment Method { .section}

To import refunds for the *SHOPIFYPAY* payment method, which you have configured in [Order Synchronization: To Configure and Import Shopify Payments](Commerce_SP_Syncing_Orders_To_Use_Shopify_Payments.md), do the following:

1.  While you are still viewing the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, open the **Payments** tab.
2.  In the table of this tab, make sure that the mappings are defined for the *SHOPIFY\_PAYMENTS* store payment method as shown in the following table.

    |Active|Store Payment Method|Store Currency|ERP Payment Method|Cash Account|Proc. Center ID|Release Payments and Refunds|Process Refunds|
    |------|--------------------|--------------|------------------|------------|---------------|----------------------------|---------------|
    |Selected|*SHOPIFY\_PAYMENTS*|*USD*|*SHOPIFYPAY*|*10250ST*|*SHOPIFYPAY*|Cleared|Selected|

    Notice that the **Process Refunds** check box is selected for this store payment method and is not available.

3.  On the form toolbar, click **Save** to save your changes.

You have now configured the import of refunds to Acumatica ERP for payments made in the Shopify store with a card by using the Shopify Payments payment gateway.

**Parent topic:**[Importing Card Refunds](../UserGuide/Commerce_SP_Importing_CC_Refunds_Mapref.md)

