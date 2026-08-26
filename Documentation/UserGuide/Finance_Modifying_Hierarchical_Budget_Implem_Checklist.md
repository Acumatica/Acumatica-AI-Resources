# Modifying a Hierarchical Budget: Implementation Checklist {#_a40d21cb-8ae2-4f39-acbd-70d82fdb6748 .concept}

The following table provides details you can use to ensure that the system is configured properly for the modification of a hierarchical budget, and to understand an additional configuration task that can affect the processing workflow.

|Form|Things to Check|Notes|
|----|---------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Standard Financials* feature has been enabled.| |
|Multiple forms|Make sure that the minimum configuration of the company has been performed, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).| |
|[Ledgers](GL_20_15_00.md) \(GL201500\)|Make sure that the ledger to which the budget should be posted has been created, as described in [Budget Ledger: General Information](../ImplementationGuide/BudgetLedger_GeneralInfo.md).| |
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|Check whether the necessary accounts have been created.| |
|[Master Financial Calendar](GL_20_10_00.md) \(GL201000\)|Be sure that calendars for the financial years for which budgets will be created have been generated.| |
|[Budget Configuration](GL_20_50_00.md) \(GL205000\)|Make sure that the relevant budget structure has been configured, as described in [Budget Tree: Implementation Activity](../ImplementationGuide/config_Budget_Tree_Implem_Activity.md).| |
|[Budgets](GL_30_20_10.md) \(GL302010\)|Make sure that a hierarchical budget has been created, as described in [Conversion of a Simple Budget to a Hierarchical Budget: Process Activity](Finance_Converting_Budget_Activity.md) or [Hierarchical Budget: Process Activity](Finance_Preparing_Hierarchical_Budget_Activity.md).| |

## Configuration Tasks That Can Affect the Processing Workflow {#_c518cb6d-2320-42b8-a73d-c17b246be1e2 .section}

If your company uses subaccounts, the *Subaccounts* feature has to be enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. In this case, make sure that the budget structure has all account-subaccount pairs that are used for budgeting on the [Budget Configuration](GL_20_50_00.md) \(GL205000\) form.

## Validation of Configuration {#section_jbl_mjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you modify a hierarchical budget by performing instructions similar to those described in [Modification of a Hierarchical Budget: Process Activity](Finance_Modifying_Hierarchical_Budget_Process_Activity.md).

**Parent topic:**[Modifying a Hierarchical Budget](../UserGuide/Finance_Modifying_Hierarchical_Budget_Mapref.md)

