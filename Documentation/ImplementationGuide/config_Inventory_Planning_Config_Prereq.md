# Inventory Planning Configuration: Configuration Prerequisites {#_83854b49-8475-4d75-9dad-d8122cf9b3ca .concept}

Before starting to configure the inventory planning functionality, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, one of the following features must be enabled:

-   *Distribution Requirements Planning* if your company uses inventory planning
-   *Material Requirements Planning* if your company manufactures items and uses a master production schedule and inventory planning

## Configuring the System { .section}

You need to make sure that following tasks have been performed in Acumatica ERP before you begin to implement inventory planning:

-   On the [Work Calendar](../UserGuide/CS_20_90_00.md) \(CS209000\) form, a calendar has been created for the inventory planning process to use to calculate action and promise dates from vendor lead times.
-   On the [Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form, a numbering sequence for forecast identifiers has been created.
-   If the *Material Requirements Planning* is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, on the [Numbering Sequences](../UserGuide/CS_20_10_10.md) form, a numbering sequence for the identifiers of master production schedule \(MPS\) orders has been created.
-   If the *Material Requirements Planning* is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, a numbering sequence for the identifiers of planning orders has been created on the [Numbering Sequences](../UserGuide/CS_20_10_10.md) form.

    **Tip:** We recommend that you create a separate numbering sequence for planning recommendations to distinguish these orders from regular production orders in the system.

-   If the *Material Requirements Planning* is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form, at least one production order type with the *Planning* function has been created on the [Production Order Types](../UserGuide/AM_20_11_00.md) \(AM201100\) form.

**Parent topic:**[Configuring Inventory Planning](../ImplementationGuide/config_Inventory_Planning_Mapref.md)

