# Closing Financial Periods: Implementation Checklist {#_d3916adb-d17e-4351-924f-68502a4550ec .concept}

To ensure that the system has been configured properly for the closing of financial periods, make sure that the criteria listed in the table have been met in the system as described.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md).| |

## Settings That Affect the Workflow {#section_inj_mjv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following common settings should be specified on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:
    -   The *Multibranch Support* feature should be enabled to maintain multiple branches and to make it possible to enable *Centralized Period Management* feature.
    -   The *Multicompany Support* feature should be enabled to maintain multiple companies within one tenant
    -   The *Centralized Period Management* feature should be disabled to make it possible to open, close, and lock a particular financial period separately for each company within the tenant.

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Select the **Restrict Access to Closed Periods** check box to allow posting to closed periods to only users belonging to the *Financial Supervisor* role.
-   The following settings should be specified on the [User Roles](SM_20_10_05.md) \(SM201005\) form:
    -   Make sure that the user you are going to use in the process activity later has been assigned to the *Financial Supervisor* role. Users assigned to this role can reopen *Closed* periods and unlock *Locked* periods, and also post to closed periods even if the **Restrict Access to Closed Periods** check box is selected on the [General Ledger Preferences](GL_10_20_00.md) form.

With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Closing Financial Periods in Subledgers and GL](../UserGuide/Finance_ClosingPeriods_Mapref.md)

