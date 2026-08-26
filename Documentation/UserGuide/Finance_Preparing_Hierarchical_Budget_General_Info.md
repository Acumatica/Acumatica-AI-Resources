# Hierarchical Budget: General Information {#_e2d264f2-0de6-4f4b-9e20-619055461faf .concept}

In Acumatica ERP, you can create a hierarchical budget—that is, a budget that has multiple levels. For each level, the budget can be reviewed and analyzed.

## Learning Objectives {#section_vqk_mjv_vxb .section}

In this chapter, you will learn how to create and release a hierarchical budget.

## Applicable Scenarios {#section_xqk_mjv_vxb .section}

You create a hierarchical budget when you want to maintain planned and forecast revenues and expenses as a multilevel list of budget articles.

## Workflow of Preparing a Hierarchical Budget {#section_zqk_mjv_vxb .section}

Before you start preparing a hierarchical budget, make sure that the following tasks have been performed in the system:

-   The ledger to which the budget will be posted has been created on the [Ledgers](GL_20_15_00.md) \(GL201500\) form; this ledger must have the *Budget* type. For details, see [Budget Ledger: General Information](../ImplementationGuide/BudgetLedger_GeneralInfo.md).
-   The budget structure has been specified on the [Budget Configuration](GL_20_50_00.md) \(GL205000\) form. For details, see [Budget Tree: General Information](../ImplementationGuide/config_Budget_Tree_GeneralInfo.md).

The process of preparing a hierarchical budget consists of the following general steps:

1.  Creating the budget: On the [Budgets](GL_30_20_10.md) \(GL302010\) form, you add the year's budget amounts for the leaf budget articles and distribute them among the periods.
2.  Approving and releasing the budget: After the needed parties have reviewed and approved the prepared budget, to post the budget to a budget ledger, you have to release the budget articles on the [Release Budgets](GL_50_55_10.md) \(GL505510\) form.

## Creation of Hierarchical Budgets {#section_crk_mjv_vxb .section}

After you have configured the budget structure on the [Budget Configuration](../Shared/../UserGuide/GL_20_50_00.md) \(GL205000\) form, it is preloaded on the [Budgets](../Shared/../UserGuide/GL_30_20_10.md) \(GL302010\) form. For each budget that you create, you specify the following:

-   The branch \(if the organization consists of multiple companies or branches\) for which the budget is being prepared
-   The ledger of the *Budget* type where the budget amounts will be stored
-   The financial year for which the budget is prepared

You can enter amounts for only leaf budget articles. To do so, do one of the following:

-   To enter amounts manually, you type each annual amount in the **Amount** column.
-   To import the amounts from an Excel spreadsheet, you click **Load Records from File** on the table toolbar and upload the file.
-   To preload the amounts from an actual ledger, a statistical ledger, or another budget, you click **Preload Articles** on the form toolbar and select the source settings in the **Preload Budget Articles** wizard.

The system calculates the amount for each node automatically as the sum of the amounts of all its leaf articles. The amounts for the nodes containing other nodes are also calculated automatically, based on the amounts of all leaf articles within those nodes.

**Parent topic:**[Preparing a Hierarchical Budget](../UserGuide/Finance_Preparing_Hierarchical_Budget_Mapref.md)

