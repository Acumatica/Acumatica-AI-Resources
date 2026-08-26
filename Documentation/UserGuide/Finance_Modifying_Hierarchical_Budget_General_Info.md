# Modification of a Hierarchical Budget: General Information {#_abc99a14-70ee-4997-b199-3bcd2178f590 .concept}

In Acumatica ERP, you can create a hierarchical budget—that is, a budget that has multiple levels. Each level of the budget can be reviewed and analyzed.

## Learning Objectives {#section_l1l_mjv_vxb .section}

In this chapter, you will learn how to modify a hierarchical budget by adding an article to a budget node.

## Applicable Scenarios {#section_n1l_mjv_vxb .section}

You modify a budget if you want to manually add a leaf budget article to a budget node.

## Creation of Hierarchical Budgets {#section_p1l_mjv_vxb .section}

After you have configured the budget structure on the [Budget Configuration](../Shared/../UserGuide/GL_20_50_00.md) \(GL205000\) form, it is preloaded on the [Budgets](../Shared/../UserGuide/GL_30_20_10.md) \(GL302010\) form. For each budget that you create, you specify the following:

-   The branch \(if the organization consists of multiple companies or branches\) for which the budget is being prepared
-   The ledger of the *Budget* type where the budget amounts will be stored
-   The financial year for which the budget is prepared

You can enter amounts for only leaf budget articles. To do so, do one of the following:

-   To enter amounts manually, you type each annual amount in the **Amount** column.
-   To import the amounts from an Excel spreadsheet, you click **Load Records from File** on the table toolbar and upload the file.
-   To preload the amounts from an actual ledger, a statistical ledger, or another budget, you click **Preload Articles** on the form toolbar and select the source settings in the **Preload Budget Articles** wizard.

The system calculates the amount for each node automatically as the sum of the amounts of all its leaf articles. The amounts for the nodes containing other nodes are also calculated automatically, based on the amounts of all leaf articles within those nodes.

## Modification of Budget Articles {#section_q1l_mjv_vxb .section}

When you create a budget on the [Budgets](GL_30_20_10.md) \(GL302010\) form, the system automatically adds the nodes and the articles to the budget by using the preconfigured budget tree on the [Budget Configuration](GL_20_50_00.md) \(GL205000\) form.

You can also edit the account and subaccount \(if subaccounts are used in your system\) of budget articles if any of the following criteria are met:

-   The budget articles are leaves.
-   The budget articles have been added manually \(that is, they have not been preloaded from a configured budget tree\).
-   The budget articles have not been released.

**Parent topic:**[Modifying a Hierarchical Budget](../UserGuide/Finance_Modifying_Hierarchical_Budget_Mapref.md)

