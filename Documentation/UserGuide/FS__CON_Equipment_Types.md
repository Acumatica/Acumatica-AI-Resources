# Equipment Types {#_b85a1280-51b8-48d7-8fba-4fbd7d570316 .concept}

In Acumatica ERP, you can enter equipment types, which are categories that are used for grouping equipment and associating a group of equipment with a service. You create equipment types, specify the appropriate type for each resource or target equipment, and assign equipment types to services. These steps ensure that the right equipment will later be selected to perform these services.

In this topic, you will read about how equipment types are created and assigned to services in the system.

## Creating Equipment Types { .section}

Equipment types structure the data in the system and make it easier to select the right equipment for performing services. Equipment of one equipment type is used for similar types of work. For instance, if your company provides installation services, you might create the first equipment type for all drills of the company and the second equipment type for screwdrivers. You create equipment types on the [Equipment Types](FS_20_08_00.md) \(FS200800\) form.

If you need to specify properties for the equipment of the type beyond those tracked by predefined settings, you can add a list of attributes for the equipment type. When equipment of the equipment type is created in the system, the user specifies the values of these attributes.

Once you have created the equipment types, you can assign them to the appropriate resource or target equipment. You can also specify an equipment type for a manufacturer model.

## Setting Up Attributes for Equipment Type {#_5903681c-4c3c-417e-af0b-d127f27487b7 .section}

To give users the ability to specify additional properties \(that is, attributes\) that your organization wants to track for equipment of a particular type, you list those attributes and their settings on the **Attributes** tab of the [Equipment Types](FS_20_08_00.md) \(FS200800\) form. The active attributes you define for the equipment type are listed for equipment of this type on the **Attributes** tab of the [Equipment](FS_20_50_00.md) \(FS205000\) form.

**Tip:** On this tab, you can select attributes only if they have already been defined in the system. If you need an attribute that is not defined in the system, you can use the [Attributes](CS_20_50_00.md) \(CS205000\) form to create the attribute. Then you will be able to select the new attribute for any equipment type.

You can specify whether each attribute of the equipment type is required. When creating a piece of equipment of the type, a user must specify values for all the required attributes. Also, you can specify default values for any attributes of the type; users can overwrite these values for a particular piece of equipment.

You can deactivate an obsolete attribute for equipment of a particular type by clearing the **Active** check box on this tab. If you do, the deactivated attribute will no longer be displayed for the equipment of the type, but all attribute values that have already been specified for existing equipment will still be stored in the database. If you reactivate the attribute, its values \(where specified\) will become visible in the system again.

However, if it is not necessary to preserve the data related to an obsolete attribute, you can deactivate the attribute and then delete it by using the **Delete Row** button on the table toolbar. In this case, the attribute will be permanently deleted from the type and all attribute values will be deleted from the database.

## Assigning Equipment Types to Services { .section}

You can specify which types of resource equipment are needed for each service. Services are defined in the system as non-stock items of the *Service* type on the [Non-Stock Items](IN_20_20_00.md#) \(IN202000\) form. You assign the appropriate equipment types to the service on the **Resource Equipment Types** tab of this form.

**Parent topic:**[Managing Equipment](../UserGuide/FS__MNG_Equipment_chapter.md)

