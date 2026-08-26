# Budget Ledger: General Information {#_55bf7202-4294-4ec6-90fb-9dd8971359ea .concept}

In Acumatica ERP, you can create budget ledgers, which are ledgers of the *Budget* type. When you create a budget ledger, you specify the companies and branches that can post to it. Then, a budget can be assigned to the budget ledger. A budget is a worksheet containing GL accounts, subaccounts, and the budget amounts for each account and subaccount pair. The budget is also associated with a specific branch and financial year.

## Learning Objectives { .section}

In this chapter, you will learn how to create a ledger of the *Budget* type.

## Applicable Scenarios { .section}

You create a budget ledger if you need to prepare a budget in the system. You can use the budget ledger as a base ledger for calculating allocation proportions. For details, see [Allocation Rules: General Information](config_Allocation_Rules_GeneralInfo.md).

## Creation and Population of a Budget Ledger { .section}

You can create as many budget ledgers as needed on the [Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\) form. A single ledger can be used to post the annual budgets for different companies or branches. However, to prepare two different budgets for the same company, branch, and year \(for example, an optimistic budget and a pessimistic budget\), you must create a separate budget ledger for each budget.

To post a budget to a budget ledger, you perform the following general instructions:

1.  On the [Budgets](../UserGuide/GL_30_20_10.md) \(GL302010\) form, you create a budget for a year.
2.  On the [Release Budgets](../UserGuide/GL_50_55_10.md) \(GL505510\) form, you release the budget, that is, post the budget to a budget ledger.

    After a budget is released, the budget amounts can be displayed in reports and compared with actual figures or other budgets on the [Budgets](../UserGuide/GL_30_20_10.md) form.


**Tip:** Transactions cannot be entered in the budget ledger.

**Parent topic:**[Budget Ledger](../ImplementationGuide/BudgetLedger_Mapref.md)

