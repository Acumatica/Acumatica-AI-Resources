# Conversion of a Simple Budget to a Hierarchical Budget: Process Activity {#_33efb49a-6f55-464d-9376-a06012943ae8 .task}

In this activity, you will learn how to convert an existing simple budget into a hierarchical budget.

## Story {#section_lyk_mjv_vxb .section}

Suppose that the 2026 budget of the SweetLife Fruits &amp; Jams company, which contains sales and production budget articles, has to be converted into a hierarchical budget based on the previously created budget tree. \(As the company has grown, its management has decided to have more detailed budgets in the system, and a budget tree has been configured.\)

Acting as a system administrator, you need to convert the simple budget into a hierarchical budget and review how users with various roles can access the budget nodes.

## Configuration Overview {#section_oyk_mjv_vxb .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the *SWEETLIFE* company has been created.
-   On the [Users](SM_20_10_10.md) \(SM201010\) form, the *chubb*, *wiley*, *johmson*, and *gibbs* user accounts have been created.
-   On the [Ledgers](GL_20_15_00.md) \(GL201500\) form, the *BUDGET* ledger of the *Budget* type has been defined.

## Process Overview {#section_tyk_mjv_vxb .section}

In this activity, on the [Budgets](GL_30_20_10.md) \(GL302010\) form, you will convert a simple budget for 2026 into a hierarchical one. You will sign in as a user with the *Sales Manager* role, then as a user with the *Purchasing Manager* role, and finally as a user with the *Financial Supervisor* role; while signed in as each user, you will review the available budget nodes on the [Budgets](GL_30_20_10.md) \(GL302010\) form.

## System Preparation {#section_vyk_mjv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu button to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
3.  Make sure that you have performed the following prerequisite activity to upload a budget for the *HEADOFFICE* branch: [Simple Budget: Process Activity](Finance_Preparing_Simple_Budget_Activity.md).
4.  Make sure that you have performed the following prerequisite activity to configure restriction groups: [Access to Budget Nodes: Implementation Activity](../ImplementationGuide/Finance_Access_to_Budget_Nodes_Process_Activity.md).
5.  Make sure that you have performed the following prerequisite activity to configure a budget tree in the system: [Budget Tree: Implementation Activity](../ImplementationGuide/config_Budget_Tree_Implem_Activity.md).

## Step 1: Converting a Simple Budget to a Hierarchical Budget {#section_xyk_mjv_vxb .section}

To convert the simple budget to a hierarchical budget, do the following:

1.  Open the [Budgets](GL_30_20_10.md) \(GL302010\) form.
2.  In the Summary area, specify the following settings:
    -   **Branch**: *HEADOFFICE*
    -   **Ledger**: *BUDGET*
    -   **Financial Year**: *2026*
    -   **Tree View**: Cleared
3.  On the form toolbar, click **Manage Budget**.

    The system opens the **Manage Budget** dialog box.

4.  In the **Select Action** box, select *Convert Budget Using Current Budget Configuration*, and click **OK**.
5.  In the warning dialog box that appears, click **OK**.

    The system converts the current single-level budget by using the budget tree from the [Budget Configuration](GL_20_50_00.md) \(GL205000\) form.

6.  Select the **Tree View** check box, and in the left pane, review the list of added nodes from the simple budget.
7.  On the form toolbar, click **Save** to save the changes.
8.  Sign out from the system.

## Step 2: Reviewing the Accessible Budget Nodes for a Sales Manager {#section_bzk_mjv_vxb .section}

To review the budget nodes that are accessible for a sales manager based on the restriction groups that you set up, do the following:

1.  Sign in to the tenant by using the *chubb* username and the *123* password.
2.  Open the [Budgets](GL_30_20_10.md) \(GL302010\) form.
3.  In the Summary area, specify the following settings:
    -   **Branch**: *HEADOFFICE*
    -   **Ledger**: *BUDGET*
    -   **Financial Year**: 2026
    -   **Tree View**: Selected
4.  In the left pane, notice that only the **Sales** node is available for this user, who belongs to the *SalesBudget* restriction group.
5.  Sign out from the system.

## Step 3: Reviewing the Accessible Budget Nodes for a Purchasing Manager {#section_dzk_mjv_vxb .section}

To review the budget nodes that are accessible for a purchasing manager, do the following:

1.  Sign in to the tenant by using the *wiley* username and the *123* password.
2.  Open the [Budgets](GL_30_20_10.md) \(GL302010\) form.
3.  In the Summary area, specify the following settings:
    -   **Branch**: *HEADOFFICE*
    -   **Ledger**: *BUDGET*
    -   **Financial Year**: 2026
    -   **Tree View**: Selected
4.  In the left pane, notice that only the **Production** node with subnodes is available for this user, who belongs to the *ProductionBudget* restriction group.
5.  Sign out from the system.

## Step 4: Reviewing the Accessible Budget Nodes for a Financial Supervisor {#section_fzk_mjv_vxb .section}

To review the budget nodes that are accessible for a financial supervisor, do the following:

1.  Sign in to the tenant by using the *johnson* username and the *123* password.
2.  Open the [Budgets](GL_30_20_10.md) \(GL302010\) form.
3.  In the Summary area, specify the following settings:
    -   **Branch**: *HEADOFFICE*
    -   **Ledger**: *BUDGET*
    -   **Financial Year**: 2026
    -   **Tree View**: Selected
4.  In the left pane, notice that both the **Sales** node and the **Production** node with subnodes are available for this user, who belongs to the *SalesBudget* and *ProductionBudget* restriction groups.

**Parent topic:**[Converting a Simple Budget to a Hierarchical Budget](../UserGuide/Finance_Converting_Budget_Mapref.md)

