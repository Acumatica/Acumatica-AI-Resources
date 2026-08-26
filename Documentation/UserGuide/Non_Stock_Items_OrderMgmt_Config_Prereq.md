# Non-Stock Items: Configuration Prerequisites {#_7090897f-c330-4fdf-94a6-3ba9ada0dd59 .concept}

Before starting to create a non-stock item, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features {#section_qyg_msv_qlb .section}

To be able to process sales and purchase orders that include non-stock items, you need to enable the *Inventory and Order Management* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. If you want to configure the processing of sales and purchases orders that include non-stock items with shipments and purchase receipts, you should also enable the *Inventory* feature. If the *Inventory* feature is not enabled, you can process sales and purchases only directly, by using AR invoices and AP bills rather than sales orders and purchase orders.

## Configuring the System {#section_dgd_1yy_mlb .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin creating non-stock items:

-   The performing of the minimum system configuration. For details, see [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md).

    **Tip:** While the *U100* dataset you are going to use to configure a non-stock item has predefined posting classes, in a production environment you can configure a non-stock item without posting classes.

-   On the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, the definition of the necessary tax categories, which you will assign to the new non-stock item.

**Parent topic:**[Creating Non-Stock Items](../UserGuide/Non_Stock_Items_OrderMgmt_Mapref.md)

