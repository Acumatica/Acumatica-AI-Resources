# Opening Financial Periods: Implementation Checklist {#_983d2b17-ca3a-40bc-995a-8a6c9fb85f08 .concept}

To ensure that the system has been configured properly for the opening of financial periods, make sure that the criteria listed in the table have been met in the system as described.

|Form|Criteria to Check|Notes|
|----|-----------------|-----|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure the minimal features have been enabled, as described in [Company Without Branches: General Information](../ImplementationGuide/config_Basic_Company_GeneralInfo.md).| |
|[Master Financial Calendar](GL_20_10_00.md) \(GL201000\)|Make sure that the financial year for which you need to generate periods exists. For details, see [To Add the Next Financial Year and Generate Its Periods](GL__HOW_To_Add_Next_FinYear.md).| |

## Settings That Affect the Workflow {#section_p3j_mjv_vxb .section}

The following settings and entities should be specified and defined, respectively:

-   The following common settings should be specified on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form:
    -   The *Multibranch Support* and *Multicompany Support* features should be enabled to maintain multiple companies in one tenant and multiple branches and to make it possible to enable *Centralized Period Management* feature.
    -   The *Centralized Period Management* feature should be disabled to make it possible to open, close, and lock a particular financial period separately for each company within the tenant.

-   The following general ledger settings should be specified on the **Posting Settings** tab of the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form:
    -   Select the **Restrict Access to Closed Periods** check box to allow posting to closed periods to only users belonging to the *Financial Supervisor* role.

With these settings specified, users in your company can record and process documents in Acumatica ERP quickly and accurately, with a minimum of manual actions.

**Parent topic:**[Opening Financial Periods](../UserGuide/Finance_OpeningPeriods_Mapref.md)

