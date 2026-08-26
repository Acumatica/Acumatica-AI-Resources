# AR Invoices with Retainage: General Information {#_215da004-edc1-49a5-ad9c-2e8d355c0004 .concept}

A customer may retain a part of the amount of an invoice until your company has finished performing the work that is being billed. In this case, to process the total amount of the invoice, at least two invoices are created in Acumatica ERP: the invoice for which part of the amount is retained, and the retainage invoice, which contains the retained amount to be paid.

The invoice with retainage is paid during the period of time agreed upon between your company and the customer. The retainage invoice contains the retained amount \(or a part of the retained amount\) to be paid; a retainage invoice is paid after the contractual work has been finished. Multiple retainage invoices can be created for one invoice with retainage.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a pro forma invoice and the related AR invoice with retainage
-   Release the retainage from the AR invoice
-   Process a retainage invoice
-   Apply payments to AR invoices with retainage

## Applicable Scenarios { .section}

You process an invoice with retainage when the customer has withheld a part of the invoice amount until the work is substantially complete to assure that your company will satisfy its obligations and complete the project.

## The Processing Workflow of an Invoice with Retainage { .section}

Typically, an AR invoice with retainage goes through the following general steps during its life cycle:

1.  Entry of the invoice with retainage and preparation of the invoice for release: A data entry person creates the invoice with retainage on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. The balance of this invoice equals the sum of the extended prices minus the line discounts of the lines of the invoice, with this subtotal reduced by the retainage amount. The total amount of the invoice \(which is shown on the **Retainage** tab\) is the detail total amount plus the retained amount.
2.  Release of the invoice with retainage: An accountant releases the prepared invoice. This released invoice is assigned the *Open* status, affects the balances of the selected customer and the GL accounts, and requires further processing.
3.  Receipt of a payment for the invoice with retainage: The accountant enters a payment on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form for the invoice, and then processes and releases the payment. The system reduces the balance of the invoice by the amount paid. When the payment is released, the balance of the customer is reduced by the paid amount and the general ledger accounts are updated. The invoice with retainage still has the *Open* status.
4.  Release of retainage: To reflect that work has been completed, the accountant releases a part of the retained amount or the full retained amount for the invoice on the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form. When this retainage is released, the system creates a retainage invoice. This invoice has the *Balanced* or *On Hold* status, depending on whether the **Hold Documents on Entry** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

    When the retainage invoice is released, the system updates the balances of the customer, the related GL accounts, and the unreleased retainage amount of the invoice with retainage.

5.  Receipt of a payment for a retainage invoice: The accountant enters a payment in the system for the retainage invoice, and then processes and releases the payment. The system reduces the balance of the retainage invoice by the amount paid. The balance of the customer is reduced by the paid amount, and the GL accounts are updated.

    If the full retained amount has been released and paid, the invoice with retainage is assigned the *Closed* status, and its unreleased and unpaid retainage amounts are *0*.

    If a part of the retained amount has been released and paid, the invoice with retainage keeps the *Open* status. The system reduces the invoice's unreleased and unpaid retainage amounts by the retainage released and the retainage paid, respectively.


For more information, see [Processing AR Documents with Retainage](AR__MNG_ProcessingInvoices_with_Retainage.md).

**Parent topic:**[Processing AR Invoices with Retainage](../UserGuide/Construction_ARInvoice_with_Retainage_Mapref.md)

