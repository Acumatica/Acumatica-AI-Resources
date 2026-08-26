# Project Tasks: Configuration Prerequisites {#_d189b298-10ea-4a21-bdfa-f93b5ab73620 .concept}

Before starting to create project tasks, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature must be enabled.

## Configuring Project Task Identifiers { .section}

The *PROTASK* segmented key on the [Segmented Keys](CS_20_20_00.md) \(CS202000\) form defines the identifier of the project tasks. By default, this segmented key specifies that the project task identifier is an alphanumeric string of up to 10 characters. For the key, you can define how many segments it is to have, what values may be used, whether these values should be validated, and whether auto-numbering should be used in one of the segments. You can also divide item identifiers into segments with specific values. For more information on configuring segmented keys, see [Segmented Identifiers](CS__con_Identifier_Segmentation.md).

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin creating project tasks:

-   On the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, the basic project accounting settings have been specified: numbering sequences, non-project code, visibility settings, and posting settings. The actual combination of settings you need to specify depends on the processes in your organization and on the features enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For an example of basic project configuration, see [Basic Project Configuration: Implementation Activity](../ImplementationGuide/config_Project_Basic_Implem_Activity.md).
-   On the [Projects](PM_30_10_00.md) \(PM301000\) form, the project for which you are going to create a task or multiple tasks has been created. For an example of creating a project, see [Project Creation and Processing: To Create a Fixed-Price Project](Projects_Process_Implem_Activity_Fixed_Price.md) and [Project Creation and Processing: To Create a Cost-Plus Project](Projects_Process_Implem_Activity_Cost_Plus.md).

    **Tip:** To make the system automatically associate additional project transactions that are generated \(such as discounts or freight charges\) with specific project tasks, map specific general ledger accounts to these project tasks within the project in the **Default Task for GL Account** section on the **Defaults** tab of the [Projects](PM_30_10_00.md) form.


## Defining Additional Entities Related to Project Tasks { .section}

You can define the following entities, which are not mandatory for the creation of a new project task but are commonly specified in project tasks:

-   On the [Billing Rules](PM_20_70_00.md) \(PM207000\) form, each billing rule that you will assign to a project task has been created. For examples of the creation of a billing rule, see [Billing Rules: To Configure a Progress Billing Rule](Billing_Rules_Implem_Activity_Progress.md), [Billing Rules: To Configure a Time and Material Rule](Billing_Rules_Implem_Activity_TimeMaterial.md), and [Billing Rules: To Configure a Combined Billing Rule](Billing_Rules_Implem_Activity_Combined.md).
-   On the [Allocation Rules](PM_20_75_00.md) \(PM207500\) form, each allocation rule that you will assign to a project task has been created. For examples of the configuration of an allocation rule, see [WIP Labor Costs in Cost-Plus Projects: Implementation Activity](Projects_Allocation_WIP_CP_Implem_Activity.md) and [WIP Labor Costs in Fixed-Price Projects: Implementation Activity](Projects_Allocation_WIP_FP_Implem_Activity.md).
-   On the [Rate Table Codes](PM_20_42_00.md) \(PM204200\) form, each rate table code that you will assign to a project task has been created, and the rate table has been configured on the [Rate Tables](PM_20_60_00.md) \(PM206000\) form. For examples of the configuration of billing rates, see [Billing Rates: To Configure Employee-Specific Rates](Billing_Rates_Implem_Activity_Employee.md) and [Billing Rates: To Configure Employee- and Item-Specific Rates](Billing_Rates_Implem_Activity_Item.md).

**Parent topic:**[Creating Project Tasks](../UserGuide/Project_Tasks_Mapref.md)

