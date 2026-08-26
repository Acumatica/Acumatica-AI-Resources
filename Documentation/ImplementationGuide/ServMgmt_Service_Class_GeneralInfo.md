# Service Classes: General Information {#_5d2f55ef-8a3f-43b8-a569-697e8e2be0ae .concept}

A service class in Acumatica ERP is an item class of the *Service* type. Service classes are used to group services with similar properties and to provide default settings for new services.

When creating a service, on the [Non-Stock Items](../UserGuide/IN_20_20_00.md#) \(IN202000\) form, you select an item class of the *Service* type. Based on the settings of the item class, the system fills in default settings for the service, such as the posting class, tax category, units of measure, and billing rules. Any of these default values can be overridden.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create a service class
-   Select a billing rule for a service class

## Applicable Scenarios { .section}

You create a new service class in the system in the following cases:

-   When you are initially configuring service management in the system, and need to create service classes to group the services the company provides or plans to provide
-   When your company plans to offer a new service or multiple services of the same type, and you need to add them to the system under a new service class

## Creation of Service Classes { .section}

On the [Item Classes](../UserGuide/IN_20_10_00.md#) \(IN201000\) form, you create a service class by selecting *Service* as the item type on the **General** tab. On this form, you specify the settings that you want to be applied to the services of the class, such as the tax category, posting class, or price class.

You can view the list of service classes \(and their default billing rules, which are described in the following section\) on the [Service Classes](../UserGuide/FS_40_09_00.md) \(FS400900\) form.

## Selection of Billing Rules {#_43a959eb-33d6-4aae-936c-3fef0b8eb79d .section}

In addition to specifying the general settings of the item class on the [Item Classes](../UserGuide/IN_20_10_00.md#) \(IN201000\) form, you have to specify the default billing rule for services of the class on the **Service Management** tab. The billing rule determines the method used to calculate the total prices for services provided to customers. You can select one of the following options:

-   *Time*: The service price is calculated based on the time that staff members spent delivering the service. The unit price of the service is defined per unit of time, and to calculate the transaction amount, the system multiplies the unit price by the quantity of units of time.
-   *Flat Rate*: The service price is a fixed price for performing the service, regardless of the time that was spent to perform the service.
-   *None*: No service price is calculated, and the customer is not billed. \(This option is used when the service is provided to a customer for free or to your own company\).

At least one service class should be defined in the system. When you create a service on the [Non-Stock Items](../UserGuide/IN_20_20_00.md#) \(IN202000\) form, the system inserts the billing rule specified for the selected service class. You can override the default billing rule when you create the service or when you add the service to a service order or appointment on the [Service Orders](../UserGuide/FS_30_01_00.md) \(FS300100\) or [Appointments](../UserGuide/FS_30_02_00.md) \(FS300200\) form, respectively.

**Parent topic:**[Service Classes](../ImplementationGuide/ServMgmt_Service_Class_Mapref.md)

