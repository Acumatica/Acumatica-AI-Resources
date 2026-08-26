# Closing a Financial Period in a Company: Process Activity {#_a073fec5-4f1c-46f1-b416-9520b3f1291d .task}

In this activity, you will learn how to close a financial period in an individual company in all subledgers and the general ledger at the same time.

## Story { .section}

Suppose that as an accountant, you need to close the *10-2025* financial period in the *2025* financial year in all the subledgers and the general ledger in the SweetLife Fruits &amp; Jams company and in the Muffins &amp; Cakes company.

## Configuration Overview {#section_otc_kjv_vxb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *MUFFINS* and *SWEETLIFE* companies have been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *MHEAD* branch of the *MUFFINS* company has been created, and the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Centralized Period Management* feature has been disabled so periods can be managed separately in each company.
-   On the [Inter-Branch Account Mapping](GL_10_10_10.md) \(GL101010\) form, the account mapping rules between the Muffins &amp; Cakes head office branch \(*MHEAD*\) and the SweetLife head office branch \(*HEADOFFICE*\) have been defined.

## Process Overview { .section}

In this activity, you will review the statuses of financial periods on the [Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form, and close the financial periods of the SweetLife and Muffins companies on the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form.

## System Preparation { .section}

Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Nenad Pasic by using the *pasic* username and the *123* password.

## Step 1: Reviewing the Statuses of Financial Periods { .section}

To review the statuses of financial periods, do the following:

1.  Open the [Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form.
2.  In the Selection area, specify the following settings:

    -   **Company**: *SWEETLIFE*
    -   **Financial Year**: *2025*
    Notice that all periods in the *2025* financial year are open.


## Step 2: Closing a Financial Period in SweetLife Fruits &amp; Jams { .section}

To close the *10-2025* financial period and the preceding periods in the SweetLife company, do the following:

1.  While you are still on the [Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form with the *SWEETLIFE* company selected, on the More menu, click **Close Periods**.
2.  On the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form that opens, select the unlabeled check box for the *10-2025* period. The check boxes for the preceding periods are automatically selected.
3.  On the form toolbar, click **Unposted Documents** to verify that no unposted documents exist for these periods.

    There are no unposted documents for the selected periods in the branches of the SweetLife company and you can proceed with closing the periods.

    **Tip:** If there are unposted documents in any of the subledgers in the selected periods, when you invoke this action, the reports for the subledgers will be displayed showing all unposted documents in each subledger. Review each of the documents in the reports and either post it or reassign to a different period. Once all documents in all the periods are posted, you can proceed to close the periods.

4.  On the form toolbar, click **Process**.

    The system displays a message that the selected range of periods will be closed in subledgers and in the general ledger. Click **OK**.

5.  In the **Processing** pop-up window, which opens, click the **Processed** tab and review the list of processed records. Click **Close**.
6.  Open the [Company Financial Calendar](GL_20_11_00.md) form.
7.  In the Summary area, specify the following settings:

    -   **Company**: *SWEETLIFE*
    -   **Financial Year**: *2025*
    The periods in the specified range have changed their status to *Closed* and the **Closed in AP**, **Closed in AR**, **Closed in IN**, and **Closed in CA** check boxes for these periods are selected.


## Step 3: Closing a Financial Year in Muffins &amp; Cakes { .section}

To close the *10- 2025* period of the 2025 financial year in the Muffins &amp; Cakes company, do the following:

1.  Open the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form.
2.  In the **Company** box, select *MUFFINS*.
3.  In the **Action** box, select *Close*.
4.  In the **To Year** box, select *2025*.
5.  Select the unlabeled check box for the *10-2025* period. The check boxes for the preceding periods are automatically selected.
6.  On the form toolbar, click **Unposted Documents** to verify that no unposted documents exist for these periods.

    **Tip:** If there are unposted documents in any of the subledgers in the selected periods, when you invoke this action, the reports for the subledgers will be displayed showing all unposted documents in each subledger. Review each of the documents in the reports and either post it or reassign to a different period. Once all documents in all the periods are posted, you can proceed to close the periods.

7.  On the form toolbar, click **Process**.

    The system displays a message that the selected range of periods will be closed in subledgers and in the general ledger. Click **OK**.

8.  In the **Processing** pop-up window, which opens, click the **Processed** tab and review the list of processed records. Click **Close**.
9.  Open the [Company Financial Calendar](GL_20_11_00.md) \(GL201100\) form.
10. In the Summary area, specify the following settings:

    -   **Company**: *MUFFINS*
    -   **Financial Year**: *2025*
    The periods in the specified range have changed their status to *Closed* and the **Closed in AP**, **Closed in AR**, **Closed in IN**, and **Closed in CA** check boxes for these periods are selected.


**Parent topic:**[Closing Financial Periods in Separate Companies](../UserGuide/Finance_ClosingPeriods_Company_Mapref.md)

