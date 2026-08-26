# Overview of Currency Management Processes {#_0fa49e15-f514-4ea4-9de7-844cac733eb1 .concept}

In Acumatica ERP, you can maintain companies that perform multicurrency accounting. By using this multicurrency functionality, you can enter transactions in different currencies and maintain the history of transactions in both the base currency and the currency of the transactions.

The main processes related to currency management are described in this topic.

## Configuring Currencies {#section_n3w_3jv_vxb .section}

In Acumatica ERP, you specify the base currency—the currency of the primary economic environment in which the company generates and expends cash—when you create the first company on the [Companies](CS_10_15_00.md) \(CS101500\) form.

You can edit the settings of any currency in the system used for accounting and reporting purposes. For details, see the [Multicurrency Functionality](../ImplementationGuide/config_Multicurrency_Basic_Mapref.md) chapter.

## Managing Currency Rates {#section_q3w_3jv_vxb .section}

Acumatica ERP supports an unlimited number of currency rate types. You can assign different rate types to vendors and customers that use the same foreign currency. You can update exchange rates as frequently as you need, and historical currency rates are stored in the database for all previous financial years. You can set up the process of refreshing the currency rates by using the [Open Exchange Rates API](https://openexchangerates.org) online service. For more information, see the [Currency Rate Types and Current Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Mapref.md) chapter.

## Managing Translations {#section_s3w_3jv_vxb .section}

If your company prepares reports in a currency other than the base currency, you can set up translations to accurately reflect your business operations in another currency. For more information, see the [Translation of Financial Statements: General Information](Multicurrency_TranslatingFinStatements_GeneralInfo.md) chapter.

## Managing Revaluations {#section_u3w_3jv_vxb .section}

You can maintain any general ledger accounts you select in foreign currencies. At the end of each financial period, you have to revalue in the base currency the balances of general ledger accounts that are denominated to foreign currencies. The revaluation gains and losses are calculated automatically, with the appropriate adjustments posted to the revaluation gain and loss accounts specified for each foreign currency.

You can maintain operations with selected vendors and customers in foreign currencies. At the end of each financial period, you have to revalue all open accounts payable and accounts receivable documents in the base currency. The revaluation gains and losses are calculated automatically, and the appropriate adjusting and reversing batches are generated.

For detailed information, see [Revaluation of AP Documents: General Information](Multicurrency_RevaluationAP_General_Info.md), [Revaluation of AR Documents: General Information](Multicurrency_RevaluationAR_GeneralInfo.md), and [Revaluation of Bank Accounts: General Information](Multicurrency_RevaluationGL_GeneralInfo.md).

