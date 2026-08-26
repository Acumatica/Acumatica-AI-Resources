# Budget Based on an Existing Budget: Process Activity {#_b2f38dbf-11b3-44b0-b0ae-f95231f04ee0 .task}

The following activity will walk you through the processes of preparing a budget based on an existing budget and comparing the new and existing budgets.

## Story {#section_q4k_mjv_vxb .section}

Suppose that the financial supervisor of SweetLife Fruits &amp; Jams has to prepare an optimistic budget for 2027 based on the uploaded budget for 2026. The articles of the budget should be increased by 15%, except for the rent or lease expense, which should remain the same. \(Wages belong to the part of the budget that will be increased by 15%.\)

Acting as the SweetLife financial supervisor, you need to update the budget in the system.

## Configuration Overview {#section_t4k_mjv_vxb .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) form, the *62900 \(Rent or Lease Expense\)* account has been created.
-   On the [Ledgers](GL_20_15_00.md) \(GL201500\) form, the *BUDGET* ledger has been added.

## Process Overview {#section_w4k_mjv_vxb .section}

In this activity, you will first create a new financial year, 2027, on the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form. On the [Budgets](GL_30_20_10.md) \(GL302010\) form, you will prepare a budget for 2027 based on the budget for 2026 and release it on the [Release Budgets](GL_50_55_10.md) \(GL505510\) form. Finally, on the [Budgets](GL_30_20_10.md) form, you will compare the budget for 2026 to the budget for 2027.

## System Preparation {#section_y4k_mjv_vxb .section}

Before you begin creating budgets for 2027, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
3.  Make sure that you have performed the following prerequisite activity to create the *BUDGETOPT* ledger: [Budget Ledger: Implementation Activity](../ImplementationGuide/BudgetLedger_Implem_Activity.md).
4.  Make sure that you have performed the following prerequisite activity to upload and release a simple budget for the *HEADOFFICE* branch: [Simple Budget: Process Activity](Finance_Preparing_Simple_Budget_Activity.md).
5.  Make sure that no budget tree has been configured on the [Budget Configuration](GL_20_50_00.md) \(GL205000\) form. You cannot complete this activity if a budget tree has been configured.

## Step 1: Creating the 2027 Financial Year {#section_apk_mjv_vxb .section}

To prepare the system for the creation of the 2027 budget, do the following:

1.  Open the [Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form.
2.  On the form toolbar, click **Generate Calendar**.
3.  In the **Generate GL Calendar** dialog box, which opens, make sure that *2027* is selected in the **From Year** and **To Year** boxes, and click **Generate**.

## Step 2: Preparing and Releasing the Sales and Production Budgets for 2027 {#section_cpk_mjv_vxb .section}

To prepare an optimistic budget for 2027 based on the budget data of 2026, do the following:

1.  Open the [Budgets](GL_30_20_10.md) \(GL302010\) form.
2.  In the Summary area, specify the following settings:
    -   **Branch**: *HEADOFFICE*
    -   **Ledger**: *BUDGETOPT*
    -   **Financial Year**: *2027*
3.  On the form toolbar, click **Preload Articles**.
4.  In Step 1 of the **Preload Budget Articles** wizard, which opens, specify the following settings:
    -   **Branch**: *HEADOFFICE*
    -   **Ledger**: *BUDGET*
    -   **Financial Year**: *2026*
    -   **Multiplier \(in %\)**: `115`
5.  Click **Next**.
6.  In Step 2 of the wizard, leave the specified settings, and click **Next**.
7.  In Step 3 of the wizard, leave the **Update Existing Articles and Load Nonexistent Articles** option button selected, and click **Finish**.

    The system calculates the sales budget for 2027 as a 15% increase over the budget figures for 2026 kept for the *HEADOFFICE* branch in the *BUDGET* ledger.

8.  In the row with the *62900 \(Rent or Lease Expense\)* account, enter `14,400.00` in the **Amount** column.

    This is the original amount of the rent expenses from the 2026 production budget, which should stay the same for 2027.

9.  On the table toolbar, click **Distribute**.
10. In the **Distribute Year Amount by Periods** dialog box, which opens, leave *Evenly* in the **Distribution Method** box, and click **OK**.
11. On the form toolbar, click **Save** to save your changes.
12. Open the [Release Budgets](GL_50_55_10.md) \(GL505510\) form.
13. On the form toolbar, click **Release All**.

    The **Processing** dialog box opens; close this dialog box when the processing has completed.


## Step 3: Comparing the 2026 and 2027 Budgets {#section_hpk_mjv_vxb .section}

To compare the budgets for 2026 and 2027, do the following:

1.  Open the [Budgets](GL_30_20_10.md) \(GL302010\) form.
2.  In the Summary area, specify the following settings:
    -   **Branch**: *HEADOFFICE*
    -   **Ledger**: *BUDGETOPT*
    -   **Financial Year**: *2027*
    -   **Compare to Branch**: *HEADOFFICE*
    -   **Compare to Ledger**: *BUDGET*
    -   **Compare to Year**: 2026
3.  Review the results in the table on the form.

    As you can see, all the budget articles have been increased by 15% for 2027 except for the *Rent or Lease Expense* article, which stayed the same in 2027 as it was in 2026.


**Parent topic:**[Preparing a Budget Based on an Existing Budget](../UserGuide/Finance_Preparing_Budget_Based_on_Uploaded_Mapref.md)

