# Multicurrency Cash Accounts: General Information {#_4bb275d8-a597-494d-9b19-68edadad8296 .concept}

Account balances in Acumatica ERP are always maintained in the base currency. When you post a transaction in a foreign currency to an account, the account balance is debited or credited in the appropriate amount in the base currency, based on the actual exchange rate.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a GL account to which a cash account in a foreign currency will be linked
-   Specify the cash account as the default cash account for a customer and a vendor
-   Create a GL transaction in a foreign currency

## Applicable Scenarios { .section}

You configure a cash account in a foreign currency in the following cases:

-   You have opened a bank account in a foreign currency for settlements with foreign vendors.
-   Some of your vendors have asked you to make payments to them in a particular foreign currency, and you do not want to use your bank account in the base currency for that purpose to avoid paying exchange rate commissions to the bank.

## Management of Denominated Accounts { .section}

To be able to maintain an account balance in two currencies, you need to denominate the account—that is, assign a particular currency \(base or foreign\) to this account. Once the account is denominated, you can post to it only in the assigned currency, which is called the currency of denomination. The balance of the denominated account is maintained in two currencies: the base currency and the currency of denomination.

The foreign currency balance represents the actual holdings of the company, whereas the base currency balance is just its equivalent value to be used for reporting. You can review the account balance in both currencies. Transactions posted to the denominated account update both balances of the account. Each transaction is posted with a particular exchange rate, which is the actual rate on the date of the transaction.

You must denominate the GL accounts to which cash accounts are linked; you can also denominate certain asset and liability accounts. In addition to cash accounts, you also need to denominate accounts that should be updated by transactions in one currency only and accounts whose balances you need to know in the currency of denomination.

Unlike ordinary accounts, denominated accounts have the following restrictions:

-   You can enter and post to denominated accounts only journal entries in the currency of denomination.
-   Denominated accounts cannot be used as direct or contra source accounts or destination accounts for allocations.
-   You cannot define an account as denominated if it has at least one journal entry in a currency other than the currency of denomination.
-   Due to currency rate fluctuations, you may need to revalue the balances of denominated accounts at the end of a financial period.

Because of these restrictions, you should denominate only accounts that absolutely must be denominated.

## Entry of Foreign Currency Transactions { .section}

By default, the base currency of the company is used for GL transactions created on the [Journal Transactions](../UserGuide/GL_30_10_00.md) \(GL301000\) form. To record a GL transaction in a foreign currency, you select the needed currency in the **Currency** box. All the transactions in one batch use the same currency.

**Tip:** If at least one of the accounts used in a batch is denominated to a specific currency, only this currency can be used as the currency of the batch. For details about denominated accounts, see [Denominated Accounts](../UserGuide/GL__con_Denominated_Accounts.md).

After you have specified the currency of the batch, you can review the exchange rate that is used for the batch in the Exchange Rate box \(right of the **Currency** box\) in the Summary area of the [Journal Transactions](../UserGuide/GL_30_10_00.md) form. This exchange rate is the effective exchange rate for the rate type that is defined in the **GL Rate Type** box on the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form. For details about currency rates, see [Configuration of Rate Types and Rates: General Information](config_Multicurrency_Configuring_Rates_GeneralInfo.md).

You can manually change the default rate type for a particular batch by clicking the Exchange Rate box. In the **Rate Selection** dialog box, which opens, you can select the rate type. For the selected rate type, the effective date and exchange rate to the base currency are shown. You can also change the date and rate for the batch if necessary. If you manually change the rate, the rate you specify is stored only with the batch but not on the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form.

To review the batch amounts in the base currency, you can click **View Base** right of the Exchange Rate box. To view the batch amounts in the foreign currency again, you click **View Cury**.

## Rounding Gains and Losses { .section}

When you enter your journal transactions with debit and credit amounts in the foreign currency, the system automatically converts the amounts into the base currency based on the specified exchange rate. The base currency generally has fewer decimal places than the exchange rate, which has six decimal places. Thus, the debit and credit amounts calculated in the base currency may differ by a very small amount, causing the batch to not be balanced. In this case, the difference is recorded to one of the accounts \(or subaccounts if they are used in your system\) specified for each currency—the Rounding Gain account or Rounding Loss account—and the corresponding journal entry is automatically added to the batch.

You specify the accounts and subaccounts that are used for recording rounding gains and losses of the base currency in the **Rounding Settings** section on the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form.

In the Summary area of the form, you can also set up the rounding limit to prevent the release of the documents with an unacceptable rounding difference \(that is, the difference between the rounded amount and the original document amount\).

**Parent topic:**[Configuring Cash Accounts in Foreign Currencies](../ImplementationGuide/config_Multicurrency_CashAccount_Mapref.md)

