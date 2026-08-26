# Initial Configuration: General Information {#_0873da54-fbef-4515-b5bf-931b596d6cb5 .concept}

Before you can start using the ecommerce functionality of Acumatica ERP Retail Edition, you need to establish a connection between the Acumatica ERP instance and the Amazon seller account, and perform the initial configuration.

## Learning Objectives { .section}

In this section, you will learn what general steps are involved in establishing a connection between Acumatica ERP and the Amazon seller account and in performing the initial configuration of these systems.

## Steps for Establishing the Store Connection and Performing the Initial Configuration { .section}

In order to connect the Acumatica ERP instance to the Amazon seller account, you perform the following general steps:

1.  Establish the connection to the Amazon seller account.
2.  Activate the entities that need to be synchronized.

Each of these steps is described in greater detail below.

## Establishing the Connection to the Amazon Seller Account { .section}

Before you can connect Acumatica ERP to an Amazon seller account, you need to set it up first. For details on creating and setting up an Amazon seller account, see [the Amazon documentation](https://sell.amazon.com/sell).

Once the seller account is ready, you perform the following general steps to connect your Amazon seller account to Acumatica ERP:

1.  On the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form, create an Amazon store to represent your Amazon seller account. You do this by specifying the name for the new store in the Summary area and by filling out the **Region** and **Marketplace** boxes on the **General** tab.

    The region and marketplace you specify on this tab must match the region and marketplace of your Amazon seller account.

    **Attention:** Acumatica ERP supports synchronization for the following marketplaces in the *North America* region:

    -   *United States of America*
    -   *Canada*
    -   *Mexico*
2.  On the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form, connect the new store to the Amazon seller account. You initiate the connection by clicking **Authorize** on the form toolbar. In the new browser window, which opens with the Amazon Seller Central sign-in page, you sign in to your Amazon seller account. Once the sign-in is completed, Amazon Seller Central prompts you to review and confirm the access rights that will be granted to Acumatica ERP. The Amazon connector will access this data during the data synchronization between Acumatica ERP and the Amazon seller account.

    As soon as the connection is established, you can test the connection to the seller account any time by clicking **Test Connection** on the form toolbar.


## Activating and Setting Up the Supported Entities { .section}

For the entities that need to be synchronized between the Acumatica ERP instance and the Amazon seller account, you select the **Active** check box on the **Entities** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form.

The following table lists the entities that can be activated on the **Entities** tab, along with the supported synchronization direction. The synchronization direction is predefined for each entity and cannot be changed.

|Entity|Sync Direction|Description|
|------|--------------|-----------|
|*Product \(Linking Only\)*|*Import*|Establishes a link with seller-fulfilled products added to the Amazon seller account.|
|*Product Availability*|*Export*|Exports information about the items' available quantities to the Amazon seller account.|
|*Sales Order*|*Import*|Imports seller-fulfilled orders from Amazon to Acumatica ERP.|
|*Marketplace-Fulfilled Order*|*Import*|Imports marketplace-fulfilled orders from Amazon to Acumatica ERP.|
|*Payment*|*Import*|Imports payments for seller-fulfilled and marketplace-fulfilled orders from Amazon to Acumatica ERP.|
|*Non-Order Fees*|*Import*|Imports fees that are not associated with seller-fulfilled or marketplace-fulfilled orders from Amazon to Acumatica ERP.|
|*Shipment*|*Export*|Exports information about shipments for seller-fulfilled orders from Acumatica ERP to Amazon.|

You use the **Inventory**, **Orders**, **Payments**, and **Shipping** tabs to specify the synchronization settings for the activated entities.

After the initial configuration has been completed, you can configure the mapping and filtering for active entities on the [Entities](BC_20_20_00.md) \(BC202000\) form. You can create filters to narrow the data to be synchronized, override the default mappings, or define additional mappings of data fields between the Acumatica ERP instance and the Amazon seller account. Then you can start synchronizing data.

**Attention:** On the [Entities](BC_20_20_00.md) form, filtering and mapping are not available for the *Product \(Linking Only\)* and *Product Availability* entities.

## Synchronization of Data { .section}

After you have performed the initial configuration, you can start to synchronize data between Acumatica ERP and the Amazon seller account. For information about synchronization, see [Overview of Data Synchronization](Commerce_AZ_Data_Sync_Mapref.md).

**Parent topic:**[Initial Configuration of an Amazon Store](../UserGuide/Commerce_AZ_Initial_Configuration_Mapref.md)

