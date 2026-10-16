# Sales of Non-Stock Items with Shipping: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for the processing of sales of non-stock items with shipping, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

Before you begin processing sales of non-stock items with shipping, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)

</td><td>

Make sure that all necessary settings related to sales orders have been specified, as described in [Order Management Basic Configuration: General Information](../ImplementationGuide/config_OrderMgmt_Basic_GeneralInfo.md).

</td></tr><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

Make sure that the *Inventory* feature is enabled.

</td></tr><tr><td>

[Order Types](SO_20_10_00.md) \(SO201000\)

</td><td>

Make sure that the *SO* order type is active and has been configured, as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md).

</td></tr><tr><td>

[Customers](AR_30_30_00.md) \(AR303000\)

</td><td>

Make sure that all needed customers have been defined in the system, as described in [Customers: Implementation Activity](Customer_Implem_Activity.md).

</td></tr><tr><td>

[Non-Stock Items](IN_20_20_00.md) \(IN202000\)

</td><td>

-   Make sure that all non-stock items have been defined in the system, as described in [Non-Stock Items: Implementation Activity](Non_Stock_Items_OrderMgmt_Implem_Activity.md).
-   Make sure that the **Require Shipment** check box is selected for non-stock items that you plan to ship.

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of processing sales of non-stock items with shipping by specifying additional settings as follows:

-   To cause shipments to be created with the *On Hold* status \(so that the user can verify them before processing them further\), select the **Hold Shipments on Entry** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   To cause the shipment dates to appear in invoices as invoice dates, select the **Use Shipment Date for Invoice Date** check box on the [Sales Orders Preferences](SO_10_10_00.md) form.
-   To cause general ledger batches generated during the processing of sales documents to be posted automatically, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a sale of non-stock items by performing instructions similar to those described in [Sales of Non-Stock Items with Shipping: Process Activity](OrderMgmt_Sales_of_Non-Stock_Items_with_Shipping_Activity.md).

**Parent topic:**[Processing Sales of Non-Stock Items with Shipping](../UserGuide/OrderMgmt_Sales_of_Non_Stock_Items_with_Shipping_Mapref.md)

