# Level 2 Data Transmission During Card Payments {#_33d074d1-e6c7-45c4-b5a0-77a1ccda9466 .concept}

All businesses accepting credit cards payments fall into a certain level of data processing. Each level is defined by the amount of information that is required or passed to complete the payment. Level 1 processing is the default one and is the basic level because the merchant does not add any extra data except the basic payment data to a transaction.

Level 2 processing is the level when the merchant provides incremental data, combined with the basic payment data, that is sent electronically to the bank to define the purchase in more detail. In return, the merchants get fraud prevention, and the card networks lower the interchange rates to process the credit card payments for B2B and B2G transactions.

Acumatica ERP supports level 2 data processing and incorporates the following additional data in the transaction API request along with the payment data for *Card Not Present* transaction endpoint requests:

1.  Tax amount \(the `tax` field\)
2.  Subtotal amount \(the `subtotal_amount` field\)

During credit card processing, this additional data is sent to the processing center if the selected payment method has *Credit Card* specified in the **Means of Payment** box on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form.

**Note:** Although multiple tax calculation rules are used in Acumatica ERP, there is no difference in how the system calculates the tax amount and the subtotal amount. The tax amount is always the amount from the **Tax Total** box in the Summary area of a data entry form and the subtotal amount is always the payment amount minus the tax amount. The tax amount cannot be less than 0 in the system.

Transmission of level 2 data is not supported for the following types of documents:

-   Documents paid by line: For documents that have the **Pay by Line** check box selected on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, this functionality is not supported, because it is applied only on the document level. If a payment is applied to a document paid by line, the system does not calculate the taxes for the individual lines, but treats the document in the same way as the documents with the **Pay by Line** check box cleared and calculates the tax amount at the document level.

    If on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, a payment is applied to two documents one of which is paid by line and the other is paid at the document level, the system will calculate the tax amount for the document paid by line at the document level, but not on the line level.

-   Refund transactions: Documents with the *Cash Return* type created on the [Cash Sales](AR_30_40_00.md) \(AR304000\) form and documents with the *Refund* type created on the [Payments and Applications](AR_30_20_00.md) form produce transactions with the *Credit* type, so they do not qualify for level 2 processing. Only transactions with the *Sale* type quality for level 2 interchange rate.

-   Sales orders imported from eCommerce sites: When orders from eCommerce sites are synched with a sales order in Acumatica ERP, the payment for the order is imported either automatically by the system along with the order or it is manually imported by the user.

    If the payments for this order is *Authorized* or *Captured* in the eCommerce site, this transaction may not qualify for level 2 processing. In this case, Acumatica Payments was not used to capture the payment and thus cannot send the transaction with the level 2 data to the payment gateway.

    **Tip:** If the payment has been authorized with the Fortis Gateway in the eCommerce site and imported to Acumatica ERP in a sales order, the tax information is synced as part of the order details. When this payment is captured, the system can fetch the **Total Tax** amount and calculate the subtotal amount from the sales order and incorporate it in the transaction request to reclassify it for level 2 processing.


**Parent topic:**[Configuring and Using Acumatica Payments](../UserGuide/AR__MNG_Acumatica_Payments.md)

