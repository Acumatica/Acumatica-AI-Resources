# GL Consolidation Configuration: General Information {#_1dc0ec81-0965-4fc3-b789-bdc737e01bac .concept}

The functionality of GL consolidation allows you to consolidate data from a subsidiary company \(a consolidation unit\) into a specific branch in the parent tenant or from specific branches of a subsidiary company into a specific branch of the parent tenant. You can configure which data should be consolidated and how exactly the data should be consolidated. After consolidation has been configured, you can consolidate the data as often as you need to within each financial period.

This functionality is available only if the *General Ledger Consolidation* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Learning Objectives {#section_o5l_mjv_vxb .section}

In this lesson, you will learn how to do the following:

-   Perform initial configuration in the parent company
-   Create a tenant for a subsidiary company without branches and perform initial configuration in it

## Applicable Scenarios {#section_q5l_mjv_vxb .section}

You perform GL consolidations in the following cases:

-   The parent company has one or multiple subsidiaries implemented as separate tenants and needs GL consolidation for reporting purposes. \(This scenario is used in the activities that follow.\)
-   The parent company has one or multiple subsidiaries that use the base currency that differs from the parent's base currency and are implemented as separate tenants. The parent company needs GL consolidation for reporting purposes.

## Consolidation Process {#section_s5l_mjv_vxb .section}

The consolidation process in the general ledger includes three stages:

1.  Consolidation configuration, which is performed initially by each consolidation unit and by the parent company, as described in [GL Consolidation Configuration: To Configure a Consolidation Unit](Finance_GL_Consolidation_Config_To_Configure_Consol_Unit.md) and [GL Consolidation Configuration: To Configure the Parent Company](Finance_GL_Consolidation_Config_To_Configure_Parent_Company.md).
2.  Data preparation for each consolidation unit, as described in [GL Consolidation: To Prepare the Consolidation Unit](Finance_GL_Consolidation_To_Prepare_Consol_Unit.md).
3.  Import of the consolidation data from each of the units by the parent company, which is performed periodically at the interval that best suits your company. For details, see [GL Consolidation: To Import Consolidation Data from a Subsidiary](Finance_GL_Consolidation_To_Import_Data_From_Subsidiary.md).

Each time the consolidation data is imported, a batch of the *Consolidation* type is created on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Restriction on Financial Periods {#section_v5l_mjv_vxb .section}

During the import, consolidation data is grouped by the financial periods of the reporting unit. Thus, financial periods in the consolidation units and in the parent company should be defined similarly; otherwise, the consolidated data will be incorrect.

## Configuration Requirements {#section_vv2_1y4_y4b .section}

Before you get started, you should review the hierarchy of the companies whose data should be consolidated, and determine which companies report to which. We consider only a two-level hierarchy: a parent company and the subsidiary or subsidiaries that report to it. \(In Acumatica ERP, subsidiaries that are consolidated are referred to as *consolidation units*.\) This simple hierarchy can be used as a part of a more complicated hierarchy, with the consolidation process going from the bottom to the top and with parent companies consolidating data from the units beneath them and then becoming units of the parent company above them. This topic is based on the assumption that the parent company and its subsidiaries use Acumatica ERP.

**Attention:** If a consolidation unit uses a third-party ERP system, the parent company can consolidate the data by importing the trial balance that has been prepared by the unit and exported to a CSV file by using the unit's third-party software. In this case, the mapping of accounts and subaccounts should be manually performed directly in the file, before the parent company performs import from this file.

For correct consolidated data, the following requirements should be met:

1.  The parent company and its subsidiaries should have the same configuration of financial year and a similar structure of financial periods, because the consolidation data is grouped by the financial periods of subsidiaries.

    **Tip:** If the *Multiple Calendars Support* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, for consolidation, you can prepare a company in the parent tenant with financial periods that are exactly the same as in the subsidiary but different from the periods in the parent company.

2.  The parent company and its subsidiaries should have a similar structure for their charts of accounts, with fewer accounts on the parent chart. Data from multiple accounts used in a subsidiary can be consolidated into one account of the parent company.
3.  A subsidiary should have a subaccount structure similar to that of the parent company. The parent company may have one additional segment \(compared to the subsidiary\) with values designating subsidiaries.

## Configuration of the Parent Company {#section_bvl_mjv_vxb .section}

Before performing the consolidation for the first time, you configure the parent company as follows:

1.  You specify the access data for each consolidation unit on the [Consolidation](GL_10_30_00.md) \(GL103000\) form of the parent company.
2.  You synchronize the data on the same form and select source ledgers for each consolidation unit in the **Source Ledger** box.

## Configuration of Consolidation Units {#section_dvl_mjv_vxb .section}

Before performing the consolidation for the first time, each consolidation unit whose data will be exported to the parent company has to be configured as follows:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, you configure each consolidation unit as a company of any type—*Without Branches*, *With Branches Requiring Balancing*, or *With Branches Not Requiring Balancing*.

    **Tip:** If you specify a company of any type in the **Source Company/Branch** column on the [Consolidation](GL_10_30_00.md) \(GL103000\) form, the consolidation process that is run on the [Import Consolidation Data](GL_50_90_00.md) \(GL509000\) form will consolidate the balances of all the branches of this company.

-   For a ledger that will be used as a source of balances for consolidation, you select the **Consolidation Source** check box on the [Ledgers](GL_20_15_00.md) \(GL201500\) form.
-   You map accounts of a consolidation unit to accounts of the parent company by specifying the parent company account in the **Consolidation Account** column of the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form for each account of the consolidation unit. This activity must be performed after the data has been synchronized in the parent company on the [Consolidation](GL_10_30_00.md) form.

    **Tip:** If the chart of accounts in your consolidation unit \(subsidiary\) does not change, you perform this step once during configuration. However, you need to review the chart of accounts every month in the subsidiary tenant to make sure that all the accounts have been mapped.

    For details, see [GL Consolidation: Account Mapping](Finance_GL_Consolidation_Config_AccountMapping.md).

-   If subaccounts are used in your system, you map the subaccount segments and their values of a consolidation unit to subaccount segments and their values of the parent company by using the [Segmented Keys](CS_20_20_00.md) \(CS202000\) and [Segment Values](CS_20_30_00.md) \(CS203000\) forms.

For consolidation, the system will use the following hidden forms:

-   *Consolidation Accounts \(GL103001\)*
-   *Consolidation Branches \(GL103002\)*
-   *Consolidation Ledgers \(GL103003\)*
-   *Consolidation Companies \(GL103004\)*
-   *Consolidation Data \(GL509001\)*

Each of these forms is used as data storage during consolidation. The forms are not accessible on the UI, but you can open them by entering the form ID in the browser address line, as shown in the following example: `http://localhost/[AcumaticaInstance]/Main?CompanyID=[Tenant]&ScreenId=GL103001`.

By default, these hidden forms are not associated with any access roles. That is, any user has full access to them.

**Important:** Before performing consolidation, on the [Access Rights by Screen](SM_20_10_20.md) \(SM201020\) form, make sure that the user that will sign in to the source tenant \(the one specified in the **Username** column in the table of the [Consolidation](GL_10_30_00.md) \(GL103000\) form\) has the *Delete* access rights to all of these hidden forms. For details on restriction levels, see [User Roles: Calculation of the Restriction Level for a User](User_Roles_User_Access_Level_Calculation.md).

**Parent topic:**[Configuring GL Consolidation](../UserGuide/Finance_GL_Consolidation_Configuration_Mapref.md)

