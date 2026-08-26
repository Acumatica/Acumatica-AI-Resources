# Managing Attributes and User-Defined Fields {#_9ac91432-d70f-4f00-bc0a-f5569d76cdfd .concept}

In Acumatica ERP, you can use classes for flexible grouping of entities, such as leads, opportunities, customers, and inventory items. Initially, Acumatica ERP contains a number of preconfigured classes, which you can tailor as needed, and you can create additional classes to meet your needs to group entities meaningfully.

You specify all applicable settings for classes, and you can define *attributes*: properties \(such as company size, manufacturer, or industry\) of entities belonging to the class that are important to your company but not tracked on the data entry form where the entity is created. Each attribute you specify for a particular class appears on the data entry form for an entity of the class. Depending on how you have defined the attribute for the class, the attribute can be required or optional for an entity of the class, and you can define a default setting for any attribute.

When a user creates an entity that must have an entity class selected, the user first selects the class. If any attributes are defined for the particular class, the system lists these attributes on the **Attributes** tab of the data entity form. On that tab, the user specifies the appropriate settings of the attributes of the class \(such as the manufacturer of a particular item of the item class, or the industry of a particular customer of the customer class\).

Not all system entities have entity classes, so you cannot add attributes via classes and the **Attributes** tab for all entities. To provide this information-tracking capability, if you have the *Customizer* role, you can add *user-defined fields* directly to the Acumatica ERP data entry forms where these entities are created. You add these user-defined fields, which are based on predefined and site-specific attributes defined in the system, to a particular data entry form.

-   **[Attributes](../UserGuide/CS__con_Attributes.md)**  

-   **[User-Defined Fields](../UserGuide/CS__con_User_Defined_Fields.md)**  

-   **[To Create an Attribute](../UserGuide/Admin_how_CreateAttribute.md)**  

-   **[To Add Attributes to a Class](../UserGuide/Admin_how_AddAttributeToClass.md)**  

-   **[To Add User-Defined Fields to a Form](../UserGuide/Admin_HOW_AddUserField.md)**  


