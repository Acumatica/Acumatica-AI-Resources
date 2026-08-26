# Configuration of Rate Types and Rates: Historical Rates {#_892a6c30-1202-4fb5-baf0-6926435bc3a6 .concept}

In Acumatica ERP, currency exchange rates can be specified as often as is needed for a particular currency pair. Each currency rate that is created is effective for a particular date range, after which it is considered a *historical rate*. A historical rate can be used as the effective rate for operations that have taken place during the date range when the rate was effective.

In this topic, you will read about how the effective date range is defined, how to view historical rates in the system, and how to use historical rates.

## The Date Range of a Currency Rate { .section}

Each currency rate is effective for a particular date range, which is defined based on the setting for the related currency rate type in the **Days Effective** column on the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form as follows:

-   A nonzero number of days is specified in this column: The currency rate is effective starting from the currency effective date specified in the **Currency Effective Date** column on the [Currency Rates](../Shared/../UserGuide/CM_30_10_00.md) \(CM301000\) form and remains effective for the specified number of days.
-   A *0* is specified in this column: The currency rate remains effective until a more recent rate for the same currency and rate type becomes effective based on its **Currency Effective Date** on the [Currency Rates](../Shared/../UserGuide/CM_30_10_00.md) form.

When you enter the next record for the same rate type or when the specified number of effective days has passed, the rate becomes a *historical rate*.

## Viewing of the Historical Currency Rates { .section}

You can view the historical currency rates you most need at a given time by using targeted reports and forms:

-   To view the list of all rates for a particular date range sorted by the effective date of each rate, you run the [Currency Rate History by Date](../UserGuide/CM_65_10_00.md) \(CM651000\) report.

    Before you run the report, you specify the date range \(**From Date** and **To Date**\) for which you want to view currency rates. You can also select the particular currency and currency rate type for which you want to view the list of rates.

-   To view the list of all rates for a particular date range sorted by the currency from which conversion is performed, you run the [Currency Rate History by ID](../UserGuide/CM_65_05_00.md) \(CM650500\) report.

    Before you run the report, you specify the date range \(**From Date** and **To Date**\) for which you want to view currency rates. You can also select the particular currency and currency rate type for which you want to view the list of rates.

-   To view the rates that are effective on a particular date for a particular target currency, you use the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form.

    On this form, select the target currency \(**To Currency**\) and the required date \(**Effective Date**\). The list of historical rates that were effective on the selected date appears in the table on the **Effective Currency Rates** tab. The list includes the rates \(and the currency rate types\) for all the source currencies \(**From Currency** column\) that have been specified for the target currency.


## Use of the Historical Currency Rates { .section}

You can use historical rates as follows:

-   For entering transactions for dates before the effective date of a currency rate
-   For calculating realized and unrealized gains and losses
-   For performing revaluations
-   For translating certain account balances \(for example, the capital account\)

**Parent topic:**[Currency Rate Types and Current Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Mapref.md)

