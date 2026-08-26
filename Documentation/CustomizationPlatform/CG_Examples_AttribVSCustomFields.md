# Use of Entity Attributes Instead of Custom Fields {#_39f35b2f-488f-4f2c-8549-3854e4147754 .concept}

Under some circumstances, you will find it best to use entity attributes defined on the [Attributes](../UserGuide/CS_20_50_00.md) \(CS205000\) form, while under other circumstances, custom fields will help you better meet the requirements of your customization task.

You might use attributes in the following cases:

-   You do not need a complex layout for attribute fields because they are not used for manual input, so you can use the easiest way of creating additional fields.
-   You would prefer an approach that helps you to localize customizations that you make to the system to a limited number of spaces, which in turn helps you to avoid having scattered changes throughout the system.

The use of custom fields provides more functionality than attributes do. Using attributes as columns in a grid can present difficulties. For example, in a grid, you can display columns for either all attributes or none of them. Also, you cannot rename a column for an attribute in a grid.

You might use custom fields in the following cases:

-   These fields are for manual input, and you need a nice-looking layout for them.
-   You also have some business logic of validation based on a custom field, so you might need the customization code for these fields.

**Parent topic:**[To Start the Customization of a Data Access Class](../CustomizationPlatform/CG_GL_BL_DAC_ToOpen.md)

