# Fixed Asset Period Closing: General Information {#_e28e7a41-d28f-4266-936d-be2243b1cf60 .concept}

To close any number of financial period in the fixed asset subledger, you use the [Close Financial Periods](FA_50_90_00.md) \(FA509000\) form. You can close a financial period only if there are no unreleased documents dated in this period.

**Attention:**

-   In Acumatica ERP, if the **Restrict Access to Closed Periods** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form, only users to which the *Financial Supervisor* role is assigned on the [User Roles](SM_20_10_05.md) \(SM201005\) form can post transactions to closed periods. If this check box is cleared, other users can post to closed periods as well.
-   Alternatively, you can close the periods in any subledger on the [Manage Financial Periods](GL_50_30_00.md) \(GL503000\) form when you close the periods in the general ledger.

## Learning Objectives {#section_gpg_ljv_vxb .section}

In this chapter, you will learn how to do the following:

-   Reconcile the fixed asset subledger with the general ledger
-   Close the financial periods in the fixed asset subledger

## Applicable Scenarios {#section_ipg_ljv_vxb .section}

You close active financial periods in the fixed asset subledger in the following cases:

-   To prevent transactions from being posted to these periods
-   To be able to close these financial periods in the general ledger

## Workflow of Period Closing {#section_vv2_1y4_y4b .section}

To close a financial period in the fixed asset subledger, you perform the following general steps:

1.  You review the [Unreconciled Transactions for Period](FA_62_00_10.md) \(FA620010\) report for the needed period to recognize the transactions that have been posted to the FA Accrual account in the period but have not been converted to fixed assets yet.
2.  Optional: You convert purchases to assets.
3.  You review the [Unreleased FA Documents](FA_65_11_00.md) \(FA651100\) report for the needed period to find the fixed asset transactions that were created in this period but not released.
4.  You release the unreleased fixed asset transactions.
5.  You depreciate all the needed fixed assets for the period that you are going to close. To review the list of fixed assets that must be depreciated in a certain period, you generate and review the [Non-Depreciated Fixed Assets](FA_65_21_00.md) \(FA652100\) report for this period.
6.  You reconcile fixed assets with the GL account balances by using the [FA Balance by GL Account](FA_64_30_00.md)\(FA643000\) and [Trial Balance Detailed](GL_63_25_00.md) \(GL632500\) reports. You compare the balances of all Fixed Asset and Accumulated Depreciation accounts that are in use in the fixed asset subledger.
7.  On the [Close Financial Periods](FA_50_90_00.md) \(FA509000\) form, you close the financial period in the fixed asset subledger.

    In the closed periods, new assets cannot be acquired, existing assets cannot be disposed of, and depreciation cannot be calculated, even if the **Allow Posting to Closed Periods** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form.


**Parent topic:**[Closing Financial Periods in Fixed Assets](../UserGuide/FixedAssets_Closing_Periods_Mapref.md)

