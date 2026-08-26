# To Add User-Defined Fields to a Form {#_810b4857-2ffe-4764-aebf-4d657334f0be .task}

You can add user-defined fields to a form that supports this functionality. If you do, the added field will be displayed on the **User-Defined Fields** tab. The fields are visible for all users of the Acumatica ERP instance with access to this form. The value of each user-defined field is added to the data of the record when you enter or edit the value and save your changes. Information about added fields is stored in your Acumatica ERP instance.

**Attention:** Only users with the *Customizer* user role can add user-defined fields. Adding user-defined fields is available to a limited number of forms. For details, see [User-Defined Fields](CS__con_User_Defined_Fields.md).

## Before You Proceed { .section}

Before adding a new fields to a screen, you should define the attributes for the field or be sure they are already defined on the [Attributes](CS_20_50_00.md) \(CS205000\) form.

**Tip:** The text entered in the **Description** box of the [Attributes](CS_20_50_00.md) form will be used as the caption for the field. We recommend using title-style capitalization for consistency with other UI elements.

## To Add User-Defined Fields to a Form { .section}

1.  In your Acumatica ERP instance, open the form for which you want to add a field.
2.  On the form title bar, click **Customization** &gt; **Manage User-Defined Fields**. The system opens the [Edit User-Defined Fields](cs_20_50_20.md) \(CS205020\) form.
3.  Do the following for each user-defined field you want to add to the original form:
    1.  On the form toolbar, click **Add User-Defined Field**.
    2.  In the **User-Defined Field Parameters** dialog box, which opens, in the **Attribute ID** box, select the attribute corresponding to the field you want to add. In the **Column** and **Row** boxes, specify the position the field will have on the **User-Defined Fields** tab of the form for which you are adding this field.
    3.  Click **OK** to close the dialog box.

        The added field appears on the **User Defined Fields** tab of the [Edit User-Defined Fields](cs_20_50_20.md) form. You can edit its parameters by clicking the Edit button right of the box for the field.

4.  On the **Properties** tab, specify the settings for the added user-defined fields as follows:

    1.  In the **Document** box, select the document type to which the settings should be applied, or select *&lt;All&gt;* to apply the settings to all document types.
    2.  In the table, select or clear the check boxes in each of the following columns for the user-defined attribute in the row:
        -   **Hidden**, which you select if the user-defined field should not be displayed on the form.
        -   **Required**, which you select if the user-defined field should be mandatory.
    3.  In the **Default** row of the table, specify the default values for the required user-defined attributes. These values will be displayed on the form when you edit the user-defined fields.
    **Tip:** For the particular form for which you are editing user-defined fields, the system saves the states of the **Hidden** and **Required** check boxes, as well as the values in the **Default** column, for all listed fields for the selected document type only. If you select *&lt;All&gt;* in the **Document** box, the new settings you specify in the table override any specific settings that have been used for certain document types.

5.  Return to the form for which you added the user-defined field.

    **Tip:** You can also add the attribute right from the [Edit User-Defined Fields](cs_20_50_20.md) form. On the form toolbar, click **Manage Attributes** to open the [Attributes](CS_20_50_00.md) form, where you can manage an existing attribute or add a new one.

    On the form for which you added user-defined fields, the Summary area now consists of two tabs: **Document** and **User-Defined Fields**. The elements formerly in the Summary area, which display the summary information of the record, are displayed on the **Document** tab. The added user-defined fields are displayed on the **User-Defined Fields** tab. On this tab, the fields for which you have selected the **Required** check box are marked with an asterisk \(\*\). The fields for which the **Hidden** check box has been selected are not displayed. The fields for which you have specified the **Default** values now contain these values.


**Parent topic:**[Managing Attributes and User-Defined Fields](../UserGuide/CS__con_Attributes_and_User_Defined_Fields.md)

