# Replenishment Through Transfers: Implementation Checklist {#_ff50faba-3779-49a2-acb7-74d34b8bd6a0 .concept}

The following sections provide details you can use to ensure that the system is configured properly for performing replenishment through transfers, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you start performing replenishment through transfers, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:

 -   *Inventory and Order Management*
-   *Inventory*
-   *Inventory Replenishment*
-   *Multiple Warehouses* if your company replenishes inventory through transfers
-   *Multiple Warehouse Locations* if your company uses multiple warehouse locations

|
|Multiple forms|The replenishment functionality has been configured, as described in [Configuration of Replenishment: General Information](../ImplementationGuide/config_OrderMgmt_Replenishment_GeneralInfo.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|The needed stock items have been created and the replenishment settings have been specified for each existing stock item for which replenishment will be performed.|
|[Order Types](SO_20_10_00.md) \(SO201000\)|The needed order types have been created.|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Replenishment Through Transfers: Process Activity](OrderMgmt_Replenishment_by_Transfer_To_Replenish_Inventory.md).

**Parent topic:**[Replenishing Inventory Through Transfers](../UserGuide/OrderMgmt_Replenishment_by_Transfer_Mapref.md)

