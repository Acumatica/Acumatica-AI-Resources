# Billing Rates: Configuration Prerequisites {#_3a92a1a8-8727-40e4-bdb3-afeaa84de644 .concept}

Before starting to define the billing rates to be used in billing and allocation rules, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Projects* feature must be enabled.

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to specify billing rate values in a rate table:

-   On the [Projects Preferences](PM_10_10_00.md) \(PM101000\) form, the basic project accounting settings have been specified: numbering sequences, non-project code, visibility settings, and posting settings. The actual combination of settings you need to specify depends on the processes in your organization and the features enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. For details, see [Basic Project Configuration: Implementation Activity](../ImplementationGuide/config_Project_Basic_Implem_Activity.md).
-   On the [Rate Table Codes](PM_20_42_00.md) \(PM204200\) form, a rate table code has been configured.
-   On the [Rate Types](PM_20_41_00.md) \(PM204100\) form, all required rate types has been defined.
-   On the [Rate Table Sequences](PM_20_50_00.md) \(PM205000\) form, all required rate sequences that specify the group of settings based on which the billing rate will be selected have been defined.

**Parent topic:**[Managing Billing Rates](../UserGuide/Billing_Rates_Mapref.md)

