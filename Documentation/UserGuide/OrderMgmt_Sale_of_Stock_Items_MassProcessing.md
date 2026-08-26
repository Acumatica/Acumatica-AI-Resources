# Sales of Stock Items: Mass-Processing of Documents {#_37b5cf36-3000-44e4-a80e-9018f2fb9929 .concept}

The following sections explain how to process multiple sales-related documents, and how the system generates, changes, or works with documents as a result of the mass processing.

## Mass-Creating Shipments { .section}

Shipments can be mass-generated for sales orders. To generate shipments for multiple sales orders at a time, you open the [Process Orders](SO_50_10_00.md) \(SO501000\) form and select the *Create Shipment* action, as well as any other needed selection criteria to narrow the orders to be listed.

Then you select the unlabeled check boxes in the rows of the orders whose shipments should be created, and click **Process** on the form toolbar. As an alternative to creating shipments for only selected orders, you can click **Process All** to prepare shipments for all the listed orders.

## Mass-Confirming Shipments { .section}

Shipments can be confirmed in bulk. To confirm multiple shipments at a time, you open the [Process Shipments](SO_50_30_00.md) \(SO503000\) form and select the *Confirm Shipment* action, as well as any other selection criteria to narrow the shipments to be listed.

Then you select the unlabeled check boxes in the rows of the shipments to be confirmed, and click **Process** on the form toolbar. The system confirms the selected shipment documents. As an alternative to confirming only the selected shipments, you can click **Process All** to confirm all the listed shipments.

## Mass-Creating Invoices { .section}

Invoices can be mass-created for sales orders or for the corresponding shipments. To create multiple invoices for sales orders, you open the [Process Orders](SO_50_10_00.md) \(SO501000\) form. To create multiple invoices for shipments, you open the [Process Shipments](SO_50_30_00.md) \(SO503000\) form and select the *Prepare Invoice* action, as well as any selection criteria to narrow the documents to be listed.

Then you select the unlabeled check boxes in the rows of the sales orders or shipments for which invoices should be created, and click **Process** on the form toolbar. The system creates invoices for the selected documents. As an alternative to creating invoices for only selected documents, you can click **Process All** to create invoices for all the listed documents.

Invoices are created for shipment lines and service and miscellaneous lines of orders. These lines can be aggregated in one invoice if the following conditions are met:

-   The date of the invoice, which is calculated based on the sales order documents, is the same
-   The **Bill Separately** check box is cleared on the [Process Shipments](SO_50_30_00.md) form
-   The **Bill Separately** check box is cleared on the **Financial** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form
-   The following settings are the same on the [Sales Orders](SO_30_10_00.md) form for all the sales orders that are included in this shipment:
    -   Summary area: **Customer**, **Location**, **Currency**, **Currency Rate Type ID**, and the currency rate if the **Use Currency Rate from Sales Order** check box is selected on the [Order Types](SO_20_10_00.md) \(SO201000\) form for orders of the type
    -   **Financial** tab: **Branch**, **Customer Tax Zone**, **Tax Calculation Mode**, **Terms**, **Card/Account Nbr.**, **Cash Account** \(if its value is not empty\), and **Payment Ref.**
    -   **Addressees** tab: The settings in the **Bill-To Contact** and **Bill-To Address** sections

## Mass-Printing Sales Orders { .section}

You can print multiple sales orders at a time by using the [Print/Email Orders](SO_50_20_00.md) \(SO502000\) form. In the Selection area on this form, you select the *Print Sales Order* action and the type of the orders to be printed, as well as any other selection criteria to narrow the orders to be listed.

Then you select the unlabeled check boxes in the rows of the sales orders to be printed, and click **Process** on the form toolbar. As an alternative to printing only the selected sales orders, you can click **Process All** to print all the listed sales orders.

## Mass-Printing Pick Lists { .section}

For multiple shipments with the *On Hold* and *Open* statuses, you can mass-print pick lists by using the [Process Shipments](SO_50_30_00.md) \(SO503000\) form. On this form, you select the *Print Pick List* action, as well as any selection criteria to narrow the shipments to be listed.

Then you select the unlabeled check boxes in the rows of the shipments for which you need to print pick lists, and click **Process** on the form toolbar. As an alternative to printing pick lists for only the selected shipments, you can click **Process All** to print pick lists for all the listed shipments.

## Mass-Printing Labels { .section}

You can mass-print labels for packages included in multiple shipments by using the [Process Shipments](SO_50_30_00.md) \(SO503000\) form. On this form, you select the *Print Label* action, as well as any selection criteria to narrow the shipments to be listed.

Then you select the unlabeled check boxes in the rows of the shipments for which you need to print labels, and click **Process** on the form toolbar. As an alternative to printing labels for only the selected shipments, you can click **Process All** to print labels for all the listed shipments.

## Mass-Printing Shipment Confirmations { .section}

For multiple shipments with the *Open* status, you can mass-print shipment confirmations by using the [Process Shipments](SO_50_30_00.md) \(SO503000\) form. On this form, you select the *Print Shipment Confirmation* action, as well as any selection criteria to narrow the shipments to be listed.

Then you select the unlabeled check boxes in the rows of the shipments for which you need to print shipment confirmations, and click **Process** on the form toolbar. As an alternative to printing only selected shipment confirmations, you can click **Process All** to print all the listed shipment confirmations.

## Mass-Printing Invoices { .section}

You can print multiple sales invoices at a time by using the [Process Invoices and Memos](SO_50_50_00.md) \(SO505000\) form. On this form, you select the *Print Invoice* action, as well as any other selection criteria to narrow the invoices to be listed.

Then you select the unlabeled check boxes in the rows of the invoices to be printed, and click **Process** on the form toolbar. As an alternative to printing only the selected invoices, you can click **Process All** to print all the listed invoices.

## Mass-Emailing Sales Orders and Quotes { .section}

You can email multiple sales orders or quotes to each customer at the same time by using the [Print/Email Orders](SO_50_20_00.md) \(SO502000\) form. To do this, select the *Email Sales Order* or *Email Quote* action. You can also select any other selection criteria to narrow the list of documents.

Then select the **Send Documents in One Email** check box. If you want to combine each customer’s processed sales orders or quotes into one PDF file, select the **Combine into One File** check box. The system will attach this file to the email.

**Attention:**

-   You can include up to 100 documents in a single email or combine up to 100 documents into one file.
-   If you select more than 100 documents, the system creates multiple emails, each within this limitation.

To send emails with orders, do one of the following:

-   To email only particular orders, select the unlabeled check boxes in the rows of the orders you want to email. Then click **Process** on the form toolbar.
-   To email all the listed orders, click **Process All**.

## Mass-Emailing Shipments { .section}

You can email multiple shipments at the same time by using the [Process Shipments](SO_50_30_00.md) \(SO503000\) form. To do this for multiple shipments simultaneously, you select the *Email Shipment* action, as well as any other selection criteria to narrow the shipments to be listed.

Then you select the unlabeled check boxes in the rows of the shipments to be emailed, and click **Process** on the form toolbar. As an alternative to emailing only the selected shipments, you can click **Process All** to email all the listed shipments.

## Mass-Emailing Invoices { .section}

You can email multiple sales invoices to each customer at the same time by using the [Process Invoices and Memos](SO_50_50_00.md) \(SO505000\) form. To do this, select the *Email Invoice* action and select any other criteria to narrow down the list of invoices.

Then select the **Send Documents in One Email** check box. If you want to combine each customer’s processed sales invoices into one PDF file, select the **Combine into One File** check box. The system will attach this file to the email.

**Tip:** The limitations described in the [Mass-Emailing Sales Orders and Quotes](#_8a9536ff-b0fc-4946-aaad-447b034aad83) section apply here as well.

To send emails with sales invoices, do one of the following:

-   To email only particular sales invoices, select the unlabeled check boxes in the rows of the sales invoices you want to email. Then click **Process** on the form toolbar.
-   To email all the listed sales invoices, click **Process All**.

## Mass-Allocating Stock Items for Orders { .section}

You can mass-allocate or mass-deallocate stock items for sales orders by using the [Manage Sales Allocations](SO_50_10_10.md) \(SO501010\) form. The use of this form makes it easy to change the allocation status of multiple sales order lines without opening each sales order and doing so manually.

To mass-allocate stock items, you select the *Allocate Sales Orders* action, as well as any other selection criteria to narrow the listed sales order lines. To mass-deallocate stock items, you select the *Deallocate Sales Orders* action along with the needed selection criteria.

Then you select the unlabeled check boxes in the rows of the sales order lines to be processed and click **Process** on the form toolbar. As an alternative to processing only selected sales order lines, you can click **Process All** to process all the listed sales order lines.

**Parent topic:**[Processing Sales of Stock Items](../UserGuide/OrderMgmt_Sale_of_Stock_Items_Mapref.md)

