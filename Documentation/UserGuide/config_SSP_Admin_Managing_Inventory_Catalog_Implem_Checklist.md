# Managing the Inventory Catalog in the Self-Service Portal: Implementation Checklist {#_b1eecb6e-4089-4f3e-a3f9-bea262f979ff .concept}

The following sections provide details you can use to ensure that the system is configured properly for managing the inventory catalog in the Acumatica Self-Service Portal, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Mandatory Configuration in Acumatica ERP { .section}

To ensure that the basic CRM configuration in Acumatica ERP for managing inventory catalog in the Acumatica Self-Service Portal has been implemented properly, make sure that the necessary features have been enabled, entities have been created, and settings have been specified, as described in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|The following tasks have been performed: -   The CRM functionality has been implemented, as described in [Implementing Customer Relationship Management](../ImplementationGuide/config_Mapref_CRM.md).
-   The order management has been implemented as described in [Implementing Order Management](../ImplementationGuide/config_Mapref_OrderMgmt.md).
-   The Acumatica Self-Service Portal has been configured as described in [Configuring the Self-Service Portal](config_SSP_Admin_Mapref.md).

|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:-   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, and gives users the ability to manage sales opportunities, contacts, marketing lists, and marketing campaigns.
-   *Inventory and Order Management*.
-   *Customer Portal*. This feature gives users the ability to use the Acumatica Self-Service Portal.
-   *Financials on Portal* in the *Customer Portal* group of features. This feature gives the Self-Service Portal users \(customers\) to view the documents associated with their company accounts in Acumatica ERP.

|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|The needed stock items have been created.|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|The needed non-stock items have been created.|
|[Item Sales Categories](IN_20_40_60.md) \(IN204060\)|Sales categories for inventory items that will be used for classifying the products and services that your company sells have been created as described in [Managing the Inventory Catalog in the Self-Service Portal: Implementation Activity](config_SSP_Admin_Managing_Inventory_Catalog_Implem_Activity.md).|
|[Attributes](CS_20_50_00.md) \(CS205000\)|Attributes to be used for stock items and non-stock items have been created with the necessary settings.|

## Mandatory Configuration in the Acumatica Self-Service Portal { .section}

Make sure that on the **B2B Ordering Settings** tab of the Portal Preferences \(SP800000\) form, the settings for order management have been specified as illustrated in [Managing the Inventory Catalog in the Self-Service Portal: Implementation Activity](config_SSP_Admin_Managing_Inventory_Catalog_Implem_Activity.md).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Managing the Inventory Catalog in the Self-Service Portal: Implementation Activity](config_SSP_Admin_Managing_Inventory_Catalog_Implem_Activity.md).

**Parent topic:**[Managing the Inventory Catalog in the Self-Service Portal](../UserGuide/config_SSP_Admin_Managing_Inventory_Catalog_Mapref.md)

