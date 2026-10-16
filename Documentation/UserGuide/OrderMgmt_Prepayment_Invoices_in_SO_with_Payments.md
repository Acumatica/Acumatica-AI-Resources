# Prepayment Invoices: Creation of PPIs from Sales Orders with Existing Payments

You can create prepayment invoices \(PPIs\) for sales orders that already have payments or prepayments applied—for example, orders imported with payments from an external system, such as Shopify.

You can create these PPIs for a single sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form or for multiple sales orders at once on the [Process Orders](SO_50_10_00.md) \(SO501000\) form. In either workflow, the system creates a separate PPI for each eligible payment or prepayment and reapplies that payment or prepayment to the new PPI.

**Tip:** An eligible payment or prepayment is one with the *Released*, *Balanced*, or *Pending Processing* status.

This functionality is available only if the *VAT Reporting* and *VAT Recognition on AR Prepayments* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Creating PPIs for a Single Order

In the **Create Prepayment Invoices** dialog box, which you can open on the **Payments** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, the **Reapply Payments to Prepayment Invoices** check box can be selected. This causes the system to create a separate PPI for each eligible payment or prepayment applied to the order and reapply each payment or prepayment to the corresponding PPI.

If the order has at least one eligible payment or prepayment, its unpaid balance determines the check box’s default state:

-   **If the order's unpaid balance is 0**, the check box is selected by default and you can't clear it because reapplying the existing payment or prepayment is the only way to create a PPI in this case.
-   **If the order has a remaining unpaid balance**, you can leave it cleared \(the default state\) to create one PPI based on the order's outstanding amount or select it to reapply the eligible payments and prepayments.

If an order has no eligible payment or prepayment, the check box isn’t displayed. If the unpaid balance is 0, you can’t create a PPI. If the order has an unpaid balance, you can create one PPI based on the amount or percentage specified in the dialog box.

If more than one eligible payment or prepayment is applied to the order and you select the check box, the system creates one PPI for each of them. Before you click **Create**, the dialog box displays the number of PPIs that will be created.

When you click **Create** in the **Create Prepayment Invoice** dialog box, the system:

1.  Opens the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form with the prepayment invoice.
2.  Adds the invoice to the list of documents on the **Payments** tab of the [Sales Orders](SO_30_10_00.md) form. Save the invoice.

## Document Statuses During Reapplication

Each new PPI's status, which can be one of the following, depends on the status of the payment or prepayment reapplied to it:

-   *Unapplied*—if the payment or prepayment had the *Released* status
-   *Pending Payment*—if the payment or prepayment had the *Balanced* or *Pending Processing* status

## Creating PPIs for Multiple Orders

If you select the *Create Prepayment Invoice* action on the [Process Orders](SO_50_10_00.md) \(SO501000\) form, the **Reapply Payments to Prepayment Invoices** check box appears. If this check box is selected, the list of orders you can process includes orders that have an unpaid balance of 0 and at least one eligible payment applied.

When you click **Process All** or select orders and click **Process**, the system:

1.  Creates a separate PPI for each eligible payment or prepayment applied to each order.
2.  Reapplies each payment or prepayment to the corresponding PPI.

If an order has no eligible payment or prepayment, the system creates one PPI for the order’s outstanding balance without reapplying an existing payment or prepayment.

**Parent topic:**[Processing Prepayment Invoices for Sales Orders](../UserGuide/OrderMgmt_Prepayment_Invoices_Mapref.md)

