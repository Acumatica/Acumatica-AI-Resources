# Configuration of Replenishment: Configuration Prerequisites {#_ce25a2f1-3b59-4b96-b8e0-1335833bcd35 .concept}

Before you start configuring replenishment in Acumatica ERP, you should be sure that the needed features have been enabled, settings have been specified, and entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:

-   *Inventory Replenishment*
-   *Multiple Warehouse Locations* if your company uses multiple warehouse locations
-   *Multiple Warehouses* if your company replenishes inventory through transfers

## Configuring the System { .section}

You need to make sure that the following tasks have been performed in Acumatica ERP before you start to configure replenishment:

-   Basic company settings have been configured, as described in [Preparing an Instance for Implementation](config_SA_Prep_Instance_for_Implem_Mapref.md).
-   At least the minimum general ledger, cash management, accounts payable, and accounts receivable functionality has been implemented. These functional areas of Acumatica ERP do not require any change to their configuration when replenishment is configured; however, this functionality should be implemented before you set up replenishment. For details, see [Company Without Branches](config_Basic_Company_Mapref.md).
-   The basic configuration of order management with inventory has been performed, as described in [Order Management with Inventory](config_InvMgmt_Basic_Mapref.md).
-   On the [Warehouses](../UserGuide/IN_20_40_00.md) \(IN204000\) form, the needed warehouses have been created.
-   On the [Item Classes](../UserGuide/IN_20_10_00.md) \(IN201000\) form, the needed item classes have been created.
-   On the [Stock Items](../UserGuide/IN_20_25_00.md) \(IN202500\) form, the needed stock items have been created.
-   Optional: On the [Replenishment Seasonality](../UserGuide/IN_20_66_00.md) \(IN206600\) form, the needed seasonalities have been created.

## Identifiers for Replenishment Requests {#_6dd71d7a-cb48-4da1-9360-94cc6d7ae3a1 .section}

Acumatica ERP uses a numbering sequence to automatically generate identifiers for new replenishment requests. Replenishment requests are internal records that the system creates automatically when you process stock items on the [Prepare Replenishment](../UserGuide/IN_50_80_00.md) \(IN508000\) form. Thus, this numbering sequence is for internal use only.

On the **General** tab of the [Inventory Preferences](../UserGuide/IN_10_10_00.md) \(IN101000\) form \(**Numbering Settings** section\), you can review the numbering sequence that is used to generate identifiers for replenishment requests.

**Parent topic:**[Replenishment for Stock Items](../ImplementationGuide/config_OrderMgmt_Replenishment_Mapref.md)

