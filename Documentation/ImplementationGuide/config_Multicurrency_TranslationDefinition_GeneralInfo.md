# Translation Definitions: General Information {#_7d458706-3b54-478e-8a0a-c35a4d674eab .concept}

In Acumatica ERP, you may need to restate account balances from the base currency \(or a foreign currency\) to any foreign currency configured for use in the system. This process of restating account balances from one currency \(base or foreign\) to another foreign currency is called *translation* and is used for reporting purposes.

To perform a translation, the system uses a *translation definition*, which defines the source ledger and destination ledger, the accounts to be translated, and the rules to be used for translation.

**Tip:** To enable translation of financial statements in the system, the *Multicurrency Accounting* and *Translation of Financial Statements* features must be enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Configure the system for translating financial statements
-   Configure a translation definition

## Applicable Scenarios { .section}

You perform a translation of financial statements if your company is a subsidiary of a larger entity and its financial statements are included in the consolidated statements of the larger entity, which are prepared in a different currency.

## Creation of a Translation Definition { .section}

You use the [Translation Definition](../UserGuide/CM_20_30_00.md) \(CM203000\) form to define rules for the translation. When you create a new translation definition, you specify the following information:

-   The source ledger—that is, the ledger from which account balances to be translated are copied.
-   The destination ledger—that is, the ledger to which the translated balances are recorded.
-   If your company has multiple branches, the branch for which translations will be performed.

    If you do not specify the branch, the translation is performed for all branches of all companies.

-   The ranges of accounts and subaccounts \(if subaccounts are used in your system\) to be translated.
-   The translation methods to be used for each range of accounts and subaccounts.
-   The rate types to be used for translation for each range of accounts and subaccounts.

## Translation Ledgers { .section}

You specify the ledger from which account balances to be translated are copied and the ledger of the *Reporting* type to which the translated balances are recorded in the **Source Ledger ID** and **Destination Ledger ID** boxes, respectively, on the [Translation Definition](../UserGuide/CM_20_30_00.md) \(CM203000\) form. For details on ledgers, see [Managing Ledgers](../UserGuide/GL__MNG_Managing_Ledgers.md).

The translation is performed from the currency of the source ledger to the currency of the destination ledger. If an *Actual* ledger is selected as the source ledger, the translation will be performed from the base currency. If any *Reporting* ledger is selected as a source ledger, the translation will be performed from the foreign currency assigned to this ledger to the foreign currency of the destination ledger.

## Range of Accounts for Translations { .section}

On the [Translation Definition](../UserGuide/CM_20_30_00.md) \(CM203000\) form, you specify the starting and ending accounts in the **Account From** and **Account To** columns for each range of accounts for which you want to perform translation. If you use subaccounts in your system, you can specify the starting and ending subaccounts in the **Subaccount From** and **Subaccount To** columns for each range of accounts. The ranges of account-subaccount pairs should not intersect or contain the same pairs.

You do not need to include the Year-to-Date \(YTD\) Net Income account in the translation definition. This account, which accumulates the difference between the amounts posted to income and expense accounts, is updated by every transaction posted to these accounts. Thus, to get the translated balance of the YTD Net Income account in the reporting ledger, you translate the balances of the income and expense accounts, and then the system calculates the account balance based on the translated amounts.

To get the correct translated balance of the Retained Earnings account in the reporting ledger, you need to translate the period-to-date \(PTD\) balances of income and expense accounts in each period, starting from the very first one.

## Translation Methods { .section}

Acumatica ERP provides the following translation methods, which you can select for different ranges of accounts and subaccounts \(if applicable\) in the **Translation Method** column of the [Translation Definition](../UserGuide/CM_20_30_00.md) \(CM203000\) form:

-   *YTD Balance*: To convert the account balances at the end of the translation period. When this method is selected, to get the translated balance of each of the specified accounts \(generally assets and liabilities\), the system converts the account balances at the end of the translation period by using the exchange rate of the selected type that is effective on the translation date. If there is a difference between the translated balance and the account balance stored in the destination ledger for the previous period, a transaction will be generated to adjust the balance.
-   *PTD Balance*: To convert the period-to-date \(PTD\) balance for the translation period. When this method is selected, to get the translated period-to-date balance of each of the specified accounts \(generally income and expenses\), the system converts the PTD balance for the translation period by using the exchange rate of the selected type that is effective on the translation date. As a result, the account balance in the reporting ledger is the total of the translated PTD balances for every period of the financial year.

If you are translating the account balances from one foreign currency to another, you should maintain direct exchange rates between those foreign currencies in the currency exchange rate database \(for the *PTD Balance* and *YTD Balance* translation methods, at least two rate types for each period\).

**Parent topic:**[Currency Translation Definitions](../ImplementationGuide/config_Multicurrency_TranslationDefinition_Mapref.md)

