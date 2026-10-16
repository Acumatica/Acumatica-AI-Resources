# Sales Order Cancellation: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for the cancellation of sales orders, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

We recommend that before you initially begin canceling sales orders, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)

 [Inventory Preferences](IN_10_10_00.md) \(IN101000\)

</td><td>

Make sure that all necessary configuration settings related to sales orders and inventory have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).

</td></tr><tr><td>

[Order Types](SO_20_10_00.md) \(SO201000\)

</td><td>

Make sure that the *SO* order type is active and has been configured, as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md).

</td></tr><tr><td>

[Customers](AR_30_30_00.md) \(AR303000\)

</td><td>

Make sure that all needed customers have been defined in the system, as described in [Customers: Implementation Activity](Customer_Implem_Activity.md).

</td></tr></tbody>
</table>

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you cancel and then reopen a sales order by performing instructions similar to those described in [Sales Order Cancellation: Process Activity](OrderMgmt_Sales_Order_Cancellation_Process_Activity.md).

**Parent topic:**[Canceling Sales Orders](../UserGuide/OrderMgmt_Sales_Order_Cancellation_Mapref.md)

