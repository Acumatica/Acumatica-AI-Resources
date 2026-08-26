# AR Invoices in Foreign Currencies: General Information {#_acc72f48-162e-44b0-95ee-6bd2255a9572 .concept}

In Acumatica ERP, multicurrency functionality is supported for AR documents. The system recalculates all transactions made in a foreign currency to the company's base currency. To record the difference resulting from rounding during currency conversion, the system uses the rounding gain and loss accounts specified for the document currency on the [Currencies](CM_20_20_00.md) \(CM202000\) form. The small amount resulting from the currency rounding may be posted as a debit or a credit, depending on its sign.

## Learning Objectives {#section_zqw_3jv_vxb .section}

In this chapter, you will learn how to do the following:

-   Create and process an invoice in a foreign currency
-   Override the default currency rate
-   Pay the invoice with a payment in the same foreign currency

## Applicable Scenarios {#section_brw_3jv_vxb .section}

You process invoices in a foreign currency if your foreign customers need to receive invoices in their own currency, which differs from the base currency in your system. If you have a cash account in the foreign currency used by your customers, you may want to receive payments for the invoices in this currency.

## Processing of an Invoice in a Foreign Currency {#section_drw_3jv_vxb .section}

In AR documents, the system uses the currency settings of the customer that is specified in the document. The currency settings are the currency, currency rate type, currency override ability, and currency rate override ability. When you create a customer on the [Customers](AR_30_30_00.md) \(AR303000\) form, the system inserts the currency settings of the customer class by default. If needed, you can override the default currency settings.

To recalculate the document amounts in the base currency, the system uses the currency exchange rate that was effective on the date of the document unless the rate is overridden in the document. The GL transaction posted to the general ledger on release of the document and the document itself can be reviewed in two currencies: the base currency and the document currency.

The RGOL amount calculated when a payment or credit memo is applied to an invoice is processed as follows:

-   If the calculated RGOL amount is positive \(which means that the application of the document produces a gain\), the realized gain account associated with the invoice currency is credited in the RGOL amount.
-   If the calculated RGOL amount is negative \(which means that the application of the document produces a loss\), the realized loss account associated with the invoice currency is debited in the amount of `(–1) * RGOL`.

## Formula to Calculate Realized Gains and Losses {#section_hrw_3jv_vxb .section}

If a payment is issued in the same foreign currency as the currency of the document, the realized gain or loss is calculated in the base currency as the difference in exchange rates multiplied by the payment amount. The following formula is used.

``` {#codeblock_jrw_3jv_vxb}
RGOL Amount = Round (Payment Amount * Payment Rate) – Round (Payment Amount * Document Rate)
```

That is, the system calculates the realized gain or loss as the payment amount it converts into the base currency by using the payment rate minus the payment amount the system converts into the base currency by using the invoice rate. `Round ()` indicates that the amount within parentheses is rounded to the decimal precision that is set for the base currency in the Summary area of the [Currencies](CM_20_20_00.md) \(CM202000\) form.

## Changing of the Cross Rate {#section_lrw_3jv_vxb .section}

When applying a payment to a multicurrency invoice, you can change the cross rate along with the application, if needed.

For instance, suppose you had issued an invoice in a foreign currency, and then you received a payment in this foreign currency. Your company does not have a bank account in the foreign currency, and the bank used some currency rate to translate the payment amount to the currency of your bank account. In this case, you record the payment to a cash account that represents your bank account and apply it to the invoice. The rate used by the bank may differ from the rate you used to record the invoice. To make the payment amount and the invoice amount equal, you can adjust the rate in the **Cross Rate** column for the applied invoice. When you release the payment and its applications, the balance of the realized gain or loss \(RGOL\) account is updated by the amount resulting from the difference in the exchange rates used to record the invoice and the payment.

If your company has a bank account in the foreign currency \(so there is a cash account in the system that represents this bank account\), you record the payment in a foreign currency to this cash account. When you release the payment and its applications, the balance of the RGOL account is updated by the amount resulting from the difference in the exchange rate on the invoice date and the payment application date.

**Parent topic:**[Processing Invoices in Foreign Currencies](../UserGuide/Multicurrency_ARInvoicesFC_Mapref.md)

