# Fixed Asset Period Closing: Process Activity {#_d40d1847-6b78-42e3-90f0-5b3f020f8266 .task}

The following activity will walk you through the process of closing a financial period after reconciling the fixed asset subledger with the general ledger.

## Story {#section_arg_ljv_vxb .section}

Suppose that January 2026 should be closed in the fixed asset subledger. Acting as a SweetLife accountant, you need to prepare for closing the period by reconciling the fixed asset subledger with the general ledger. You will do that by comparing the fixed asset balance of the GL accounts with the account balances in the trial balance report. Finally, you will close the *01-2026* period in the fixed asset subledger.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Fixed Asset Management* feature has been enabled.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the needed GL accounts have been created.

## Process Overview {#section_drg_ljv_vxb .section}

In this activity, you will first run the [Unreconciled Transactions for Period](FA_62_00_10.md) \(FA620010\), [Unreleased FA Documents](FA_65_11_00.md) \(FA651100\), and [Non-Depreciated Fixed Assets](FA_65_21_00.md) \(FA652100\) reports. You will then reconcile fixed asset accounts with GL accounts by comparing balances on the [FA Balance by GL Account](FA_64_30_00.md) \(FA643000\) and [Trial Balance Detailed](GL_63_25_00.md) \(GL632500\) reports. On the [Close Financial Periods](FA_50_90_00.md) \(FA509000\) form, you will close the 01-2026 period and all the preceding periods.

## System Preparation {#section_frg_ljv_vxb .section}

Before you begin reconciling accounts and closing the period in the fixed asset subledger, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant by using the *johnson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business Date menu button, and select *1/31/2026* on the calendar.
3.  In the company to which you are signed in, be sure that you have implemented the fixed asset functionality by performing the following prerequisite activities: [Fixed Assets: To Set Up the System for Fixed Asset Management](../ImplementationGuide/config_FixedAssets_Implem_Activity_System.md), [Fixed Assets: To Configure the Fixed Asset Functionality](../ImplementationGuide/config_FixedAssets_Implem_Activity_FixedAssets_Subledger.md), and [Fixed Assets: To Create Fixed Asset Classes](../ImplementationGuide/config_FixedAssets_Implem_Activity_FixedAsset_Classes.md).
4.  Make sure that you have created the fixed assets by performing the following prerequisite activities: [Conversion of a Purchase: To Convert a Purchase to an Asset](FixedAssets_Converting_Purchase_To_Convert_to_Asset.md), [Conversion of a Purchase: To Convert a Purchase to Multiple Assets](FixedAssets_Converting_Purchase_To_Convert_to_Multiple_Assets.md), [Fixed Asset Creation: To Create and Reconcile an Asset](FixedAssets_Adding_Fixed_Asset_To_Create_Fixed_Asset.md), [Fixed Asset Creation: To Create an Asset with Multiple Units](FixedAssets_Adding_Fixed_Asset_To_Add_FA_with_Multiple_Units.md), and [Non-Default Asset Settings: Process Activity](FixedAssets_Changing_Default_Settings_Process_Activity.md).
5.  Make sure that you have depreciated assets by performing the following prerequisite activities: [Asset Depreciation: To Depreciate Assets](FixedAssets_Depreciation_To_Perform_Depreciation.md), [Asset Depreciation: To Calculate Depreciation in Two Books](FixedAssets_Depreciation_Perform_Depr_in_Two_Books.md), and [Depreciation of Additions: Process Activity](FixedAssets_Depreciating_Additions_Process_Activity.md).
6.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Reconciling Fixed Asset Accounts with GL Accounts {#section_hrg_ljv_vxb .section}

To reconcile the fixed asset subledger with the general ledger, do the following:

1.  Run the [Unreconciled Transactions for Period](FA_62_00_10.md) \(FA620010\) report as follows:
    1.  On the **Report Parameters** tab of the [Unreconciled Transactions for Period](FA_62_00_10.md) form, specify the following settings:
        -   **Company/Branch**: Cleared
        -   **Period From**: *01-2026*
        -   **Period To**: *01-2026*
        -   **Account**: *15010 \(Accrued Purchases: Fixed Assets\)*
    2.  On the report form toolbar, click **Run Report**, and notice that the generated report is empty. This means that there are no purchases posted to the *15010* account that must be converted to fixed assets.
2.  Run the [Unreleased FA Documents](FA_65_11_00.md) \(FA651100\) report as follows:
    1.  On the **Report Parameters** tab of the [Unreleased FA Documents](FA_65_11_00.md) form, specify the following settings:
        -   **From Period**: *01-2026*
        -   **To Period**: *01-2026*
    2.  On the report form toolbar, click **Run Report**, and review the generated report. Notice that there are no documents that should be released in 01-2026.
3.  Run the [Non-Depreciated Fixed Assets](FA_65_21_00.md) \(FA652100\) report as follows:
    1.  On the **Report Parameters** tab of the [Non-Depreciated Fixed Assets](FA_65_21_00.md) form, specify the following settings:
        -   **From Period**: *01-2026*
        -   **To Period**: *01-2026*
    2.  On the report form toolbar, click **Run Report**, and review the generated report. Notice that there are no assets that must be depreciated through the *01-2026* period, because you have depreciated all of these assets earlier. Now you can reconcile the account balances.
4.  On the **Report Parameters** tab of the [Trial Balance Detailed](GL_63_25_00.md) \(GL632500\) report form, specify the following settings:
    -   **Company/Branch**: Cleared
    -   **Ledger**: *ACTUAL*
    -   **From Period**: *01-2026*
    -   **To Period**: *01-2026*
    -   **Suppress Zero Balances**: Selected
5.  On the report form toolbar, click **Run Report**, and review the report. Notice the amounts in the **Ending Balance** column for Fixed Asset accounts \(*15100*, *15200*, and *15500*\).
6.  On the **Report Parameters** tab of the [FA Balance by GL Account](FA_64_30_00.md) \(FA643000\) report form, specify the following settings:
    -   **Report Format**: *Summary*
    -   **Branch**: *HEADOFFICE*
    -   **Financial Period**: *01-2026*
7.  On the report form toolbar, click **Run Report**, and review the report.
8.  Compare the balance of Fixed Asset accounts \(*15100*, *15200*, and *15500*\) by using the [Trial Balance Detailed](GL_63_25_00.md) and [FA Balance by GL Account](FA_64_30_00.md) reports. Both reports show the same balances for each account, so the balances are reconciled for the *01-2026* period. Now you can close the financial period along with all preceding periods.

## Step 2: Closing a Financial Period {#section_jrg_ljv_vxb .section}

To close the *01-2026* period, do the following:

1.  Open the [Close Financial Periods](FA_50_90_00.md) \(FA509000\) form.
2.  In the Selection area, specify the following settings:
    -   **Company**: *SWEETLIFE*
    -   **Action**: *Close*
    -   **To Year**: *2026*
3.  In the table, select the unlabeled check box in the row with *01-2026*. Notice that the system selects the check boxes for all the previous periods as well.

    **Tip:** To review the list of unreleased documents for the selected periods, on the form toolbar, you can click **Unreleased Documents**.

4.  On the form toolbar, click **Process**.

    Now the *01-2026* period and all the preceding periods are closed in the fixed asset subledger.


**Parent topic:**[Closing Financial Periods in Fixed Assets](../UserGuide/FixedAssets_Closing_Periods_Mapref.md)

