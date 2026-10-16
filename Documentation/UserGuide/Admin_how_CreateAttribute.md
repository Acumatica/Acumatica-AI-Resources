# To Create an Attribute

You can create an attribute that can be assigned to an entity class or used as a user-defined field. A user with the *Administrator* or *Customizer* role can associate the attribute with any data entry form in UI Configuration mode and place the resulting field in any section of the form. The field is available to users who have access to the form after the configuration is applied system-wide.

## To Create an Attribute

1.  In your Acumatica ERP instance, open the [Attributes](CS_20_50_00.md) \(CS205000\) form.
2.  On the form title bar, click **Add Record**.
3.  In the **Attribute ID** box of the Summary area, type the attribute name. The attribute ID serves as the label for the control.
4.  In the **Description** box, type the description for the attribute. This text will be used as the caption for the field.

    **Tip:** For consistency with other UI elements, we recommend using title-style capitalization.

5.  In the **Control Type** box, select the desired type of the control: *Text*, *Combo*, *Multi Select Combo*, *Check Box*, *Selector*, or *Datetime*.
6.  Select the **Internal** check box, if this attribute is intended to be used only as internal.
7.  Select the **Contains Personal Data** check box, if this attribute is intended to contain personal data.
8.  Depending on the selected type of the control, perform the corresponding action:
    1.  If you select the *Text* type, you can specify an input validation rule based on an input mask or a regular expression. Input validation ensures that the entered data is valid and usable. For details, see [Examples of the Usage of Masks and Regular Expressions](CS__con_Examples_Mask_and_RegExp_Usage.md).
    2.  If you select the *Combo* or *Multi Select Combo* type:
        1.  On the table toolbar, click **Add Row**.
        2.  In the **Value ID** column, type value.
        3.  In the **Description** column, type description.
        4.  If needed, click the clip icon on the left and attach the file.
        5.  Repeat steps i-iv the needed number of times.

            **Tip:** You can select the **Disabled** column to restrict specific settings from usage without deleting them from the attribute.

9.  On the form toolbar, click **Save**.

You have created an attribute that can be added to classes and used for user-defined fields.

**Parent topic:**[Managing Attributes and User-Defined Fields](../UserGuide/CS__con_Attributes_and_User_Defined_Fields.md)

