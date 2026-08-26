# Marketing Campaigns: Implementation Checklist {#_3b3de79e-7330-429a-9b94-4353c7b78c3a .concept}

The following sections provide details you can use to ensure that the system is configured properly for creating and managing a marketing campaign, and to understand \(and change, if needed\) the settings that affect the workflow of campaign management.

## Implementation Checklist { .section}

We recommend that before you start creating and managing a marketing campaign, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the following features have been enabled:-   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as handling of sales opportunities, contacts, marketing lists, and marketing campaigns.
-   *Scheduled Processing* in the *Monitoring &amp; Automation* group of features: This feature gives you the ability to create schedules for the automatic processing of documents

|
|[Customer Management Preferences](CR_10_10_00.md) \(CR101000\)|All the necessary settings have been specified and saved to the system.|
|[Lead Classes](CR_20_70_00.md) \(CR207000\)|All the needed lead classes with the necessary settings and attributes have been created.|
|[Contact Classes](CR_20_50_00.md) \(CR205000\)|All needed contact classes with the necessary settings and attributes have been created.|
|[Business Account Classes](CR_20_80_00.md) \(CR208000\)|All needed business account classes with the necessary settings and attributes have been created.|
|[Campaign Classes](CR_20_25_00.md) \(CR202500\)|The needed campaign classes with the necessary settings and attributes have been created.|

## Other Settings That Affect the Workflow of Campaign Management { .section}

You can affect the workflow of campaign management by specifying additional settings as follows: If the *Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can use the project accounting functionality to track expenses and revenue related to a marketing campaign. The system can regard a marketing campaign as a project and use the project budget tracking mechanism for tracking the campaign budget. For more information about project budgets, see [Managing the Project Budget](Projects_Budget_Mapref.md). A project can be associated with a marketing campaign through the **Project Accounting Integration** section on the **Campaign Details** tab of the [Marketing Campaigns](CR_20_20_00.md) \(CR202000\) form. If needed, multiple campaigns may be associated with a single project. \(For details, see [Marketing Campaigns: Project Accounting for Campaigns](CRM_Mktg_Mng_Marketing_Campaigns_Integration_Project_Accounting.md).\)

## Validation of Configuration { .section}

To make sure that all settings are configured correctly, we recommend that in your system, you create and work with marketing campaigns by performing instructions similar to those described in [Marketing Campaigns: Process Activity](CRM_Mktg_Mng_Marketing_Campaigns_Process_Activity.md).

**Parent topic:**[Managing Marketing Campaigns](../UserGuide/CRM_Mktg_Mng_Marketing_Campaigns_Mapref.md)

