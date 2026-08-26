# AP Bills in Foreign Currencies: General Information {#_265b1a59-313a-458f-be02-8035902e78d0 .concept}

In Acumatica ERP, the multicurrency functionality is supported for AP documents. The system recalculates all transactions made in a foreign currency to the company's base currency. To record the difference resulting from rounding during currency conversion, the system uses the rounding gain and loss accounts specified for the document currency on the [Currencies](CM_20_20_00.md) \(CM202000\) form. The small amount resulting from the currency rounding may be posted as a debit or a credit, depending on its sign.

## Learning Objectives {#section_vvx_3jv_vxb .section}

In this chapter, you will learn how to do the following:

-   Create and process a bill in a foreign currency
-   Pay a bill in the same foreign currency

## Applicable Scenarios {#section_xvx_3jv_vxb .section}

You process bills in a foreign currency if your vendors send you bills in this currency and expect you to pay them in the same currency.

## Processing of a Bill in a Foreign Currency {#section_zvx_3jv_vxb .section}

When an AP document is created, the system uses the currency settings of the vendor that is selected in the document. These currency settings are the currency, currency rate type, currency override ability, and currency rate override ability.

The GL transaction posted to the general ledger on release of the AP document, and the document itself can be reviewed in two currencies: the base currency and the document currency. To recalculate the document amounts in the base currency, the system uses the currency exchange rate that was effective on the date of the document, unless the rate is overridden in the document.

The RGOL amount calculated when a payment or debit adjustment is applied to a bill is processed as follows:

-   If the calculated RGOL amount is negative, meaning that the application produces a gain, the realized gain account associated with the bill currency is credited in the amount of `(–1) * RGOL`.
-   If the calculated RGOL amount is positive, which indicates that the application produces a loss, the realized loss account associated with the bill currency is debited in the amount of the calculated RGOL.

## Formula to Calculate Realized Gains and Losses {#section_dwx_3jv_vxb .section}

When a payment is applied to an AP bill, and the payment and the bill are in the same foreign currency, the system calculates the realized gain or loss \(RGOL\) in the base currency by using the following formula:

``` {#codeblock_fwx_3jv_vxb}
RGOL Amount = Round (Payment Amount * Payment Rate) – Round (Payment Amount * Bill Rate)
```

That is, the system calculates the realized gain or loss as the payment amount converted into the base currency by using the payment rate minus the payment amount, which the system has converted into the base currency by using the bill rate. `Round ()` indicates that the amount within parentheses is rounded to the decimal precision that is set for the base currency.

## Application of RGOL Amounts to Bills {#section_hwx_3jv_vxb .section}

A realized gain or loss \(RGOL\) is calculated when a payment in a foreign currency is applied to an AP bill. The system compares the exchange rate of the bill to the exchange rate of the payment and calculates the realized gain or loss. When the payment is applied to the bill, the RGOL amount is processed by the system as follows:

-   If the calculated RGOL amount is negative, meaning that the application of the payment produces a gain, the realized gain account associated with the bill currency is credited in the amount of `(–1) * RGOL`.
-   If the calculated RGOL amount is positive, meaning that the application of the payment produces a loss, the realized loss account associated with the bill currency is debited in the amount of the calculated RGOL.

**Parent topic:**[Processing Bills in Foreign Currencies](../UserGuide/Multicurrency_APBillsFC_Mapref.md)

