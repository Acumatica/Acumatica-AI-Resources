# Project Creation and Processing: Configuration Prerequisites {#_ab1d9fb6-344b-4e76-9502-523f82504f70 .concept}

Before starting to create a project, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature must be enabled.

## Configuring Project Identifiers and the Non-Project Code { .section}

The *PROJECT* segmented key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form defines the identifier of the projects. By default, this segmented key specifies that the project identifier is an alphanumeric string of up to 10 characters. For the key, you can define how many segments it is to have, what values may be used, whether these values should be validated, and whether auto-numbering should be used in one of the segments. You can also divide item identifiers into segments with specific values. For more information on configuring segmented keys, see [Segmented Identifiers](CS__con_Identifier_Segmentation.md).

The *PROJECT* segmented key also defines the format of the non-project code, which is specified in transactions, documents, and document lines that are not related to any project. For convenience, the non-project code should be distinctly different from project IDs and should be short, such as the single character *X*, which is used by default.

The non-project code should be consistent with the structure of the *PROJECT* segmented key, which the system uses for the identifiers of projects, and cannot exceed its length. Also, you cannot create a non-project code with the identifier that matches an existing contract identifier because the *CONTRACT* segmented key inherits its structure from the *PROJECT* segmented key. If the *PROJECT* segmented key contains a validated segment \(or multiple validated segments\), the values of the validated segments should be specified in the validated positions of the segmented key.

Suppose the *PROJECT* segmented key consists of two segments, *XX* and *YYY*. The *XX* segment is not validated. The *YYY* segment is validated and the list of its predefined segment values includes only *001* and *002* values. In the first segment of the **Non-Project Code** box, you could specify any number of symbols that does not exceed its length \(for example, *P* or *PR*\). For the second validated segment in this box, you must specify the value selected from the list of predefined segment values. That is, the *PR-001* and *P-002* codes will be valid, but *PJ-003* will be invalid.

## Configuring the System { .section}

Before you enter any new project, you must ensure that the following are configured:

-   On the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, the basic project accounting settings have been specified: numbering sequences, non-project code, visibility settings, and posting settings. The actual combination of settings you need to specify depends on the processes in your organization and on the features enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For an example of specifying basic project settings, see [Basic Project Configuration: Implementation Activity](../ImplementationGuide/config_Project_Basic_Implem_Activity.md).
-   Optional: An approval workflow has been configured for projects. For details, see [Approval Configuration: General Information](../ImplementationGuide/config_Approvals_General_Info.md) and [Specific Approvals: Projects, Project-Related Documents, and Time Activities](../ImplementationGuide/Projects_Process_Project_Approval.md).
-   On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, the account groups that will be used in the project have been created and the GL accounts to be used in projects and project-related documents have been mapped to the appropriate account groups. Account groups make it possible to transfer financial and non-financial information between project management forms and other functional areas by associating any transactions posted in other areas with the related project. For an example of configuring an account group, see [Account Groups: General Information](Account_Groups_GeneralInfo.md).
-   On the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, each billing rule that you will assign to a project task has been created. These rules define which transactions should be used for billing and which accounts should be used to record the transactions that are generated in the billing process. For details, see [Billing Rules: General Information](Billing_Rules_GeneralInfo.md).
-   Optional: On the [Rate Table Codes](PM_20_42_00.md) \(PM204200\) form, each rate table code that you will assign to a project task has been created, and the rate table has been configured on the [Rate Tables](PM_20_60_00.md) \(PM206000\) form. The rate tables define pricing models in which price may differ depending on different sets of factors. For details, see [Billing Rates: General Information](Billing_Rates_GeneralInfo.md).
-   Optional: On the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form, each allocation rule that you will assign to a project task has been created. If your project uses a complex cost accrual model, you must specify appropriate allocation rules to correctly track project expenditures and future revenues. For examples of defining allocation rules, see [WIP Labor Costs in Cost-Plus Projects: Implementation Activity](Projects_Allocation_WIP_CP_Implem_Activity.md) and [WIP Labor Costs in Fixed-Price Projects: Implementation Activity](Projects_Allocation_WIP_FP_Implem_Activity.md).

**Parent topic:**[Creating and Processing Projects](../UserGuide/Projects_Process_Mapref.md)

