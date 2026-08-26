# Intercompany Purchases and Returns: Implementation Checklist {#_4fcec502-9279-439d-b0e6-25cb377b4469 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing intercompany sales orders, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially process intercompany sales, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the following features have been enabled:-   *Standard Financials*
-   *Multibranch Support*
-   *Multicompany Support*
-   *Advanced Financials*
-   *Inter-Branch Transactions*
-   *Inventory and Order Management*
-   *Inventory* \(this feature is required for sales and purchases of stock items\)

|
|[Companies](CS_10_15_00.md) \(CS101500\)|If you are going to extend as a customer or vendor any company that has the *Without Branches* company type, make sure that the company has been configured. For details, see [Company Without Branches: To Configure a Company Without Branches](../ImplementationGuide/config_Basic_Company_Implem_Activity_Enabling_Features.md).|
|[Branches](CS_10_20_00.md) \(CS102000\)|If you are going to extend as a customer or vendor any branches of companies with the *With Branches Not Requiring Balancing* or *With Branches Requiring Balancing* company type, make sure that the companies have been configured. For details, see [Company with Branches that Do Not Require Balancing: Implementation Activity](../ImplementationGuide/config_Company_with_Branches_No_Balacing_Implem_Activity.md) and [Company with Branches that Require Balancing: Implementation Activity](../ImplementationGuide/config_Company_with_Branches_with_Balacing_Implem_Activity.md).|
|[Vendor Classes](AP_20_10_00.md) \(AP201000\)|Make sure that the vendor class to be used for a vendor extended from a company or branch has been defined. For details, see [Accounts Payable: To Create a Vendor Class](../ImplementationGuide/config_Basic_Company_Implem_Activity_Vendor_Classes.md).|
|[Customer Classes](AR_20_10_00.md) \(AR201000\)|Make sure that the customer class to be used for a customer extended from a company or branch has been defined. For details, see [Accounts Receivable: To Create a Customer Class](../ImplementationGuide/config_Basic_Company_Implem_Activity_Customer_Classes.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\)|-   Make sure that the *SO* order type is active and has been configured, as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md). Note that in production, you can use any type of the sales order. The *SO* order type is required for [Intercompany Purchases and Returns: To Process an Intercompany Purchase](OrderMgmt_Intercompany_Sales_and_Purchases_Activity.md)
-   Make sure that the *RC* order type is active and has been configured, as described in [Sales Order Types: To Activate the RC Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_RC_Order_Type.md). Note that in production, you can use any type of the sales order. The *RC* order type is required for [Intercompany Purchases and Returns: To Process an Intercompany Purchase](OrderMgmt_Intercompany_Sales_and_Purchases_Activity.md)

|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\)|-   Make sure that *SO* is selected in the **Default Type for Intercompany Sales** box. The system will use this order type by default when creating an intercompany sales order.
-   Make sure that *RC* is selected in the **Default Type for Intercompany Returns** box. The system will use this order type by default when creating an intercompany sales return.

|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of intercompany sales and purchases by specifying additional settings as follows:

-   To cause sales orders of a particular order type to be created with the *On Hold* status \(so the user can verify them before processing them further\), select the **Hold Documents on Entry** check box for the order type on the [Order Types](SO_20_10_00.md) form. For more information on other order type settings affecting the workflow of sales orders, see [Sales Order Types: General Information](../ImplementationGuide/config_Sales_Order_Types_GeneralInfo.md).
-   To cause the system to automatically create an accounts payable bill on release of a purchase receipt by default, select the **Create Bill on Receipt Release** check box on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form. In this case, when a user creates a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, the system automatically selects the **Create Bill** check box. \(The user can clear this check box for a particular bill.\) For information on processing bills, see [AP Bills: General Information](Finance_ProcessingAPBills_GeneralInfo.md).
-   To cause the system to automatically post general ledger batches generated during the processing of sales and purchase documents, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).
-   To select the source of the expense account used in the AP documents, purchase orders, and purchase receipts, select a value in the **Use Intercompany Expense Account From** box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
-   To select the source of the sales account used in the AR documents, select a value in the **Use Intercompany Sales Account From** box on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
-   To cause inventory issues to be automatically generated and released on release of sales invoices, select the **Automatically Release IN Documents** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   To cause general ledger batches generated during the processing of sales documents to be posted automatically, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Intercompany Purchases and Returns: To Process an Intercompany Purchase](OrderMgmt_Intercompany_Sales_and_Purchases_Activity.md).

## Known Process Limitations { .section}

The following limitations apply to the processing of intercompany purchases and sales:

-   Intercompany documents can be created only one to one. That is, for an intercompany purchase order, only one sales order can be generated. Only one intercompany sales order can be added to one shipment. For one intercompany shipment, only one purchase receipt can be generated.
-   For lot or serial-tracked items, a lot or serial number is assigned to an item only when it is shipped to a customer. The number is not assigned to an item in an intercompany shipment.

**Parent topic:**[Processing Intercompany Purchases and Returns](../UserGuide/OrderMgmt_Intercompany_Sales_and_Purchases_Mapref.md)

