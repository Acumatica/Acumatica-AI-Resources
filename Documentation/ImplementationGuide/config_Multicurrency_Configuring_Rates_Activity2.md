# Configuration of Rate Types and Rates: To Set Up Refreshing of Rates {#_aae84e9e-4b5c-4b8a-9c51-a3cd040eb7d1 .task}

In this implementation activity, you will learn how to set up the refreshing of currency rates by using the [Open Exchange Rates API](https://openexchangerates.org) online service, and then test the refreshing of currency rates.

## Story { .section}

Suppose that the initial configuration of the multicurrency functionality has been completed, the implementation consultant has to update exchange rates for one of the currencies that you set up in the system in [Multicurrency Functionality: Implementation Activity](config_Multicurrency_Basic_Implem_Activity.md)—the euro \(*EUR*\). The consultant has decided to use the [Open Exchange Rates API](https://openexchangerates.org) online service to refresh the rates for the euro.

Acting as the implementation consultant, you will automatically refresh the exchange rates for the *EUR* currency.

## Configuration Overview { .section}

For the purposes of this activity, the following features have been enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form:

-   *Standard Financials*, which provides the standard financial functionality
-   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
-   *Multicompany Support*, which supports multiple companies within one tenant
-   *Multicurrency Accounting*, which enables multicurrency operations in the system

On the [Currencies](../UserGuide/CM_20_20_00.md) \(AP101000\) form, the settings of the base currency \(*USD*\) and a foreign currency \(*EUR*\) have been defined.

## Process Overview { .section}

On the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form, you will enable the refreshing of currency rates for the *SPOT* rate type. Then on the [Refresh Currency Rates](../UserGuide/CM_50_70_00.md) \(CM507000\) form, you will run the process of refreshing currency rates for *EUR* for today's effective date. Finally, you will run a report on the [Currency Rate History by Date](../UserGuide/CM_65_10_00.md) \(CM651000\) form to review the historical rates for a particular range of dates.

## System Preparation { .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. To sign in as an implementation consultant, use the *gibbs* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Enabling the Refresh of Currency Rates for the *SPOT* Rate Type { .section}

To enable the functionality of refreshing currency rates for the *SPOT* rate type, do the following:

1.  Open the [Currency Rate Types](../UserGuide/CM_20_10_00.md) \(CM201000\) form.
2.  For the only rate type in the table \(*SPOT*\), select the check box in the **Refresh Online** column.
3.  On the form toolbar, click **Save** to save your changes.

## Step 2: Refreshing the Currency Rates { .section}

To refresh currency rates for the *EUR* currency, do the following:

1.  Open the [Refresh Currency Rates](../UserGuide/CM_50_70_00.md) \(CM507000\) form.
2.  In the Selection area, specify the following settings:
    -   **To Currency**: *USD*
    -   **Currency Effective Date**: today's date \(inserted by default\)
    -   **Rate Type**: *SPOT*
3.  In the table, select the Included check box for the row with the *EUR* currency.
4.  On the form toolbar, click **Process**. In the **Processing** dialog box, which opens, click **Close**.

## Step 3: Reviewing Historical Rates { .section}

To review the list of all *EUR* rates that are or have been effective in a particular date range, do the following:

1.  Open the [Currency Rate History by Date](../UserGuide/CM_65_10_00.md) \(CM651000\) form.
2.  On the **Report Parameters** tab, specify the following parameters:
    -   **From Date**: *1/1/2025*
    -   **To Date**: *2/28/2025*
    -   **Currency**: *EUR*
3.  On the form toolbar, click **Run Report**.
4.  Review the generated report, which displays the exchange rates defined for conversion from *EUR* to *USD* that are effective in the specified date range.

**Parent topic:**[Currency Rate Types and Current Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Mapref.md)

