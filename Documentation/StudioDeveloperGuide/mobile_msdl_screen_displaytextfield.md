# Displaying Any Field as a Text Field {#_9b1f1940-5717-4643-a414-5f1f612b1dd6 .concept}

The mobile API gives you the ability to map a control of any type from an Acumatica ERP form to a text box in the mobile app. This ability can be useful when both of the following conditions are met:

-   You have one of the following problems with the use of the field in the mobile application:
    -   A value in the control for the field is displayed oddly or incorrectly.
    -   The mapping of the field raises an exception.
-   You do not need to add a new value for the field in the mobile app.

When these conditions are met, you can force the mobile application to treat this field as a common text field.

To do this, in the Field object of the field, specify the `ForceType="String"` attribute. The input value is inserted directly into the cache of the corresponding container.

**Warning:** We do not recommend that you use the ForceType attribute unless you have extensive experience developing custom controls and fully understand the outcome of using this attribute. Note that by using the ForceType attribute, you could switch off some types of field validation, which could damage data in the database.

**Parent topic:**[Screens](../StudioDeveloperGuide/mobile_msdl_screens.md)

