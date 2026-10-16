# Replenishment Through Purchases: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for performing replenishment through purchases, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you start performing replenishment by purchase, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:

 -   *Inventory and Order Management*
-   *Inventory*
-   *Inventory Replenishment*
-   *Multiple Warehouses*
-   *Multiple Warehouse Locations* if your company uses multiple warehouse locations

</td></tr><tr><td>

Multiple forms

</td><td>

The replenishment functionality has been configured, as described in [Configuration of Replenishment: General Information](../ImplementationGuide/config_OrderMgmt_Replenishment_GeneralInfo.md).

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md) \(IN202500\)

</td><td>

The needed stock items have been created and the replenishment settings have been specified for each existing stock item for which replenishment will be performed.

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of replenishment through purchases by specifying additional settings. To cause the system to use the default vendor of the inventory item, select the **Default** check box for this vendor on the **Vendors** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

**Tip:** If your organization uses multiple warehouses, you can also specify the preferred vendor on the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form for the combination of an item and a warehouse. By default, the system inserts the default vendor specified for the item, but you can override the preferred vendor by selecting the**Override Preferred Vendor** check box and then selecting the needed vendor in the **Preferred Vendor** box.

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Replenishment Through Purchases: Process Activity](OrderMgmt_Replenishment_by_Purchase_To_Replenish_Inventory.md).

**Parent topic:**[Replenishing Inventory Through Purchases](../UserGuide/OrderMgmt_Replenishment_by_Purchase_Mapref.md)

