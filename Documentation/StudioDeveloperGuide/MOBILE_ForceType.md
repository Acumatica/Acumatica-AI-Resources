# Displaying Any Field as a Text Field {#_5b66b94e-06c5-4f23-839b-a84df4f37f79 .concept}

The mobile API gives you the ability to map a control of any type from an Acumatica ERP form to a text box in the mobile application. This ability can be useful when both of the following conditions are met:

-   You have one of the following problems with the use of the field in the mobile application:
    -   A value in the control for the field is displayed oddly or incorrectly.
    -   The mapping of the field raises an exception.
-   You do not need to specify a new value for the field in the mobile application.

For these conditions, you can force the mobile application to treat this field as a common text field.

To do this, in the sm:Field tag for the field, you can specify the `ForceType="String"` attribute. The input value is inserted directly into the cache of the corresponding container.

**Warning:** We do not recommend that you use the ForceType attribute unless you have extensive experience developing custom controls and fully understand the outcome of using this attribute. Note that by using the ForceType attribute, you could switch off some types of field validation, which could damage data in the database.

**Parent topic:**[Screens](../StudioDeveloperGuide/MOBILE_Screens.md)

