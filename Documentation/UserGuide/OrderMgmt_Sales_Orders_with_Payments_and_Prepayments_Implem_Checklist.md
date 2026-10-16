# Sales with Payments and Prepayments: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for the processing of sales orders with payments and prepayments, and to understand \(and change, if needed\) additional settings that affect the processing workflow.

## Implementation Checklist

Before you begin processing sales orders with payments and prepayments, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form

</td><td>

All necessary settings related to sales orders have been specified, as described in [Order Management Basic Configuration: General Information](../ImplementationGuide/config_OrderMgmt_Basic_GeneralInfo.md).

</td></tr><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form

</td><td>

The *Inventory* feature is enabled.

</td></tr><tr><td>

[Order Types](SO_20_10_00.md) \(SO201000\) form

</td><td>

The *SO* order type is active and has been configured, as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md).To streamline the sales process and avoid small discrepancies between the payment amount applied to a sales order and the amount of the sales invoice created for this sales order \(for example, as a result of the system recalculating the applicable taxes in the sales invoice\), select the **Auto Write-Off** check box. For more information on the configuration of automatic write-offs, see [Configuration of Automatic Write-Offs in Invoices](SO__con_Config_Write_Offs.md).

</td></tr><tr><td>

[Customers](AR_30_30_00.md) \(AR303000\) form

</td><td>

All needed customers have been defined in the system, as described in [Customers: Implementation Activity](Customer_Implem_Activity.md).

</td></tr><tr><td>

[Stock Items](IN_20_25_00.md) \(IN202500\) form, [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form

</td><td>

All stock and non-stock items to be sold have been defined in the system, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md) and [Non-Stock Items: Implementation Activity](Non_Stock_Items_OrderMgmt_Implem_Activity.md).

</td></tr><tr><td>

[Credit Terms](CS_20_65_00.md) \(CS2065000\) form

</td><td>

For each applicable set of credit terms, if you need to predefine the prepayment percent that must be paid before the shipment can be created, the **Prepayment Required** check box is selected and the required percent is specified in the **Prepayment Percent** box.

</td></tr></tbody>
</table>

## Other Settings That Affect the Workflow

You can affect the workflow of processing sales orders with payments and prepayments by specifying additional settings as follows:

-   To cause shipments to be created with the *On Hold* status \(so that the user can verify them before processing them further\), select the **Hold Shipments on Entry** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   To cause general ledger batches generated during the processing of sales documents to be posted automatically, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

**Parent topic:**[Processing Sales with Payments and Prepayments](../UserGuide/OrderMgmt_Sales_Orders_with_Payments_and_Prepayments_Mapref.md)

