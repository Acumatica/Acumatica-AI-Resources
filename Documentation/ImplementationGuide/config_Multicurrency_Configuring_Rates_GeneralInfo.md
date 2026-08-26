# Configuration of Rate Types and Rates: General Information {#_fce5bf02-bdfc-46d6-96cc-3d7ad15f9820 .concept}

In Acumatica ERP, you can create any necessary currency. For each pair of active currencies, you can specify effective exchange rates for any selected date. Additionally, you can specify the date when the currency rate becomes effective and assign a rate type, which determines how long the rate will remain valid for that currency pair. A currency rate type also defines how exchange rates are applied in foreign currency transactions, specifying which rate to use in different scenarios. For example, it can determine whether to apply the current exchange rate for immediate transactions, the average exchange rate over a period, or a historical exchange rate. You can create multiple rate types to meet various business needs.

For a particular rate type, you can turn on the online currency rate synchronization functionality to refresh the currency rates by using the [Open Exchange Rates API](https://openexchangerates.org) online service.

This chapter provides information on configuring and maintaining the currency rates and rate types in Acumatica ERP.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create currency rate types
-   Manually configure currency rates for foreign currencies
-   Configure rates for a foreign currency by using the rate synchronization functionality

## Applicable Scenarios { .section}

You configure currency rates in the system in the following cases:

-   You want to have multiple custom currency rate types in addition to the default rate type. For example, you can use one rate type in bills and invoices, another rate type for bank account revaluations, and yet another rate type for translations of financial statements.
-   You want to use a separate rate type to be assigned to particular customers or vendors; this rate type will be used in documents created for these customers and vendors.

## System Default Rate Type { .section}

The system automatically creates the default *SPOT* currency rate type when you specify the base currency on the [Companies](../UserGuide/CS_10_15_00.md#) \(CS101500\) form. The *SPOT* currency rate is the current rate of exchange between two currencies \(that is, the rate at which the currencies can be exchanged immediately\). Although delivery is theoretically immediate, the conventions of currency markets allow for up to two days for the settlement of a transaction.

## Custom Rate Types { .section}

You can create the following currency rate types to use with different vendors, customers, and for revaluations and translations:

-   Spot rate \(SPOT\): In Acumatica ERP, this default rate type is automatically created by the system. It represents the current exchange rate used for immediate transactions and is the most commonly applied rate for day-to-day currency conversions.
-   Average rate \(AVG\): This exchange rate is calculated as the average of exchange rates over a specific period and is typically used in financial reporting to smooth out the impact of short-term fluctuations.
-   Historical rate \(HIST\): This rate reflects the exchange rate in effect on a specific past date and is often used for translating balance sheet items like fixed assets or equity.

You can also create additional rate types based on your business needs.

You configure rate types on the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form. For each rate type, you specify the following settings:

-   The identifier of the currency rate type \(in the **Rate Type ID** column\).
-   A description of the currency rate type \(in the **Description** column\).
-   If the currency rate type is effective for a particular number of days, the number of days that it is effective \(in the **Days Effective** column\), starting on the effective date that is specified for each currency rate.

    By default, *0* is specified as the number of effective days. The currency rate is effective until a more recent rate for the same currency and rate type becomes effective.

-   An indicator of whether the currency rate can be updated by using the [Open Exchange Rates API](https://openexchangerates.org) currency rate update service \(the **Refresh Online** check box\).

    For details, see [Configuration of Rate Types and Rates: Ability to Refresh Rates](config_Multicurrency_Configuring_Rates_Refresh_CurrencyRates.md).

-   Optional: The rate adjustment percent to be applied to the rates returned by the online currency rate update service \(in the **Online Rate Adjustment \(%\)** column\).

    For example, suppose that you set this value to *0.05* and the actual currency rate is 1.101234. The system would determine the rate as follows: 1.101234 \* \(1 + 0.0005\) = 1.10178462.


Once you have defined the needed currency rate types, you assign an appropriate rate type to each currency rate that you create on the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form.

## General Guidelines for Defining Currency Rates { .section}

In Acumatica ERP, the following guidelines are applied to currency rates:

-   For a pair of currencies, you must define the rates in both directions. That is, if you have specified the currency rate to translate Currency 1 to Currency 2, this rule is not applied when Currency 2 is translated to Currency 1. For example, if you have an effective *EUR*-to-*USD* rate, the translation from *USD* to *EUR* could not use it. You have to explicitly define the *USD*-to-*EUR* rate on the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form.

    **Important:** The rate shown in the **Rate Reciprocal** box when you enter a rate to convert Currency 1 to Currency 2 cannot be used for converting amounts from Currency 2 to Currency 1. This is because the **Rate Reciprocal**, calculated automatically, may differ from the direct rate for Currency 2 to Currency 1. In such cases, the system cannot determine which rate should be used for conversion, which is why only direct rates are applied.

-   To set up different exchange rates that can be used in the same date range for the same currency pair, you need to create different rate types on the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form. You then can select different rate types for the same currency pair and specify different exchange rates on the [Currency Rates](../UserGuide/CM_30_10_00.md) form.

## Selection of the Conversion Operation {#_0abf1692-3b49-40a7-a960-6f489ba7ab44 .section}

When you define a currency rate on the **Currency Rate Entry** tab of the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form, you need to select an operation in the **Mult./Div.** column. The selected operation \(*Multiply* or *Divide*\) is performed on the number of units of the **From Currency**, by using the currency rate, to convert it to the number of units in the **To Currency** specified in the Summary area.

For example, suppose that by using a currency rate defined on this form, you are converting the euro \(*EUR*\) to the US dollar \(*USD*\); *USD* is thus selected as the **To Currency**. In the row with a **From Currency** of *EUR*, you have specified *Multiply* in the **Mult./Div.** column and *1.1* in the **Currency Rate** column. Then the conversion rule from EUR to USD is `*x* EUR * 1.1 = *y* USD` \(for instance, EUR 5 \* 1.1 = USD 5.5\).

If you have specified *Divide* in the **Mult/Div** column and *0.9* in the **Currency Rate** column, the conversion rule from EUR to USD is `*x* EUR / 0.9 = *y* USD` \(for instance, EUR 5 / 0.9 = USD 5.56\).

**Parent topic:**[Currency Rate Types and Current Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Mapref.md)

