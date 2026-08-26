# Allocation Rules: To Create an Allocation Rule Based on Budget Data {#_96f5a424-3d92-40e6-8d8c-d46f8fb5f12a .task}

In this activity, you will learn how to create an allocation rule in which amounts are distributed based on budget data among accounts and subaccounts.

## Story { .section}

Suppose that the SweetLife Fruits &amp; Jams company pays the Christmas bonus to its employees. The amount budgeted for the 2026 bonus is $18,000.00. At the end of each period, an accountant needs to accrue the budgeted bonus expenses for each department proportionally to the monthly salary.

Acting as an administrator, you need to define an allocation rule based on budget data.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the following accounts have been created:
    -   *20050 - Bonus Accrual*
    -   *69500 - Salaries and Wages*
    -   *69550 - Bonus Expenses*
-   On the [Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\) form, *BUDGET* ledger has been defined.
-   On the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form, the *SUBACCOUNT* segmented key has been created.

## Process Overview { .section}

On the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form \(**Allocation** tab\), you will specify the general settings for an allocation rule. Then on the **Source Accounts** and **Destination Accounts** tabs of this form, you will specify the accounts and subaccounts for the rule.

## System Preparation { .section}

Before you start creating the allocation rule, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
3.  Make sure that you have completed the following prerequisite activity to perform the needed configuration of subaccounts: [Subaccounts: Implementation Activity](config_Subaccounts_Implem_Activity.md).

## Step 1: Specifying General Settings for an Allocation Rule Based on Budget Data { .section}

To begin creating an allocation rule that distributes amounts based on budget data, do the following:

1.  Open the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Description** box of the Summary area, type `Christmas bonus`.
4.  In the **Branch** box, ensure that *HEADOFFICE* is selected.
5.  On the **Allocation** tab, in the **Start Period** box, select *01-2026*.
6.  Leave the **End Period** box empty.
7.  Make sure that the **Recurring** check box is cleared.

    You have left the check box cleared because the allocation rule needs to be used only in 2026.

8.  In the **Allocation Method** box, make sure that the *By Account PTD* option is selected.

    The source amount is a period-to-date amount.

9.  In the **Distribution Method** box, select *By Dest. Account PTD*.

    The source amount will be distributed proportionally to the period-to-date balances. When you select this option, the **Base Ledger** box becomes available.

10. In the **Allocation Ledger** box, ensure that *ACTUAL* is selected.
11. In the **Source Ledger** box, select *BUDGET*.
12. In the **Base Ledger** box, ensure that *ACTUAL* is selected.

    The proportions will be calculated based on the *ACTUAL* ledger.

13. Make sure that the **Allocate Source Accounts Separately** check box is cleared.
14. In the **Last Revision Date** box, leave the date that the system has inserted.

You have specified the general settings for the allocation rule; you will now proceed to specifying source and destination accounts and subaccounts for the rule.

## Step 2: Specifying Accounts and Subaccounts for the Allocation Rule { .section}

To specify the accounts for the rule, while remaining on the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form, do the following:

1.  To specify the source account from which the allocated amount will be deducted, on the **Source Accounts** tab, click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *69550*
    -   **Subaccount**: *000-000*
    -   **Contra Account**: *20050*
    -   **Contra Subaccount**: *000-000*
    -   **Percentage Limit**: *100.00*

        This setting indicates that the full amount will be distributed during the allocation process.

2.  To specify the first destination account–subaccount pair to which the amount will be allocated, on the **Destination Accounts** tab, click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *69550*
    -   **Subaccount**: *000-FIN*
    -   **Base Branch**: *HEADOFFICE*
    -   **Base Account**: *69500*
    -   **Base Subaccount**: *000-FIN*
3.  To specify the second destination account–subaccount pair to which the amount will be allocated, click **Add Row**, and specify following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *69550*
    -   **Subaccount**: *000-MKT*
    -   **Base Branch**: *HEADOFFICE*
    -   **Base Account**: *69500*
    -   **Base Subaccount**: *000-MKT*
4.  To specify the third destination account–subaccount pair to which the amount will be allocated, click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *69550*
    -   **Subaccount**: *000-OPS*
    -   **Base Branch**: *HEADOFFICE*
    -   **Base Account**: *69500*
    -   **Base Subaccount**: *000-OPS*
5.  To specify the fourth destination account–subaccount pair to which the amount will be allocated, click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *69550*
    -   **Subaccount**: *000-SLS*
    -   **Base Branch**: *HEADOFFICE*
    -   **Base Account**: *69500*
    -   **Base Subaccount**: *000-SLS*
6.  Click **Save** on the form toolbar.

**Parent topic:**[Allocation Rules](../ImplementationGuide/config_Allocation_Rules_Mapref.md)

