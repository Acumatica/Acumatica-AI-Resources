# Multicurrency Payment of Invoices: General Information {#_695025b0-a6a5-450f-9288-c61f4731cd6d .concept}

In Acumatica ERP, you can apply payments created in one currency to documents created in another currency, and payments created in the base currency to documents created in a foreign currency.

## Learning Objectives {#section_qkx_3jv_vxb .section}

In this chapter, you will learn how to do the following:

-   Create an invoice in a foreign currency and a payment for it in the base currency
-   Create an invoice in a foreign currency and a payment for it in another foreign currency
-   Review and analyze how the system applies payments to invoices when the currency of the payment differs from the currency of the invoice
-   Override the cross rate used in the payment

## Applicable Scenarios {#section_skx_3jv_vxb .section}

You process an invoice in a foreign currency by using the base currency in the following cases:

-   Your company has received a payment in a foreign currency to its bank account in the base currency and needs to convert the payment to fully close the invoice.
-   Your company has received a payment in a foreign currency, but does not have a bank account in this currency.

## Application of a Cross Rate {#section_ukx_3jv_vxb .section}

When the system applies the payment, if the currency of the document differs from the currency of the payment, the system uses a *cross rate* to calculate the amount of the invoice that is being paid. The cross rate determines how to convert the amount paid in the payment currency to the invoice currency.

By default, the cross rate is calculated as the effective rate of the invoice currency on the payment date divided by the payment rate. The default cross rate can be overridden in the payments that are applied to the invoices in the foreign currency.

**Tip:** You cannot override the cross rate of payment application to the documents in the base currency because realized gain or loss \(RGOL\) is not calculated for these documents.

## Calculation and Application of RGOL {#section_vkx_3jv_vxb .section}

When a payment is applied to an AR invoice, and the payment and the invoice are in different currencies, the system calculates realized gain or loss \(RGOL\) in the base currency by using the following formula:

``` {#codeblock_xkx_3jv_vxb}
RGOL Amount = Round (Payment Amount * Payment Rate) – Round (Payment Amount Converted *
Invoice Rate)
```

In this formula, `Payment Amount Converted = Round (Payment Amount/Cross Rate)`

That is, the realized gain or loss is calculated as the payment amount in the base currency minus the part of the invoice that is being paid \(converted to the base currency\). To compute the invoice amount that is being paid, the system has to convert the payment amount into the base currency by using the payment rate and then into the invoice currency by using the reciprocal rate of the invoice currency that was effective on the payment date. That is, to convert the payment amount into the invoice currency, the system divides the payment amount by the cross rate. When the payment is applied, the balance of the invoice is reduced by the payment amount converted into the invoice currency by using the cross rate.

The RGOL amount calculated when the system applies a payment to an invoice is processed as follows:

-   If the calculated RGOL amount is positive, meaning that the application of this payment produces a gain, the realized gain account associated with the invoice currency is credited in the RGOL amount.
-   If the calculated RGOL amount is negative, indicating that the application of this payment produces a loss, the realized loss account associated with the invoice currency is debited in the amount of `(–1) * RGOL`.

If a payment is issued in a foreign currency other than the foreign currency of the document, the realized gain or loss is calculated as the amount of the payment in the base currency \(calculated using the exchange rate specified for the payment\) minus the original amount of the document in the base currency. The following formula is used.

``` {#codeblock_clx_3jv_vxb}
RGOL Amount = Round (Payment Amount * Payment Rate) – Round (Payment Amount Converted * Document Rate), where
```

``` {#codeblock_dlx_3jv_vxb}
Payment Amount Converted = Round(Payment Amount/Cross Rate), where
```

``` {#codeblock_elx_3jv_vxb}
Cross Rate = Document Rate/Payment Rate (on the payment date)
```

In these formulas, *Round \(\)* indicates that the amount within parentheses is rounded to the decimal precision that is set for the base currency in the Summary area of the [Currencies](CM_20_20_00.md) \(CM202000\) form.

**Parent topic:**[Paying Multicurrency Invoices](../UserGuide/Multicurrency_ARInvoiceByBaseCurrency_Mapref.md)

