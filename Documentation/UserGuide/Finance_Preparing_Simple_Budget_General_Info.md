# Simple Budget: General Information {#_796ffa67-1791-4783-8e50-691d763a8503 .concept}

In Acumatica ERP, you can create simple budgets \(that is, single-level lists of budget articles\) with the amounts representing the specific expenses and revenues for a budget year of a particular company or branch.

## Learning Objectives {#section_fhk_mjv_vxb .section}

In this chapter, you will read about the ways you can create a simple budget in the system. You will also perform an activity that involves creating a simple budget by uploading it from an Excel file.

## Applicable Scenarios {#section_hhk_mjv_vxb .section}

You create a simple budget when you want to keep planned and forecast revenues and expenses as a single-level list of budget articles.

## Workflow of Preparing a Simple Budget {#section_jhk_mjv_vxb .section}

Before you start preparing a simple budget, you need to make sure that the ledger to which the budget will be posted has been created on the [Ledgers](GL_20_15_00.md) \(GL201500\) form; the ledger should have the *Budget* type. For details, see [Budget Ledger: General Information](../ImplementationGuide/BudgetLedger_GeneralInfo.md).

The process of preparing a simple budget consists of the following general steps:

1.  Creating the budget: You create a budget for a year on the [Budgets](GL_30_20_10.md) \(GL302010\) form.
2.  Releasing the budget: After you have reviewed the prepared budget, to post the budget to a budget ledger, you have to release the budget articles on the [Release Budgets](GL_50_55_10.md) \(GL505510\) form.

## Creation of Simple Budgets {#section_mhk_mjv_vxb .section}

You create simple \(single-level\) budgets on the [Budgets](GL_30_20_10.md) \(GL302010\) form. For each budget that you create, you specify the following:

-   The company for which the budget is being prepared; you also specify the branch if the company consists of multiple branches
-   The ledger of the *Budget* type where the budget amounts will be stored
-   The financial year for which the budget is prepared

You then add budget articles on the [Budgets](GL_30_20_10.md) form by using one of the following methods \(or a combination of these methods\):

-   You enter account–subaccount pairs \(or only accounts if subaccounts are not used in your system\) manually. To do this, for each pair or each account, you click **Add Row** on the table toolbar, select an account in the **Account** column and a subaccount in the **Subaccount** column \(if applicable\), and type the annual amount in the **Amount** column for each budget article. You then distribute the amount over the periods.

    **Important:** An account–subaccount pair may be used only once in a budget.

-   You import the list of budget articles from an Excel spreadsheet. To do this, you click **Load Records from File** on the table toolbar and upload the file.
-   You load the account–subaccount pairs \(or the accounts if subaccounts are not used in your system\) with their amounts from an actual ledger or from another budget ledger. To do this, you click **Preload Articles** on the form toolbar and select the source settings in the**Preload Budget Articles** wizard. You specify the source ledger, the financial year, and the accounts and subaccounts to be uploaded. You can also specify a multiplier to calculate the budget amounts based on the amounts available in the source ledger.

## Distribution of Amounts Over Financial Periods {#section_qhk_mjv_vxb .section}

On the [Budgets](../Shared/../UserGuide/GL_30_20_10.md) form \(GL302010\) form, you have to distribute the annual amounts specified for an article over the periods of the year before you can release the budget article. For the budget article to be released, the amount of the article has to be equal to the distributed amount.

You can distribute the amounts for each period in one of the following ways:

-   To distribute the amounts manually, you specify the necessary amounts for each period in the column corresponding to the period.
-   To distribute the amounts automatically, you click **Distribute** on the table toolbar. In the **Distribute Year Amount by Periods** dialog box, which opens, you select one of the following options in the **Distribution Method** box to define how the amounts should be distributed:
    -   *Evenly*: To distribute the annual amount over the financial periods evenly \(excluding the adjustment period if one has been configured in your system\)
    -   *Proportionally to the Previous Year*: To distribute the annual amount over the financial periods proportionally to the amounts of the previous year’s periods \(including the adjustment period\)
    -   *Proportionally to Compared Values*: To distribute the annual amount over the financial periods proportionally to the amounts selected for comparison \(including the adjustment period\)

To facilitate the distribution of the amounts, you also can select whether you want to distribute each amount for only the selected article or for all articles in the same node. Also, you can select a node and distribute the amounts for all subarticles of this node.

**Parent topic:**[Preparing a Simple Budget](../UserGuide/Finance_Preparing_Simple_Budget_Mapref.md)

