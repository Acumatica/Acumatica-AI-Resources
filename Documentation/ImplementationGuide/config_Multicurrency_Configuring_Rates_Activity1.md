# Configuration of Rate Types and Rates: To Configure Rates {#_00d85958-d6ad-4d36-90bc-bf749c6f7213 .task}

In this implementation activity, you will learn how to manually create rate types and exchange rates of the SPOT type that will be effective on different dates.

## Story { .section}

Suppose that the initial configuration of the multicurrency functionality has been completed, and the implementation consultant has to configure exchange rates for the currencies that you have set up in the system in [Multicurrency Functionality: Implementation Activity](config_Multicurrency_Basic_Implem_Activity.md)—the Canadian dollar \(*CAD*\) and the euro \(*EUR*\). The consultant has decided to manually create these rates.

Acting as the implementation consultant, you will manually create the exchange rates for the *CAD* and *EUR* currencies.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant
    -   *Multicurrency Accounting*, which enables multicurrency operations in the system
-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form, the *SPOT* rate type has been defined.

## Process Overview { .section}

Before beginning the creation of rates, you will review the *SPOT* rate on the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(СM201000\) form and the default rate types on the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form. You will then create rate types effective starting on different dates for the *CAD* currency on the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form. You will then run a report on the [Currency Rate History by Date](../UserGuide/CM_65_10_00.md) \(CM651000\) form to review the historical rates of *CAD* for a particular range of dates. On the [Currency Rates](../UserGuide/CM_30_10_00.md) form, you will create rate types effective starting on different dates for the *EUR* currency and will then review the EUR historical rates by running the [Currency Rate History by Date](../UserGuide/CM_65_10_00.md) report.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  Make sure that you have specified the settings of the base currency \(*USD*\) and the foreign currencies \(*CAD* and *EUR*\) on the [Currencies](../UserGuide/CM_20_20_00.md) \(AP101000\) form, as described in [Multicurrency Functionality: Implementation Activity](config_Multicurrency_Basic_Implem_Activity.md).

## Step 1: Reviewing the *SPOT* Rate Type and Default Rate Types { .section}

To review the *SPOT* rate type \(which is automatically created by the system\) and the default rate types, do the following:

1.  Open the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form.
2.  Review the *SPOT* rate type.

    This rate type, which is the only one currently defined in the system, was automatically created when the system created the base currency.

3.  Open the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form.
4.  Review the settings in the **Default Rate Types** section.

    Notice that the *SPOT* rate type is automatically specified as the default rate type for the following areas of the system:

    -   General ledger \(**GL Rate Type**\): This is the currency rate type that is used in GL transactions by default.
    -   Cash management \(**CA Rate Type**\): This is the currency rate type that is used in cash entries and funds transfers if no rate type is associated with the selected cash account.
    -   Accounts receivable \(**AR Rate Type**\): This is the currency rate type that is used in AR documents if no rate type is associated with the selected customer.
    -   Accounts payable \(**AP Rate Type**\): This is the currency rate type that is used in AP documents if no rate type is associated with the selected vendor.
    -   Project management \(**PM Rate Type**\): This is the currency rate type that is used in project documents if no rate type is associated with the selected customer.

## Step 2: Creating Currency Rates for CAD { .section}

To create currency rates for *CAD*, do the following:

1.  Open the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form.
2.  In the **To Currency** box, select *USD*.

    This is the currency to which the conversion with the specified exchange rate should be performed.

3.  In the **Effective Date** box, enter *1/1/2026*.

    **Attention:** In the process activities of this guide, you will work starting from the *01-2026* period.

4.  On the **Currency Rate Entry** tab, click **Add Row** on the table toolbar, and specify the following settings for the added row:

    -   **From Currency**: *CAD*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *1/1/2026*
    -   **Currency Rate**: `1.2673`
    -   **Mult./Div.**: *Divide*
    The **From Currency** box specifies which currency the conversion should be performed from by using the **Currency Rate** and the operation selected in the **Mult./Div.** box. That is, the conversion rule from *CAD* to *USD* is the following: `1 CAD = 1 / 1.2673 USD`. Also, for each created currency rate, the system calculates the **Rate Reciprocal**, which is the inverted **Currency Rate**. \(This column is provided for informational purposes only; the rate will not be used by the system.\)

5.  On the form toolbar, click **Save** to save your changes.

    The created rate is effective starting on January 1, 2026, and does not have an expiration date. The system will use this rate for currency conversion in any document with a date of January 1, 2026, or later.

    **Tip:** In the current system settings, the rates of the *SPOT* type have **Days Effective** set to *0* on the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form. This means that the rates of this type are used in all the documents with a date on or after the currency effective date. If you specify a nonzero number, the rates of this type will be effective for the specified number of days.

6.  In the **Effective Date** box, specify *1/15/2026*.
7.  On the **Currency Rate Entry** tab, add a row with the following settings:
    -   **From Currency**: *CAD*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *1/15/2026*
    -   **Currency Rate**: `1.2752`
    -   **Mult./Div.**: *Divide*
8.  On the form toolbar, click **Save** to save your changes.

    This exchange rate will be used in any transaction with a transaction date of January 15, 2026, or later. The previously created rate becomes a historical rate and will be used as the effective rate in any transaction with a date from January 1, 2026 through January 14, 2026.

9.  In the **Effective Date** box, specify *1/30/2026*.
10. On the **Currency Rate Entry** tab, add a row with the following settings:
    -   **From Currency**: *CAD*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *1/30/2026*
    -   **Currency Rate**: `1.2776`
    -   **Mult./Div.**: *Divide*
11. On the form toolbar, click **Save** to save your changes.

    The specified rate is now effective starting on January 30, 2026. The previously specified rate will be used in any transaction with a date from January 15, 2026 through January 29, 2026.

12. In the **Effective Date** box, specify *2/10/2026*.
13. On the **Currency Rate Entry** tab, add a row with the following settings:
    -   **From Currency**: *CAD*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *2/10/2026*
    -   **Currency Rate**: `1.2697`
    -   **Mult./Div.**: *Divide*
14. On the form toolbar, click **Save** to save the row you have entered.

    The specified rate is now effective starting on February 10, 2026. The previously specified rate will be used in any transaction with a date from January 30, 2026 through February 9, 2026.

15. Review the **Effective Currency Rates** tab.

    The table displays the currency rate specified for the foreign currency that is effective on the date specified in the **Effective Date** box.


## Step 3: Reviewing the Historical Rates of CAD { .section}

To review the list of all *CAD* rates that are or have been effective in a particular date range, do the following:

1.  Open the [Currency Rate History by Date](../UserGuide/CM_65_10_00.md) \(CM651000\) form.
2.  On the **Report Parameters** tab, specify the following parameters:
    -   **From Date**: *1/1/2026*
    -   **To Date**: *2/28/2026*
    -   **Currency**: *CAD*
3.  On the form toolbar, click **Run Report**.
4.  Review the generated report, which displays the exchange rates defined for conversion from *CAD* to *USD* that are effective in the specified date range.

## Step 4: Creating Currency Rates for EUR { .section}

To create currency rates for *EUR*, do the following:

1.  Open the [Currency Rates](../UserGuide/CM_30_10_00.md) \(CM301000\) form.
2.  In the **To Currency** box, select *USD*.
3.  In the **Effective Date** box, enter *1/1/2026*.
4.  On the **Currency Rate Entry** tab, click **Add Row** on the table toolbar, and specify the following settings for the added row:

    -   **From Currency**: *EUR*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *1/1/2026*
    -   **Currency Rate**: `0.8792`
    -   **Mult./Div.**: *Divide*
    The **From Currency** box specifies which currency the conversion should be performed from by using the **Currency Rate** and the operation selected in the **Mult./Div.** box. That is, the conversion rule from *EUR* to *USD* is the following: `1 EUR = 1 / 0.8792 USD`.

5.  On the form toolbar, click **Save** to save your changes.
6.  In the **Effective Date** box, specify *1/15/2026*.
7.  On the **Currency Rate Entry** tab, add a row with the following settings:
    -   **From Currency**: *EUR*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *1/15/2026*
    -   **Currency Rate**: `0.8760`
    -   **Mult./Div.**: *Divide*
8.  On the form toolbar, click **Save** to save your changes.
9.  In the **Effective Date** box, specify *1/30/2026*.
10. On the **Currency Rate Entry** tab, add a row with the following settings:
    -   **From Currency**: *EUR*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *1/30/2026*
    -   **Currency Rate**: `0.8967`
    -   **Mult./Div.**: *Divide*
11. On the form toolbar, click **Save** to save your changes.
12. In the **Effective Date** box, specify *2/10/2026*.
13. On the **Currency Rate Entry** tab, add a row with the following settings:
    -   **From Currency**: *EUR*
    -   **Currency Rate Type**: *SPOT*
    -   **Currency Effective Date**: *2/10/2026*
    -   **Currency Rate**: `0.8763`
    -   **Mult./Div.**: *Divide*
14. On the form toolbar, click **Save** to save your changes.

## Step 5: Reviewing the Historical Rates of EUR { .section}

To review the list of all *EUR* rates that are or have been effective in a particular date range, do the following:

1.  Open the [Currency Rate History by Date](../UserGuide/CM_65_10_00.md) \(CM651000\) form.
2.  On the **Report Parameters** tab, specify the following parameters:
    -   **From Date**: *1/1/2026*
    -   **To Date**: *2/28/2026*
    -   **Currency**: *EUR*
3.  On the form toolbar, click **Run Report**.
4.  Review the generated report, which displays the exchange rates defined for conversion from *EUR* to *USD* that are effective in the specified date range.

**Parent topic:**[Currency Rate Types and Current Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Mapref.md)

