# Converting a Simple Budget to a Hierarchical Budget: Implementation Checklist {#_3a28ffd0-b200-4490-a6e0-0aff0f0df802 .concept}

The following table provides details you can use to ensure that the system is configured properly for the conversion of a simple budget to a hierarchical budget, and to understand \(and change, if needed\) the settings that affect the processing workflow.

|Form|Things to Check|Notes|
|----|---------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Standard Financials* feature has been enabled.| |
|Multiple forms|Make sure that the minimum configuration of the company has been performed, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).| |
|[Ledgers](GL_20_15_00.md) \(GL201500\)|Make sure that the ledger to which the budget should be posted has been created, as described in [Budget Ledger: General Information](../ImplementationGuide/BudgetLedger_GeneralInfo.md).| |
|[Budget Configuration](GL_20_50_00.md) \(GL205000\)|Make sure that the budget structure has been configured, as described in [Budget Tree: Implementation Activity](../ImplementationGuide/config_Budget_Tree_Implem_Activity.md).| |
|[Budgets](GL_30_20_10.md) \(GL302010\)|Make sure that in the budget that you are going to convert,the masks that are used are the same as in the configured tree.|If any mask for a single-level budget is split into multiple masks on a tree or if multiple masks used somewhere in the single-level budget are merged into a single mask for the tree, the budget cannot be converted.|

## Other Settings That Affect the Workflow {#section_bxk_mjv_vxb .section}

To cause some users to view only the budget nodes to which they are assigned access rights based on their roles, you perform the configuration described in [Access to Budget Nodes: Implementation Activity](../ImplementationGuide/Finance_Access_to_Budget_Nodes_Process_Activity.md).

## Validation of Configuration {#section_dxk_mjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you convert a simple budget to a hierarchical budget by performing instructions similar to those described in [Conversion of a Simple Budget to a Hierarchical Budget: Process Activity](Finance_Converting_Budget_Activity.md).

**Parent topic:**[Converting a Simple Budget to a Hierarchical Budget](../UserGuide/Finance_Converting_Budget_Mapref.md)

