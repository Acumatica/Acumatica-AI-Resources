# Initial Configuration: To Configure the Store Connection {#_bef4f510-cce8-417a-994c-27b1abea3dcc .task}

In this activity, you will learn how to perform the initial configuration of the synchronization between Acumatica ERP and the Shopify store.

**Attention:** The following activity is based on the *U100* dataset.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company wants to sell jam in its online store deployed on the Shopify platform. SweetLife has already connected Acumatica ERP and its Shopify store. As SweetLife's implementation consultant, you need to perform the minimum configuration required for synchronization of data between Acumatica ERP and the Shopify store.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Retail Commerce* and *Shopify Connector* features have been enabled.
-   On the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, the *ECCUSTOMER* customer class has been defined.
-   On the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, the *ECCUSTOMER* numbering sequence has been defined,
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *ECOMGUEST* customer record has been created.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *REFUNDAMT* non-stock item has been defined.
-   On the [Item Sales Categories](IN_20_40_60.md) \(IN204060\) form, the *Other* sales category has been created.
-   On the [Order Types](SO_20_10_00.md) \(SO201000\) form, the *EO - eCommerce Order* has been defined based on the *SO* order template.
-   On the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form, the *SWEETSHIP* ship via code has been created.
-   On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, the *10250ST* cash account has been configured for the *RETAIL* branch and the *USD* currency.
-   On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, the *ONLINE* payment method has been set up to be used with the *10250ST* cash account.

## Process Overview { .section}

On the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you perform the minimum configuration of the settings required for the synchronization of data between Acumatica ERP and the Shopify store.

## System Preparation { .section}

Before you start this activity, do the following:

1.  Make sure that you have completed the following activities:
    -   [Initial Configuration: To Set Up a Shopify Store](Commerce_SP_Initial_Configuration_To_Set_Up_a_Shopify_Store.md)
    -   [Initial Configuration: To Prepare the Acumatica ERP Instance](Commerce_SP_Initial_Configuration_To_Prepare_Acumatica_ERP_Instance.md)
    -   [Initial Configuration: To Establish the Store Connection with a Public App](Commerce_SP_To_Establish_Store_Connection_Public_App.md)
2.  Sign in to the Acumatica ERP instance with the *U100* dataset preloaded by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*

## Step 1: Activating the Needed Entities { .section}

Do the following to specify the entity settings:

1.  On the [Shopify Stores](../Shared/../UserGuide/BC_20_10_10.md) \(BC201010\) form, select the *SweetStore - SP* store.
2.  On the **Entities** tab, select the **Active** check box in the table for the following entities:

    -   *Customer*
    -   *Stock Item*
    -   *Sales Order*
    -   *Payment*
    -   *Shipment*
    Leave the default settings of the activated entities as they are.


## Step 2: Specifying the Customer Settings { .section}

To specify the settings that will be used by default for importing customers from the Shopify store to Acumatica ERP, do the following:

1.  While you are still viewing the *SweetStore - SP* store on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, open the **Customers** tab.
2.  In the **Customer** section, select the following values:
    -   **Customer Class**: *ECCUSTOMER*

        This is the default customer class based on which customer records will be created in Acumatica ERP for customers imported from the online store.

    -   **Customer Numbering Sequence**: *ECCUSTOMER*

        This numbering sequence has been configured in Acumatica ERP to automatically generate identifiers for customer records imported from the Shopify store.


## Step 3: Specifying the Order Settings { .section}

To specify the order-related settings, do the following:

1.  While you are still viewing the *SweetStore - SP* store on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, go to the **Orders** tab.
2.  Set **Branch** to *RETAIL*.

    The *RETAIL* branch will be inserted by default in sales orders imported from the *SweetStore - SP* store.

3.  In the **Order** section, select the following options:
    -   **Order Type for Import**: *EO - eCommerce Order*

        This order type has been configured specifically for sales orders imported from Shopify stores.

    -   **Refund Amount Item**: *REFUNDAMT - eCommerce Refund Amount Item*

        This non-stock item is used as a “product” to reflect refunded amounts in sales orders and return orders for refunds initiated in the Shopify store. Although the **Refund Amount Item** box is required and you need to specify its value during the initial setup, it will only be used during the configuration and processing of refunds, which is described in [Importing Non-Card Refunds](Commerce_SP_Importing_nonCC_Refunds_Mapref.md) and [Importing Card Refunds](Commerce_SP_Importing_CC_Refunds_Mapref.md).

    -   **Tag Ext. Order with ERP Order Nbr.**: Selected.

        With this check box selected, for each order imported from the Shopify store to Acumatica ERP, two tags will be added in the Shopify store—*ERP* and a tag with the order number assigned to the order in Acumatica ERP.

4.  In the **Taxes** section, leave the **Tax Synchronization** check box cleared.

    For simplicity, you do not need to configure the synchronization of taxes at this point.

5.  On the form toolbar, click **Save** to save your changes.

## Step 4: Reviewing the Payment Method Mapping { .section}

If you want to import payments based on a particular payment method activated in the Shopify store to Acumatica ERP, you need to map the payment method to a corresponding payment method configured in Acumatica ERP. To configure the payment method mapping, do the following:

1.  While you are still viewing the *SweetStore - SP* store on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, go to the **Payments** tab.
2.  In the table of this tab, add a row, and in the added row, map the payment method set up in the Shopify store with the payment method activated in Acumatica ERP as follows.

    |Active|Store Payment Method|Store Currency|ERP Payment Method|Cash Account|Release Payments and Refunds|
    |------|--------------------|--------------|------------------|------------|----------------------------|
    |Selected|`MANUAL`|*USD*|*ONLINE*|*10250ST*|Cleared|

    With these settings, the payments for orders created with the manual payment method in the Shopify store will be imported to Acumatica ERP for further processing. In imported sales orders and payments made with this payment method, the mapped payment method, *ONLINE*, will be displayed. For simplicity, you do not need to map any other payment methods at this time.

3.  On the form toolbar, click **Save** to save your changes.

## Step 5: Specifying the Shipping Settings { .section}

To map the shipping methods defined in Shopify with the Ship Via codes defined in Acumatica ERP, do the following:

1.  While you are still viewing the *SweetStore - SP* store on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, go to the **Shipping** tab.

    Notice that the system has automatically added a row for each shipping option defined in the Shopify store.

2.  In the table of this tab, in the existing rows with the *Standard* and *Economy* store shipping methods of the *Domestic* store shipping zone, specify the settings described in the following table.

    |Active|Store Shipping Zone|Store Shipping Method|Ship Via|Shipping Zone|Shipping Terms|
    |------|-------------------|---------------------|--------|-------------|--------------|
    |Selected|*Domestic*|*Standard*|*SWEETSHIP*|Leave empty|Leave empty|
    |Selected|*Domestic*|*Economy*|*SWEETSHIP*|Leave empty|Leave empty|

3.  On the form toolbar, click **Save** to save your changes.

Now that the initial configuration is complete, you can move on to synchronize your data for the first time. For information on data synchronization, see [Data Synchronization: General Information](Commerce_SP_Data_Sync_GeneralInfo.md) and [Data Synchronization: To Perform the First Synchronization](Commerce_SP_Data_Sync_Activity_First_Sync.md).

**Parent topic:**[Initial Configuration of a Shopify Store](../UserGuide/Commerce_SP_Initial_Configuration_Mapref.md)

