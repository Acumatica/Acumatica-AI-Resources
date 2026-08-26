# Hierarchical Budget: Process Activity {#_f40ad1e4-3c44-41ec-b073-60741852bff5 .task}

In this activity, you will learn how to prepare a hierarchical budget.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_etk_mjv_vxb .section}

Suppose that for the SweetLife Fruits &amp; Jams company, the budget structure has been defined in the system. Acting as an accountant, you need to prepare a hierarchical budget for the *Service and Equipment Sales Center* branch in the system for the financial years 2026 and 2021.

## Configuration Overview {#section_gtk_mjv_vxb .section}

For the purposes of this lesson, the *Subaccounts* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. On the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, the *SUBACCOUNT* segmented key has been defined according to your the company business needs. For details, see [Subaccounts: Implementation Activity](../ImplementationGuide/config_Subaccounts_Implem_Activity.md).

On the [Ledgers](GL_20_15_00.md) \(CS202000\) form, a ledger with the *Budget* type has been defined for the SweetLife Fruits &amp; Jams company. For details, see [Budget Ledger: Implementation Activity](../ImplementationGuide/BudgetLedger_Implem_Activity.md).

## Process Overview {#section_jtk_mjv_vxb .section}

To create a hierarchical budget, you preload the budget structure on the [Budgets](GL_30_20_10.md) \(GL302010\) form. For 2026, you will upload the budget amounts from a file and distribute these amounts over the periods of the year on the [Budgets](GL_30_20_10.md) form. You will then post the 2026 budget to a budget ledger by releasing the budget articles on the [Release Budgets](GL_50_55_10.md) \(GL505510\) form.

## System Preparation {#section_ltk_mjv_vxb .section}

Before you prepare the hierarchical budget, do the following:

1.  Sign in to the tenant with the *pasic* login and the *123* password.
2.  Open the [Master Financial Calendar](GL_20_10_00.md#) \(GL201000\) form.
3.  On the form toolbar, click **Generate Calendar**.
4.  In the **Generate GL Calendar** dialog box, which appears, make sure *2021* is selected in the **From Year** and **To Year** boxes, and click **OK**.
5.  Open the [Manage Financial Periods](GL_50_30_00.md#) \(GL503000\) form.
6.  In the **Action** box of the Summary area, select *Open*.
7.  In the **To Year** box, select *2021*.
8.  On the form toolbar, click **Process All**.

## Step 1: Preloading the Budget Structure {#section_ntk_mjv_vxb .section}

To preload the budget structure for 2026, do the following:

1.  Open the [Budgets](GL_30_20_10.md) \(GL302010\) form.
2.  In the Summary area, in the **Branch** box, select *SWEETEQUIP*.
3.  In the **Ledger** box, make sure *BUDGET* is selected.
4.  In the **Financial Year** box, select *2026*.

    As soon as you select the year for which you want to create a new budget, the system opens the **Preload from Budget Configuration** dialog box.

5.  In the dialog box, click **Yes** to confirm that you want to preload the budget articles. The system closes the dialog box and populates the budget articles on the [Budgets](GL_30_20_10.md) form according to the budget tree configuration.
6.  In the Summary area of the form, make sure the **Tree View** check box is selected.

## Step 2: Defining the Budget Amounts for 2026 and Releasing the Budget {#section_qtk_mjv_vxb .section}

To define the budget amounts and release the budget, do the following:

1.  While you are still viewing the budget for the *SWEETEQUIP* branch on the [Budgets](GL_30_20_10.md) \(GL302010\) form, click **Load Records from File** on the table toolbar of the right pane, and select the [Budget\_SWEETEQUIP\_2020](Files/Budget_SWEETEQUIP_2020.xlsx) file. In the wizard that opens, leave all the default settings and map the columns as the system suggests.

    The system fills in the budget with the year amounts from the file.

2.  On the table toolbar of the right pane, click **Distribute**.
3.  In the **Distribute Year Amount by Periods** dialog box, specify the following settings:
    -   **Distribution Method**: *Evenly*
    -   **Apply to All Articles in This Node**: Selected
    -   **Apply to Subarticles**: Selected
4.  Click **OK** to close the dialog box.

    The system distributes the amounts evenly among the budget articles.

5.  On the form toolbar, click **Save** to save the budget.
6.  Open the [Release Budgets](GL_50_55_10.md) \(GL505510\) form.
7.  On the form toolbar, click **Release All**.

    The **Processing** dialog box opens; close this dialog box when the processing is complete.


**Parent topic:**[Preparing a Hierarchical Budget](../UserGuide/Finance_Preparing_Hierarchical_Budget_Mapref.md)

