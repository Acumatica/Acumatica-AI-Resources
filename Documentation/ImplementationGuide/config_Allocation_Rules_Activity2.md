# Allocation Rules: To Create an Allocation Rule That Uses a Dynamic Ratio of the Period-to-Date Account Balances {#_b69e14e8-b0ed-4468-9b92-4f00ecb855dc .task}

In this activity, you will learn how to create an allocation rule in which a dynamic ratio is used to distribute amounts among accounts and subaccounts.

## Story { .section}

Suppose that accountants of the *HEADOFFICE* branch post rent expenses to the *000-000* subaccount to speed up data entry. At the end of each month, they split the rent expenses by departments based on the head count.

Acting as an administrator, you need to define an allocation rule that will distribute the posted amount between the departments based on the head count.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the following accounts have been created:
    -   *62900 - Rent or Lease Expense*
    -   *69500 - Salaries and Wages*
-   On the [Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\) form, the *ACTUAL* ledger has been defined.
-   On the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) form, the *SUBACCOUNT* segmented key has been created.

## Process Overview { .section}

On the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form \(**Allocation** tab\), you will specify the general settings for an allocation rule. Then on the **Source Accounts** and **Destination Accounts** tabs of this form, you will specify the accounts and subaccounts for the rule.

## System Preparation { .section}

Before you start creating the allocation rule, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
3.  Make sure that you have completed the following prerequisite activity to perform the needed configuration of subaccounts: [Subaccounts: Implementation Activity](config_Subaccounts_Implem_Activity.md).

## Step 1: Specifying General Settings for an Allocation Rule That Uses a Dynamic Ratio { .section}

To begin creating an allocation rule that distributes amounts by using a dynamic ratio, do the following:

1.  Open the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Description** box of the Summary area, type `Rent expenses`.
4.  In the **Branch** box, ensure that *HEADOFFICE* is selected.
5.  On the **Allocation** tab, in the **Start Period** box, select *01-2026*.
6.  Leave the **End Period** box empty.
7.  Make sure that the **Recurring** check box is cleared.
8.  In the **Allocation Method** box, make sure that the *By Account PTD* option is selected.
9.  In the **Distribution Method** box, select *By Dest. Account PTD*.

    The source amount will be distributed proportionally to the period-to-date balances. When you select this option, the **Base Ledger** box becomes available.

10. In the **Allocation Ledger** and **Source Ledger** boxes, ensure that *ACTUAL* is selected.
11. In the **Base Ledger** box, select *HEADCOUNT*.

    The base ledger is the ledger from which the allocation proportions are calculated. You can take the proportions from an actual, budget, or statistical ledger. To calculate the proportions, the system uses the amounts from the base accounts specified on the **Destination Accounts** tab. If the **Base Ledger** box is empty, the system calculates the proportions from the amounts in the allocation ledger.

12. Make sure that the **Allocate Source Accounts Separately** check box is cleared.
13. In the **Last Revision Date** box, leave the date that the system has inserted.

You have specified the general settings for the allocation rule, and you will now proceed to specifying source and destination accounts and subaccounts for the rule.

## Step 2: Specifying Accounts and Subaccounts for the Allocation Rule { .section}

To specify the accounts for the rule, while remaining on the [Allocations](../UserGuide/GL_20_45_00.md) \(GL204500\) form, do the following:

1.  To specify the source account from which the allocated amount will be deducted \(which in this case is the *62900 - Rent or Lease Expense* account of the head office\), on the **Source Accounts** tab, click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *62900*
    -   **Subaccount**: *000-000*
    -   **Percentage Limit**: *100.00*
2.  To specify the first destination account–subaccount pair to which the amount will be allocated \(for the Finance department\), on the **Destination Accounts** tab, click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *62900*
    -   **Subaccount**: *000-FIN*
    -   **Base Branch**: *HEADOFFICE*
    -   **Base Account**: *69500*
    -   **Base Subaccount**: *000-FIN*
3.  To specify the second destination account–subaccount pair to which the amount will be allocated \(for the Marketing department\), click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *62900*
    -   **Subaccount**: *000-MKT*
    -   **Base Branch**: *HEADOFFICE*
    -   **Base Account**: *69500*
    -   **Base Subaccount**: *000-MKT*
4.  To specify the third destination account–subaccount pair to which the amount will be allocated \(for the Operations department\), click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *62900*
    -   **Subaccount**: *000-OPS*
    -   **Base Branch**: *HEADOFFICE*
    -   **Base Account**: *69500*
    -   **Base Subaccount**: *000-OPS*
5.  To specify the fourth destination account–subaccount pair to which the amount will be allocated \(for the Sales department\), click **Add Row**, and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Account**: *62900*
    -   **Subaccount**: *000-SLS*
    -   **Base Branch**: *HEADOFFICE*
    -   **Base Account**: *69500*
    -   **Base Subaccount**: *000-SLS*
6.  Click **Save** on the form toolbar.

You have defined a rule that will distribute the amount posted to the *62900 - Rent or Lease Expense* account of the head office branch among the departments based on the head count.

**Parent topic:**[Allocation Rules](../ImplementationGuide/config_Allocation_Rules_Mapref.md)

