# Initial Configuration: General Information {#_f4fb686f-9c04-4af1-8626-e2bdb9e3664a .concept}

Before you can start using the ecommerce functionality of Acumatica ERP Retail Edition, you need to set up a Shopify store, establish a connection between the Acumatica ERP instance and the Shopify store, and perform the initial configuration of the connection.

## Learning Objectives { .section}

In this section, you will learn what general steps are involved in establishing a connection between Acumatica ERP and the Shopify store and in performing the initial configuration of these systems.

## Steps for Establishing the Store Connection and Performing the Initial Configuration { .section}

In order to connect the Acumatica ERP instance to the Shopify store, you perform the following general steps:

1.  Set up a Shopify store.
2.  Prepare the Acumatica ERP instance.
3.  Establish the connection to the Shopify store.
4.  Configure the entities enabled for synchronization.
5.  Start synchronizing data.

Each of these steps is described in greater detail below.

## Setup of a Shopify Store { .section}

Before you can connect Acumatica ERP to a Shopify store, you need to set up the store. For a test implementation, we recommend that you sign up for a Shopify trial account. For more information, see [the Shopify pricing page](https://www.shopify.com/pricing).

If you are registered in the [Shopify Partner Program](https://help.shopify.com/en/partners/about), you can create a new [development store](https://help.shopify.com/en/partners/dashboard/managing-stores/development-stores) and use it instead.

## Preparation of the Acumatica ERP Instance { .section}

During the configuration of the connection to the Shopify store, you need to specify certain values coming from the Acumatica ERP instance, such as the numbering sequence to be used for generating the identifiers of customers imported from the Shopify store, and the payment methods that will be mapped to the payment methods configured in the Shopify store. Some of these values can be created on the fly. However, we recommend that the Acumatica ERP instance be prepared in advance.

For more information, see [Initial Configuration: To Prepare the Acumatica ERP Instance](Commerce_SP_Initial_Configuration_To_Prepare_Acumatica_ERP_Instance.md).

## Establishing of the Connection to the Shopify Store { .section}

You can establish a connection between your Shopify store and the Acumatica ERP instance in the following ways:

-   By using the public Acumatica Cloud ERP app, which you add to your Shopify store from the [Shopify App Store](https://apps.shopify.com/).For step-by-step instructions of connecting a store with the public app, see [Initial Configuration: To Establish the Store Connection with a Public App](Commerce_SP_To_Establish_Store_Connection_Public_App.md).

    **Attention:** To connect a Shopify by using the public app, the URL of your instance must be publicly accessible from the internet.

-   By using a custom app that you create and install in your Shopify store. For detailed instructions, see [Initial Configuration: To Establish the Store Connection with a Custom App](Commerce_SP_To_Establish_Store_Connection_Custom_App.md).

## Initial Configuration of the Store Connection { .section}

After you have successfully established a connection to the Shopify store, you can perform the basic required configuration. This step involves the following substeps:

1.  *Activating the entities that need to be synchronized.* On the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you activate the needed entities—that is, you select the **Active** check box in the row of each entity whose records you want to synchronize between Acumatica ERP and the Shopify store.

    The synchronization of a particular entity may require that some other entities be synchronized as a prerequisite. When you select the **Active** check box for such an entity, the system automatically selects it for all other entities required as a prerequisite. Similarly, when you clear the **Active** check box for an entity that is a required entity for other entities, the check box becomes cleared for all dependent entities.

    In this substep, you also review the following default synchronization settings for each entity for which the **Active** check box is selected, and make sure the default settings are appropriate for your configuration needs:

    -   **Sync Direction**: The direction of the synchronization, which can be *Import* \(data is imported to Acumatica ERP\), *Export* \(data is exported to the Shopify store\), and *Bidirectional* \(data is both exported to the Shopify store and imported to Acumatica ERP\).
    -   **Primary System**: The system, *ERP* \(Acumatica ERP\) or *External System* \(the Shopify store\), whose data takes precedence if conflicts occur during the synchronization.
    -   **Real-Time Import**: The status of the real-time import process. At the time of the initial configuration, this status is either *Stopped* \(real-time synchronization is supported but has not been started\) or *Not Supported* \(real-time synchronization cannot be started\).
    -   **Real-Time Export**: The status of the real-time export process. At the time of the initial configuration, this status is either *Stopped* \(real-time synchronization is supported but has not been started\) or *Not Supported* \(real-time synchronization cannot be started\).
    -   **Real-Time Mode**: The mode of the processing synchronization records, which can be either of the following:
        -   *Prepare*: As soon as a push notification about a change to data is received, the corresponding synchronization record is placed in the processing queue.
        -   *Prepare &amp; Process*: As soon as a push notification about a change to data is received, the corresponding synchronization record is placed in the processing queue, and the data synchronization process is immediately started for the synchronization record.
    -   **Max. Failed Attempts**: The maximum number of errors that are allowed during the import or export before the record is automatically skipped. By default, 5 attempts are allowed.
    Although most of the settings on this tab can be changed, we recommend that you leave the default values during the initial configuration. For more information about configuring synchronization, see [Data Synchronization: General Information](Commerce_SP_Data_Sync_GeneralInfo.md).

2.  *Specifying the settings that apply to the customer synchronization.* On the **Customers** tab, you specify the settings related to the synchronization of customers and customer locations \(addresses\). For details, see [Customer Synchronization: General Information](Commerce_SP_Syncing_Customers_GeneralInfo.md).
3.  *Specifying the settings related to the synchronization of stock, non-stock, and template items.* On the **Inventory** tab, you can define the following default settings:
    -   Export of sales categories as tags for the exported items.

        You can cause the system to export sales categories assigned to a stock or non-stock item in Acumatica ERP to be exported to the Shopify store as product tags during the synchronization of the item. To do this, on the **Inventory Settings** tab of the [Shopify Stores](../Shared/../UserGuide/BC_20_10_10.md) \(BC201010\) form, you set **Sales Category Export** to *Export as Product Tags*. You can view sales categories on the [Item Sales Categories](../Shared/../UserGuide/IN_20_40_60.md) \(IN204060\) form.

    -   Default visibility of items exported to the Shopify store.

        To specify that by default items should be visible on the storefront immediately after they are exported to the store, you select *Visible* in the **Default Visibility** box. To export items but make them hidden from the storefront, you select *Invisible*. For information about managing visibility of exported items, see [Product Synchronization: General Information](Commerce_SP_Syncing_Products_GeneralInfo.md).

    -   Default availability of items exported to the Shopify store. For details, see [Product Availability: General Information](Commerce_SP_Syncing_Product_Availability_GeneralInfo.md).
4.  *Specifying the settings related to the synchronization of orders.* You define the default order-related settings on the **Orders** tab as follows:
    -   You select the branch that will appear on sales orders imported from the Shopify store. The base currency of the branch must match the default currency of the Shopify store, which is displayed in the **Store Currency** box of the **Store Properties** section on the **General** tab.
    -   In the **Order** section, you provide the settings for the synchronization of orders, processing of returns and refunds, importing of orders with discounts \(if discounts are provided\), selling gift cards, handling the risky orders, etc. For details, see [Order Synchronization: General Information](Commerce_SP_Syncing_Orders_GeneralInfo.md), [Gift Cards: General Information](Commerce_SP_Gift_Cards_GeneralInfo.md), [Import of Orders with Discounts: Process Activity](Commerce_SP_Orders_with_Discounts_Activity.md), [Importing Card Refunds: General Information](Commerce_SP_Importing_CC_Refunds_GeneralInfo.md), and
    -   In the **Taxes** section, you specify if taxes need to be synchronized with the Shopify store; in the **Substitution Lists** section, you can specify the substitution lists to be used for tax synchronization. For details, see [Import of Taxes: General Information](Commerce_SP_Orders_with_Taxes_GeneralInfo.md).
5.  *Specifying the settings related to the synchronization of payments.* On the **Payments** tab, you map the payment methods defined in the Shopify store to the combination of the payment method and cash account defined in Acumatica ERP. For information, see [Order Synchronization: General Information](Commerce_SP_Syncing_Orders_GeneralInfo.md) and [Order Synchronization: Card Payments](Commerce_SP_Syncing_Orders_Card_Payments.md).
6.  *Specifying the settings related to the synchronization of shipments.* On the **Shipping** tab, you define the mapping of each shipping option \(which is a combination of a shipping zone and shipping method\) defined in Shopify to the ship via code, and optionally, shipping zone and shipping terms defined in Acumatica ERP. The **Store Shipping Zone** and **Store Shipping Method** columns of the table are populated with the settings from Shopify when the correct API credentials are entered and saved on the **General** tab.

    On the **Orders** tab, you can also specify a substitution list to map Ship Via codes with shipping carrier names in Shopify.

    During the synchronization of the *Shipment* entity with the Shopify store, the retail-commerce connector checks whether a substitution value exists for the Ship Via code in the substitution list. If it exists, the connector will try to generate the tracking link based on the substitution value. If the Ship Via code does not exist in the substitution list or if no substitution list is selected in the **Shipping Carriers** box, the retail-commerce connector exports the Ship Via code as the carrier name. The link is generated if the Ship Via code matches the carrier name.

7.  On the form toolbar, you click **Save** to save the settings.

## Configuration of the Entities Enabled for Synchronization { .section}

For each entity that you want to synchronize between Acumatica ERP and the Shopify store and that you have activated on the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form, you can also set up the mapping of custom fields for synchronization and synchronization filtering settings on the [Entities](BC_20_20_00.md) \(BC202000\) form.

For more information about defining filtering and mapping settings for the needed entities, see [Preparing Entities for Synchronization](Commerce_SP_Preparing_Entities_Mapref.md).

## Synchronization of Data { .section}

After you have performed the initial configuration, you can start to synchronize data between Acumatica ERP and the Shopify store. First, you perform manual synchronization for entities in a specific order. Then you set up synchronization to run automatically, either in real-time or according to a specific schedule. For information about synchronization, see [Data Synchronization: General Information](Commerce_SP_Data_Sync_GeneralInfo.md).

**Parent topic:**[Initial Configuration of a Shopify Store](../UserGuide/Commerce_SP_Initial_Configuration_Mapref.md)

