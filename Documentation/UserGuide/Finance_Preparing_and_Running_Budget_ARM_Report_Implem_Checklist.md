# Budget vs Actual ARM Report: Implementation Checklist {#_df87da66-6478-46f6-a577-2c3a505d4026 .concept}

The following sections provide details you can use to ensure that the system is configured properly for preparing and running an ARM report, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_ghl_mjv_vxb .section}

We recommend that before you initially prepare and run an ARM report, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Things to Check|Notes|
|----|---------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Standard Financials* feature has been enabled.| |
|Multiple forms|Make sure that the minimum configuration of the company has been performed, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md), [Company with Branches that Do Not Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_No_Balancing_GeneralInfo.md), and [Company with Branches that Require Balancing: General Information](../ImplementationGuide/config_Company_with_Branches_with_Balancing_GeneralInfo.md).| |
|[Ledgers](GL_20_15_00.md) \(GL201500\)|Make sure that the budget ledger that will be used for the report configuration has been created, as described in [Budget Ledger: General Information](../ImplementationGuide/BudgetLedger_GeneralInfo.md).| |
|[Master Financial Calendar](GL_20_10_00.md) \(GL201000\)|Be sure that calendars for the financial years for which budgets will be created have been generated.| |
|[Budget Configuration](GL_20_50_00.md) \(GL205000\)|Make sure that the relevant budget structure has been configured, as described in [Budget Tree: Implementation Activity](../ImplementationGuide/config_Budget_Tree_Implem_Activity.md).| |
|[Budgets](GL_30_20_10.md) \(GL302010\)|Make sure that a hierarchical budget has been created, as described in [Conversion of a Simple Budget to a Hierarchical Budget: Process Activity](Finance_Converting_Budget_Activity.md) or [Hierarchical Budget: Process Activity](Finance_Preparing_Hierarchical_Budget_Activity.md).| |

## Validation of Configuration {#section_ihl_mjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you prepare and run an ARM report by performing instructions similar to those described in [Budget vs. Actual ARM Report: Process Activity](Finance_Preparing_and_Running_Budget_ARM_Report_Process_Activity.md).

**Parent topic:**[Preparing and Running a Budget vs Actual ARM Report](../UserGuide/Finance_Preparing_and_Running_Budget_ARM_Report_Mapref.md)

