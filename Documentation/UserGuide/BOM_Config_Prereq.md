# Bills of Material: Configuration Prerequisites {#_bce6ca60-31f5-482f-b8cf-007be1ddcbeb .concept}

Before starting to create a bill of material, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Feature { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Manufacturing* feature must be enabled.

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to create bills of material:

-   On the [BOM Preferences](AM_10_10_00.md) \(AM101000\) form, the preferences for bills of material have been specified.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the stock item that will be manufactured by using the bill of material, as well as the items that will be used as materials for manufacturing, have been created and configured properly.
-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the warehouses where production will be performed, and those where stock items will be received and issued, have been defined.
-   On the [Work Centers](AM_20_70_00.md) \(AM207000\) form, the work centers that will be used to perform the operations included in the bill of material have been created.
-   On the [Tools](AM_20_55_00.md) \(AM205500\) form, the tools that will be involved in production by using the bill of material have been created.
-   On the [Overhead](AM_20_25_00.md) \(AM202500\) form, the process-specific overhead entities have been created, and rates have been specified for each of them.

**Parent topic:**[Managing Bills of Material](../UserGuide/BOM_Mapref.md)

