# Access to Budget Nodes: Implementation Activity {#_5f2f3a4a-8200-4eb1-a137-5f462fac9d05 .task}

The following activity will walk you through the process of configuring access to budget nodes based on user roles.

## Story { .section}

Suppose that the management team of SweetLife Fruits &amp; Jams has asked the system administrator to assign access rights to the budget nodes for employees of particular roles: Sales managers should be able to view only the **Sales** node, purchasing managers should be able to view only the **Production** node, and the financial supervisor should view all nodes of the budget tree.

Acting as a system administrator, you need to give the users of the *Sales Manager*, *Purchasing Manager*, and *Financial Supervisor* roles the ability to access the budget tree nodes. \(For the *Sales Manager* and *Purchasing Manager* roles, you will grant the access to only particular users with the role—those that have completed their orientation period and are considered qualified to view this information.\) You will then review the access rights for the nodes.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed for the purposes of this activity:

-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the *SWEETLIFE* company has been defined.
-   On the [Users](../UserGuide/SM_20_10_10.md) \(SM201010\) form, the *becher*, *chubb*, *norman*, *pick*, *johnson*, and *gibbs* user accounts have been created.
-   On the [User Roles](../UserGuide/SM_20_10_05.md) \(SM201005\) form, the *Sales Manager*, *Purchasing Manager*, and *Financial Supervisor* roles have been defined.

## Process Overview { .section}

In this activity, on the [Access Rights by Role](../UserGuide/SM_20_10_25.md) \(SM201025\) form, you will first assign access to the [Budgets](../UserGuide/GL_30_20_10.md) \(GL302010\) form for the *Sales Manager* and *Purchasing Manager* user roles. You will then enable the *Row-Level Security* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. On the [GL Budget Access](../UserGuide/GL_10_50_30.md) \(GL105030\) form, you will create the *SalesBudget* and *ProductionBudget* restriction groups, selecting the users and budget tree nodes for each group, to assign access to the particular budget nodes.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as a system administrator Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  Make sure that you have completed [Budget Tree: Implementation Activity](config_Budget_Tree_Implem_Activity.md).

## Step 1: Assigning Access to All Budget Nodes for User Roles { .section}

To give users that are assigned to the *Sales Manager* and *Purchasing Manager* roles the access rights to review and modify budgets on the [Budgets](../UserGuide/GL_30_20_10.md) \(GL302010\) form, do the following:

1.  Open the [Access Rights by Role](../UserGuide/SM_20_10_25.md) \(SM201025\) form.
2.  In the **Role Name** box, select *Sales Manager*.
3.  In the left pane, click **Finance**, and in the table in the right pane, for the *Budgets* row, double-click the value in the **Access Rights** column, and select *Edit*.

    The **Finance** node controls the role's access to various finance-related forms, including [Budgets](../UserGuide/GL_30_20_10.md) \(GL302010\), which access rights you have set.

    The *Edit* level of access rights allows users with the role to view the form, select records, and edit details about any record. However, users with the role cannot create new records or entities of the type; they also cannot delete records.

4.  On the form toolbar, click **Save** to save your changes.
5.  In the **Role Name** box, select *Purchasing Manager*.
6.  In the left pane, click *Finance*, and in the table in the right pane, for the *Budgets* row, double-click the value in the **Access Rights** column, and select *Edit*.
7.  On the form toolbar, click **Save** to save your changes.

## Step 2: Enabling the Needed Feature { .section}

In this step, you will enable the *Row-Level Security* feature, which will make it possible to define restriction groups in the system. To enable the needed feature, do the following:

1.  Open the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  Select the **Row-Level Security** check box \(in the **Platform** group\).
4.  On the form toolbar, click **Enable**.

## Step 3: Assigning Access Rights to the Sales Node { .section}

In this step, you will create a restriction group and assign access rights to users with the *Sales Manager* role, as well as to the financial supervisor, who has the *johnson* username. Do the following:

1.  On the [GL Budget Access](../UserGuide/GL_10_50_30.md) \(GL105030\) form, add a new record.
2.  In the Summary area, specify the following settings in the Summary area:

    -   **Group Name**: `SalesBudget`
    -   **Description**: `Sales Budget Access`
    -   **Group Type**: *A*
    -   **Active**: Selected
    The system has uploaded all users in the system to the table on the **Users** tab.

3.  In the table, select the Included check box for the *becher*, *chubb*, *norman*, and *pick* users.

    These users are sales managers in SweetLife Fruits &amp; Jams; thus, they should have access to the **Sales** node of the company's budget on the [Budgets](../UserGuide/GL_30_20_10.md) \(GL302010\) form.

4.  In the table, select the Included check box for the *johnson* and *gibbs* users.

    Once you configure a restriction group of type *A*, the users not included in this group will not have access to the **Sales** node of the budget. The *johnson* user is a financial supervisor who needs access to this node. The *gibbs* user is a system administrator who needs access to this node for configuration purposes.

5.  On the **Budget Tree** tab, select the Included check box for the row with the **Sales** node of the budget to make it accessible for users added to this group.
6.  Make sure that the Included check boxes for sales articles have been selected automatically by the system.
7.  On the form toolbar, click **Save** to save the new restriction group.

## Step 4: Assigning Access Rights to the Production Node { .section}

To create a restriction group and assign access rights to users with the *Purchasing Manager* role \(as well as to the financial supervisor, who has the *johnson* username\), do the following:

1.  While you are still on the [GL Budget Access](../UserGuide/GL_10_50_30.md) \(GL105030\) form, click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:

    -   **Group Name**: `ProductionBudget`
    -   **Description**: `Production Budget Access`
    -   **Group Type**: *A*
    -   **Active**: Selected
    The system has uploaded all users in the system to the table on the **Users** tab.

2.  In the table, select the Included check boxes for the *brawner*, *jones*, and *wiley* users.

    These users are the purchasing managers in SweetLife Fruits &amp; Jams; thus, they should have access to the **Production** node of the company's budget on the [Budgets](../UserGuide/GL_30_20_10.md) \(GL302010\) form.

3.  Select the Included check boxes for the *johnson* and *gibbs* users.

    Once you configure a restriction group of type *A*, the users not included in this group will not have access to the **Production** node of the budget. The *johnson* user is a financial supervisor who needs access to this node. The *gibbs* user is a system administrator who needs access to this node for configuration purposes.

4.  On the **Budget Tree** tab, select the Included check box for the row with the **Production** node.
5.  On the form toolbar, click **Save** to save the new restriction group.

**Parent topic:**[Access to Budget Nodes](../ImplementationGuide/Finance_Assigning_Access_to_Budget_Nodes_Mapref.md)

