# Leads: Configuration Prerequisites {#_975ffbf7-7ddc-469f-a16f-4ac0b5839477 .concept}

Before you start creating leads in Acumatica ERP, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features must be enabled:

-   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality, including lead and customer tracking, as well as the handling of sales opportunities, contacts, marketing lists, and marketing campaigns.
-   *Outlook Integration* \(in the *Third-Party Integrations* group of features\): Gives you the ability to log your activities, create opportunities, and create leads and contacts by using your Microsoft Outlook account.

## Configuring the System { .section}

Before you start creating leads in Acumatica ERP, you need to make sure that the following tasks have been performed:

-   On the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form, all necessary settings have been specified and saved to the system.
-   If you will be importing leads, on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form, an import scenario has been configured. You can use the predefined *Import Leads from Excel* import scenario to import a list of leads from an XLSX file. For more information about import scenarios, see [Configuring Import Scenarios](IS__mng_Configuring_Import_Scenarios.md).
-   Optional: The needed classes with the necessary details and attributes have been created on the [Lead Classes](CR_20_70_00.md) \(CR207000\) form.

**Parent topic:**[Creating Leads](../UserGuide/CRM_Mktg_Creating_Leads_Mapref.md)

