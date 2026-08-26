# Case Classes: Configuration Prerequisites {#_aee33208-711b-4b6c-9b2f-6a69ba5a4654 .concept}

Before you start creating case classes in Acumatica ERP, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features must be enabled:

-   *Customer Management*
-   *Case Management* in the *Customer Management* group of features
-   *Time Management* \(if you will be creating activities associated with a case\)

## Configuring the System { .section}

Before you start creating case classes in Acumatica ERP, you need to make sure that the following tasks have been performed:

-   Basic CRM configuration has been performed, as described in [Basic Customer Relationship Management](../ImplementationGuide/config_CRM_Basic_Mapref.md).
-   On the [Attributes](CS_20_50_00.md) \(CS205000\) form, the attributes that will be defined for case classes and used for cases have been created.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the non-stock items of the *Labor* type with needed settings have been created to represent employee labor.

**Parent topic:**[Defining Case Classes](../UserGuide/CRM_Case_Classes_Mapref.md)

