# Preparation of Dunning Letters: To Run the AR Aging Report {#_25e3800a-c3a2-4ac8-b8cb-2aed1cc511dd .task}

The following activity will walk you through the process of running the AR Aging report.

## Story {#section_lf2_hjv_vxb .section}

Suppose that the Credit Control team of SweetLife Fruits &amp; Jams starts its operation with finding out which customer accounts are overdue. The team lead runs the AR Aging report to see which invoices are still open, the balances of unpaid invoices, and how long the invoices have been outstanding.

Acting as Yona Jones, you need to run the [AR Aging](AR_63_10_00.md) \(AR631000\) report for local customers of the *DEFAULT* customer class and analyze this information with the team.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Dunning Letter Management* feature has been enabled.
-   On the [Statement Cycles](AR_20_28_00.md) \(AR202800\) form, the *EOM \(End of Month\)* statement cycle has been created.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, for customers of the *DEFAULT* customer class, the *EOM* cycle has been selected in the **Statement Cycle ID** box on the **Financial** tab.

## Process Overview {#section_of2_hjv_vxb .section}

In this activity, you will run a report on the [AR Aging](AR_63_10_00.md) \(AR631000\) form for the customers of the *DEFAULT* customer class, and review the list of past-due amounts for these customers.

## System Preparation {#section_qf2_hjv_vxb .section}

Before you begin running the AR Aging report, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Yona Jones by using the *jones* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business Date menu button, and select *1/31/2026* on the calendar.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step: Running the AR Aging Report {#section_sf2_hjv_vxb .section}

To run the [AR Aging](AR_63_10_00.md) \(AR631000\) report, do the following:

1.  Open the [AR Aging](AR_63_10_00.md) form.
2.  On the **Report Parameters** tab, specify the following settings:
    -   **Report Format**: *Summary*
    -   **Company/Branch**: *SWEETLIFE*
    -   **Customer Class**: *DEFAULT*
    -   **Age as of Date**: *1/31/2026*
3.  On the form toolbar, click **Run Report** and review the printed report form.

    On the report, notice that the *GOODFOOD* customer has past-due documents whose amount is shown in the **11 - 30 Days** aging bucket. The *COFFEESHOP* customer has a past-due document with the amount shown in the **31 - 60 Days** aging bucket, and multiple customers have past-due documents that fall within the **Over 60 Days** aging bucket. The Credit Control team will start the dunning process by preparing dunning letters for all these customers.


**Parent topic:**[Preparing Dunning Letters](../UserGuide/CreditPolicy_Preparing_Dunning_Letters_Mapref.md)

