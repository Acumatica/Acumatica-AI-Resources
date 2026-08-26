# Services: General Information {#_2742b11f-65e3-46a1-9fae-90ec3585ccd6 .concept}

In Acumatica ERP, a service is a non-stock item of the *Service* type representing a particular type of work provided by the company. The settings of a service can include its estimated duration, the skills and license types required for employees to provide the service, and the equipment needed to deliver this service.

You can enter, store, and manage information about the services your company provides to customers. This information can help your employees to select the right staff member to perform services.

## Learning Objectives { .section}

In this chapter, you will learn how to create a new service in Acumatica ERP.

## Applicable Scenarios { .section}

You create services in the system in the following cases:

-   You are initially configuring the system according to your company's needs, and need to define the services that your company provides to its customers.
-   You need to add a new service to the already configured and functioning system.

## Creation of Services { .section}

Services are defined in the system as non-stock items created on the [Non-Stock Items](../UserGuide/IN_20_20_00.md#) \(IN202000\) form with *Service* selected as the type on the **General** tab.

Before you create services, you need to create service classes—that is, item classes created on the [Item Classes](../UserGuide/IN_20_10_00.md#) \(IN201000\) form with the *Service* item type—as described in [Service Classes](ServMgmt_Service_Class_Mapref.md). When you select an item class on the **General** tab of the [Non-Stock Items](../UserGuide/IN_20_20_00.md#) form, the system automatically populates the item settings with the *Service* type and other settings based on the settings you have specified for the item class. You also specify the estimated duration of service execution, the default billing rule \(if it is different than the one specified for the class\), and the posting class and tax category, if they were not specified for the selected service class or if you want to override the class settings. Optionally, you can specify price information, skills, license types, and resource equipment types.

On the [Services](../UserGuide/FS_40_08_00.md) \(FS400800\) form, you can view the list of services along with their key settings, including the service class, estimated duration, and default billing rule.

## Skills and License Types { .section}

If a service requires special skills or knowledge, after the service has been created in the system, you can assign any necessary skills and license types to the service. The system will then give you the ability to select the right person to perform a service once you assign a staff member to an appointment.

Before you start adding services to the system, we recommend that you make sure that the required skills and license types have been entered into the system on the [Skills](../UserGuide/FS_20_06_00.md) \(FS200600\) and [License Types](../UserGuide/FS_20_09_00.md) \(FS200900\) forms. If the required skills and license types are defined in the system, you assign skills on the **Service Skills** tab of the [Non-Stock Items](../UserGuide/IN_20_20_00.md#) \(IN201000\) form and license types on the **Service License Types** tab of this form. For details, see [Skills](ServMgmt_Skills_Mapref.md) and [Licenses](ServMgmt_License_Mapref.md).

## Resource Equipment Types { .section}

If special equipment must be used to perform the services you are entering, we recommend that you make sure that all necessary equipment types have been created on the [Equipment Types](../UserGuide/FS_20_08_00.md) \(FS200800\) form. You can then assign these types to the appropriate services on the **Resource Equipment Types** tab of the [Non-Stock Items](../UserGuide/IN_20_20_00.md#) \(IN201000\) form. For details, see [Creating and Using Resource Equipment](../UserGuide/ServMgmt_Resource_Equipment_Mapref.md).

**Parent topic:**[Services](../ImplementationGuide/ServMgmt_Services_Mapref.md)

