# Denominated Accounts {#_28ad15c6-5f9b-4cc1-9c05-932b5dcf6a8f .concept}

To maintain an account balance in two currencies, you need to denominate the account—that is, assign a particular currency \(base or foreign\) to this account. Once the account is denominated, you can post to it in only the assigned currency, which is called the *currency of denomination*.

**Note:** You can denominate accounts only if the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

Once you have denominated the account, you can review the account balance in both currencies. The foreign currency balance represents the actual holdings of the company, whereas the base currency balance is its reporting equivalent. Transactions posted to the denominated account update both balances of the account. Each transaction is posted with the particular exchange rate, which is the rate effective on the date of the transaction.

You must denominate the General Ledger accounts to which cash accounts are linked. In addition to cash accounts, you also need to denominate accounts that should be updated by transactions in one currency only and accounts for which you need to know their balances in this currency.

## Restrictions of Denominated Accounts {#section_yv2_mjv_vxb .section}

In comparison with ordinary accounts, denominated accounts have a few specific restrictions:

-   You can enter and post to denominated accounts only transactions in the currency of denomination.
-   You cannot use accounts denominated in a foreign currency as direct or contra source accounts or destination accounts for allocations.
-   You cannot mark an account as denominated if it has at least one journal entry in a currency other than the currency of denomination.
-   Due to currency rate fluctuations, you may need to revalue the balances of denominated accounts at the end of each period.

Because of these restrictions, you should denominate only accounts that absolutely have to be denominated. Generally, these are the base accounts for cash accounts. For more information, see [Configuring Cash Accounts](CA__MNG_CashAccounts.md).

## Setup of Denominated Accounts {#section_bw2_mjv_vxb .section}

To set up an account as a denominated account, you specify the currency of denomination in the **Currency** column on the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form.

**Attention:** You can always make the account no longer denominated by clearing the **Currency** box on the [Chart of Accounts](GL_20_25_00.md) form.

If the currency of the account is a foreign currency, you can specify the currency rate in the **Revaluation Rate Type** column to be able to perform revaluations of the account balances. If you do not assign rate type to an account, the system uses the default rate type, which you specify in the **GL Revaluation Rate Type** box on the [Currency Management Preferences](CM_10_10_00.md) \(CM506000\) form. For details on revaluations, see [Revaluation of Bank Accounts: General Information](Multicurrency_RevaluationGL_GeneralInfo.md).

**Parent topic:**[Managing the Chart of Accounts](../UserGuide/GL__MNG_Managing_Accounts_and_Subaccounts.md)

