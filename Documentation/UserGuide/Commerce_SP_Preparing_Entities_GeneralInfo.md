# Preparing Entities for Synchronization: General Information {#_e99d781d-cc51-4783-b90f-5c8bf0956776 .concept}

Acumatica ERP Retail Edition provides flexible tools that you can use to prepare the data for synchronization with your Shopify store and configure the synchronization settings.

## Learning Objectives { .section}

In this chapter, you will learn the following:

-   How to filter data that needs to be synchronized between Acumatica ERP and the Shopify store
-   How to configure mapping of standard and custom fields that need to be synchronized
-   How to update stock items and non-stock items with ecommerce-related data

## Applicable Scenarios { .section}

You might want to configure additional mapping if you have defined custom fields in Acumatica ERP, in the Shopify store, or in both systems, and you want these fields to be synchronized between the two systems. For example, you might want to define an extra field on the customer registration form in the online store and map this field to a user-defined field or an attribute in a customer record in Acumatica ERP.

Filtering is useful if you do not want to synchronize all data of a particular entity. For example, you might want to define a subset of items in Acumatica ERP \(which are referred to as *products* in Shopify\) that you want to export to the online store, or exclude from export the customers that have incomplete information in Acumatica ERP \(that is, the customers that have the *On Hold* status\).

You might want to update ecommerce-related information about items in Acumatica ERP if you want to override default inventory settings related to export that have been configured for the store on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form or if you want to maintain all product data, ecommerce-related or otherwise, in one system.

## Configuration of Synchronization Preferences {#_50c53db5-087a-457f-be16-c28de249b07c .section}

During the initial configuration of the connection between Acumatica ERP and the Shopify store, you determine which of the entities supported by the Shopify connector need to be synchronized between the two systems. To do this, you select the **Active** check box for each required entity on the **Entities** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. On this tab, you can also configure the following:

-   The direction of the synchronization. For each entity, you specify whether data should be exported to Shopify, imported to Acumatica ERP, or synchronized in both directions.
-   The primary system. You indicate which of the systems, *ERP* \(that is, Acumatica ERP\) or *External System* \(that is, Shopify\), should be used as the source of data if conflicts occur during the synchronization of a particular entity.
-   The real-time synchronization mode. You indicate whether the synchronization records for a particular entity should be processed immediately after the data is prepared by selecting either of the following options:
    -   *Prepare*: As soon as a push notification about a change to data is received, the corresponding synchronization record is placed in the processing queue.
    -   *Prepare &amp; Process*: As soon as a push notification about a change to data is received, the corresponding synchronization record is placed in the processing queue, and data processing is immediately started for the synchronization record.
-   The number of attempts when an error occurs. You specify the number of times the system will try to process the synchronization records before excluding them from further synchronization attempts.

You can also change these settings for each particular entity by using the [Entities](BC_20_20_00.md) \(BC202000\) form.

## Filtering and Field Mapping for Export and Import { .section}

For some of the entities supported by the ecommerce connector, on the [Entities](BC_20_20_00.md) \(BC202000\) form, you can configure the additional synchronization settings—for example, define a filter to be applied during the synchronization of entity data, or define a new mapping between the fields in Acumatica ERP and the fields in Shopify. You define filters and mappings for the import and export processes on the following tabs:

-   Filtering for import: **Import Filtering** tab
-   Filtering for export: **Export Filtering** tab
-   Mapping for import: **Import Mapping** tab
-   Mapping for export: **Export Mapping** tab

**Tip:** On these tabs, you can change the order of any row in the table by dragging it to its new position.

The display of the listed tabs is determined by the entity selected in the Summary area. The table below shows the availability of filtering and mapping functionality for particular entities.

|Entity in Acumatica ERP|Import Mapping|Import Filtering|Export Mapping|Export Filtering|
|-----------------------|--------------|----------------|--------------|----------------|
|*Customer*|Yes|Yes|Yes|Yes|
|*Customer Location*|No|Yes|No|Yes|
|*Stock Item*|No|No|Yes|Yes|
|*Non-Stock Item*|No|No|Yes|Yes|
|*Template Item*|No|No|Yes|Yes|
|*Product Image*|No|No|No|No|
|*Product Availability*|No|No|No|No|
|*Sales Order*|Yes|Yes|No|No|
|*Payment*|Yes|Yes|No|No|
|*Shipment*|No|No|Yes|Yes|
|*Refund*|No|No|No|No|

For information about standard mapping of entities, see [Retail Edition Entity Reference](Commerce_Mapping_Reference.md). For details about filtering and mapping for the export and import processes, see [Preparing Entities for Synchronization: Filtering](Commerce_SP_Preparing_Entities_Filtering.md) and [Preparing Entities for Synchronization: Field Mapping](Commerce_SP_Preparing_Entities_Mapping.md).

**Parent topic:**[Preparing Entities for Synchronization](../UserGuide/Commerce_SP_Preparing_Entities_Mapref.md)

