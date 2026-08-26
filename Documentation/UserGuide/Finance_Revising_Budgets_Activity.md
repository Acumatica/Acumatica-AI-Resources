# Budget Revision: Process Activity {#_7118d45a-1207-4bb4-9147-b5979b4c6de6 .task}

In this activity, you will learn how to make changes to an existing budget.

## Story {#section_iml_mjv_vxb .section}

Suppose that the management of the SweetLife Fruits &amp; Jams company has reviewed the budget for 2026 and decided to revise it as follows:

-   The wholesale center's budget has to be increased by $3,600 in the 12th period of 2026 because more revenue is expected during the winter holidays.
-   The rent expenses should be increased by $2,000 and distributed evenly among the periods.
-   Advertising expenses should be increased to $14,200 and distributed proportionally to released values.

Acting as the financial supervisor of SweetLife, you need to modify the 2026 budget in the system.

## Configuration Overview {#section_lml_mjv_vxb .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the following accounts have been created:
    -   *40000 - Sales Revenue*
    -   *61000 - Advertising Expense*
    -   *62900 - Rent or Lease Expense*
-   On the [Ledgers](GL_20_15_00.md) \(GL201500\) form, the *BUDGET* ledger of the *Budget* type has been defined.

## Process Overview {#section_pml_mjv_vxb .section}

In this activity, to modify a budget, you will make the necessary changes to the budget on the [Budgets](GL_30_20_10.md) \(GL302010\) form. You will then release the modified budget articles on the [Release Budgets](GL_50_55_10.md) \(GL505510\) form.

## System Preparation {#section_rml_mjv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Anna Johnson by using the *johnson* username and the *123* password.
2.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
3.  Make sure that you have performed the following prerequisite activity to create the budget for the *HEADOFFICE* branch: [Simple Budget: Process Activity](Finance_Preparing_Simple_Budget_Activity.md).

## Step 1: Changing Amounts in the Released Budget {#section_tml_mjv_vxb .section}

To make changes to the amounts in the budget of the *HEADOFFICE* branch, do the following:

1.  Open the [Budgets](GL_30_20_10.md) \(GL302010\) form.
2.  In the Summary area, do the following:
    -   Ensure that the following settings have been specified by default:
        -   **Branch**: *HEADOFFICE*
        -   **Ledger**: *BUDGET*
        -   **Tree View**: Selected
    -   Specify *2026* in the **Financial Year** box.
3.  Select the **Sales** node, and in the table, modify the amount for the 12th financial period for the *40000* account and the *JAM-000* subaccount as follows:

    1.  In the **Amount** column, specify `125,700.00`.
    2.  In the **Period 12** column, change the amount to `14,950.00`.
    Notice that the system has cleared the **Released** check box for the row.

4.  On the form toolbar, click **Save** to save your changes.

## Step 2: Changing the Amount and Distributing Rent Expenses {#section_wml_mjv_vxb .section}

To change the amount of rent expenses and distribute the expenses evenly among the periods, do the following:

1.  While you are still on the [Budgets](GL_30_20_10.md) \(GL302010\) form, select the **Production &gt; Overhead** node, and in the row for the *62900* account with the *Rent or Lease Expense* description, change the value in the **Amount** column to `16,400.00`.
2.  On the table toolbar, click **Distribute**.

    The system opens the **Distribute Year Amount by Periods** dialog box.

3.  In the dialog box, in the **Distribution Method** box, make sure that *Evenly* is selected. Leave the **Apply to All Articles in This Node** check box cleared to apply the distribution method to only the selected budget article, and click **OK**.

    The system distributes the amount evenly among the periods.

4.  On the form toolbar, click **Save** to save your changes.

## Step 3: Distributing Advertising Expense Amounts Proportionally to Released Values {#section_bnl_mjv_vxb .section}

To distribute the amounts of advertising expenses proportionally to released values, do the following:

1.  While you are still on the [Budgets](GL_30_20_10.md) \(GL302010\) form with the *HEADOFFICE* budget selected, specify the following settings in the Summary area:
    -   **Compare to Branch**: *HEADOFFICE*
    -   **Compare to Ledger**: *BUDGET*
    -   **Compare to Year**: 2026
2.  Select the **Production &gt; Purchases** node, and in the table, click the row with the *61000* account to select it.
3.  In the **Amount** column for the selected row, specify `14,200.00`.
4.  On the form toolbar, click **Distribute**.
5.  In the **Distribute Year Amount by Periods** dialog box, which opens, select *Proportionally to Compared Values* in the **Distribution Method** box.
6.  Click **OK**.
7.  On the form toolbar, click **Save** to save your changes.

## Step 4: Releasing the Budget Articles {#section_enl_mjv_vxb .section}

To release the budget articles, do the following:

1.  Open the [Release Budgets](GL_50_55_10.md) \(GL505510\) form.

    The table shows the budget articles that you modified earlier.

2.  On the form toolbar, click **Release All**.

    The **Processing** dialog box opens. Close it when the processing is complete.


**Parent topic:**[Revising a Budget](../UserGuide/Finance_Revising_Budgets_Mapref.md)

