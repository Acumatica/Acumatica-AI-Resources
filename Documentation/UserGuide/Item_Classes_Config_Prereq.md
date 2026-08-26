# Item Classes for Stock Items: Configuration Prerequisites {#_ba4f1c06-96b5-4817-84fa-442c9259206d .concept}

Before starting to create item classes, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Inventory* feature must be enabled. The basic functionality of this feature provides one default warehouse and the ability to use stock items in the system.

## Configuring the System { .section}

You need to make sure the following inventory-related tasks have been performed in Acumatica ERP before you begin creating item classes for stock items:

-   On the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form, the basic inventory settings have been specified: numbering sequences, accounts, posting settings, data entry settings, and reason codes. The actual combination of settings you need to specify depends on the inventory processes in your organization and on the features enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For details, see [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).
-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the necessary tax categories have been created.
-   On the [Posting Classes](IN_20_60_00.md) \(IN206000\) form, the necessary posting classes have been created. For details, see [Creating Posting Classes](Posting_Classes_Mapref.md).
-   On the [Units of Measure](CS_20_35_00.md) \(CS203500\) form, all necessary system-wide units of measure that you will use for stock items have been added. For details, see [Creating Units of Measure](UOMs_Mapref.md).
-   On the [Availability Calculation Rules](IN_20_15_00.md) \(IN201500\) form, calculation rules have been created according to your inventory control requirements. For details, see [Creating Availability Calculation Rules](Availability_Calculation_Rules_Mapref.md).

**Parent topic:**[Creating Item Classes for Stock Items](../UserGuide/Item_Classes_Mapref.md)

