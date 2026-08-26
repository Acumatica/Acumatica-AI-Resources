# To Process Payment Links {#_eae0bef6-19c7-475c-b946-b7016d2e0e7f .task}

Once a payment link for an AR document or sales invoice has been created, you can synchronize it and resend it to the customer. Once a payment link for a sales order has been created, you can synchronize, resend, or close it.

During the synchronization and closure of payment links, the system will receive all payments made by using the payment link, create and apply the payments in Acumatica ERP, and then send the updated sales order or invoice, or close the payment link.

## To Synchronize a Payment Link { .section}

To synchronize a payment link for an AR document, sales invoice, or sales order, do the following:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\), [Invoices](SO_30_30_00.md) \(SO303000\), or [Sales Orders](SO_30_10_00.md) \(SO301000\) form.
2.  Open the needed document, and go to the **Payment Links** tab.
3.  Click **Sync Payment Link**.

    The system synchronizes the payment link in Acumatica ERP with the processing center.

    **Tip:** You can instead use the [Process Payment Links](AR_51_35_00.md) \(AR513500\) form for mass synchronization or for scheduling this process.


## To Resend a Payment Link { .section}

You can resend a payment link to a customer if the **Link Delivery Method** is set to *Email* on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form for the customer class and the customer has a valid email address specified on the **Billing** tab \(**Bill-To Info** section\) of the [Customers](AR_30_30_00.md) \(AR303000\) form.

To resend a payment link to a customer, do the following:

1.  Open the [Invoices and Memos](AR_30_10_00.md) \(AR301000\), [Invoices](SO_30_30_00.md) \(SO303000\), or [Sales Orders](SO_30_10_00.md) \(SO301000\) form.
2.  Open the needed document, and go to the **Payment Links** tab.
3.  Click **Resend Payment Link**.

    The system resends the payment link to the customer's email address.


## To Close a Payment Link { .section}

To close a payment link for a sales order, do the following:

1.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, open the needed sales order.
2.  Go to the **Payment Links** tab.
3.  Click **Close Payment Link**.

    The system closes the payment link and assigns it the *Closed* status.


**Parent topic:**[Processing of Payment Links](../UserGuide/AR__con_Processing_Payment_Links.md)

