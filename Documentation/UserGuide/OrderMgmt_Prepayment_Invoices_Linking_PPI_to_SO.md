# Prepayment Invoices: Linking to Sales Orders {#_ed280c4b-7da8-46c1-9cf2-39dc3c3011de .concept}

In Acumatica ERP, you create prepayment invoices to request a prepayment that is subject to tax reporting. You can create a separate prepayment invoice manually on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, link it to the applicable sales order, and then apply it to any customer's sales invoice. You can also create a prepayment invoice directly from a sales order so that the prepayment invoice will be applied to the sales order invoice automatically.

**Important:** The functionality is available only if the *VAT Recognition on Prepayments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

In this topic, you will learn how to link a separately created prepayment invoice to a sales order of the same customer.

## Linking Prepayment Invoices to a Sales Order { .section}

You create a prepayment invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. For details, see [AR Prepayment Invoices: General Information](Finance_Prepayment_Invoices_GeneralInfo.md). You link a released prepayment invoice—that is, an invoice of the *Pending Payment* status—to a sales order in either of the following ways:

-   You open a sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. On the **Payments** tab, you add a line. In the line, you select *Prepmt. Invoice* in the **Doc. Type** column and the reference number of the prepayment invoice in the **Reference Nbr.** column. In the **Applied to Order** column, you specify the amount to be applied to the sales order. Once you save your changes, the system updates the values in the **Total Paid** and the **Unpaid Balance** boxes on the **Totals** tab of the form.
-   You open a prepayment invoice on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form. On the **Sales Orders** tab, you add a line. In the **Order Nbr.** column of the added line, you specify the reference number of the customer’s sales order. In the **Applied to Order** column, you specify the amount to be applied to the sales order. Note that the amount cannot exceed the available balance of the prepayment invoice \(the amount specified in the **Available Balance** box of the Summary area of the form\) or the unpaid balance of the sales order \(the amount specified in the **Unpaid Balance** box on the **Totals** tab of the [Sales Orders](SO_30_10_00.md) form\). In the **Order Total** column of the line, the order amount not covered by the prepayment invoice is shown. Once the prepayment invoice has been linked to the sales order, the system adds a line with the prepayment invoice to the sales order on the **Payments** tab of the [Sales Orders](SO_30_10_00.md) form.

When the sales order with the linked prepayment invoice is billed—that is, a sales invoice is created for the sales order—the system automatically applies the fully paid prepayment invoice to the sales invoice by adding a line on the **Applications** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. On release of the sales invoice, its balance decreases by the **Amount Paid** amount that has been specified in the line on the **Applications** tab.

One released prepayment invoice can be linked to multiple sales orders of the same customer.

**Tip:** A prepayment invoice cannot be linked to a sales orders if the following conditions are met:

-   The order type selected for the sales order on the [Sales Orders](SO_30_10_00.md) form has the *Blanket Order* automation behavior on the [Order Types](SO_20_10_00.md) \(SO201000\) form.
-   The customer specified in the sales order has multiple-installment credit terms specified on the [Customers](AR_30_30_00.md) \(AR303000\) form.

## Unlinking the Prepayment Invoice and Sales Order { .section}

You can unlink the prepayment invoice linked to a sales order and link another one, if needed. You unlink the documents in either of the following ways:

-   In a sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form: On the **Payments** tab, you click the line with the linked prepayment invoice and click **Remove** on the table toolbar. You can add a new line and select another prepayment invoice, if needed.
-   In a prepayment invoice on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form: On the **Sales Orders** tab, you click the line with the sales order and click **Remove** on the table toolbar. You can add a new line and select another sales order, if needed.

Once you have removed the connection between a prepayment invoice and a sales order, the total amounts of the sales order on the **Totals** tab of the [Sales Orders](SO_30_10_00.md) form will be affected as follows:

-   The **Not Released** amount is decreased by the **Applied to Order** amount of the removed line.
-   The **Total Paid** amount is decreased by the **Applied to Order** amount of the removed line.
-   The **Unpaid Balance** value is increased by the amount specified in the **Applied to Order** box of the removed line.

## Impact of a Voided Prepayment Invoice on a Sales Order { .section}

If a prepayment invoice linked to a sales order has been fully written off by a credit memo and the prepayment invoice has been assigned the *Voided* status, then on release of the application of the credit memo to the prepayment invoice, the system does the following on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form:

-   Reduces the **Applied to Order** amount to *0* in the prepayment invoice line on the **Payments** tab. The line is not removed from the tab.
-   Updates the values on the **Totals** tab as follows:
    -   Reduces the **Not Released** amount by the **Applied to Order** amount
    -   Reduces the **Total Paid** amount by the **Applied to Order** amount
    -   Increases the **Unpaid Balanced** by the **Applied to Order** amount

**Parent topic:**[Processing Prepayment Invoices for Sales Orders](../UserGuide/OrderMgmt_Prepayment_Invoices_Mapref.md)

