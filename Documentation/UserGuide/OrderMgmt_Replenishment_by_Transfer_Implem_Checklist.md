# Replenishment Through Transfers: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for performing replenishment through transfers, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you start performing replenishment through transfers, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

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
-   *Multiple Warehouses* if your company replenishes inventory through transfers
-   *Multiple Warehouse Locations* if your company uses multiple warehouse locations

</td></tr><tr><td>

Multiple forms

</td><td>

The replenishment functionality has been configured, as described in [Configuration of Replenishment: General Information](../ImplementationGuide/config_OrderMgmt_Replenishment_GeneralInfo.md).

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md) \(IN202500\)

</td><td>

The needed stock items have been created and the replenishment settings have been specified for each existing stock item for which replenishment will be performed.

</td></tr><tr><td>

[Order Types](SO_20_10_00.md) \(SO201000\)

</td><td>

The needed order types have been created.

</td></tr></tbody>
</table>

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Replenishment Through Transfers: Process Activity](OrderMgmt_Replenishment_by_Transfer_To_Replenish_Inventory.md).

**Parent topic:**[Replenishing Inventory Through Transfers](../UserGuide/OrderMgmt_Replenishment_by_Transfer_Mapref.md)

