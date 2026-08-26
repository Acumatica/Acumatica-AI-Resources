# Revaluation of AR Documents: Process Activity {#_4e811ccf-a3de-4a19-b3a3-0ab1a5d3792c .task}

The following activity will walk you through the process of performing the revaluation of open AR documents.

## Story {#section_xkz_3jv_vxb .section}

Suppose that for reporting purposes, the accounting department of SweetLife Fruits &amp; Jams has to revalue the open balances of customers several times within each financial period. Acting as a SweetLife accountant, you need to revalue open AR documents and post the generated GL transactions for the *01-2026* financial period.

## Configuration Overview {#section_mfx_3jv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant.
    -   *Multicurrency Accounting*, which enables multicurrency operations in the system
-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *11500 \(AR Provisioning\)*, *11000 \(Accounts Receivable\)*, and *84000 \(Unrealized Gain/Loss Currency\)* accounts have been created.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *EASYDINER* and *MINTSTORE* customers have been predefined.
-   On the [Currency Rate Types](CM_20_10_00.md) \(CM201000\) form, the *SPOT* rate type has been defined.

## Process Overview {#section_clz_3jv_vxb .section}

In this activity, on the [Currency Management Preferences](CM_10_10_00.md) \(CM101000\) form, you will specify currency management settings that are needed for the revaluation, and on the [Currencies](CM_20_20_00.md) \(CM202000\) form, you will specify the AR Provisioning account for *CAD*. You will then run the [Trial Balance Summary](GL_63_20_00.md) \(GL632000\) report to review the Accounts Receivable balance before the revaluation. On the [Revalue AR Accounts](CM_50_50_00.md) \(CM505000\) form, you will perform revaluation first of open AR documents in the *EUR* currency, and then of open AR documents in the *CAD* currency.

After the revaluation, you will review the balance of the Accounts Receivable and AR Provisioning accounts on the [Account Summary](GL_40_10_00.md)\(GL401000\) form, and then review revaluation batches on the [Account Details](GL_40_40_00.md) \(GL404000\) form.

## System Preparation {#section_flz_3jv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
3.  Make sure that the multicurrency accounting functionality has been configured as described in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md) and [Configuration of Rate Types and Rates: To Configure Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Activity1.md).
4.  Make sure that you have configured an account as described in [Multicurrency Cash Accounts: To Configure an Account](../ImplementationGuide/config_Multicurrency_CashAccount_Implem_Activity.md).
5.  Make sure that you have processed AR documents as described in [AR Invoices in Foreign Currencies: Process Activity](Multicurrency_ARInvoicesFC_Process_Activity.md), [Credit Memos in Foreign Currencies: Process Activity](Multicurrency_CreditMemo_Process_Activity.md), [Multicurrency Payment of Invoices: To Pay a Foreign Currency Invoice by Using the Base Currency](Multicurrency_ARInvoiceByBaseCurrency_Process_Activity.md), and [Multicurrency Payment of Invoices: To Pay a Foreign Currency Invoice by Using Another Currency](Multicurrency_ARInvoiceByForeignCurrency_Process_Activity.md).

## Step 1: Specifying the Settings Needed for the Revaluation {#section_ilz_3jv_vxb .section}

To specify the settings needed for the revaluation, do the following:

1.  Open the [Currency Management Preferences](CM_10_10_00.md) \(CM101000\) form.
2.  On the form, specify the following settings:
    -   **AR Revaluation Rate Type** \(**Default Rate Types** section\): *SPOT*

        This setting specifies the rate type that the system will use for the revaluation of customer balances.

    -   **Automatically Post to GL on Release** \(**Posting Settings** section\): Selected
3.  On the form toolbar, click **Save** to save your changes.
4.  Open the [Currencies](CM_20_20_00.md) \(CM202000\) form.
5.  In the **Currency ID** box, select *CAD*.

    You defined this currency in the system in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md).

6.  In the **AR Provisioning Account** box on the **GL Accounts** tab, select *11500 \(AR Provisioning\)*.
7.  On the form toolbar, click **Save** to save your changes.

## Step 2: Running the Trial Balance Summary Report {#section_llz_3jv_vxb .section}

To review the balance of the *11000 \(Accounts Receivable\)* account before the revaluation, do the following:

1.  Open the [Trial Balance Summary](GL_63_20_00.md) \(GL632000\) form.
2.  On the **Report Parameters** tab, specify the following parameters:
    -   **Company/Branch**: *HEADOFFICE - SweetLife Head Office and Wholesale Center* \(inserted automatically\)
    -   **Ledger**: *ACTUAL*
    -   **From Period**: *01-2026*
    -   **To Period**: *01-2026*
    -   **Suppress Zero Balances**: Selected
3.  On the form toolbar, click **Run Report**.
4.  In the generated report, review the balance of the *11000 \(Accounts Receivable\)* account before the revaluation.

## Step 3: Performing Revaluation of AR Documents in EUR {#section_nlz_3jv_vxb .section}

To perform revaluation of open AR documents in the *EUR* currency, do the following:

1.  Open the [Revalue AR Accounts](CM_50_50_00.md) \(CM505000\) form.
2.  In the Selection area, specify the following settings:

    -   **Company/Branch**: *HEADOFFICE - SweetLife Head Office and Wholesale Center* \(inserted by default\)
    -   **Fin. Period**: *01-2026*
    -   **Currency Effective Date**: *1/31/2026*
    -   **Currency**: *EUR*
    -   **Description**: `AR Revaluation 01-2026 EUR`
    The table in the bottom part of the form shows for which customer and which account there are open balances in the specified currency at the end of the selected period.

3.  In the table, select the unlabeled check box for the only row to select *EASYDINER \(EasyDiner Co.\)* for revaluation.

    The total amount of unrealized loss posted by the records selected in the table is shown in the **Revaluation Total** box in the Selection area of the form.

4.  On the form toolbar, click **Revalue** to perform the revaluation.

    The system revalues the balances of the open documents of the *EASYDINER* customer based on the currency rate of the *SPOT* type effective on the date of revaluation. Then the system generates and posts the revaluation transaction, and opens it on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

5.  On this form, review the transaction that was generated on revaluation in the base currency. Notice that the **Auto Reversing** check box in the Summary area is selected; the generated batch is auto-reversing, because revaluations are performed for reporting purposes. At the start of the next reporting period, the batch will be reversed automatically.

    When the revaluation transaction was automatically posted, the following actions were performed in the system:

    -   The AR account \(*11000*\) was credited in the amount of unrealized loss \($0.82\) to revalue the account balance.
    -   The Unrealized Gain/Loss Currency account specified for the *EUR* currency \(*84000*\), which you specified when you defined the *EUR* currency in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md)\) was debited in the amount of the unrealized loss \($0.82\) to record the revaluation.

## Step 4: Performing Revaluation of AR Documents in CAD {#section_slz_3jv_vxb .section}

To perform revaluation of open AR documents in the *CAD* currency, do the following:

1.  Open the [Revalue AR Accounts](CM_50_50_00.md) \(CM505000\) form.
2.  In the Selection area, specify the following settings:

    -   **Company/Branch**: *HEADOFFICE - SweetLife Head Office and Wholesale Center* \(inserted by default\)
    -   **Fin. Period**: *01-2026*
    -   **Currency Effective Date**: *1/29/2026*
    -   **Currency**: *CAD*
    -   **Description**: `AR Revaluation 01-2026 CAD`
    For the only listed customer, the columns of the table provide the following information:

    -   The **Foreign Currency Balance** column shows the outstanding balance of the customer in the foreign currency \(C$200\).
    -   The **Original Balance** column shows the outstanding balance of the customer in the base currency \($156.54\)
    -   The **Currency Rate** column shows the rate that will be used for revaluation \(1.275200\)
    -   The **Revalued Balance** column shows the resulting balance after revaluation \($156.84 = Round \(C$200 / 1.275200\)\).
    -   The **Difference** column shows the difference between the **Revalued Balance** and **Original Balance**, which is the resulting unrealized gain \(if the amount is positive\) or loss \(if the amount is negative\). Currently, there is an unrealized gain in the amount of $0.30 \($156.84 – $156.54\).
3.  In the table, select the unlabeled check box for the only row to select the *11000* AR account for revaluation.

    The total amount of the unrealized gain posted by the record selected in the table is shown in the **Revaluation Total** box in the Selection area of the form.

4.  On the form toolbar, click **Revalue** to perform the revaluation of the selected account.

    The system revalues the balances of the open documents of the *MINTSTORE* customer based on the currency rate of the *SPOT* type that was effective on the date of revaluation. Then the system generates the revaluation transaction and opens it on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

5.  On the [Journal Transactions](GL_30_10_00.md) form, review the transaction generated on revaluation in the base currency. Notice that **Auto-Reversing** check box in the Summary area is selected; the generated batch is auto-reversing, because revaluations are performed for reporting purposes. In the start of the next reporting period, the batch will be reversed automatically.

    When the revaluation batch was posted, the following actions were performed in the system:

    -   The AR Provisioning account specified for the currency of revaluation \(*11500*\) was debited in the amount of the unrealized gain \($0.30\).
    -   The Unrealized Gain/Loss Currency account \(*84000*\), which you specified when you defined the *CAD* currency in [Multicurrency Functionality: Implementation Activity](../ImplementationGuide/config_Multicurrency_Basic_Implem_Activity.md)\) was credited in the amount of the unrealized gain \($0.30\).

## Step 5: Reviewing the Balances of Accounts Receivable and AR Provisioning After the Revaluation {#section_xlz_3jv_vxb .section}

To review the balances of the Accounts Receivable and AR Provisioning accounts after the revaluation, do the following:

1.  Open the [Account Summary](GL_40_10_00.md) \(GL401000\) form.
2.  In the Selection area, specify the following settings:
    -   **Company/Branch**: *HEADOFFICE - SweetLife Head Office and Wholesale Center* \(inserted automatically\)
    -   **Ledger**: *ACTUAL*
    -   **Period**: *01-2026*
    -   **Show Currency Details**: Cleared
3.  In the table, review the ending balance of the *11000 \(Accounts Receivable\)* account.

    The AR balance is $15,994.55, because the *EUR* revaluation resulted in a realized gain and was recorded to the Accounts Receivable account. The result of the *CAD* revaluation was a realized gain \($0.30\) and was recorded to the *11500 \(AR Provisioning\)* account.

4.  In the table, click the row with the *11500 \(AR Provisioning\)* account and on the form toolbar, click **Account Details**.
5.  On the [Account Details](GL_40_40_00.md) \(GL404000\) form, which opens, specify *01-2026* to *02-2026* in the **Period Range** boxes and review the entries displayed in the table.

    The table displays the revaluation batch, as well as the corresponding reversing batch, which is automatically generated at the start of the financial period after the period of revaluation. These batches offset each other, so the balance of the account becomes $0.00, as it was before the revaluation.


**Parent topic:**[Revaluing Open AR Documents](../UserGuide/Multicurrency_RevaluationAR_Mapref.md)

