# Billing Rules: Configuration Prerequisites {#_4e324c8b-9951-4c76-9a3b-dd770f2e9d83 .concept}

Before starting to create billing rules, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature, which provides the basic project management functionality, must be enabled.

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to create billing rules:

-   On the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, the basic project accounting settings have been specified: numbering sequences, non-project code, visibility settings, and posting settings. The actual combination of settings you need to specify depends on the processes in your organization and on the features enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For an example of configuring the basic project accounting settings, see [Basic Project Configuration: Implementation Activity](../ImplementationGuide/config_Project_Basic_Implem_Activity.md).
-   On the [Account Groups](PM_20_10_00.md) \(PM201000\) form, the GL accounts used for labor items have been mapped to the appropriate account groups. Otherwise, the transactions related to labor on projects will not be visible in projects. For an example of configuring account groups, see [Account Groups: To Create an Expense Account Group](Account_Groups_Implem_Activity.md).
-   Optional: On the [Rate Tables](PM_20_60_00.md) \(PM206000\) form, billing rates have been specified in the rate table. For an example of configuring billing rate tables, see [Billing Rates: To Configure Employee-Specific Rates](Billing_Rates_Implem_Activity_Employee.md) and [Billing Rates: To Configure Employee- and Item-Specific Rates](Billing_Rates_Implem_Activity_Item.md).

**Parent topic:**[Creating Billing Rules](../UserGuide/Billing_Rules_Mapref.md)

