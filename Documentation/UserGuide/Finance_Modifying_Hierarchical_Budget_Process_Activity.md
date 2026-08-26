# Modification of a Hierarchical Budget: Process Activity {#_67a922e9-3756-4854-bf0d-429ac1a620dc .task}

The following activity will walk you through the process of modifying a hierarchical budget by adding a leaf article to a budget node and uploading a budget based on the updated budget tree.

## Story {#section_kcl_mjv_vxb .section}

Suppose that the management of SweetLife Fruits &amp; Jams needs to have a budget article that aggregates all travel expenses of the company. The hierarchical budget should include the *Travel Expenses* leaf that would aggregate budgeted amounts for accounts from *70000 \(Travel - Tickets\)* to *70020 \(Travel - Meals\)*. Further suppose that the budget for 2027 should be based on the configured budget tree and uploaded to the system.

Acting as a system administrator, you need to add a leaf budget article to the **Production** node of the budget, add the budget amounts for travel expenses in 2026, and upload the budget for 2027 that already includes travel expenses.

## Configuration Overview {#section_ncl_mjv_vxb .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, accounts with numbers from *70000 \(Travel - Tickets\)* to *70020 \(Travel - Meals\)* have been created.
-   On the [Ledgers](GL_20_15_00.md) \(GL201500\) form, the *BUDGET* ledger of the *Budget* type has been defined.
-   On the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form, the *SUBACCOUNT* segmented key has been defined.

## Process Overview {#section_rcl_mjv_vxb .section}

In this activity, you will add the *Travel Expenses* leaf to the **Production** node of the hierarchical budget on the [Budget Configuration](GL_20_50_00.md) \(GL205000\) form. On the [Budgets](GL_30_20_10.md) \(GL302010\) form, you will convert the 2026 budget based on the updated budget tree and update the *Travel Expenses* article. You will then release the modified budget article on the [Release Budgets](GL_50_55_10.md) \(GL505510\) form. Finally, on the [Budgets](GL_30_20_10.md) form, you will upload a budget for 2027 from an Excel file.

## System Preparation {#section_tcl_mjv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
3.  Make sure that you have performed the following prerequisite activity to create a hierarchical budget: [Conversion of a Simple Budget to a Hierarchical Budget: Process Activity](Finance_Converting_Budget_Activity.md).
4.  Make sure that you have completed the following prerequisite activity to perform the needed configuration of subaccounts: [Subaccounts: Implementation Activity](../ImplementationGuide/config_Subaccounts_Implem_Activity.md).

## Step 1: Adding the Travel Expenses Leaf {#section_vcl_mjv_vxb .section}

To add the *Travel Expenses* leaf to the **Production** node of the SweetLife budget, do the following:

1.  Open the [Budget Configuration](GL_20_50_00.md) \(GL205000\) form.
2.  In the **Budget Tree** pane, click the **Production** node.
3.  On the table toolbar of the **Subarticles** pane, click **Add Row**, and specify the following settings in the added row:
    -   **Node**: Cleared
    -   **Account**: *70000 - Travel-Tickets*
    -   **Subaccount**: *000-000*
    -   **Description**: `Travel Expenses`
    -   **Account Mask**: `700??`
    -   **Subaccount Mask**: *000-000*
4.  On the form toolbar, click **Save** to save your changes.
5.  On the toolbar of the **Subarticles** pane, click **Configure Security** to review the new leaf added to the *ProductionBudget* access group.

    The system navigates to the [Restriction Groups by Budget Article](GL_10_50_20.md) \(GL105020\) form with the *Travel Expenses* budget article selected. Notice that the Included check box is selected for the row with the *ProductionBudget* group in the table. This means that the *Travel Expenses* article has been added to this restriction group.


## Step 2: Converting the Budget by Using the Updated Budget Tree {#section_ycl_mjv_vxb .section}

To convert the budget by using the updated budget tree, do the following:

1.  Open the [Budgets](GL_30_20_10.md) \(GL302010\) form.
2.  In the Summary area, specify the financial year, and ensure that the following settings are specified:
    -   **Branch**: *HEADOFFICE \(SweetLife Head Office and Wholesale Center\)*
    -   **Ledger**: *BUDGET*
    -   **Financial Year**: *2026*
    -   **Tree View**: Selected
3.  On the form toolbar, click **Manage Budget**.
4.  In the **Manage Budget** dialog box, which opens, select *Convert Budget Using Current Budget Configuration* in the **Select Action** box. Click **OK**, and in the warning message that is displayed, click **OK**.
5.  On the form toolbar, click **Save** to save the changes.

## Step 3: Updating the Travel Expenses Article {#section_adl_mjv_vxb .section}

To update the *Travel Expenses* article, do the following:

1.  While you are still on the [Budgets](GL_30_20_10.md) \(GL302010\) form, click the **Production** node.

    One budget article has been added to the node automatically by the system during the conversion.

2.  In the row for the *70000* account, enter `3,600.00` in the **Amount** column.
3.  On the table toolbar, click **Distribute**.
4.  In the **Distribute Year Amount by Periods** dialog box, which opens, make sure that the following settings are specified:
    -   **Distribution Method**: *Evenly*
    -   **Apply to All Articles in This Node**: Cleared
5.  Click **OK**. The amount that you have specified has been distributed evenly through the periods of the financial year.
6.  On the form toolbar, click **Save** to save your changes.

## Step 4: Releasing the Updated Budget {#section_ddl_mjv_vxb .section}

To release the updated budget, do the following:

1.  Open the [Release Budgets](GL_50_55_10.md) \(GL505510\) form.
2.  On the form toolbar, select the updated budget and click **Release**.

## Step 5: Uploading and Releasing a Budget for 2027 {#section_fdl_mjv_vxb .section}

To upload and then release a budget for 2027 that should be based on the updated budget tree, do the following:

1.  Open the [Budgets](GL_30_20_10.md) \(GL302010\) form.
2.  In the Summary area, specify the 2027 financial year in the **Financial Year** box.
3.  In the **Preload from Budget Configuration** dialog box, which the system opens, click **Yes**.
4.  Ensure that the following settings have been inserted by default:
    -   **Branch**: *HEADOFFICE*
    -   **Ledger**: *BUDGET*
    -   **Tree View**: Selected
5.  On the table toolbar, click **Load Records from File**.
6.  In Step 1 of the **Import Data** wizard, which opens, click **Upload File**, and select the [Budget\_SWEETLIFE\_2027.xlsx](Files/Budget_SWEETLIFE_2026.xlsx) file. Click **Next**.
7.  In Step 2 of the wizard, leave the *Update Existing* option in the **Mode** box and click **Next**.
8.  In Step 3 of the wizard, leave all the default settings and click **Finish**.

    The system uploads the budget articles from the Excel file.

9.  On the form toolbar, click **Save** to save the budget configuration.
10. Open the [Release Budgets](GL_50_55_10.md) \(GL505510\) form.
11. On the form toolbar, click **Release All** to release all the listed budget articles.

**Parent topic:**[Modifying a Hierarchical Budget](../UserGuide/Finance_Modifying_Hierarchical_Budget_Mapref.md)

