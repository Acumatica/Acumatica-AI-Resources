# Sales with Returns: Implementation Checklist {#_34e99f02-df33-45f9-87d1-be1fd739ed69 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of a sale with a return, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially process a sale with a return in the same order, you make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|Make sure that all necessary settings related to sales orders have been specified, as described in [Order Management Basic Configuration: General Information](../ImplementationGuide/config_OrderMgmt_Basic_GeneralInfo.md).

 Make sure that the *Inventory* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and that the processing for orders that have stock items has been configured, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).

|
|[Order Types](SO_20_10_00.md) \(SO201000\)|Make sure that the *MO* order type is active and has been configured, as described in [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).|
|[Customers](AR_30_30_00.md) \(AR303000\)|Make sure that all needed customers have been configured, as described in [Customers: General Information](Customer_GeneralInfo.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that all the stock items have been created, as illustrated in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|
|[Non-Stock Items](IN_20_20_00.md) \(IN202000\)|Make sure that all the non-stock items have been created, as illustrated in [Non-Stock Items: Implementation Activity](Non_Stock_Items_OrderMgmt_Implem_Activity.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing of a sale and a return in the same order by specifying additional settings as follows:

-   To cause inventory issues to be automatically generated and released on the release of sales invoices that contain stock items, select the **Automatically Release IN Documents** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   To configure quick processing for orders of the *MO* type, on the **Template** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form, select the **Allow Quick Processing** check box. This causes the **Quick Processing** tab to appear, and you specify the needed settings on this tab. For more information, see [Sales Order Types: Quick Processing of Sales Orders](../ImplementationGuide/config_Sales_Order_Types_Quick_Process_Workflow.md).
-   To cause the system to automatically post general ledger batches generated during the processing of sales documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).
-   To cause the system to automatically post inventory transactions to the general ledger, select the **Update GL** check box on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form.

## Known Process Limitations { .section}

The following limitations apply to the processing of mixed orders and invoices prepared for these orders:

-   One invoice or credit memo \(depending on the balance of the order\) can be created for one mixed order. If documents are created from the [Process Orders](SO_50_10_00.md) \(SO501000\) form through the *Prepare Invoice* action, a separate invoice or credit memo will be created for each order.
-   An invoice or credit memo can be created only for the full quantity of items in a mixed order. A user cannot create an invoice or credit memo for a partial quantity of items in the order or order line.
-   A user cannot do the following on the **Details** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form:
    -   Add a mixed order to the invoice or credit memo by using the **Add Order** dialog box
    -   Add an order line of a mixed order by using the **Add SO Line** dialog box

Limitations apply to the processing of customer payments and refunds related to mixed orders and their invoices or credit memos. On the **Payments** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and on the **Applications** tab of the [Invoices](SO_30_30_00.md) form, a user cannot do the following:

-   Add an application for an existing payment or for an existing refund.
-   Remove a payment application or refund application from the order or the invoice or credit memo.
-   Change the amount of a payment application or refund application. The application amount can be changed only on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a sale with a return by performing instructions similar to those described in [Sales with Returns: Process Activity](OrderMgmt_Sales_with_Returns_Activity.md).

**Parent topic:**[Processing Sales with Returns](../UserGuide/OrderMgmt_Sales_with_Returns_Mapref.md)

