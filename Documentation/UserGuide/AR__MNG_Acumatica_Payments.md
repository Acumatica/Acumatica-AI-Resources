# Configuring and Using Acumatica Payments {#_2a135f6c-cbea-45b0-8da9-2c832347b0a9 .concept}

You can use the functionality of Acumatica payments to provide more payment flexibility to users and the customers they serve. A user can do any of the following:

-   Process credit cards or electronic funds transfer \(EFT\) payments.
-   Create payment links that customer representatives can click to review a list of their documents that are pending payment.
-   Pay any number of invoices, prepayment invoices, or sales orders by using a credit card or EFT in several clicks. The user will not need to provide the company's card data or account data to operators so that this data is entered into Acumatica ERP.
-   Collect customer bank payments directly through the Acumatica mobile app by using EMV \(Europay, Mastercard, and Visa\) card readers.

The payment links functionality is available in the system if the *Acumatica Payments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

Payment links can be used in any of the following cases:

-   An AR clerk prints an invoice, and then a customer representative scans a QR code with a smart phone, opens a payment link, and pays the invoice or multiple open invoices via a credit card or EFT.
-   An AR clerk sends a payment link for an invoice to the customer. A customer representative opens the link and pays the invoice by using a credit card. The system automatically creates the payment and applies the payment to the invoice; the invoice is closed.
-   An AR clerk creates and releases an invoice and sends a payment link to the customer by email. A customer representative opens the link and pays the invoice or multiple open invoices. The payment is automatically created in Acumatica ERP and applied to the invoice or invoices. Each invoice is closed if it is fully paid or stays open if it is partially paid. If the customer representative pays the invoice with another means of payment without using the payment link, the payment link is closed automatically.
-   An AR clerk voids a credit memo or reverses a payment application to an invoice and runs synchronization between the payment link and the document. The customer representative opens the old payment link and sees new invoice details and an updated amount to be paid.
-   An AR clerk needs to check if any payments have been made for a particular invoice. The AR clerk opens the invoice and synchronizes the payment link with the document. If the invoice is paid, the system checks whether the respective payment has been created in Acumatica ERP. If it has not, the system creates the payment and applies to the invoice; the payment link is automatically updated with any changes made to the invoice \(due date or other applied payments\).
-   Multiple AR invoices are created for customers. In one click, an AR clerk releases all created invoices and creates and sends payment links to all customers.
-   Incoming payments received by using a webhook trigger automatic payment creation in Acumatica ERP for all payments made by customer representatives via payment links. Each payment is applied to the respective AR invoice, sales invoice, or sales order.
-   A salesperson creates a sales order, creates a payment link for it, and sends the link to the customer. The customer representative pays the full amount via the payment link, and the payment is automatically created in Acumatica ERP and applied to the respective sales order.
-   A salesperson creates a sales order, partially ships the order, and creates a sales invoice for the shipped part. The salesperson creates a payment link for the sales order and sends the link to the customer. A customer representative pays the full sales order amount, and the payment is automatically created in Acumatica ERP; they payment is applied to the sales invoice first, the remaining amount is applied to the respective sales order.

**Important:** Currently, Acumatica Payments works for merchants located in the US and Canada only.

In this chapter, you will read about how to configure the processing of POS payments and Acumatica ERP payment links.

-   **[Authorized Remainder After Partial Payment Capture](../UserGuide/AR__con_Authorized_Remainder_after_Capture.md)**  

-   **[To Configure Acumatica Payments](../UserGuide/AR__HOW_To_Configure_Acumatica_Payments.md)**  

-   **[Accepting Payments by Using Mobile Card Readers](../UserGuide/AR__con_Mobile_Terminals.md)**  

-   **[To Set Up the EMV Card Reader Functionality](../UserGuide/AR__HOW_To_Set_Up_Mobile_Card_Readers.md)**  

-   **[Processing of Payment Links](../UserGuide/AR__con_Processing_Payment_Links.md)**  

-   **[Support of POS Payments](../UserGuide/AR__con_POS_Payments.md)**  

-   **[Level 2 Data Transmission During Card Payments](../UserGuide/AR__con_Data_Transmission_Acumatica_Payments.md)**  

-   **[Level 3 Data Transmission During Card Payments](../UserGuide/AR__con_Level3_Data_Transmission.md)**  


