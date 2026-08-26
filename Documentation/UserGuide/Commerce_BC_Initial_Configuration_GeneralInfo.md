# Initial Configuration: General Information {#_89456383-a6a4-494a-b62d-1da59066058c .concept}

Before you can start using the ecommerce functionality of Acumatica ERP Retail Edition, you need to set up a BigCommerce store, establish a connection between the Acumatica ERP instance and the BigCommerce store, and perform the initial configuration of the connection.

## Learning Objectives { .section}

In this section, you will learn what general steps are involved in establishing a connection between Acumatica ERP and the BigCommerce store and in performing the initial configuration of these systems.

## Steps for Establishing the Store Connection and Performing the Initial Configuration { .section}

In order to connect the Acumatica ERP instance to the BigCommerce store, you perform the following general steps:

1.  Set up a BigCommerce store.
2.  Obtain the BigCommerce API keys.
3.  Prepare the Acumatica ERP instance.
4.  Establish the connection to the BigCommerce store.
5.  Perform the initial configuration of the store connection.
6.  Configure the entities enabled for synchronization.
7.  Start synchronizing data.

Each of these steps is described in greater detail below.

## Setup of a BigCommerce Store { .section}

Before you can connect Acumatica ERP to a BigCommerce store, you need to set up the store. For a test implementation, we recommend that you sign up for a BigCommerce trial site. For more information, see [Initial Configuration: To Set Up a BigCommerce Store](Commerce_BC_Initial_Configuration_To_Set_Up_a_BC_Store.md).

## Obtaining of the BigCommerce API Keys and WebDAV Information { .section}

When you create a BigCommerce store in Acumatica ERP, you need to specify the following details:

-   Store admin URL, which is the URL of the BigCommerce store followed by */manage*
-   API credentials \(API path, client ID, and access token\)

For details on obtaining API information, see [Initial Configuration: To Establish and Configure the Store Connection](Commerce_BC_Initial_Configuration_Implem_Activity.md).

## Preparation of the Acumatica ERP Instance { .section}

During the configuration of the connection to the BigCommerce store, you need to specify certain values coming from the Acumatica ERP instance, such as the numbering sequence to be used for generating the identifiers of customers imported from the BigCommerce store, and the payment methods that will be mapped to the payment methods configured in the BigCommerce store. Some of these values can be defined at the time of the initial configuration. However, we recommend that the Acumatica ERP instance be prepared in advance.

For more information, see [Initial Configuration: To Prepare the Acumatica ERP Instance](Commerce_BC_Initial_Configuration_To_Prepare_Acumatica_ERP_Instance.md).

## Establishing of the Connection to the BigCommerce Store { .section}

Once you have captured the API account details for your BigCommerce store, you proceed to set up the connection on the **General** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. You specify the store name, the admin path to the store, and the API account details. Once you have specified these settings, you click **Test Connection** on the form toolbar to ensure that the data has been specified correctly.

## Initial Configuration of the Store Connection { .section}

After you have successfully established a connection to the BigCommerce store, you perform the basic required configuration. This step involves the following substeps:

1.  On the **Entities** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form, you activate the needed entities—that is, you select the **Active** check box in the row of each entity whose records you want to synchronize between Acumatica ERP and the BigCommerce store.

    The synchronization of a particular entity may require that some other entities also be synchronized as a prerequisite. When you select the **Active** check box for such an entity, the system automatically selects it for all other entities required as a prerequisite. Similarly, when you clear the **Active** check box for an entity that is a required entity for other entities, the check box becomes cleared for all dependent entities.

    In this substep, you also review the following default synchronization settings for each entity for which the **Active** check box is selected, and make sure the default settings are appropriate for your configuration needs:

    -   **Sync Direction**: The direction of the synchronization, which can be *Import* \(data is imported to Acumatica ERP\), *Export* \(data is exported to the BigCommerce store\), and *Bidirectional* \(data is both exported to the BigCommerce store and imported to Acumatica ERP\).
    -   **Primary System**: The system, *ERP* \(Acumatica ERP\) or *External System* \(the BigCommerce store\), whose data takes precedence if conflicts occur during the synchronization.
    -   **Real-Time Import**: The status of the real-time import process. At the time of the initial configuration, this status is either *Stopped* \(that is, real-time synchronization is currently not running in the *Import* direction\) or *Not Supported* \(that is, real-time synchronization cannot be started in the *Import* direction\).
    -   **Real-Time Export**: The status of the real-time export process. At the time of the initial configuration, this status is either *Stopped* \(that is, real-time synchronization is currently not running in the *Export* direction\) or *Not Supported* \(that is, real-time synchronization cannot be started in the *Export* direction\).
    -   **Real-Time Mode**: The mode of the processing of the synchronization records, which can be either of the following:
        -   *Prepare*: As soon as a push notification about a change to data is received, the corresponding synchronization record is placed in the processing queue.
        -   *Prepare &amp; Process*: As soon as a push notification about a change to data is received, the corresponding synchronization record is placed in the processing queue, and the data synchronization process is immediately started for the synchronization record.
    -   **Max. Failed Attempts**: The maximum number of errors that are allowed during the import or export before the record is automatically skipped. By default, 5 attempts are allowed.
    Although all settings except *Real-Time Import* and *Real-Time Export* can be changed, we recommend that you leave the default values during the initial configuration. For more information about configuring synchronization, see [Data Synchronization: General Information](Commerce_BC_Data_Sync_GeneralInfo.md).

2.  On the **Customers** tab, you specify the following settings, which will be applied to customers and customer locations imported from the BigCommerce store to Acumatica ERP:

    -   **Customer Class**: The customer class from which default customer settings will be populated for new customers that are imported from the BigCommerce store.

        If the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the **Restrict Visibility To** value of the customer class on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form should be set to the branch selected in the **Branch** box on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form or to the company this branch belongs to.

    -   **Customer Numbering Sequence**: The numbering sequence the system will use to automatically generate the identifiers of the customers that are imported from the BigCommerce store.
    -   **Location Numbering Sequence**: The numbering sequence the system will use to automatically generate identifiers of the customer locations \(that is, addresses\) that are imported from the BigCommerce store.
    -   **Generic Guest Customer**: The customer account to be used in orders placed in the BigCommerce store by non-registered customers if guest orders are allowed in the BigCommerce store.

        Also, the system will assign this customer account to any imported order if the synchronization of customers is not configured for the store—that is, the *Customer* entity is inactive for the store on the **Entities** tab.

    If your company uses segmented keys that consist of multiple segments for customers and customer locations, you also need to specify the numbering templates in the **Customer Numbering Template** and **Location Numbering Template** boxes.

3.  On the **Inventory** tab, you specify the following settings that apply to inventory items:
    -   **Default Stock Categories** and **Default Non-Stock Categories**: The sales item categories that are assigned to stock and non-stock items, respectively, when the items are exported to the BigCommerce store, if these items are not assigned any item sales category in Acumatica ERP.
    -   **Related Items**: The types of related items information about which can be exported to the BigCommerce store. In the drop-down list, you select the check box of each type of related items to be exported, and the system displays the selected categories in the box, separated by commas.

        If an item is specified as a related item of any of the selected types for a stock item or non-stock item on the **Related Items** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, information about this item is exported to the BigCommerce store during the synchronization of the *Stock Item* or *Non-Stock Item* entity, respectively.

    -   **Default Availability**: The default availability assigned to stock and non-stock items exported from Acumatica ERP. You can select any of the following options:

        -   *Set as Available \(Track Qty.\)*: The exported items will be available in the store, and their quantity will be tracked.
        -   *Set as Available \(Don't Track Qty.\)*: The exported items will be available in the store, and their quantity will not be tracked.
        -   *Set as Pre-Order*: The exported items will be available for pre-order—that is, the **Purchasability** of the items in BigCommerce will be set to *This product is coming soon but I want to take pre-orders*.
        -   *Set as Unavailable*: The exported items will not be available for purchase—that is, the **Purchasability** setting of the items in BigCommerce will be set to *This product cannot be purchased in my online store*.
        **Tip:** The default availability can be overridden for each particular item on the **eCommerce** tab of the [Stock Items](IN_20_25_00.md) or [Non-Stock Items](IN_20_20_00.md) form.

        If you select *Set as Available \(Track Qty.\)*, in the **When Qty. Unavailable** box, you also need to select the action to be taken if after the synchronization of the *Product Availability* entity the item's available quantity becomes zero. You can select one of the following actions:

        -   *Do Nothing*: The system should perform no action. The item's availability settings in the store remain unchanged.
        -   *Set as Unavailable*: The system should make the item unavailable for purchase.
        -   *Set as Pre-Order*: The system should make the item unavailable for purchase but available for pre-order.
    -   **Availability Mode**: You select which item quantities need to be synchronized with the BigCommerce store: all available items, items available for shipping, or items on hand.
    -   **Warehouse Mode**: You specify if you want to use all warehouses or only specific warehouses for quantity calculations. In the latter case, you need to specify the warehouses whose quantities are to be included in calculations.

        **Attention:** If *Multiple Warehouse Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS101000\) form, you can specify warehouse locations whose item quantities should be used for calculating the items' available quantities in the BigCommerce store.

4.  On the **Orders** tab, you define default settings for the BigCommerce store as follows:
    -   In the **General** section, you select the branch that will appear on sales orders imported from the BigCommerce store. The base currency of the branch must match the default currency of the BigCommerce store, which is displayed in the **Default Currency** box of the **Store Properties** section on the **General** tab.
    -   In the **Order** section, you select the order types to be assigned to sales orders and return orders imported from the BigCommerce store and order types that should be exported to the store. Here you also specify if discounts should be aggregated on the level of the entire document or for particular items in the order \(if discounts are provided\), and select the non-stock item that will represent gift certificates that you can sell in the BigCommerce store and accept as payment. For more information about order synchronization, see [Order Synchronization: General Information](Commerce_BC_Syncing_Orders_GeneralInfo.md). For details about importing refunds from the BigCommerce store, see [Importing Non-Card Refunds: General Information](Commerce_BC_Importing_nonCC_Refunds_GeneralInfo.md) and [Importing Card Refunds: General Information](Commerce_BC_Importing_CC_Refunds_GeneralInfo.md).
    -   In the **Taxes** section, you specify if taxes need to be synchronized with the BigCommerce store. If synchronization of taxes is enabled—that is, if the **Tax Synchronization** check box is selected—you can also specify in the **Default Tax Zone** box, the tax zone that the system will assign to imported sales orders if no tax zone was identified during the order import. In some cases, for example, if you use an external tax calculation service, you might need to always assign a particular tax zone to imported orders. In this case, you select the **Use as Primary Tax Zone** check box. For more information about tax synchronization, see [Import of Taxes: General Information](Commerce_BC_Syncing_Orders_Tax_Synchronization.md).
    -   In the **Substitution Lists** section, you can select the substitution lists that you will use to map tax codes and tax categories between Acumatica ERP and the BigCommerce store.

        In this section, you can also specify a substitution list that maps Ship Via codes with the names of shipping carriers used in the BigCommerce store. During the synchronization of the *Shipment* entity with an external system, the retail-commerce connector checks whether a substitution value exists for the Ship Via code in the substitution list. If it exists, the connector will try to generate the tracking link based on the substitution value. Otherwise, the retail-commerce connector exports the Ship Via code as the carrier name, and the link is generated if the Ship Via code matches the carrier name.

5.  On the **Payments** tab, you map the payment methods defined in the BigCommerce store \(that is, the values in the **Store Payment Methods** column\) to the combination of the payment method and cash account defined in Acumatica ERP \(that is, with the values in the **ERP Payment Method** and **Cash Account** columns, respectively\). To indicate that payments by a specific payment method should be processed in Acumatica ERP, you select the **Active** check box for a particular store payment method; you can also indicate that payments based on a specific payment method that are imported from the BigCommerce store should be released on import automatically by selecting the check box in the **Release Payments and Refunds** column.
6.  On the **Shipping** tab, you specify the **Ship Via** options for the combinations of the shipping zone and shipping method configured in the BigCommerce store. For each combination of the store shipping zone and store shipping method, you can optionally specify the shipping zone and shipping terms to make the mapping more granular. The values specified in this table appear on the **Shipping** tab of orders imported to Acumatica ERP from the BigCommerce store.
7.  On the form toolbar, you click **Save** to save the settings.

## Configuration of the Entities Enabled for Synchronization { .section}

For each entity that you want to synchronize between Acumatica ERP and the BigCommerce store and that you have activated on the **Entities** tab of the [BigCommerce Stores](BC_20_10_00.md) form, you can also set up the mapping of custom fields for synchronization and synchronization filtering settings on the [Entities](BC_20_20_00.md) \(BC202000\) form.

For more information about defining filtering and mapping settings for the needed entities, see [Preparing Entities for Synchronization: Filtering](Commerce_BC_Preparing_Entities_Filtering.md) and [Preparing Entities for Synchronization: Field Mapping](Commerce_BC_Preparing_Entities_Mapping.md).

## Synchronization of Data { .section}

After you have performed the initial configuration, you can start to synchronize data between Acumatica ERP and the BigCommerce store. First, you perform manual synchronization for entities in a specific order. Then you set up synchronization to run automatically, either in real-time or according to a specific schedule. For information about synchronization, see [Data Synchronization: General Information](Commerce_BC_Data_Sync_GeneralInfo.md).

**Parent topic:**[Initial Configuration of a BigCommerce Store](../UserGuide/Commerce_BC_Initial_Configuration_Mapref.md)

