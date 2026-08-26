# Multicurrency Cash Accounts: To Process a GL Transaction {#_3007d6de-dffa-4786-87aa-3da129bfc5a7 .task}

The following activity will walk you through the processing of a GL transaction in a foreign currency.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams has just opened a bank account in Canadian dollars and needs to pay a monthly fee of C$9.00 to the bank. Acting as a SweetLife accountant, you need to create a GL transaction with the bank fee, post the transaction, and review the account balance.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant
    -   *Multicurrency Accounting*, which enables multicurrency operations in the system
-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\) form, the *ACTUAL* ledger with the *Actual* type has been predefined.
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the *61100 \(Bank Service Charges\)* account has been created.
-   On the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form, the *SPOT* rate type has been predefined.

## Process Overview { .section}

You will create and post a GL transaction in *CAD* on the [Journal Transactions](../UserGuide/GL_30_10_00.md) \(GL301000\) form. On the [Account Summary](../UserGuide/GL_40_10_00.md) \(GL401000\) form, you will review the account balances for the *01-2026* period and then view the details of the *10215 \(Checking Account CAD\)* account on the [Account Details](../UserGuide/GL_40_40_00.md) \(GL404000\) form to review the ending balance of the account.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button, and select *1/30/2026* from the calendar. For simplicity, in this activity, you will create and process all documents in the system during this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  Make sure that the multicurrency accounting functionality has been configured as described in [Multicurrency Functionality: Implementation Activity](config_Multicurrency_Basic_Implem_Activity.md) and [Configuration of Rate Types and Rates: To Configure Rates](config_Multicurrency_Configuring_Rates_Activity1.md).
5.  Make sure that on the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form, the *10215WH* cash account denominated in the *CAD* currency and associated with the *10215 \(Checking Account CAD\)* GL account has been defined, as described in [Multicurrency Cash Accounts: To Configure an Account](config_Multicurrency_CashAccount_Implem_Activity.md).

## Step 1: Creating a GL Transaction { .section}

To create a GL transaction in *CAD*, do the following:

1.  Open the [Journal Transactions](../UserGuide/GL_30_10_00.md) \(GL301000\) form.
2.  On the form toolbar, click **Add New Record** and specify the following settings in the Summary area:

    -   **Transaction Date**: *1/30/2026* \(inserted automatically\)
    -   **Post Period**: *01-2026* \(inserted automatically based on the date\)
    -   **Currency**: *CAD*

        You are overriding the currency to *CAD* to create the transaction in Canadian dollars; otherwise, the system creates the transaction in the base currency \(*USD*\), which is used by default in journal transactions posted to the *ACTUAL* ledger.

    -   **Description**: `Bank fee (January 2026)`
    Notice that the Exchange Rate box \(located to the right of the **Currency** box\) displays the currency exchange rate that will be used in the created transaction.

3.  On the **Details** tab, click **Add Row** on the tale toolbar, and specify the following settings for the added row:
    -   **Account**: *61100 \(Bank Service Charges\)*
    -   **Debit Amount**: `9.00`
4.  Add another row, and specify the following settings:
    -   **Account**: *10215 \(Checking Account CAD\)*

        This is the account that you created on the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form \(and then associated with the *10215WH* cash account\) in [Multicurrency Cash Accounts: To Configure an Account](config_Multicurrency_CashAccount_Implem_Activity.md).

    -   **Credit Amount**: `9.00`
5.  In the Summary area, click the Exchange Rate box \(located to the right of the **Currency** box\) and review the **Rate Selection** dialog box, which opens.

    This dialog box shows the settings of the currency rate that is used in this transaction. The currency rate type \(*SPOT*\) is defined by the **GL Rate Type** setting on the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form. The **Effective Date** is the date on which the currency rate becomes effective.

    **Tip:** If needed, in the **Rate Selection** dialog box, you can override the currency rate for a particular transaction.

6.  Click **OK** to close the dialog box.
7.  Click the **View Base** button, and review the transaction amounts in the base currency.

    The system recalculates the transaction amounts to *USD* as follows by using the exchange rate that is effective on the transaction date: C$9.00 \* 0.7827176.

    **Tip:** You cannot change the amounts in the base currency directly. Instead, you need to switch to the transaction currency and edit the amounts in the transaction currency; the amounts in the base currency will be recalculated accordingly.

8.  On the form toolbar, click **Remove Hold**. The batch is assigned the *Balanced* status.
9.  On the form toolbar, click **Release** to release the GL transaction.

## Step 2: Reviewing the Account Balances { .section}

To review the balances of the *10215* cash account, do the following:

1.  Open the [Account Summary](../UserGuide/GL_40_10_00.md) \(GL401000\) form.
2.  In the Summary area, specify the following settings:
    -   **Period**: *01-2026*
    -   **Show Currency Details**: Selected
3.  Review the account balances.

    The **Ending Balance** column shows the ending balance of each account at the end of the selected period in the base currency. The **Curr. Ending Balance** column shows the ending balance of the account at the end of the selected period in the currency of denomination, which is shown in the **Currency ID** column. Similarly, the **Beg. Balance**, **Debit Total**, and **Credit Total** columns show the amounts in the base currency, while the **Curr. Beg. Balance**, **Curr. Debit Total**, and **Curr. Credit Total** columns are in the account currency.

4.  In the table, click the row with the *10215 \(Checking Account CAD\)* account, and on the form toolbar, click **Account Details**.
5.  On the [Account Details](../UserGuide/GL_40_40_00.md) \(GL404000\) form, which the system has opened, review the account details.

    The table shows the list of transactions processed in the selected period \(currently there is only one journal entry\). The entry amounts are shown in the base and foreign currency, because the **Show Currency Details** check box is selected in the Selection area of the form. The **Ending Balance** box in the Summary area shows the account balance at the end of the period in the base currency. The **Curr. Ending Balance** column shows the ending balance in the foreign currency.


**Parent topic:**[Configuring Cash Accounts in Foreign Currencies](../ImplementationGuide/config_Multicurrency_CashAccount_Mapref.md)

