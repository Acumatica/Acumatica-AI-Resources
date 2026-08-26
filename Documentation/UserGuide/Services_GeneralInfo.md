# Service Items: General Information {#_221d614c-f8bf-427b-a554-a9b924e3e168 .concept}

Non-stock items may be products that consist of no physical entity, such as services, and thus cannot be stocked in warehouses. In Acumatica ERP, you create non-stock items by using the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

This chapter focuses on the creation and settings of non-stock items that represent services. Thus, in the rest of the chapter, *service item* refers to a service. To learn more about non-stock items representing physical entities, see [Non-Stock Items: General Information](Non_Stock_Items_OrderMgmt_GeneralInfo.md).

## Learning Objectives {#section_rdh_xgs_mlb .section}

In this chapter, you will do the following:

-   Become familiar with the settings and processing of a non-stock item that represents a service
-   Create a service item

## Applicable Scenarios {#section_sdh_xgs_mlb .section}

When you are initially configuring entities and settings in Acumatica ERP, you may need to create a service item in the following cases:

-   You are going to provide a service to a customer.
-   You are going to buy services from other companies.

## Service Items in Sales Orders {#section_jqw_k2n_nlb .section}

The sales of service items typically do not involve shipments. You can define whether a shipment is required or not by selecting or clearing the **Require Shipment** check box on the **General** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

For an order of a type with the *Sales Order* or *RMA Order* automation behavior and at least one line with a service item that does not require a shipment you can create a separate sales invoice on the [Invoices](SO_30_30_00.md) \(SO303000\) form.

## Service Items in Purchase Orders {#section_tzk_hyd_plb .section}

The purchases of service items typically do not involve purchase receipts. You can define whether a purchase receipt is required or not by selecting or clearing the **Require Receipt** check box on the **General** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

To process purchase orders for service items with receipt, make sure that on the **Process Service Lines from Normal Purchase Orders via Purchase Receipts** check box is selected in the **Other** section of the **General** tab on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. If the check box is cleared, the non-stock lines of the *Service* type are not copied to purchase receipts and can be billed only directly from purchase orders.

**Parent topic:**[Creating Service Items](../UserGuide/Services_Mapref.md)

