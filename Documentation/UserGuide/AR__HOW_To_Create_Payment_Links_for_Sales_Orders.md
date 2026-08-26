# To Create Payment Links for Sales Orders {#_88f15497-705d-455a-b60c-a73decfac252 .task}

You use the [Process Orders](SO_50_10_00.md) \(SO501000\) form to create payment links for multiple released sales orders with the *SO* behavior.

Alternatively, you can create a payment link for a particular sales order on the **Payment Links** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

## Before You Proceed { .section}

Before you start creating payment links for sales orders, you need to make sure that Acumatica payments are configured as described in [To Configure Acumatica Payments](AR__HOW_To_Configure_Acumatica_Payments.md).

## To Create Payment Links for Multiple Sales Orders { .section}

To create payment links for multiple sales orders, do the following:

1.  Open the [Process Orders](SO_50_10_00.md) \(SO501000\) form.
2.  In the Selection area, specify the following settings:
    -   **Action**: *Create Payment Link*
    -   **Customer**: A customer for whose sales orders you want to create payment links. You can leave this box empty to include multiple customers into processing.
3.  In the table on the **All Records** tab, review the list of documents and click the unlabeled check boxes to include specific documents into processing.
4.  On the form toolbar, click **Process** to process the selected documents or click **Process All** to process all documents.

## To Create a Payment Link for a Specific Sales Order { .section}

To create a payment link for a specific sales order, do the following:

1.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, open the needed sales order.
2.  Go to the **Payment Links** tab.
3.  Make sure that a processing center is selected in the **Processing Center** box.
4.  In the **Link Delivery Method** box, select *Email* to automatically send the link to the customer or *None* if the link should not be automatically sent to the customer.

    **Attention:** This box is available if on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form, the **Enable Delivery Method Override** check box is selected on the **General** tab for the class of the customer.

5.  Click **Create Payment Link**.

    The system creates a payment link and displays it in the **Payment Link** box. When the link is created, it is assigned the *Open* status.

6.  Optional: If *None* is selected in the **Link Delivery Method** box, print the sales order by clicking **Print Sales Order** on the More menu.

    The system displays the [Sales Order](SO_64_10_10.md) \(SO641010\) form with a print-friendly version of the document that contains a QR code for the payment link and the *Pay now* link. You can send this document to the customer.


**Parent topic:**[Processing of Payment Links](../UserGuide/AR__con_Processing_Payment_Links.md)

