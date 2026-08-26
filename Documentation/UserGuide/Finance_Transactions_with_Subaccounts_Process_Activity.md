# Transactions with Subaccounts: Process Activity {#_727b9fc3-40c7-459e-9ca2-70b10dce7f12 .task}

In this activity, you will learn how to create a GL batch with journal entries to the same account split by subaccount—that is, these entries have the same account but different subaccounts specified. You will also release and post the batch and review its details.

## Story {#section_ar3_mjv_vxb .section}

Suppose that in January 2026, the SweetLife Fruits &amp; Jams company paid its employees a total of $38,300.

Acting as a SweetLife accountant, you need to enter a batch for a payment in the amount of $38,300 for the *01-2026* financial period for the salaries of the employees of the SweetLife Head Office and Wholesale Center \(*HEADOFFICE*\) branch. The following amounts were paid to the company’s departments:

-   Sales: $19,500
-   Operations: $7,700
-   Finance: $8,100
-   Marketing: $3,000

In the batch, you need to record a separate entry for each department so that you can later view the expenses of each department in reports.

## Configuration Overview {#section_er3_mjv_vxb .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) form, the following accounts have been created:
    -   *10200 - Company Checking Account*
    -   *69500 - Salaries and Wages*
-   On the [Ledgers](GL_20_15_00.md) \(GL201500\) form, the *ACTUAL* ledger has been added.
-   On the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, the *SUBACCOUNT* segmented key has been created.

## Process Overview {#section_hr3_mjv_vxb .section}

In this activity, you will enter a batch directly on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, release and post the batch, and note the status of the batch at each step. Then you will review the batch’s details by using the [Account by Subaccount](GL_40_30_00.md) \(GL403000\) form.

## System Preparation {#section_jr3_mjv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Nenad Pasic by using the *pasic* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026*. For simplicity, in this activity, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
4.  As a prerequisite to the current activity, make sure you have completed [Subaccounts: Implementation Activity](../ImplementationGuide/config_Subaccounts_Implem_Activity.md) to enable the *Subaccounts* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and define the *SUBACCOUNT* segmented key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form.

## Step 1: Processing a Batch of Transactions with Subaccounts {#section_lr3_mjv_vxb .section}

To process a batch of transactions that include subaccounts, do the following:

1.  Open the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, and on the form toolbar, click **Add New Record**.
2.  In the Summary area, notice that the following settings are inserted by default:
    -   **Transaction Date**: *1/30/2026*
    -   **Post Period**: *01-2026*
3.  In the **Description** box, enter `Salary payment Jan 2026`.
4.  On the **Details** tab, click **Add Row** on the table toolbar, and specify the following settings in the row:
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Account**: *10200 - Company Checking Account*
    -   **Subaccount**: `000-000`
    -   **Credit Amount**: `38,300.00`
5.  Click **Add Row** again, and specify the following settings in the second row:
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Account**: *69500 - Salaries and Wages*
    -   **Subaccount**: `000-FIN`
    -   **Debit Amount**: `8,100.00`
6.  Click **Add Row** again, and specify the following settings in the third row:
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Account**: *69500 - Salaries and Wages*
    -   **Subaccount**: `000-MKT`
    -   **Debit Amount**: `3,000.00`
7.  Click **Add Row** again, and specify the following settings in the fourth row:
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Account**: *69500 - Salaries and Wages*
    -   **Subaccount**: `000-OPS`
    -   **Debit Amount**: `7,700.00`
8.  Click **Add Row** again, and specify the following settings in the fifth row:
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Account**: *69500 - Salaries and Wages*
    -   **Subaccount**: `000-SLS`
    -   **Debit Amount**: `19,500.00`
9.  Click **Save** on the form toolbar, and notice that the status of the batch is *On Hold*.
10. On the form toolbar, click **Remove Hold**. The batch’s status has changed to *Balanced*.
11. On the form toolbar, click **Release**.

    Note that the batch’s status has changed to *Posted*.


## Step 2: Reviewing the Account and Subaccount Balances {#section_or3_mjv_vxb .section}

To review the details of the batch, do the following:

1.  Open the [Account by Subaccount](GL_40_30_00.md) \(GL403000\) form.
2.  In the Selection area, notice that the following settings are inserted by default:
    -   **Company/Branch**: *HEADOFFICE*
    -   **Ledger**: *ACTUAL*
    -   **Period**: 01-2026
3.  In the **Account** box, select *69500 - Salaries and Wages*.
4.  In the table, notice that the balance of the *69500 - Salaries and Wages* account is split by subaccounts.

**Parent topic:**[Processing Transactions with Subaccounts](../UserGuide/Finance_Transactions_with_Subaccounts_Mapref.md)

