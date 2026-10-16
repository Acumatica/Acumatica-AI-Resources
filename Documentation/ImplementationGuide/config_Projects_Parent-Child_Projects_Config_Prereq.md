# Parent-Child Project Configuration: Configuration Prerequisites

Before you start configuring parent-child projects, you should be sure that the needed features have been enabled, settings have been specified, and entities have been created, as described in the following sections.

## Enabling the Needed Features

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Parent-Child Projects* feature must be enabled.

## Configuring the System

You need to make sure that the following tasks have been performed in Acumatica ERP before you start to configure parent-child projects:

-   The minimum company settings have been specified, as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
-   The project accounting functionality has been configured, as described in [Basic Project Configuration: General Information](config_Project_Basic_GeneralInfo.md).
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the GL accounts used for project accounting have been created.
-   On the [Account Groups](../UserGuide/PM_20_10_00.md) \(PM201000\) form, the account groups that will be used in the parent and child projects have been created. The GL accounts to be used in projects and project-related documents have been mapped to the appropriate account groups.
-   If you want to track commitments from purchase orders and subcontracts in the project cost budget, select the **Internal Cost Commitment Tracking** check box on the [Projects Preferences](../UserGuide/PM_10_10_00.md) \(PM101000\) form.
-   If you want to perform project billing through pro forma invoices, select the **Create Pro Forma Invoice on Billing** check box on the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form for all the needed projects.

**Parent topic:**[Parent-Child Projects](../ImplementationGuide/config_Mapref_Projects_Parent-Child_Projects.md)

