# Initial Configuration: To Establish and Configure the Store Connection {#_1ec88ef6-8dc6-4df8-89bb-3d6d6c4666d3 .task}

In this activity, you will learn how to connect your Acumatica ERP instance to the BigCommerce store and perform the initial configuration of the connection.

**Attention:** The following activity is based on the *U100* dataset. If you are using another dataset, or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity. To avoid any issues, restore the *U100* dataset to its initial state.

## Story {#section_gdc_2lh_gtb .section}

Suppose that the manager of the SweetLife company wants to sell jam in its online store deployed on the BigCommerce platform. SweetLife is already using Acumatica ERP and now needs to integrate it with a new BigCommerce store. As SweetLife's implementation consultant, you need to configure the connection to the BigCommerce store and perform the minimum configuration required for synchronization of data between Acumatica ERP and the BigCommerce store.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Retail Commerce* and *BigCommerce Connector* features have been enabled.
-   On the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, the *ECCUSTOMER* customer class has been defined.
-   On the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, the *ECCUSTOMER* numbering sequence has been defined,
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *ECOMGUEST* customer record has been created.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *REFUNDAMT* non-stock item has been defined.
-   On the [Order Types](SO_20_10_00.md) \(SO201000\) form, the *EO - eCommerce Order* has been defined based on the *SO* order template.
-   On the [Ship via Codes](CS_20_75_00.md) \(CS207500\) form, the *SWEETSHIP* ship via code has been created.
-   On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, the *10250ST* cash account has been configured for the *RETAIL* branch and the *USD* currency.
-   On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, the *ONLINE* payment method has been set up to be used with the *10250ST* cash account.

## Process Overview { .section}

On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you will create a new connection to the online store by using the information you captured in [Initial Configuration: To Capture Store Connection Information](Commerce_BC_Initial_Configuration_To_Capture_Connection_Info.md). After the connection is successfully established, you will perform the minimum configuration of the store settings.

## System Preparation { .section}

Before you start this activity, do the following:

1.  Make sure that you have completed the following activities:
    -   [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md)
    -   [Initial Configuration: To Capture Store Connection Information](Commerce_BC_Initial_Configuration_To_Capture_Connection_Info.md)

        You will need to specify the captured information in Step 1 below.

    -   [Initial Configuration: To Prepare the Acumatica ERP Instance](Commerce_BC_Initial_Configuration_To_Prepare_Acumatica_ERP_Instance.md)
2.  Sign in to the Acumatica ERP instance with the *U100* dataset preloaded by using the following credentials:
    -   **Username**: *gibbs*
    -   **Password**: *123*
3.  Sign in to the control panel of the BigCommerce store as the store administrator.

## Step 1: Establishing a Connection Between Acumatica ERP and the BigCommerce Store {#section_kdc_2lh_gtb .section}

To establish a connection with the BigCommerce store in your instance of Acumatica ERP, do the following:

1.  On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, add a new record.

    Notice that the **Active** check box is selected for the new store.

2.  In the **Store Name** box of the Summary area, type `SweetStore - BC`.
3.  On the **General** tab \(**Connection** section\), use the information that you have captured while completing [Initial Configuration: To Capture Store Connection Information](Commerce_BC_Initial_Configuration_To_Capture_Connection_Info.md) to specify the settings as follows:
    -   In the **Store Admin URL** box, enter the URL of your BigCommerce store.

        Notice that the system automatically appends */manage* to the store URL.

    -   Specify **API Path**.

        Notice that the system automatically removes the API version at the end of the API path.

    -   Specify **Client ID** and **Access Token**.

        Notice that once you enter the client ID or access token and then click elsewhere, the system masks the value you have entered.

4.  On the form toolbar, click **Save**.

Notice that the connection is established automatically, and the **Default Currency**, **Supported Currencies**, and **Store Time Zone** boxes have been populated automatically based on the values specified in the BigCommerce store.

**Tip:** You can check if the specified connection settings are correct any time by clicking **Test Connection** on the form toolbar.

## Step 2: Activating the Needed Entities {#section_mdc_2lh_gtb .section}

To specify the entity settings, while you are still viewing the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, do the following:

1.  Go to the **Entities** tab.

    The table displays all entities that are supported by the BigCommerce connector and their default settings \(such as, the synchronization direction and primary system\).

2.  In the table, select the **Active** check box for the following entities:

    -   *Customer*
    -   *Sales Category*
    -   *Stock Item*
    -   *Sales Order*
    -   *Payment*
    -   *Shipment*
    Leave the default settings of the activated entities as they are.


## Step 3: Specifying the Customer Settings {#section_ndc_2lh_gtb .section}

To specify the settings that will be used by default for importing customers from the BigCommerce store to Acumatica ERP, while you are still viewing the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, do the following:

1.  Go to the **Customers** tab.
2.  In the **Customer** section, select the following values:
    -   **Customer Class**: *ECCUSTOMER*

        This is the default customer class based on which customer records will be created in Acumatica ERP for customers imported from the online store.

    -   **Customer Numbering Sequence**: *ECCUSTOMER*

        This numbering sequence has been configured in Acumatica ERP to automatically generate identifiers for customer records imported from the BigCommerce store.

    -   **Generic Guest Customer**: *ECOMGUEST*

        This customer account, which has been created in Acumatica ERP, will appear on orders imported from the BigCommerce stores and placed by non-registered users.


## Step 4: Specifying the Order Settings {#section_pdc_2lh_gtb .section}

To specify the order-related settings, while you are still viewing the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, do the following:

1.  Go to the **Orders** tab.
2.  In the **Branch** box \(in the **General** section\), select *RETAIL*.

    This branch will be inserted in sales orders imported from the *SweetStore - BC* store.

3.  In the **Order** section, select the following values:
    -   **Order Type for Import**: *EO - eCommerce Order*

        This order type has been configured specifically for sales orders imported from BigCommerce stores.

    -   **Refund Amount Item**: *REFUNDAMT*

        This non-stock item, which does not reflect an actual item, will be used to reflect refunded amounts in sales orders and return orders for returns initiated in the BigCommerce store.

        Although the **Refund Amount Item** box is required and you need to specify its value during the initial setup, it will only be used during the configuration and processing of refunds, which is described in [Importing Card Refunds: General Information](Commerce_BC_Importing_CC_Refunds_GeneralInfo.md).

4.  In the **Taxes** section, leave the **Tax Synchronization** check box cleared.

    For simplicity, you do not need to configure the synchronization of taxes at this point.

5.  On the form toolbar, click **Save** to save your changes.

## Step 5: Specifying the Payment Settings {#section_qdc_2lh_gtb .section}

To import payments based on a particular payment method configured in the BigCommerce store to Acumatica ERP, you need to map the payment method to a corresponding payment method configured in Acumatica ERP.

To configure the payment method mapping, while you are still viewing the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, do the following:

1.  Go to the **Payments** tab.
2.  In the table of this tab, in the row of the *CUSTOM \(CUSTOM\)* payment method, specify the following settings:

    -   **Active**: Selected
    -   **Store Currency**: *USD* \(inserted automatically\)
    -   **ERP Payment Method**: *ONLINE*
    -   **Cash Account**: *10250ST*
    The *CUSTOM \(CUSTOM\)* value in the table corresponds to the *Manual payment* payment method in the BigCommerce store. With these settings, the payments made with the *Manual payment* payment method will be imported to Acumatica ERP. In the imported payments and related sales orders, the mapped payment method, *ONLINE*, will be displayed.

3.  On the form toolbar, click **Save** to save your changes.

## Step 6: Specifying the Shipping Settings { .section}

Now you need to map the shipping options that you set up in the BigCommerce store with the Ship Via codes defined in Acumatica ERP. Do the following:

1.  Go to the **Shipping** tab.
2.  In the table, add a new row and specify the following settings in the added row:
    -   **Active**: Selected
    -   **Store Shipping Zone**: `New York State`
    -   **Store Shipping Method**: `Free Shipping`
    -   **Ship Via**: *SWEETSHIP*
3.  On the form toolbar, click **Save** to save your changes.

Now that the initial configuration is complete, you can move on to synchronize your data for the first time. For information on data synchronization, see [Data Synchronization: General Information](Commerce_BC_Data_Sync_GeneralInfo.md) and [Data Synchronization: To Perform the First Synchronization](Commerce_BC_Data_Sync_First_Sync.md).

**Parent topic:**[Initial Configuration of a BigCommerce Store](../UserGuide/Commerce_BC_Initial_Configuration_Mapref.md)

