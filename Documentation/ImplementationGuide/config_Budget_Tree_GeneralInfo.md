# Budget Tree: General Information {#_8b7efbe5-fc90-4dc0-b4e0-a81b74e83747 .concept}

In Acumatica ERP, you can define a hierarchical budget structure that will be used by all companies and branches. To do so, you configure a budget tree, in which budget articles are divided into groups.

**Tip:** We recommend that you define a single budget tree instead of multiple simple budgets because a budget tree makes easier to prepare and analyze budgets. However, you can work with simple budgets, which are lists of budget articles, without first defining a budget tree. For details, see [Preparing a Simple Budget](../UserGuide/Finance_Preparing_Simple_Budget_Mapref.md).

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   The elements of a budget tree structure
-   The ways the budget tree can be configured

## Applicable Scenarios { .section}

You create a budget tree if hierarchical \(multilevel\) budgets are used by your organization to facilitate the preparation of the budget.

## Configuration of a Budget Tree { .section}

Before you start configuring budgets in Acumatica ERP, you should consider the needs of all companies and branches defined in the tenant so that you can include all the budget levels used by your companies and branches. You will use the same tree for all companies, branches, and budget versions.

To define the structure of the budgets that are used in the system, you build a budget tree on the [Budget Configuration](../UserGuide/GL_20_50_00.md) \(GL205000\) form. To do so, you add budget articles, which are represented as *nodes* and *leaves* on the tree.

Articles that are nodes group similar leaf articles. For example, you can create one node for the account–subaccount pairs for salaries and another node for the account–subaccount pairs that are used to record sales.

Each leaf article is defined by an account–subaccount pair \(or only accounts if subaccounts are not used in your system\). The budget amount is recorded to the account and subaccount of the leaf. The system calculates the amount for each node automatically as the sum of the amounts of all its leaf articles.

**Important:** An account–subaccount pair can be used only once within a tree.

The budget tree will be preloaded when you start creating a budget on the [Budgets](../UserGuide/GL_30_20_10.md) \(GL302010\) form. You can modify the preloaded structure for each budget.

## Node Budget Articles { .section}

You define the budget articles that are represented as nodes on the **Subarticles** pane of the [Budget Configuration](../UserGuide/GL_20_50_00.md) \(GL205000\) form. For each node, you enter a description; you can also specify account or subaccount masks \(or both types of masks\). The check box in the **Node** column has to be selected for each node you create in the system.

The account and subaccount masks specified for the node in the **Account Mask** and **Subaccount Mask** columns define the articles that can be added to this node. When you create a budget on the [Budgets](../UserGuide/GL_30_20_10.md) \(GL302010\) form, you can preload articles to this node based on the mask, so that you do not have to manually define a leaf for every single article in the budget tree.

You can further populate nodes with other nodes, or define leaf articles for each node.

## Leaf Budget Articles { .section}

You add a budget article that is represented as leaf on the **Subarticles** pane of the [Budget Configuration](../UserGuide/GL_20_50_00.md) \(GL205000\) form. Each leaf budget article is defined by an account \(or by an account-subaccount pair, if subaccounts are used in your system\). You can add an account \(or an account-subaccount pair\) for each leaf in one of the following ways:

-   To add a range of similar accounts \(and subaccounts, if any\), you click **Preload Accounts** on the table toolbar of the **Subarticles** pane. You then specify a range of accounts and a mask for subaccounts in the **Preload Accounts** dialog box. After you click **OK** in the dialog box, the system generates all possible account–subaccount pairs.
-   To enter each account or account–subaccount pair \(that is, each leaf\) manually, on the **Subarticles** pane, you click **Add Row** on the table toolbar and specify an account or an account–subaccount pair.

For each leaf budget article, you can specify an account mask in the **Account Mask** column and subaccount mask in the **Subaccount Mask** \(if subaccounts are used in your system\) column. The account mask \(or the pair of account mask and the subaccount mask\) defines the aggregated account \(or a pair of an account and subaccount\). For example, you might want to aggregate amounts of different accounts under just one account in the budget. To do so, you specify the account mask for the group of accounts in the leaf.

**Parent topic:**[Budget Tree](../ImplementationGuide/config_Budget_Tree_Mapref.md)

