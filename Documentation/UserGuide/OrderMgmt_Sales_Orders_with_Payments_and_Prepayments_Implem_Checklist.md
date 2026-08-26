# Sales with Payments and Prepayments: Implementation Checklist {#_7b2f12a0-6197-40e5-85ec-3ce5d4deacb8 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of sales orders with payments and prepayments, and to understand \(and change, if needed\) additional settings that affect the processing workflow.

## Implementation Checklist { .section}

Before you begin processing sales orders with payments and prepayments, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form|All necessary settings related to sales orders have been specified, as described in [Order Management Basic Configuration: General Information](../ImplementationGuide/config_OrderMgmt_Basic_GeneralInfo.md).|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|The *Inventory* feature is enabled.|
|[Order Types](SO_20_10_00.md) \(SO201000\) form|The *SO* order type is active and has been configured, as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md).To streamline the sales process and avoid small discrepancies between the payment amount applied to a sales order and the amount of the sales invoice created for this sales order \(for example, as a result of the system recalculating the applicable taxes in the sales invoice\), select the **Auto Write-Off** check box. For more information on the configuration of automatic write-offs, see [Configuration of Automatic Write-Offs in Invoices](SO__con_Config_Write_Offs.md).

|
|[Customers](AR_30_30_00.md) \(AR303000\) form|All needed customers have been defined in the system, as described in [Customers: Implementation Activity](Customer_Implem_Activity.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\) form, [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form|All stock and non-stock items to be sold have been defined in the system, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md) and [Non-Stock Items: Implementation Activity](Non_Stock_Items_OrderMgmt_Implem_Activity.md).|
|[Credit Terms](CS_20_65_00.md) \(CS2065000\) form|For each applicable set of credit terms, if you need to predefine the prepayment percent that must be paid before the shipment can be created, the **Prepayment Required** check box is selected and the required percent is specified in the **Prepayment Percent** box.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing sales orders with payments and prepayments by specifying additional settings as follows:

-   To cause shipments to be created with the *On Hold* status \(so that the user can verify them before processing them further\), select the **Hold Shipments on Entry** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   To cause general ledger batches generated during the processing of sales documents to be posted automatically, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

**Parent topic:**[Processing Sales with Payments and Prepayments](../UserGuide/OrderMgmt_Sales_Orders_with_Payments_and_Prepayments_Mapref.md)

