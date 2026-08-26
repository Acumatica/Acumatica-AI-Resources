# Managing the Inventory Catalog in the Self-Service Portal: General Information {#_46c4a3bd-eab1-485f-9ded-bc22557a57b4 .concept}

With the inventory catalog functionality in the Acumatica Self-Service Portal, you provide your customers with access to the products and services that your company sells. You use your Acumatica ERP instance to create the catalog and manage the product and service descriptions and images. In the Self-Service Portal, your customers can then add the products and services in the catalog to the cart and create orders.

## Learning Objectives {#section_vmw_1ph_lpb .section}

In this chapter, you will do the following:

-   Develop an understanding of the tasks that must be performed for the configuration of the inventory catalog
-   Configure order management in the Self-Service Portal
-   Update descriptions and images for inventory items included in the catalog
-   Create sales categories for the inventory catalog
-   Manage sales categories for inventory items
-   View the inventory items in the catalog and add an item to the cart in the Self-Service Portal

## Applicable Scenarios {#section_drq_bph_lpb .section}

You may need to configure order management and the inventory catalog in the Self-Service Portal in the following cases:

-   You want to provide your customers with online and up-to-date access to the catalog of products or services that your company sells.
-   You want to receive orders that customers create in the Self-Service Portal.

## Workflow of the Configuration of the Inventory Catalog in the Self-Service Portal { .section}

To prepare the system for customers to use the inventory catalog and place orders in the Self-Service Portal, you perform the following general steps:

1.  You perform the initial configuration of the Self-Service Portal. For details, see [Configuring the Self-Service Portal: General Information](config_SSP_Admin_GeneralInfo.md).
2.  You set up access for users to the Self-Service Portal. For details, see [Managing Access to the Self-Service Portal: General Information](config_SSP_Admin_Managing_Access_to_SSP_GeneralInfo.md).
3.  In Acumatica ERP, on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you enable the following features:
    -   *Customer Portal*
    -   *B2B Ordering*
    -   *Financials on Portal*
4.  In Acumatica ERP, on the [Contact Classes](CR_20_50_00.md) \(CR206000\) form, you make sure that the needed contact classes have been created.

    **Attention:** For the contact classes that should be available for selection to users in the Self-Service Portal, the **Internal** check box in the Summary area of the form must be cleared.

5.  In Acumatica ERP, on the [Business Account Classes](CR_20_80_00.md) \(CR208000\) form, you make sure that the needed business account classes have been created.

    **Attention:** For the business account classes that should be available for selection to customer administrators in the Self-Service Portal, the **Internal** check box in the Summary area of the form must be cleared.

6.  In Acumatica ERP, you configure order management with inventory, as described in [Order Management with Inventory](../ImplementationGuide/config_InvMgmt_Basic_Mapref.md).
7.  In the Self-Service Portal, on the **B2B Ordering Settings** tab of the Portal Preferences \(SP800000\) form, you specify the settings for order management, as illustrated in [Managing the Inventory Catalog in the Self-Service Portal: Implementation Activity](config_SSP_Admin_Managing_Inventory_Catalog_Implem_Activity.md).
8.  In the Self-Service Portal, you create a catalog of products and services that will be available for ordering to the customers by adding items for sale to the catalog, as described in the following sections and as illustrated in [Managing the Inventory Catalog in the Self-Service Portal: Implementation Activity](config_SSP_Admin_Managing_Inventory_Catalog_Implem_Activity.md).

## Sales Categories of Inventory Items { .section}

On the [Item Sales Categories](IN_20_40_60.md) \(IN204060\) form of Acumatica ERP, a user with *Administrator* rights can create a hierarchical structure of sales categories that will be available for selection to the users on the Catalog \(SP700000\) form in the Self-Service Portal.

In the **Category** box of this form, a portal user can click the magnifier button to view the catalog structure, select a sales category, and view inventory items in the selected sales category.

## Creation of the Catalog of Products and Services in the Self-Service Portal { .section}

With order management in the Self-Service Portal, you can add items for sale \(which have been created in Acumatica ERP\) to the catalog in the Self-Service Portal. These items for sale are inventory items.

You can add to the catalog both stock items created on the [Stock Items](IN_20_25_00.md) \(IN202500\) form and non-stock items created on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

In Acumatica ERP, on the [Item Sales Categories](IN_20_40_60.md) \(IN204060\) form, a user with *Administrator* rights can create sales categories for inventory items and use these categories to classify the products and services that your company sells. \(For example, categories could use such phrases as *T-Shirts*, *Spare Car Parts*, *Laptops*, *Repair of Washing Machines*, or *Webinars*.\)

Then in the Self-Service Portal, you add to the categories items for sale, which will be available in the catalog on the Catalog \(SP700000\) form.

**Attention:** Inventory items that do not have a sales category are not displayed in the catalog on the Catalog \(SP700000\) form in the Self-Service Portal and are unavailable for selection to the portal users.

## Descriptions and Images of Inventory Items { .section}

In Acumatica ERP, all inventory items include settings: identifier, description, image, price, cost, unit of measure \(UOM\), default warehouse, and default vendor information. On the Catalog \(SP700000\) form, a portal user can view the quantity, description, price, discount, and warehouse for each item. The user can click an item and in the **Item Details** dialog box, which opens, view additional item settings, such as the image and any attributes of the inventory item.

**Parent topic:**[Managing the Inventory Catalog in the Self-Service Portal](../UserGuide/config_SSP_Admin_Managing_Inventory_Catalog_Mapref.md)

