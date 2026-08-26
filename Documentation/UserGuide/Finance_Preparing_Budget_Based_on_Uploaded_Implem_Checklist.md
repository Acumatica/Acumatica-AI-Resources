# Budget Based on an Existing Budget: Implementation Checklist {#_e7328501-405e-48d7-8231-516d2b1634eb .concept}

The following sections provide details you can use to ensure that the system is configured properly for preparing a budget based on an uploaded budget, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_qnk_mjv_vxb .section}

We recommend that before you initially prepare a budget, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Standard Financials* feature has been enabled.|
|Multiple forms|Make sure that the minimum configuration of the company has been performed, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).|
|GL functionality|Make sure that the general ledger functionality has been implemented, as described in [General Ledger: General Information](../ImplementationGuide/config_GL_Generalinfo.md).|
|[Ledgers](GL_20_15_00.md) \(GL201500\)|Make sure that the ledger to which the budget should be posted has been created, as described in [Budget Ledger: General Information](../ImplementationGuide/BudgetLedger_GeneralInfo.md).|
|[Chart of Accounts](GL_20_25_00.md) \(GL202500\)|Check whether the necessary accounts have been created.|
|[Master Financial Calendar](GL_20_10_00.md) \(GL201000\)|Be sure that calendars for the financial years for which budgets will be created have been generated.|
|[Budgets](GL_30_20_10.md) \(GL302010\)|Make sure that a simple budget has been created and released as described in [Simple Budget: Process Activity](Finance_Preparing_Simple_Budget_Activity.md).|

## Additional Configuration {#_c518cb6d-2320-42b8-a73d-c17b246be1e2 .section}

The following table provides details of additional configuration needed for the preparation of a simple budget.

|Form|Settings to Check|Notes|
|----|-----------------|-----|
|Multiple forms|If your company uses subaccounts, the subaccounts have to be configured, as described in [Subaccounts: Implementation Activity](../ImplementationGuide/config_Subaccounts_Implem_Activity.md).| |

## Validation of Configuration {#section_tnk_mjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you prepare a budget based on an uploaded budget by performing instructions similar to those described in [Budget Based on an Existing Budget: Process Activity](Finance_Preparing_Budget_Based_on_Uploaded_Process_Activity.md).

**Parent topic:**[Preparing a Budget Based on an Existing Budget](../UserGuide/Finance_Preparing_Budget_Based_on_Uploaded_Mapref.md)

