# Access to Budget Nodes: Implementation Checklist {#_9ba67897-fc4f-438f-8c92-813e6762560a .concept}

The following sections provide details you can use to ensure that the system is configured properly for assigning access to budget nodes, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially assign access to budget nodes, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\)|Make sure that the *Standard Financials* and *Row-Level Security* features have been enabled.|
|Multiple forms|Make sure that the minimum configuration of the company has been performed, as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|GL functionality|Make sure that the general ledger functionality has been implemented, as described in [General Ledger: General Information](config_GL_Generalinfo.md).|
|[Ledgers](../UserGuide/GL_20_15_00.md) \(GL201500\)|Make sure that the ledger to which the budget should be posted has been created, as described in [Budget Ledger: General Information](BudgetLedger_GeneralInfo.md).|
|[Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\)|Check whether the necessary accounts have been created.|
|[Master Financial Calendar](../UserGuide/GL_20_10_00.md) \(GL201000\)|Be sure that calendars for the financial years for which budgets will be created have been generated.|
|[Budget Configuration](../UserGuide/GL_20_50_00.md) \(GL205000\)|Make sure that a budget tree has been created and released as described in [Budget Tree: Implementation Activity](config_Budget_Tree_Implem_Activity.md).|

## Additional Configuration {#_c518cb6d-2320-42b8-a73d-c17b246be1e2 .section}

The following table provides details of additional configuration needed for the preparation of a simple budget.

|Form|Settings to Check|Notes|
|----|-----------------|-----|
|Multiple forms|If your company uses subaccounts, the subaccounts have to be configured, as described in [Subaccounts: Implementation Activity](config_Subaccounts_Implem_Activity.md).| |

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you assign access to budget nodes by performing instructions similar to those described in [Access to Budget Nodes: Implementation Activity](Finance_Access_to_Budget_Nodes_Process_Activity.md).

**Parent topic:**[Access to Budget Nodes](../ImplementationGuide/Finance_Assigning_Access_to_Budget_Nodes_Mapref.md)

