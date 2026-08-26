# Multicurrency Functionality: Implementation Activity {#_b6d51802-f951-44ef-8ecb-f9244ed438bf .task}

In this implementation activity, you will learn how to enable the needed feature, configure currency management preferences, and specify other settings in the system to configure the multicurrency functionality in Acumatica ERP.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company decided to enable the *Multicurrency Accounting* feature in its system after its customers from Canada and Europe requested invoices in their local currency instead of the US dollar. The company has hired an implementation consultant to configure the system to support these capabilities. The consultant has already updated the chart of accounts with the needed accounts.

Acting as the implementation consultant, you now need to perform the following actions:

-   Enable the feature
-   Review the currency management preferences
-   Review the base currency and configure the foreign currencies \(the Canadian dollar and the euro, which are assigned the *CAD* and *EUR* codes, respectively, in the system\)

## Process Overview { .section}

You will enable the needed feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form and review the base currency on the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form. You will then specify the GL accounts for the base currency on the [Currencies](../UserGuide/CM_20_20_00.md) form. On the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form, you will review the currency management preferences used in the system. Finally, you will configure two foreign currencies on the [Currencies](../UserGuide/CM_20_20_00.md) form.

## System Preparation { .section}

Before you start configuring the multicurrency functionality, launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.

## Step 1: Enabling the Needed Feature { .section}

You first need to enable the *Multicurrency Accounting* feature in the system, so that the needed forms and elements will be available. Do the following:

1.  Open the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify** to make it possible to change the set of selected features.
3.  Select the **Multicurrency Accounting** check box in the **Standard Financials** group.
4.  On the form toolbar, click **Enable** to enable the selected feature.

## Step 2: Reviewing the Base Currency { .section}

To review the base currency of the SweetLife company and its settings \(which has already been specified for the company in the *U100* dataset during the configuration of the company\), do the following:

1.  Open the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form.
2.  In the **Currency ID** box, select *USD*.
3.  In the Summary area, review the following settings:
    -   **Currency Symbol**: *$*
    -   **Decimal Precision**: *2*

        This setting specifies the number of digits after the decimal point that will be used in arithmetic operations with the base currency. The system will round the currency amounts in operations according to the specified number. \(For example, with **Decimal Precision** set to *2*, the system will round 0.678 to 0.68.\) To record the gains and losses from rounding operations, you need to specify the rounding gain and loss accounts for the base currency.

    -   **Active**: Selected

        For the base currency, the **Active** check box is always selected and unavailable.

    -   **Use for Accounting**: Selected

        For the base currency, the **Use for Accounting** check box is always selected and unavailable.


## Step 3: Specifying GL Accounts for the Base Currency { .section}

To specify the GL accounts used for the base currency \(*USD*\), do the following:

1.  While you are still on the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form with the *USD* currency selected, specify the following settings:

    -   **Realized Gain Account**: *83000 - Realized Gain/Loss Currency*
    -   **Realized Loss Account**: *83000 - Realized Gain/Loss Currency*
    -   **Rounding Gain Account**: *83100 - Rounding Gain/Loss*
    -   **Rounding Loss Account**: *83100 - Rounding Gain/Loss*
    These accounts will be used to record gains and losses resulting from rounding operations with the base currency and to accumulate realized gains and losses resulting from operations with the base currency.

2.  On the form toolbar, click **Save** to save your changes.

## Step 4: Reviewing Currency Management Preferences { .section}

To review the currency management preferences, do the following:

1.  Open the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form.
2.  In the **Setup and Numbering Settings** section, review the batch numbering sequence that will be used for multicurrency transactions.
3.  In the **Posting Settings** section, make sure that the **Automatically Post to GL on Release** check box is selected.
4.  On the form toolbar, click **Save**.

## Step 5: Activating Foreign Currencies for Use in Accounting { .section}

To activate the needed foreign currencies, *CAD* and *EUR*, to be used in accounting, do the following:

1.  Open the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form.
2.  In the **Currency ID** box of the Summary area, select *CAD*.
3.  Select the **Active** check box.
4.  Select the **Use for Accounting** check box.
5.  On the **GL Accounts** tab, specify the following settings for the Canadian dollar:

    -   **Realized Gain Account**: *42010 \(Realized Gain CAD\)*

        This account will accumulate the realized gains.

    -   **Realized Loss Account**: *82010 \(Realized Loss CAD\)*

        This account will accumulate the realized losses.

    -   **Unrealized Gain Account**: *84000 \(Unrealized Gain/Loss Currency\)*

        The account will be used for accumulating unrealized gains from AP and AR revaluations.

    -   **Unrealized Loss Account**: *84000 \(Unrealized Gain/Loss Currency\)*

        The account will be used for accumulating unrealized losses from AP and AR revaluations.

    -   **Revaluation Gain Account**: *84010 \(Cash Account Revaluation Gain/Loss CAD\)*

        This account will accumulate the gains from GL revaluations.

    -   **Revaluation Loss Account**: *84010 \(Cash Account Revaluation Gain/Loss CAD\)*

        This account will accumulate the losses from GL revaluations.

    -   **Rounding Gain Account**: *83100 \(Rounding Gain/Loss\)*

        This account will accumulate gains from rounding operations with this currency.

    -   **Rounding Loss Account**: *83100 \(Rounding Gain/Loss\)*

        This account will accumulate losses from rounding operations with this currency.

    **Tip:** All of the selected accounts have been predefined in the *U100* dataset.

6.  On the form toolbar, click **Save** to save your changes.
7.  In the **Currency ID** box of the Summary area, select *EUR*.
8.  Select the **Active** check box.
9.  Select the **Use for Accounting** check box.
10. On the **GL Accounts** tab, specify the following settings for the euro:

    -   **Realized Gain Account**: *83000 \(Realized Gain/Loss Currency\)*
    -   **Realized Loss Account**: *83000 \(Realized Gain/Loss Currency\)*
    -   **Unrealized Gain Account**: *84000 \(Unrealized Gain/Loss Currency\)*
    -   **Unrealized Loss Account**: *84000 \(Unrealized Gain/Loss Currency\)*
    -   **Revaluation Gain Account**: *83200 \(Cash Account Revaluation Gain/Loss\)*
    -   **Revaluation Loss Account**: *83200 \(Cash Account Revaluation Gain/Loss\)*
    -   **Rounding Gain Account**: *83100 \(Rounding Gain/Loss\)*
    -   **Rounding Loss Account**: *83100 \(Rounding Gain/Loss\)*
    **Tip:** All of the selected accounts have been predefined in the *U100* dataset.

11. On the form toolbar, click **Save** to save your changes.

**Parent topic:**[Multicurrency Functionality](../ImplementationGuide/config_Multicurrency_Basic_Mapref.md)

