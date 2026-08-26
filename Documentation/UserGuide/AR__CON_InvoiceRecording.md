# AR Invoices: Invoice Recording {#_bd3376aa-b384-42cd-817a-a28d60e4a3d4 .concept}

An invoice is a request for payment for goods sold or services rendered. In Acumatica ERP, an Accounts Receivable invoice holds the amount and cost of products or services that have been provided by your company, as well as the due date by which the customer should send payment for the goods or services that have been purchased.

In this topic, you will read about the sources of invoice creation, the groups of settings that make up an Accounts Receivable invoice, and the way the system uses the settings of the related entities to automatically fill in settings for the invoice, thus saving you time.

## Application of Credit Terms {#section_nzm_4jv_vxb .section}

The due date of the document is calculated based on the credit terms associated with the customer, as are the days when the cash discount is available. By default, the system associates the document with the credit terms specified for the selected customer account, but you can change the default setting. If you do, the system automatically calculates the new due date and the end of the cash discount period. The system calculates the cash discount amount after you have added at least one line to the document details. For details on the calculation of the credit period and cash discount period, see [Setup of Credit Terms](AR__con_Credit_Terms.md).

## Tax Application {#section_pzm_4jv_vxb .section}

If the calculation of taxes is configured in your system, the system calculates the applicable taxes for each invoice and records the tax amounts to the document. For details, see [Sales Taxes: General Information](../ImplementationGuide/SalesTaxes_GeneralInfo.md), [Use Taxes: General Information](../ImplementationGuide/Taxes_Configuring_Use_Tax_GeneralInfo.md), and [Value-Added Taxes: General Information](../ImplementationGuide/Taxes_Configuring_VAT_GeneralInfo.md).

If a line includes an inventory item, the system fills in the tax category based on the tax category assigned to the item; otherwise, the tax category is the default tax category defined for the tax zone associated with the location of the selected customer. The system uses these settings to define the applicable taxes. You can view the list of the applied taxes on the **Taxes** tab of the form.

If your system is integrated with the AvaTax service of Avalara or another specialized third-party software, the applicable taxes are calculated by this service or software and recorded to the document when you save the document. For details on this integration, see [Integrating Acumatica ERP with Avalara Avatax](config_Avalara_Integration_Mapref.md).

## Discount Application {#section_tzm_4jv_vxb .section}

For each line, you can specify a manual discount offered to a customer, which may be a percent of the total amount or a manually entered amount. The system stores the discount details in the document and does not generate a separate transaction to be posted to GL accounts.

If the *Customer Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can configure various types of discounts that can be applied manually or automatically. The system generates separate transactions for discounts with the *Group-level* or *Document-level* types only. For details, see [Configuring and Applying Customer Discounts](Prices_Customer_Discounts_Mapref.md).

## Payment Application {#section_yzm_4jv_vxb .section}

When you enter an invoice and the specified customer has open payments, prepayments and credit memos, the system displays these documents on the **Applications** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. By default, the system sorts these documents by their document type \(credit memos, payments, and prepayments\) and reference number in ascending order.

You can manually specify the paid amount in the **Amount Paid \(Payment currency\)** column for the payment document or credit memo that you select. Alternatively, you can click **Auto-Apply** on the table toolbar. In this case, the system fills in the **Amount Paid \(Payment currency\)** column, starting with the first document in the list, until the invoice balance is fully paid.

You can apply payments to unreleased invoices and debit memos \(those that have the *On Hold* or *Balanced* status\) and then release the document and its application to a payment at the same time.

When you release the invoice, the system does the following:

1.  Creates and releases application records for the open payment documents that have a nonzero value specified in the **Amount Paid \(Payment currency\)** column.
2.  Decreases the balances of the invoice and the applied payments or credit memos.
3.  If the balances of the invoice and the applied documents are zero, changes the status of these documents to *Closed*; otherwise, the status remains *Open*.

The system excludes payments and prepayments from the list of payment documents that can be applied to the invoice if they meet at least one of the following criteria:

-   The open payment is linked to a sales order. That is, the payment has a reservation record or multiple reservation records on the **Orders to Apply** tab of the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) \(AR302000\) form. For details, see [Reserving Payments for Sales Orders](../Shared/../UserGuide/SO__con_Payment_Reservation.md).
-   The open payment was put on hold. That is, a user clicked **Hold** on the form toolbar of the [Payments and Applications](../Shared/../UserGuide/AR_30_20_00.md) form for the payment with the *Open* status, and the system changed the document status from *Open* to *Reserved*.

    **Tip:** To release the payment from hold, click **Remove Hold** on the form toolbar.


**Parent topic:**[Processing AR Invoices](../UserGuide/Finance_ARInvoices_Mapref.md)

