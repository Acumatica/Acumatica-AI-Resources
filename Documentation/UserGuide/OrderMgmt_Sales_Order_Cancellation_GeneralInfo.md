# Sales Order Cancellation: General Information {#_dc77504d-6ad2-4577-b31c-2fb84cc59f4a .concept}

You may need to cancel a sales order if a customer wants to withdraw a previously placed order or reopen a sales order that was previously canceled or completed. In Acumatica ERP, you can cancel a sales order as long as it does not yet have related shipments, invoices, child orders, payments, prepayments, prepayment invoices, or credit memos. You can also reopen a previously canceled or completed sales order.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Learn about with the general workflow of a sales order cancellation and reopening
-   Cancel a sales order
-   Reopen and process a sales order to completion

## Applicable Scenario { .section}

You may need to cancel a sales order if a customer no longer wants the goods they have ordered.

## Cancellation of a Sales Order { .section}

You cancel a sales order by clicking **Cancel Order** on the More menu of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. You can cancel the sales order if it has one of the following statuses: *On Hold*, *Open*, *Awaiting Payment*, or *Credit Hold*. When you click **Cancel Order**, the sales order is assigned the *Canceled* status.

**Tip:** You can cancel the order regardless of the **Cancel By** date on the **Shipping** tab. \(It can be earlier or later than the current date.\) The system uses this date for the mass cancellation of sales orders on the [Process Orders](SO_50_10_00.md) \(SO501000\) form.

On the **Details** tab, the system completes all incomplete sales order lines with stock items and non-stock items requiring a shipment. That is, it selects the check box in the **Completed** column for all the lines with stock items and non-stock items.

You can cancel multiple sales orders on the [Process Orders](SO_50_10_00.md) form. When you select the *Cancel Order* action, the table shows sales orders that have the applicable statuses and a **Cancel By** date that is the same as or sooner than the current date. When you select the unlabeled check boxes in the rows with the sales orders to be processed and click **Process** on the form toolbar, the system cancels the orders.

You cannot cancel a sales order if it has at least one of the following related documents:

-   A shipment created on the [Shipments](SO_30_20_00.md) \(SO302000\) form
-   A drop-shipment created on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form
-   A child order created on the [Sales Orders](SO_30_10_00.md) form
-   A sales invoice created on the [Invoices](SO_30_30_00.md) \(SO303000\) form
-   A payment or prepayment created on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form
-   A credit memo or prepayment invoice created on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form

**Parent topic:**[Canceling Sales Orders](../UserGuide/OrderMgmt_Sales_Order_Cancellation_Mapref.md)

