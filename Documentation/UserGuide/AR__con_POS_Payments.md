# Support of POS Payments {#_18dc0693-3d8d-4725-acf8-6941cb63a484 .concept}

Acumatica ERP provides support for point-of-sale \(POS\) payments. Users can now do the following:

-   Set up the POS functionality and import the POS terminals’ settings into the system for each location from the payment processor
-   Assign a user-friendly name to each POS terminal
-   Activate and deactivate POS terminals
-   Use the user's default POS terminal when creating POS payments and override the default terminal for a specific user
-   Send a credit card payment request to a POS terminal from any of the following forms: [Payments and Applications](AR_30_20_00.md) \(AR302000\), [Cash Sales](AR_30_40_00.md) \(AR304000\), [Sales Orders](SO_30_10_00.md) \(SO301000\), [Invoices](SO_30_30_00.md) \(SO303000\), and [Invoices and Memos](AR_30_10_00.md) \(AR301000\)
-   Track the status of transactions and update POS payments in the system
-   Resend a transaction to the POS terminal
-   Authorize and void a POS transaction
-   Issue a refund or a partial refund for a POS payment

The support of POS payments can be configured and used in the system if the *Acumatica Payments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## General Configuration Steps { .section}

To configure the support of POS payments in the system, a system administrator performs the following general steps:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enables the *Acumatica Payments* feature.
2.  On the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, configures a processing center for which the **Accept Payments from POS Terminals** check box is selected.
3.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, creates a processing center with the *POS Terminal* means of payment and links it to the created processing center on the **Processing Centers** tab.

For details, see [To Configure the POS Payment Functionality](AR__HOW_To_Configure_POS_Payments.md).

## Processing of POS Payments on the Payments and Applications Form { .section}

To send and capture a payment via a POS terminal, you perform the following general steps:

1.  On the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, you create a payment, selecting a payment method with the *POS Terminal* means of payment.
2.  In the **Terminal** box, you select a POS terminal from the lookup table.
3.  In the **Cash Account** box, you select a cash account.
4.  On the **Documents to Apply** tab, you select a document or multiple documents that will be applied to the payment.
5.  On the More menu, you click **Capture**, which causes the following actions to occur:

    1.  The system sends an API request to the processing center to create a transaction on the POS terminal.
    2.  The payment processor launches a transaction on the terminal.
    The customer receives the transaction on the terminal and taps, swipes, or inserts their credit card; they then complete the payment. The system automatically does the following:

    1.  Updates the payment transaction in Acumatica ERP with the final status.
    2.  On the **Card Processing** tab of the [Payments and Applications](AR_30_20_00.md) form, adds a new line and populates the **Proc. Center Tran. Nbr.** column with the credit card transaction ID.
    3.  Releases the payment.

        **Attention:** The payment is released automatically because the **Integrated Processing** check box is selected on the **Settings for Use in AR** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form for the payment method.


When a POS transaction is launched on the POS terminal, the payment is not editable in Acumatica ERP, as is the case with payments that have the *Authorize Only* status.

**Attention:** The system does not save payment profiles and credit card details. No customer payment method is created through POS payments.

## Processing of POS Payments on the Cash Sales Form { .section}

To send and capture a payment via a POS terminal, you perform the following general steps:

1.  On the [Cash Sales](AR_30_40_00.md) \(AR304000\) form, you create a cash sale, selecting a payment method with the *POS Terminal* means of payment.
2.  In the **Terminal** box, you select a POS terminal from the lookup table.
3.  In the **Cash Account** box, you select a cash account.
4.  On the **Details** tab, you add a line or multiple lines with cash sale details.
5.  On the More menu, you click **Capture**, which causes the following actions to occur:

    1.  The system sends an API request to the processing center to create a transaction on the POS terminal.
    2.  The payment processor launches a transaction on the terminal.
    The customer receives the transaction on the terminal and taps, swipes, or inserts their credit card; they then complete the payment for the cash sale. The system automatically does the following:

    1.  Updates the payment transaction in Acumatica ERP with the final status.
    2.  On the **Card Processing** tab of the [Cash Sales](AR_30_40_00.md) form, adds a new line and populates the **Proc. Center Tran. Nbr.** column with the credit card transaction ID.
    3.  Releases the payment.

        **Attention:** The payment is released automatically because the **Integrated Processing** check box is selected on the **Settings for Use in AR** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form for the payment method.


## Creation of POS Payments on the Sales Orders Form { .section}

To create a payment for a sales order and capture it via a POS terminal, you perform the following general steps:

1.  On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, you create a sales order.
2.  You go to the **Payments** tab and click **Create Payment** on the table toolbar. The **Create Payment** dialog box opens.
3.  You select the following settings in the **Create Payment** dialog box:
    -   **Payment Method**: A payment method with the *POS Terminal* means of payment. The system automatically fills in the **Proc. Center ID** box with the processing center associated with the selected payment method.
    -   **Terminal**: The POS terminal to be used. This box is automatically filled in with the default terminal, but you can override this setting.
4.  You click **Capture** in the **Create Payment** dialog box.

    The system sends an API request to the processing center with all the mandatory settings to create a POS transaction on the terminal. The processing center launches a transaction on the terminal.

    The customer receives the transaction on the terminal and then taps, swipes, or inserts their credit card; then they complete the payment. When the payment is sent to the processing center, the card payment is processed and a response is sent to Acumatica ERP with the final transaction status.

    Once the system receives the response, it adds the reference number of the processing center and updates the transaction status.

5.  Once the payment is successful, the system automatically releases the payment.

    **Attention:** The payment is released automatically because the **Integrated Processing** check box is selected on the **Settings for Use in AR** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form for the payment method.


## Creation of POS Payments on the Invoices Form { .section}

To create a payment for a sales invoice and capture it via a POS terminal, you perform the following general steps:

1.  On the [Invoices](SO_30_30_00.md) \(SO303000\) form, you create a sales invoice.
2.  You go to the **Applications** tab and click **Create Payment** on the table toolbar. The system displays the **Create Payment** dialog box.
3.  You select the following settings in this dialog box:
    -   **Payment Method**: A payment method with the *POS Terminal* means of payment. The system automatically fills in the **Proc. Center ID** box with the processing center associated with the selected payment method.
    -   **Terminal**: The POS terminal to be used. This box is automatically filled in with the default terminal, but you can override this setting.
4.  You click **Capture** in the **Create Payment** dialog box.

    The system sends an API request to the payment processor with all the mandatory settings to create a POS transaction on the terminal. The processing center launches a transaction on the terminal.

    The customer receives the transaction on the terminal and then taps, swipes, or inserts their credit card; then they complete the payment. When the payment is sent to the processing center, the card payment is processed and a response is sent to Acumatica ERP with the final transaction status.

    Once the system receives the response, it adds the reference number of the processing center and updates the transaction status.

5.  Once the payment is successful, the system automatically releases the payment.

    **Attention:** The payment is released automatically because the **Integrated Processing** check box is selected on the **Settings for Use in AR** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form for the payment method.


## Processing of Refunds { .section}

Refunds made by using payment methods with the *POS Terminal* means of payment are processed as follows:

-   For refunds created on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, the processing center allows a full or partial refund after a transaction is captured. For POS payments, the transaction amount can be refunded at any time after it has been created because it is not limited by the *Settled* status. For linked refunds, a terminal or credit card is not needed; only the original transaction number is required.
-   When you record a linked refund on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form by creating a sales order of the *RC* type and clicking **Create Refund** on the **Payments** tab, if there are multiple original invoices in the *RC* order, for the refund on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, the system leaves the **Orig. Transaction** box empty. You must select the original transaction number of the invoice that you want to refund.
-   On the [Invoices](SO_30_30_00.md) \(SO303000\) form, cash returns for POS transactions can be created after the transaction has been captured. The system allows refunds and does not wait for the transaction to be settled.

To make it possible for users to record unlinked refunds \(those for which the system does not require the original transaction number; these refunds are also called *blind refunds*\), the system administrator must do the following:

-   Get approval from the processing center and enable blind refunds on the processing center's side.
-   In Acumatica ERP, make sure that the **Allow Unlinked Refunds** check box is selected on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.

## Support of Automatic Surcharges { .section}

For payments with the *POS Terminal* means of payment, creation of automatic surcharges is supported. *Surcharge* is a small fee added to a credit card transaction to cover your company's costs for processing the payment. You can configure and apply a surcharge to each payment created with a POS terminal.

On the printed forms of the [Invoice/Memo](AR_64_10_00.md) \(AR641000\) and [Payment Receipt](AR_64_30_00.md) \(AR643000\) reports, every surcharge is shown as a separate line item.

For mode details about the setup and use of surcharges, see [Automatic Credit Card Surcharges](AR__con_CCPayments_Surcharges.md).

-   **[To Configure the POS Payment Functionality](../UserGuide/AR__HOW_To_Configure_POS_Payments.md)**  


**Parent topic:**[Configuring and Using Acumatica Payments](../UserGuide/AR__MNG_Acumatica_Payments.md)

