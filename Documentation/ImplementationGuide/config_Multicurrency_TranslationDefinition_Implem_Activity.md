# Translation Definitions: Implementation Activity {#_7accd9dd-eee8-4737-bbdd-eab5b9b595d7 .task}

The following activity will walk you through the process of creating a translation definition.

## Story { .section}

Suppose that in December 2025, SweetLife Fruits &amp; Jams, which operates in the United States, became a subsidiary of a larger company that operates in Europe. Thus, the accountants of SweetLife need to prepare the company’s financial statements in the functional currency of the head company \(that is, in the euro\), so that these statements can be included in the consolidated statements of the head company.

Further suppose that SweetLife's chief accountant has decided that balances have to be translated based on the following rules:

-   Assets and liabilities should be translated by using the current exchange rate.
-   The Capital account should be translated by using the historical rate.
-   Revenues, expenses, gains, and losses should be translated by using the average exchange rate for the period that is used for translation.

Acting as a SweetLife accountant, you need to perform the needed configuration steps in the system and create a translation definition.

## Configuration Overview {#section_mfx_3jv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant.
    -   *Multicurrency Accounting*, which enables multicurrency operations in the system
-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the *27001 \(Translation Gain/Loss\)* account has been created.
-   On the [Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\) form, the *ACTUAL* ledger with the *Actual* type has been predefined.
-   On the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form, the *SPOT* rate type has been defined.

## Process Overview { .section}

In this activity, you will enable the needed feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. On the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form, you will specify translation gain and loss accounts for *USD* \(the base currency\) and *EUR* \(a foreign currency\). On the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form, you will define the rate types to be used in a translation definition, and create currency rates for *EUR* on the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form. On the [Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\) form, you will create a ledger of the *Reporting* type to hold the results of translations. Finally, on the [Translation Definition](../UserGuide/CM_20_30_00.md) \(CM203000\) form, you will create a translation definition that will later be used for translating account balances.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
3.  Make sure that the multicurrency accounting functionality has been configured as described in [Multicurrency Functionality: Implementation Activity](config_Multicurrency_Basic_Implem_Activity.md) and [Configuration of Rate Types and Rates: To Configure Rates](config_Multicurrency_Configuring_Rates_Activity1.md).

## Step 1: Enabling the Needed Feature { .section}

To enable the *Translation of Financial Statements* feature, do the following:

1.  Open the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify** to make it possible to change the set of selected features.
3.  In the **Advanced Financials** group of features, select the **Translation of Financial Statements** check box.
4.  On the form toolbar, click **Enable** to enable the selected feature.

## Step 2: Defining Currency Rate Types { .section}

To define the currency rate types for translations, do the following:

1.  Open the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form.
2.  On the form toolbar, click **Add Row** and specify the following settings for the added row:

    -   **Rate Type ID**: `AVG`
    -   **Description**: `Monthly Average Rate`
    This currency rate type will keep the average rates calculated for the particular currencies for each month. This rate type will be used for translating the balances of income, expenses, and retained earnings.

3.  On the form toolbar, click **Save** to save your changes.
4.  Click **Add Row** and specify the following settings for another row:

    -   **Rate Type ID**: `HIST`
    -   **Description**: `Historical Rate`
    This currency rate type will keep the historical rates to be used for translating the balance of the Capital account.

5.  On the form toolbar, click **Save** to save your changes.

## Step 3: Specifying Translation Gain and Loss Accounts for the Base Currency { .section}

To specify the translation gain and loss accounts for *USD*, which is the base currency, do the following:

1.  Open the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form.
2.  In the **Currency ID** box, select *USD*.
3.  On the **GL Accounts** tab, specify the following settings:
    -   **Translation Gain Account**: *27001 \(Translation Gain/Loss\)*
    -   **Translation Loss Account**: *27001 \(Translation Gain/Loss\)*
4.  On the form toolbar, click **Save** to save your changes.

## Step 4: Specifying Translation Gain and Loss Accounts for a Foreign Currency { .section}

To specify the translation gain and loss accounts for the *EUR* currency \(which you configured in [Multicurrency Functionality: Implementation Activity](config_Multicurrency_Basic_Implem_Activity.md)\), do the following:

1.  While you are still on the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form, in the **Currency ID** box, select *EUR*.
2.  On the **GL Accounts** tab, specify the following settings:
    -   **Translation Gain Account**: *27001 \(Translation Gain/Loss\)*
    -   **Translation Loss Account**: *27001 \(Translation Gain/Loss\)*
3.  On the form toolbar, click **Save** to save your changes.

## Step 5: Specifying Currency Rates { .section}

To specify the currency rates for the translation definition, do the following:

1.  Open the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form.
2.  In the **To Currency** box, select *EUR*.

    To be able to perform the translation, you need to define the currency rates from the base currency \(*USD*\) to the reporting currency \(*EUR*\) that will be effective on the date of translation.

    **Tip:** Even if you had the *EUR*-to-*USD* rates of the needed rate types effective on the date of translation, the system would not use the reciprocal *EUR*-to-*USD* rate for performing translations from *USD* to *EUR*. You always have to define the currency rates from the base currency to reporting currency; otherwise, the translation will not be performed.

3.  In the **Effective Date** box, select *12/31/2025*.
4.  On the **Currency Rate Entry** tab, click **Add Row** on the table toolbar, and in the added row, specify the following settings:

    -   **From Currency**: *USD*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *12/31/2025*
    -   **Currency Rate**: `0.8820`
    -   **Mult./Div.**: *Multiply*
    This rate is the *SPOT* rate on the date of translation for *12-2025*.

5.  Click **Add Row**, and specify the following settings for the added row:

    -   **From Currency**: *USD*
    -   **Currency Rate Type**: *AVG*
    -   **Currency Effective Date**: *12/31/2025*
    -   **Currency Rate**: `0.9000`
    -   **Mult./Div.**: *Multiply*
    This rate is the monthly average rate calculated for the *12-2025* financial period.

6.  Click **Add Row**, and specify the following settings for the added row:

    -   **From Currency**: *USD*
    -   **Currency Rate Type**: *HIST*
    -   **Currency Effective Date**: *12/5/2025*
    -   **Currency Rate**: `0.9025`
    -   **Mult./Div.**: *Multiply*
    This rate is the historical rate on the date when SweetLife became a subsidiary of the European company.

7.  On the form toolbar, click **Save** to save your changes.
8.  On the **Effective Currency Rates** tab, review the rates. The created rates will be used for the translation of account balances in *12-2025*.
9.  In the **Effective Date** box, specify *1/31/2026*.
10. On the **Currency Rate Entry** tab, click **Add Row**, and in the added row, specify the following settings:

    -   **From Currency**: *USD*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *1/31/2026*
    -   **Currency Rate**: `0.9077`
    -   **Mult./Div.**: *Multiply*
    This rate is the *SPOT* rate on the date of translation for *01-2026*.

11. Click **Add Row**, and specify the following settings for the added row:

    -   **From Currency**: *USD*
    -   **Currency Rate Type**: *AVG*
    -   **Currency Effective Date**: *1/31/2026*
    -   **Currency Rate**: `0.9011`
    -   **Mult./Div.**: *Multiply*
    This rate is the monthly average rate calculated for the *01-2026* financial period.

12. On the form toolbar, click **Save** to save your changes.
13. On the **Effective Currency Rates** tab, review the rates. The created rates will be used for the translation of account balances in *01-2026*.

## Step 6: Creating a Reporting Ledger { .section}

To create a reporting ledger to keep the results of translations, do the following:

1.  Open the [Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\) form.
2.  On the form toolbar, click **Add New Record**, and in the Summary area, specify the following settings:
    -   **Ledger ID**: `EUROTRANS`
    -   **Description**: `Reporting ledger for translations to EUR`
    -   **Type**: *Reporting*
    -   **Currency**: *EUR*

        This is the currency to be used in the ledger. You are specifying *EUR* because you are going to use this ledger for keeping the result of translating account balances to *EUR*.

3.  On the **Companies** tab, click **Add Row** on the table toolbar, and select *SWEETLIFE* in the **Company** column.
4.  On the form toolbar, click **Save** to save your changes.

The created reporting ledger will be used for holding the results of the translations. Now you need to configure the translation definition, which is the set of rules used for the translation.

## Step 7: Configuring the Translation Definition { .section}

To configure the translation definition, do the following:

1.  Open the [Translation Definition](../UserGuide/CM_20_30_00.md) \(CM203000\) form.
2.  In the Summary area, specify the following settings:
    -   **Translation ID**: `EUR`
    -   **Source Ledger ID**: *ACTUAL*

        The system copies the data to be translated from this ledger.

    -   **Destination Ledger ID**: *EUROTRANS*

        The results of the translation will be stored in this ledger.

    -   **Branch**: *HEADOFFICE - SweetLife Head Office and Wholesale Center* \(inserted automatically\)
    -   **Description**: `Translation to EUR`
    -   **Active**: Selected
3.  On the toolbar of the **Translation Rules** table, click **Add Row**, and in the added row, specify the following settings:

    -   **Account From**: *10100*
    -   **Account To**: *27001*
    -   **Translation Method**: *YTD Balance*
    -   **Rate Type**: *SPOT*
    The system will use the *SPOT* rate and the year-to-date \(YTD\) method \(that is, *YTD Balance*\) for translating assets and liabilities. When this method is selected, to get the translated balance of each of the specified accounts \(assets and liabilities\), the system converts the account balances at the end of the translation period by using the exchange rate of the selected type that is effective on the translation date.

4.  Click **Add Row**, and specify the following settings for the added row:

    -   **Account From**: *30000*
    -   **Account To**: *30100*
    -   **Translation Method**: *YTD Balance*
    -   **Rate Type**: *HIST*
    The system will use the historical rate and the year-to-date method \(that is, *YTD Balance*\) for translating the Capital account.

5.  Click **Add Row**, and specify the following settings for the added row:

    -   **Account From**: *32000*
    -   **Account To**: *32000*
    -   **Translation Method**: *PTD Balance*
    -   **Rate Type**: *AVG*
    The system will use the monthly average rate and the period-to-date \(PTD\) method \(that is, *PTD Balance*\) for translating the Retained Earnings account. When this method is selected, to get the translated period-to-date balance of each of the specified accounts \(generally income and expenses\), the system converts the PTD balance for the translation period by using the exchange rate of the selected type that is effective on the translation date. As a result, the account balance in the reporting ledger is the total of the translated PTD balances for every period of the financial year.

6.  Click **Add Row**, and specify the following settings for the added row:

    -   **Account From**: *40000*
    -   **Account To**: *90000*
    -   **Translation Method**: *PTD Balance*
    -   **Rate Type**: *AVG*
    The system will use the monthly average rate and the period-to-date method \(that is, *PTD Balance*\) for translating income and expense accounts.

    **Tip:** The YTD Net Income account is not included in the translation definition, because its balance is calculated based on the translated balances of income and expense accounts.

7.  On the form toolbar, click **Save** to save the translation definition.

**Parent topic:**[Currency Translation Definitions](../ImplementationGuide/config_Multicurrency_TranslationDefinition_Mapref.md)

