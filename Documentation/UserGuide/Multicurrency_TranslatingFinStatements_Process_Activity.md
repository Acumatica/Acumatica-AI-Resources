# Translation of Financial Statements: Process Activity {#_35846545-2364-42a0-9e44-3d27267a88cd .task}

The following activity will walk you through the process of translating financial statements into a foreign currency.

## Story {#section_h11_jjv_vxb .section}

Suppose that after the configuration of a translation definition, the chief accountant of SweetLife Fruits &amp; Jams has decided to translate account balances from the base currency \(*USD*\) into a foreign currency \(*EUR*\) by using the configured translation definition. Acting as a SweetLife accountant, you have to translate the account balances for December 2025 and January 2026.

## Configuration Overview {#section_mfx_3jv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant.
    -   *Multicurrency Accounting*, which enables multicurrency operations in the system
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *32000 \(Retained Earnings\)* and *33000 \(Net Income\)* accounts have been created.
-   On the [Currency Rate Types](CM_20_10_00.md) \(CM201000\) form, the *SPOT* rate type has been defined.

## Process Overview {#section_m11_jjv_vxb .section}

In this activity, you will prepare a translation for December 2025 on the [Prepare Translation](CM_50_10_00.md) \(CM501000\) form and release it on the [Translation Worksheets](CM_30_40_00.md) \(CM304000\) form. You will then review the balances of the reporting ledger on the [Account Summary](GL_40_10_00.md) \(GL401000\) form.

Next, you will prepare a translation for January 2026 on the [Prepare Translation](CM_50_10_00.md) form, release it on the [Translation Worksheets](CM_30_40_00.md) form, and analyze how the system updated the balances.

## System Preparation {#section_p11_jjv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business Date menu button, and select *12/31/2025* from the calendar.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  Make sure that the multicurrency accounting functionality has been configured as described in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md) and [Configuration of Rate Types and Rates: To Configure Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity1.md).
5.  Make sure that you have created a translation definition as described in [Translation Definitions: Implementation Activity](../ImplementationGuide/config_Multicurrency_TranslationDefinition_Implem_Activity.md).

## Step 1: Preparing a Translation for December 2025 {#section_s11_jjv_vxb .section}

To prepare a translation for the 12-2025 period, do the following:

1.  Open the [Prepare Translation](CM_50_10_00.md) \(CM501000\) form.
2.  In the Selection area, specify the following settings:

    -   **Translation ID**: *EUR*

        Here you specify the translation definition to be used for the translation.

    -   **Fin. Period**: *12-2025*

        This is the financial period for which the translation will be performed.

    -   **Currency Effective Date**: *12/31/2025*

        This is the effective date of the currency exchange rate to be used for the translation.

    -   **Description**: *Translation to EUR* \(inserted automatically\)
    The table displays the currency rates that will be used in the translation. These are the rates of different rate types that are effective on the translation date.

    **Tip:** When you are performing a translation in a production environment, make sure that you have completed the translation for the previous periods. If any periods were skipped, you will see incorrect balances of the accounts that are translated by the *PTD Balance* method and have nonzero PTD balances for the skipped periods.

3.  On the form toolbar, click **Create Translation**.

    The system prepares the translation worksheet and displays it on the [Translation Worksheets](CM_30_40_00.md) \(CM304000\) form.


## Step 2: Reviewing the Balances and Releasing the Translation {#section_ab1_jjv_vxb .section}

To review the translated balances and release the translation, do the following:

1.  While you are still on the [Translation Worksheets](CM_30_40_00.md) \(CM304000\) form, review the prepared translation worksheet.

    The system has translated the account balances by using the exchange rates of the appropriate type and the rules of translation specified in the translation definition. The **Source Amount** column shows the amount to be translated: the PTD balance for the accounts translated with the *PTD Balance* method, and the ending balance for the period for the accounts translated with the *YTD Balance* method. The **Translated Amount** column shows the source amount that the system converted by using the specified currency rate as follows:

    -   For the accounts translated with the *YTD Balance* method, this is the account balance at the end of the period in the reporting ledger.
    -   For the accounts translated with the *PTD Balance* method, this is the account period-to-date balance for the period in the reporting ledger.
    The **Transaction Debit Amount** and **Transaction Credit Amount** columns show the amount in which the account will be debited or credited in the translation batch to get the needed balance. This is the first translation that you have performed in the *EUROTRANS* reporting ledger. \(You created this ledger in [Translation Definitions: Implementation Activity](../ImplementationGuide/config_Multicurrency_TranslationDefinition_Implem_Activity.md).\)

    Thus, all the nonzero account balances were processed, and the debit and credit amounts equal the translated amounts. The **Orig. Translated Amount** column shows account balances \(PTD balances or ending balances, depending on the selected translation method\) in the reporting ledger before the translation. Currently, the column shows *0.00* for all the accounts, because before the translation, all account balances were equal to zero.

    The system translates balances of different accounts by using different currency rates \(as the translation definition specifies\), so the total of the translated assets and expenses does not match the total of the translated liabilities and incomes. To make the **Debit Total** equal the **Credit Total** in the translation worksheet, this discrepancy is posted to the Translation Gain/Loss account specified for the reporting currency. This amount is not translated, and thus the **Currency Rate** for this row is *1.00*. The **Debit Total** and **Credit Total** equal the **Control Total**.

2.  On the form toolbar, click **Release** to release the translation worksheet.

    The system generates a transaction and posts it to the *EUROTRANS* reporting ledger.

3.  Click the **Translation Batch Number** link in the Summary area.
4.  On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, which opens, review the generated transaction.

    The amounts from the **Transaction Debit Amount** and **Transaction Credit Amount** columns, which you have reviewed on the translation worksheet, were copied into the **Debit Amount** and **Credit Amount** columns, respectively. Notice that you can review the batch only in *EUR*, because it is the currency assigned to the *EUROTRANS* reporting ledger.

    **Tip:** If after a translation was performed for the period, you have posted some new transactions to the actual ledger in this period, you have to perform the translation one more time; subsequent translations for the same period will adjust the account balance if the account balance has changed.

    If you have used the wrong currency rate in the translation, change the rate to the correct one and redo the translation.

    The *EUROTRANS* reporting ledger now contains account balances translated to *EUR*, so that you can use it for preparing financial statements and other reports in the *EUR* currency for the *12-2025* period.


## Step 3: Reviewing the Balances of the Reporting Ledger {#section_lb1_jjv_vxb .section}

To review the balances of the *EUROTRANS* reporting ledger, do the following:

1.  Open the [Account Summary](GL_40_10_00.md) \(GL401000\) form.
2.  In the Selection area, specify the following settings:
    -   **Company/Branch**: *HEADOFFICE - SweetLife Head Office and Wholesale Center* \(inserted by default\)
    -   **Ledger**: *EUROTRANS*
    -   **Financial Period**: *12-2025*
    -   **Show Currency Details**: Cleared
3.  Review the table.

    Account balances have been translated to *EUR* and recorded to the reporting ledger. The amounts in the **Ending Balance** column are the same as those in the **Translated Balance** column of the translation worksheet that you released.


## Step 4: Preparing and Releasing a Translation for January 2026 {#section_nb1_jjv_vxb .section}

To prepare a translation for the *01-2026* period, do the following:

1.  In the info area, set the business date to *1/31/2026*.
2.  Open the [Prepare Translation](CM_50_10_00.md) \(CM501000\) form.
3.  In the Selection area, specify the following settings:

    -   **Translation ID**: *EUR*
    -   **Fin. Period**: *01-2026* \(inserted automatically\)
    -   **Currency Effective Date**: *1/31/2026* \(inserted automatically\)
    -   **Description**: *Translation to EUR* \(inserted automatically\)
    **Last Fin. Period** shows the period for which the most recent translation was performed \(*12-2025*\).

    **Important:** If you have prepared a translation for a period and have not released it, you will not be able to prepare a translation for the next period until you release or delete the prepared translation on the [Translation Worksheets](CM_30_40_00.md) \(CM304000\) form.

4.  On the form toolbar, click **Create Translation**.

    The system prepares the translation and displays it on the [Translation Worksheets](CM_30_40_00.md) form. The system prepares the translation that adjusts the results of the previous translation. Notice that not all accounts were processed during this translation: The system processes only accounts with the *PTD Balance* method that have transactions in the translation period, and accounts with the *YTD Balance* method that have nonzero balances. Because the *SPOT* rate at the end of *12-2025* and at the end of *01-2026* differs, the system also translates all assets and liabilities.

    The **Transaction Debit Amount** and **Transaction Credit Amount** columns display the adjusting amounts that will be posted to the accounts in the reporting ledger. Thus, the ending balances for the accounts translated with the *YTD Balance* method and the PTD balances for accounts translated with the *PTD Balance* method become equal to the amounts in the **Translated Amount** column.

5.  On the form toolbar, click **Release**.
6.  Open the [Translation Details](CM_65_15_00.md) \(CM651500\) report form.
7.  On the **Report Parameters** tab, specify the following settings:
    -   **Financial Period**: *01-2026*
    -   **Translation Number**: *000002*
8.  On the form toolbar, click **Run Report**.
9.  Review the report. It lists the accounts whose balances were updated with the translation.

## Step 5: Reviewing the Balances of the Reporting Ledger {#section_tb1_jjv_vxb .section}

To review the balances of the reporting ledger updated by the translation, do the following:

1.  Open the [Account Summary](GL_40_10_00.md) \(GL401000\) form.
2.  In the Selection area, specify the following settings:
    -   **Company/Branch**: *HEADOFFICE - SweetLife Head Office and Wholesale Center* \(inserted by default\)
    -   **Ledger**: *EUROTRANS*
    -   **Period**: *01-2026*
    -   **Show Currency Details**: Cleared
3.  Review the form.

    The account balances were updated with the results of the translation in *01-2026*. At the end of the 2025 financial year, the system automatically transferred the net income from the YTD Net Income account to the Retained Earnings account. Therefore, the beginning balance of the *32000* \(Retained Earnings\) account is €27,682.37, and the balance of the *33000* \(Net Income\) account at the start of *01-2026* is €0.00. The ending balance of the *33000* account for the *01-2026* period was automatically calculated from the balances of the income and expense accounts, and is now –€37,588.96.


**Parent topic:**[Translating Financial Statements](../UserGuide/Multicurrency_TranslatingFinStatements_Mapref.md)

