# Configuration of Rate Types and Rates: Effective Rates {#_76d7f1f7-7037-446d-8cee-52f46087cf06 .concept}

Acumatica ERP uses the effective currency rates for currency conversions in transactions and documents with a foreign currency. Each currency rate is effective for a particular date range. This date range is defined based on the setting for the related currency rate type in the **Days Effective**column of the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form as follows:

-   A nonzero number of days is specified in this column: The currency rate is effective starting from the currency effective date specified in the **Currency Effective Date** column on the [Currency Rates](../Shared/../UserGuide/CM_30_10_00.md) \(CM301000\) form and remains effective for the specified number of days.
-   A *0* is specified in this column: The currency rate remains effective until a more recent rate for the same currency and rate type becomes effective based on its **Currency Effective Date** on the [Currency Rates](../Shared/../UserGuide/CM_30_10_00.md) form.

For example, for the *SPOT* rate type, if *0* is specified in the **Days Effective** column of the [Currency Rate Types](../UserGuide/CM_20_10_00.md) form, and the rate is specified on May 1, 2026, then in a document dated *5/5/2026*, the system will suggest \(that is, insert into the **Exchange Rate** box\) the rate that was effective on May 1, 2026. For the *SPOT* rate type, if *2* is specified in the **Days Effective** column, then in the document dated *5/5/2026*, the system shows a warning that no rate is defined on the specified date.

When you enter the next record for the same currency pair and rate type, or when the specified number of effective days has passed, the rate becomes a *historical rate*. For details, see [Configuration of Rate Types and Rates: Historical Rates](config_Multicurrency_Configuring_Rates_HistoricalRates.md).

**Parent topic:**[Currency Rate Types and Current Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Mapref.md)

