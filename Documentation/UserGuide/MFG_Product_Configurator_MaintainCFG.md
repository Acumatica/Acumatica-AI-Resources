# Product Configurator: Managing Configurations {#_6f446b03-97ac-4bfd-afae-277cf27bfb7d .concept}

This topic describes ways to manage configurations.

## Managing Configurations and Revisions { .section}

Configuration definitions are linked to a single bill of material which in turn makes each definition specific to an inventory item and warehouse. The following rules are applied to configuration definitions:

-   You can have multiple bills of material for an inventory item and warehouse.
-   You can have multiple configuration definitions for a bill of material.
-   Only one configuration definition can be the default for a stock item and warehouse but you can change the default to another active configuration definition.

A configuration definition revision can have the following statuses:

-   *Pending:* This is the status for a new configuration. You can test the configuration but it cannot be used in sales orders or production orders and it cannot be the default configuration for an inventory item. You can delete configuration definitions with only this status.
-   *Active:* This is the only status allowed for configuration entry and specified as a default.
-   *Inactive:* This configuration definition cannot be used for new sales orders and production orders. However, you can reconfigure existing orders that are using this configuration and revision.

There can be only one revision with the *Active* status, one revision with the *Pending* status, and multiple revisions with the *Inactive* status. You change revision statuses as follows:

-   Before creating a new revision, you must change the status of the current revision with the *Pending* status to *Active* or *Inactive*.
-   If you want to change the revision status to *Active* or *Pending*, you must first change the status of the current revision with the *Active* or *Pending* status to *Inactive*.

The following table displays the possible status changes for revisions of a configuration definition.

|Status From/To|Pending|Active|Inactive|
|--------------|-------|------|--------|
|*Pending*|N/A|Allowed|Allowed|
|*Active*|Allowed|N/A|Allowed|
|*Active* with orders|Not Allowed|N/A|Allowed|
|*Inactive*|Allowed|Allowed|N/A|

## Fixing Incorrectly Configured Orders { .section}

Each configuration result has the configuration ID and revision level used, and although the configuration definition may be inactive, you can reconfigure the order and that definition and revision will be used. On the **References** tab of the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form, if the source of the item is a configuration, you can view the configuration ID and revision. At this time, you can only delete and reenter the sales order line but first delete the production order. For production orders, you can delete and recreate if no activity has occurred, or if in process, correct the production details for any incorrect materials similar to adjusting the order because the bill of material was incorrect.

## Copying Sales Documents with Configured Items { .section}

Additional columns have been added to the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and the [Sales Quotes](CR_30_45_00.md) \(CR304500\) form to display information about configurable items. These include a column to identify if an item is configurable and if the configuration is complete and columns to link any supplemental items to their parent configured items. In the latter case, if you delete the line for a configured item, the supplemental items are also deleted; deletion of a supplemental item is disabled.

When you copy a sales order with configurable items by using the **Copy Order** command on the More menu of the [Sales Orders](SO_30_10_00.md) form, you select the **Copy Configurations** check box in the **Copy To** dialog box that opens. The system will copy configuration and any supplemental items appropriately and you can configure the copied lines.

You can copy a sales quote by using the **Copy Quote** command on the More menu of the [Sales Quotes](CR_30_45_00.md) form. Item configurations will be copied to the new quote.

**Important:** When you copy a sales document with a configured item, the system uses in the new document the active configuration currently specified for that item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form. It copies configuration data \(the previously selected options\) from the original document only for the features whose feature ID and label match the current configuration.

**Parent topic:**[Product Configurator](../UserGuide/MFG_Product_Configurator_Mapref.md)

