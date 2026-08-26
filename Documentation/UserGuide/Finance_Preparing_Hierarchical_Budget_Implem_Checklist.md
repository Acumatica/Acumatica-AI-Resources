# Hierarchical Budget: Implementation Checklist {#_5a406f6e-c2fd-47b2-9b3f-901342b9816a .concept}

The following table provides details you can use to ensure that the system is configured properly for the preparation of a hierarchical budget, and to understand an additional configuration task that can affect the processing workflow.

|Form|Things to Check|Notes|
|----|---------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Standard Financials* feature has been enabled.| |
|Multiple forms|Make sure that the minimum configuration of the company has been performed, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).| |
|[Ledgers](GL_20_15_00.md) \(GL201500\) form|Make sure that the ledger to which the budget should be posted has been created, as described in [Budget Ledger: General Information](../ImplementationGuide/BudgetLedger_GeneralInfo.md).| |
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\) form|Check whether the necessary accounts have been created.| |
|[Master Financial Calendar](GL_20_10_00.md) \(GL201000\) form|Be sure that calendars for the financial years for which budgets will be created have been generated.| |
|[Budget Configuration](GL_20_50_00.md) \(GL205000\) form|Make sure that the relevant budget structure has been configured, as described in [Budget Tree: Implementation Activity](../ImplementationGuide/config_Budget_Tree_Implem_Activity.md).| |

## Configuration Tasks That Can Affect the Processing Workflow {#_c518cb6d-2320-42b8-a73d-c17b246be1e2 .section}

If your company uses subaccounts, the *Subaccounts* feature has to be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. In this case, make sure that the budget structure has all account-subaccount pairs that are used for budgeting on the [Budget Configuration](GL_20_50_00.md) \(GL205000\) form.

**Parent topic:**[Preparing a Hierarchical Budget](../UserGuide/Finance_Preparing_Hierarchical_Budget_Mapref.md)

