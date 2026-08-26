# Resource Equipment: General Information {#_88e06dc0-a265-44ec-a5ba-6b9ddee81e6a .concept}

In Acumatica ERP, you can record and manage information about the equipment that staff members use to perform services—called *resource equipment*. Resource equipment represents a physical asset of your company. You can enter details such as serial numbers, registration information, manufacturing data, purchase details, owner, and location.

Equipment types are categories used to group equipment and link groups of equipment to specific services. You create equipment types, assign the appropriate type to each resource equipment record, and associate equipment types with services. This ensures that the correct equipment will later be selected when performing those services.

In this chapter, you'll learn how to create equipment types, assign them to equipment and services, add resource equipment to the system, and assign equipment to appointments.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Create equipment types
-   Assign the equipment types to services
-   Create equipment records
-   View the equipment history

## Applicable Scenarios { .section}

You create resource equipment records in the system if your company wants to keep information about equipment that staff members use to perform services.

## Creating Equipment Types { .section}

Equipment types help organize equipment data in the system and make it easier to select the right tools for performing services. Equipment belonging to the same equipment type is typically used for similar kinds of work. For example, if your company provides installation services, you might create one equipment type for all drills and another for screwdrivers.

Each piece of resource equipment in the system must be assigned an equipment type. When you create a service document, the system automatically sorts the list of available equipment by type, allowing you to quickly find and select the appropriate equipment.

## Creating Resource Equipment { .section}

You add each specific piece of resource equipment \(for example, a particular screwdriver or drill\) on the [Equipment](FS_20_50_00.md) \(FS205000\) form. On this form, you specify the equipment type and select the **Resource Equipment** check box to identify the item as resource equipment. Under **Owner Type**, you select **Company** to indicate that your organization owns the equipment.

Any equipment with an **Active** status can be assigned to an appointment.

## Managing Equipment Attributes { .section}

To let users record additional details for a piece of equipment and help your company track that information, you can define attributes for the related equipment type on the [Equipment Types](../Shared/../UserGuide/FS_20_08_00.md) \(FS200800\) form.

When you create a piece of equipment on the [Equipment](../Shared/../UserGuide/FS_20_50_00.md) \(FS205000\) form and select its equipment type, the system populates the **Attributes** tab with the attributes \(and any default values\) defined for that equipment type. You can then enter or update attribute values in the **Value** column. If the **Required** check box is selected for an attribute, you must specify a value before saving the new equipment record.

The **Attributes** tab of the [Equipment](../Shared/../UserGuide/FS_20_50_00.md) form also includes the **Image** area, which you can use to attach an image of the equipment.

## Assigning Equipment Types to Services { .section}

You can specify which equipment types are required for each service. In the system, services are defined as non-stock items of the *Service* type on the [Non-Stock Items](IN_20_20_00.md#) \(IN202000\) form. On the **Resource Equipment Types** tab of this form, assign the appropriate equipment types to a service.

## Assigning Resource Equipment to Appointments { .section}

You can assign the necessary resource equipment to the appointments of a specific service order on the [Service Orders](FS_30_01_00.md) \(FS300100\) form or directly to an appointment on the [Appointments](FS_30_02_00.md) \(FS300200\) form. You make the assignment on the **Default Resource Equipment** tab of the [Service Orders](FS_30_01_00.md) form and on the **Resource Equipment** tab of the [Appointments](FS_30_02_00.md) form.

On these tabs, add a new row for each piece of equipment you want to include, and select the required equipment identifier from the list in the **Equipment ID** column.

## Viewing Equipment Details { .section}

On the [Equipment Summary](FS_40_02_00.md) \(FS400200\) form, you can view all equipment added to the system along with key details such as type, description, serial number, owner information, model, and installation date. You can filter the list by equipment type, customer \(for customer-owned equipment\), customer location, and model \(stock item ID\).

To view the details of a specific piece of equipment, click its number in the **Equipment Nbr.** column. The system opens the [Equipment](FS_20_50_00.md) \(FS205000\) form, displaying the selected equipment’s details.

**Parent topic:**[Creating and Using Resource Equipment](../UserGuide/ServMgmt_Resource_Equipment_Mapref.md)

