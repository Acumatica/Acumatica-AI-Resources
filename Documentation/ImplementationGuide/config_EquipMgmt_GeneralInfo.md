# Equipment Management: General Information {#_1ce82bef-9eba-4e75-a0a4-06fbc78346cf .concept}

You configure the equipment management functionality if the company you are setting up sells or plans to sell equipment to customers and later provides maintenance for it.

## Learning Objectives { .section}

In this chapter, you will learn how to perform the initial configuration for the equipment management functionality. In particular, you will do the following:

-   Enable the *Equipment Management* feature
-   Review the minimum required configuration settings for the equipment management functionality

## Applicable Scenarios {#section_y2m_tmy_mdc .section}

You configure the equipment management functionality in the following scenarios:

-   You have initially implemented Acumatica ERP, and the *Service Management* and *Equipment Management* features are included in your license.
-   You need to configure equipment management in an already-configured, fully functioning environment because your company plans to provide services for customers' equipment and create service contracts for regular service visits.

## Prerequisites { .section}

To prepare the system for implementing equipment management, the following general tasks must be performed:

-   A new Acumatica ERP instance must be activated, features that are included in your license must be enabled, the initial security policy must be configured, and user accounts for people involved in the implementation must be created. For details, see [Preparing an Instance: General Information](config_SA_Prep_Instance_for_Implem_GeneralInfo.md)
-   The configuration of a company in a new Acumatica ERP instance must be completed. For details, see [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md) or [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md).
-   The minimum configuration of the order management functionality must be completed for Acumatica ERP users to process the sales and purchases of stock items through sales orders and purchase orders. For details, see [Configuration of Order Management: General Information](config_InvMgmt_Basic_GeneralInfo.md).
-   The minimum required configuration of the service management functionality must be completed. For details, see [Basic Service Management Configuration: General Information](config_ServMgmt_with_Inventory_GeneralInfo.md).
-   On the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form, the numbering sequence for equipment entities must be created.

Once all prerequisites are met and the necessary entities are created, you can configure equipment management preferences, including warranty and billing settings.

## Configuration of Warranty Calculation { .section}

On the [Equipment Management Preferences](../UserGuide/FS_10_03_00.md) \(FS100300\) form, you select one of the following option buttons under **Calculate Warranty From** in the **Equipment Settings** section to specify how the system determines the start date for calculating warranty periods for equipment:

-   **Sales Order Date**: The sales order document date will be used as the start date for the warranty period.
-   **Installation Date**: The actual installation date will be used as the start date for the warranty period.
-   **The Earliest of Both Dates**: The earlier date between the sales date and the installation date will be used as the start date for the warranty period.
-   **The Latest of Both Dates**: The later date between the sales date and the installation date will be used as the start date for the warranty period.

## Configuration of Billing Settings for Service Contracts {#_f3e82e76-f315-48e2-aecf-e2d8df20afa8 .section}

In the **Billing Settings** section of the [Equipment Management Preferences](../UserGuide/FS_10_03_00.md) \(FS100300\) form, you have to specify the type of the billing document to be generated for service contracts of the *End-Period Plus* billing type. You do one of the following under **Generated Billing Documents**:

-   If your company provides services only, you select the **AR Documents** option button.
-   If your company sells both services and inventory items, you select the **Sales Orders** option button. With this option selected, you can create shipments, if needed, and add additional freight costs.

To configure the system to automatically activate the next period when an invoice is generated for the previous one, you select the **Automatically Activate Upcoming Period** check box.

**Parent topic:**[Configuring Equipment Management](../ImplementationGuide/config_EquipMgmt_Mapref.md)

