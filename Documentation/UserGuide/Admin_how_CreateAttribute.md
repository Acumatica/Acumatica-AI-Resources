# To Create an Attribute {#_09f6e130-34a1-4f98-bdf3-ffbe2a75abc5 .task}

You can create an attribute to use it in a user-defined field. Add user-defined fields to a form, where they will be displayed on the **User-Defined Fields** tab. The fields are visible for all users of the Acumatica ERP instance with access to this form. The value of each user-defined field is added to the data of the record when you enter or edit the value and save your changes. Information about added fields is stored in your Acumatica ERP instance.

**Attention:** Only users with the *Customizer* user role can add user-defined fields. Adding user-defined fields is available to a limited number of forms. For details, see [Attributes](CS__con_Attributes.md).

## Before You Proceed { .section}

Before adding a new field to a screen, you should define the attribute for the field or be sure they are already defined on the [Attributes](CS_20_50_00.md) \(CS205000\) form.

**Tip:** The text entered in the **Description** box of the [Attributes](CS_20_50_00.md) form will be used as the caption for the field. We recommend using title-style capitalization for consistency with other UI elements.

## To Create an Attribute { .section}

1.  In your Acumatica ERP instance, open the [Attributes](CS_20_50_00.md) \(CS205000\) form.
2.  On the form title bar, click **Add Record**.
3.  In the **Attribute ID** box of the Summary area, type the attribute name. The attribute ID serves as the label for the control.
4.  In the **Description** box, type the description for the attribute. This text will be used as the caption for the field.

    **Tip:** For consistency with other UI elements, we recommend using title-style capitalization.

5.  In the **Control Type** box, select the desired type of the control: **Text**, **Combo**, **Multi Select Combo**, **Check Box**, or **Datetime**.
6.  Select the **Internal** check box, if this attribute is intended to be used only as internal.
7.  Select the **Contains Personal Data** check box, if this attribute is intended to contain personal data.
8.  Depending on the selected type of the control if needed perform the corresponding action:
    1.  If you select the *Text* type, you can specify an input validation rule based on an input mask or a regular expression. Input validation ensures that the entered data is valid and usable. For details, see [Examples of the Usage of Masks and Regular Expressions](CS__con_Examples_Mask_and_RegExp_Usage.md).

        **Tip:** You can specify an input validation rule based on an input mask or a regular expression. Input validation ensures that the entered data is valid and usable. For details, see [Examples of the Usage of Masks and Regular Expressions](CS__con_Examples_Mask_and_RegExp_Usage.md).

    2.  If you select the *Combo* or *Multi Select Combo* type:
        1.  On the table toolbar, click **Add Row**.
        2.  In the **Value ID** column, type value.
        3.  In the **Description** column, type description.
        4.  If needed, click the clip icon an the left and attach the file.
        5.  Repeat steps i-iv the needed number of times.

            **Tip:** You can select the **Disabled** column to restrict specific settings from usage without deleting them in attribute.

9.  On the form toolbar, click **Save**.

You have created an attribute that can be added to classes and used for user-defined fields.

**Parent topic:**[Managing Attributes and User-Defined Fields](../UserGuide/CS__con_Attributes_and_User_Defined_Fields.md)

