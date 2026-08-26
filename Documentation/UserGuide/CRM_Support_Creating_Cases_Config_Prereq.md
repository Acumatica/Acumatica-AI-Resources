# Cases: Configuration Prerequisites {#_33e5e7a5-76ac-4d5a-a339-e291f6f29751 .concept}

Before you start creating cases in Acumatica ERP, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features must be enabled:

-   *Customer Management*.
-   *Case Management* in the *Customer Management* group of features. This feature gives customer support personnel the ability to create support cases, assign cases to owners, and process cases.
-   *Contract Management* in the *Advanced Financials* group of features if you will be using contracts with customers for support services.

## Configuring the System { .section}

Before you start creating cases in Acumatica ERP, you need to make sure that the following tasks have been performed:

-   On the [Customer Management Preferences](CR_10_10_00.md) \(CR101000\) form, the numbering sequences settings have been specified and the settings have been saved, even if you have reviewed the default settings without making changes.
-   On the [Case Classes](CR_20_60_00.md) \(CR206000\) form, the needed case classes with the necessary settings and attributes have been created.
-   Optional: In the Summary area of the [Cases](CR_30_60_00.md) \(CR306000\) form, the **User-Defined Fields** tab, which holds the values of attributes for cases, has been added.

**Parent topic:**[Creating Cases](../UserGuide/CRM_Support_Creating_Cases_Mapref.md)

