# Importing Non-Card Refunds: Implementation Activity {#_9aeaf163-1ff7-4e10-8410-01034926ccbd .task}

The following activity will walk you through the configuration of refund import so that you can import to Acumatica ERP refunds and returns issued to a customer in the Shopify store for orders paid with non-card payment methods.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company sells several kinds of jams in its Shopify store and wants Acumatica ERP to keep information about the returns and refunds issued in the Shopify store. Acting as an implementation consultant, you need to set up the import of refunds from the Shopify store to Acumatica ERP.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Retail Commerce*
-   *Shopify Connector*
-   *Custom Order Types*

The following entities, which you will use in this activity, have been predefined in the *U100* dataset:

-   The *ER* order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form
-   The *REFUNDAMT* non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form
-   The *EREFUND* reason code on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form

## Process Overview { .section}

In this activity, you will do the following:

1.  On the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, activate the *Refund* entity.
2.  On the **Orders** tab, review the settings related to refund import.
3.  On the **Payments** tab, activate the import of refunds for a non-card payment method \(*Manual*\).

## System Preparation { .section}

To prepare the system for the steps of this activity, do the following:

1.  Make sure the connection to the Shopify store has been established and the minimum configuration has been performed, as described in [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md).
2.  Sign in to the Acumatica ERP instance with the U100 dataset preloaded. You should sign in as an administrator an administrator by using the following credentials:
    -   Username: *gibbs*
    -   Password: *123*

## Step 1: Activating the Refund Entity { .section}

Before you start importing refunds from the Shopify store to Acumatica ERP, you need to activate the *Refund* entity as follows:

1.  Open the \(BC201000\) form.
2.  In the **Store Name** box of the Summary area, select *SweetStore - SP*, which is the store that you created in [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md).
3.  On the **Entities** tab, make sure that the **Active** check box has been selected for the *Refund* entity.

    You select the **Active** check box for an entity to indicate that the entity's data needs to be synchronized between Acumatica ERP and the Shopify store.

4.  On the form toolbar, click **Save** to save your changes.

## Step 2: Reviewing the Refund Import Settings { .section}

To review the settings that will be applied to refunds imported from the Shopify store, do the following:

1.  While you are still viewing the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, go to the **Orders** tab.
2.  In the **Order** section of the **Orders** tab, make sure that the following settings have been specified:
    -   **Return Order Type**: *ER - eCommerce Return Order*

        This order type is based on the *RC* order template.

    -   **Refund Amount Item**: *REFUNDAMT*

        This tax-exempt non-stock item is used to represent the refunded amounts in documents.

    -   **Refund Reason Code**: *EREFUND*

        This reason code of the *Issue* usage type is inserted in documents to indicate that the line represents a refund issued.

3.  On the form toolbar, click **Save** to save your changes.

## Step 3: Activating the Import of Refunds for a Non-Card Payment Method { .section}

To turn on the import of refunds for the *Manual* payment method, which you have configured in [Initial Configuration: To Configure the Store Connection](Commerce_SP_Initial_Configuration_Implem_Activity.md), do the following:

1.  While you are still viewing the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, go to the **Payments** tab.
2.  In the table of this tab, select the **Process Refunds** check box in the row of the *MANUAL* store payment method.

    The resulting payment method mapping is shown in the following table.

    |Active|Store Payment Method|Store Currency|ERP Payment Method|Cash Account|Release Payments and Refunds|Process Refunds|
    |------|--------------------|--------------|------------------|------------|----------------------------|---------------|
    |Selected|*MANUAL*|*USD*|*ONLINE*|*10250ST*|Cleared|Selected|

3.  On the form toolbar, click **Save** to save your changes.

You have now configured the import of refunds from the Shopify store to Acumatica ERP for payments made by using a non-card payment method \(*Manual*\).

**Parent topic:**[Importing Non-Card Refunds](../UserGuide/Commerce_SP_Importing_nonCC_Refunds_Mapref.md)

