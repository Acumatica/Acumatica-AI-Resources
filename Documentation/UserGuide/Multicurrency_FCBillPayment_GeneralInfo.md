# Multicurrency Payment of Bills: General Information {#_228b94ed-108f-4f71-b20e-9d4610b391bb .concept}

In Acumatica ERP, you can apply payments created in one currency to documents created in another currency, and payments created in the base currency to documents created in a foreign currency.

## Learning Objectives {#section_d4y_3jv_vxb .section}

In this chapter, you will learn how to do the following:

-   Create a bill in a foreign currency and a payment for it in the base currency
-   Create a bill in a foreign currency and a payment for it in another foreign currency
-   Review and analyze how the system applies payments to bills when the currency of the payment differs from the currency of the bill
-   Override the cross rate used in the payment

## Applicable Scenarios {#section_f4y_3jv_vxb .section}

You process a bill in a foreign currency in the following cases:

-   You have created a bill in a foreign currency, but your company's cash account in this currency does not have enough funds for payment. In this case, you can pay the bill in the base currency.
-   You have created a bill in a foreign currency, but your company's cash account in the base currency does not have enough funds for payment. In this case, you can pay the bill in another foreign currency.

## Application of a Cross Rate {#section_h4y_3jv_vxb .section}

When the system applies the payment, if the currency of the document differs from the currency of the payment, the system uses a *cross rate* to calculate the amount of the invoice that is being paid. The cross rate determines how to convert the amount paid in the payment currency to the invoice currency.

By default, the cross rate is calculated as the effective rate of the invoice currency on the payment date divided by the payment rate. The default cross rate can be overridden in the payments that are applied to the invoices in the foreign currency.

**Tip:** You cannot override the cross rate of payment application to the documents in the base currency because realized gain or loss \(RGOL\) is not calculated for these documents.

## Calculation and Application of RGOL {#section_i4y_3jv_vxb .section}

When the payment is applied to an AP bill, and the payment and the bill are in different currencies, the system calculates realized gain or loss \(RGOL\) in the base currency by using the following formula:

``` {#codeblock_k4y_3jv_vxb}
RGOL Amount = Round (Payment Amount * Payment Rate) – Round (Payment Amount Converted * Bill Rate)
```

where `Payment Amount Converted = Round (Payment Amount / Cross Rate)`

That is, the realized gain or loss is calculated as the payment amount in the base currency minus the part of the bill that is being paid, which the system has converted to the base currency.

To get the amount of the bill that is being paid, the system has to convert the payment amount into the base currency by using the payment rate, and then into the bill currency by using the rate of the bill currency that was effective on the payment date. That is, to convert the payment amount into the bill currency, the system divides the payment amount by the cross rate. When the payment is applied, the balance of the bill is reduced by the payment amount converted into the base currency.

The RGOL amount calculated when a payment is applied to a bill is processed as follows:

-   If the calculated RGOL amount is negative, meaning that the application of the payment produces a gain, the realized gain account associated with the bill currency is credited in the amount of `(–1) * RGOL`.
-   If the calculated RGOL amount is positive, meaning that the application of the payment produces a loss, the realized loss account associated with the bill currency is debited in the amount of the calculated RGOL.

**Parent topic:**[Paying Multicurrency Bills](../UserGuide/Multicurrency_FCBillPayment_Mapref.md)

