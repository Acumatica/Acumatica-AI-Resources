# Period-End Procedures: To Perform Account Reconciliation {#_dc85a797-f513-4644-baef-354fe846281a .task}

The following activity will walk you through the process of reviewing the accounts payable balance by GL account and reconciling AP and GL accounts.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_cfp_njv_vxb .section}

Suppose that at the end of March 2025, the SweetLife Fruits &amp; Jams company needs to prepare for closing the 03-2025 financial period in the accounts payable subledger.

Acting as a SweetLife accountant, you have to review the accounts payable balance for each GL account and reconcile these balances with the general ledger. This process is required to ensure that there are no discrepancies or inconsistencies in balances. To do this, you will use two Acumatica ERP reports.

## Configuration Overview {#section_ffp_njv_vxb .section}

For the purposes of this activity, the following features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:

-   *Standard Financials*, which provides the standard financial functionality
-   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
-   *Multicompany Support*, which supports multiple companies within one tenant.

## Process Overview {#section_hfp_njv_vxb .section}

To perform the process outlined in this activity, you will run the [AP Balance by GL Account](AP_63_20_00.md) \(AP632000\) report and review it; you will then run the [Trial Balance Summary](GL_63_20_00.md) \(GL632000\) report and compare the AP balances in both reports.

## System Preparation {#section_jfp_njv_vxb .section}

To prepare the system, do the following:

1.  Launch the Acumatica ERP website, and sign in as an accountant by using the following credentials:
    -   Username: *johnson*
    -   Password: *123*
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to *3/31/2025*. If a different date is displayed, click the Business Date menu button and select *3/31/2025*. For simplicity, in this activity, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu, also on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Reviewing the Balance of the AP Account {#section_lfp_njv_vxb .section}

To review the balance of the AP account, do the following:

1.  Open the [AP Balance by GL Account](AP_63_20_00.md) \(AP632000\) form.
2.  On the **Report Parameters** tab, specify the following parameters:
    -   **Report Format**: *Account Summary*
    -   **Company/Branch**: *HEADOFFICE - SweetLife Head Office and Wholesale Center* \(inserted by default based on the selected branch\)
    -   **Financial Period**: *03-2025* \(inserted by default\)
    -   **Include Applications**: Cleared
3.  On the form toolbar, click **Run Report**.
4.  Review the generated report. Notice the amount in the **Balance** column for the *20000 - Accounts Payable* account, which is the total balance posted to the account.

## Step 2: Reviewing the Balances for the Financial Period {#section_nfp_njv_vxb .section}

To review the balances for the financial period, do the following:

1.  Open the [Trial Balance Summary](GL_63_20_00.md) \(GL632000\) form.
2.  On the **Report Parameters** tab, verify that the following parameters are displayed:
    -   **Company/Branch**: *HEADOFFICE - SweetLife Head Office and Wholesale Center*
    -   **Ledger**: *ACTUAL*
    -   **From Period**: *03-2025*
    -   **To Period**: *03-2025*
    -   **Suppress Zero Balances**: Selected
3.  On the form toolbar, click **Run Report**.
4.  Review the report. Notice the amount in the **Ending Balance** column for the *20000 - Accounts Payable* account. This amount should be equal to the amount you noticed in the [AP Balance by GL Account](AP_63_20_00.md) report you ran in Step 1.

## Step 3: Reconciling the AP and GL Accounts {#section_pfp_njv_vxb .section}

To reconcile the AP and GL balances for the *20000 Accounts Payable* account, do the following:

1.  Compare the two figures you noted from both reports. If these balances are equal, the AP and GL accounts can be considered reconciled.
2.  If there is a discrepancy between these figures, do the following:
    1.  On the [Post Transactions](GL_50_20_00.md) \(GL502000\) form, verify that all batches have been posted to the general ledger.
    2.  Post any unposted documents you have found.
    3.  To verify that there are no transactions posted to the *20000 - Accounts Payable* account by other modules, open the [Transactions for Account](GL_63_35_00.md) \(GL633500\) form and specify the following parameters:

        -   **Company/Branch**: *HEADOFFICE - SweetLife Head Office and Wholesale Center*
        -   **Ledger**: *ACTUAL*
        -   **From Period** and **To Period**: *03-2025*
        -   **Account**: *20000 - Accounts Payable*
        -   **Module**: Empty
        -   **Additional Sort and Filters** tab, **Additional Filtering Conditions**: **Property**: *GL Batch.Module*, **Condition**: *Does Not Equal*, **Value**: *AP*.
        The following screenshot illustrates the application of additional filtering conditions for the report.

        ![](Images/activity_Transactions_for_Account_Filter.png "Additional filtering conditions for the Transactions for Account (GL633500) report")

    4.  Click **Run Report** on the form toolbar of the [Transactions for Account](GL_63_35_00.md) form, and review the report.

**Parent topic:**[Performing Period-End Procedures](../UserGuide/Finance_Period-End_Procedures_AP_Mapref.md)

