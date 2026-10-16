# field

An object that maps a UI element field to the mobile app. This object can include fields, actions, nested containers, and other elements.

If a field from one container is also used in another container, you should use the `ContainerName#FieldName` format of the field name, where `ContainerName` is the name of the container \(as it is specified in the WSDL schema\) that contains the field, and `FieldName` is the name of the field in this container. See [Example: Displaying Fields from Different Containers in One Container](mobile_msdl_screen_nested.md#_b7eb3fd7-220f-4e6f-a513-82d0a73b2f9b) for details.

## Attributes

<table id="_409b70e3-1b83-4a6d-a631-ca17ca427e2e"><thead><tr><th>

Attribute

</th><th>

Description

</th></tr></thead><tbody><tr><td>

displayName

</td><td>

The name for the field, which by default is automatically set by the system. However, you can change it.

</td></tr><tr><td>

elementType

</td><td>

The type of the field. The attribute can have only one value: *FilePreview*. **Important:** A field marked with FilePreview should have a FileID value that corresponds to the FileID value in the UploadFile table in the instance database.

</td></tr><tr><td>

forceIsDisabled

</td><td>

An indicator of whether the field will be unavailable on the editing form regardless of the server logic. By default, the field availability depends on the server logic.

</td></tr><tr><td>

forceIsVisible

</td><td>

An indicator of whether the field is visible on the editing form regardless of the server logic. By default, the field visibility depends on the server logic.

</td></tr><tr><td>

forceRequired

</td><td>

An indicator of whether the field is mandatory and must be filled in on the screen. If its value is *true*, the field is mandatory. If its value is *false*, the field is not mandatory. If the attribute is not specified, the need to fill the field is determined by the data obtained from the server.

</td></tr><tr><td>

forceType

</td><td>

The field type that is used by the application instead of the original field type. The only value of this attribute is *String*, which is an indicator of whether the field is visible on the editing form regardless of the server logic. By default, the field visibility depends on the server logic.

</td></tr><tr><td>

formPriority

</td><td>

The priority value that defines the position of the field on the form.

</td></tr><tr><td>

listDisplayFormat

</td><td>

The format that is used to display the field in the list. The value can be one of the following:-   *Value*: An indicator that the field is represented only by the field value in the list.
-   *CaptionValue*: An indicator that the field is represented by the caption and the value in the list.

This attribute is applicable only to selector fields. See [selector](MOBILE_Ref_MSDL_Instr_SELECTOR.md) and [Configuring Selectors](mobile_msdl_screen_selectors.md) for details.

</td></tr><tr><td>

listPriority

</td><td>

The priority value that defines the position of the field in the list.

</td></tr><tr><td>

pickerType

</td><td>

The processing type of the selector field value; this attribute is applicable to only selector fields. The value can be one of the following:-   *Attached*: An indicator that the selector is displayed as a pop-up dialog box.
-   *Detached*: An indicator that the selector is displayed as a separate screen.

</td></tr><tr><td>

selectorDisplayFormat

</td><td>

The selector field format that is used to display the field value. The value can be one of the following:-   *Key*: An indicator that the value is represented by the key field of the selector.
-   *Description*: An indicator that the value is represented by the value field of the selector. This is the default value of the SelectorDisplayFormat attribute.
-   *KeyDescription*: An indicator that the value is represented by the combination of the key and value fields of the selector.

This attribute is applicable to only selector fields. See [selector](MOBILE_Ref_MSDL_Instr_SELECTOR.md) and [Configuring Selectors](mobile_msdl_screen_selectors.md) for details.

</td></tr><tr><td>

special

</td><td>

The field type that is used by the mobile app for a specific purpose. The value can be one of the following:

    -   On the Acumatica ERP form, the edit button is displayed for the corresponding control.
    -   In the mobile app, the field is not empty and contains an ID that can be used to select the appropriate data record of the business entity.
-   *Counter*: An indicator that the app should make this field editable in a list of records. This field type provides a user with the ability to edit the value of a field directly in a list of records without opening the record first. For details, see [Making a Record’s Fields Editable in a List of Records](Mobile_msdl_screen_edit_record_field.md).
-   *EmailAddress*: An indicator that the app should treat this field as an input box for an email address. It enables auto-complete for email addresses: As the user types an email address for a new email activity by using the on-screen keyboard, the system displays a list of possible completions, which are derived from the system database or from the device's address book. The *EmailAddress* value is not supported in iOS apps.
-   *GpsCoords*: An indicator that the app should obtain the location of the user's mobile device and fill the field before sending to the Acumatica ERP server the data record that is being modified on the screen. If the field with this attribute value does not have a value, an action mapped on the screen cannot be executed; for example, the user cannot save a data record that contains an empty field with the *Special* attribute set to *GpsCoords*.

The location is reported as a string in the following format: *&lt;Latitude&gt;:&lt;Longitude&gt;* \(for instance, *65.61295166666667:-20.137938333333334*\).

You can forcibly hide the field by setting the ForceIsVisible attribute to *false*, so it is not shown in the user interface, or you can make the field unavailable for editing by setting the ForceIsDisabled attribute to *true*. If the ForceIsVisible and ForceIsDisabled attributes are not specified, then the appropriate field state will be defined by the Acumatica ERP server.

-   ListSelection: An indicator that a field holds the current state of selection of an item in the list \(*true* for selected, *false* for unselected\). The option can be used only for Boolean fields.

 The following screenshot shows an example of using the Special attribute for fields mapped on a screen in the mobile app.


</td></tr><tr><td>

textType

</td><td>

The type of text to be used for the field value. The value can be one of the following:-   *HTML*: The text can be HTML markup.
-   *PlainSingleLine*: The text is displayed on a single line.
-   *PlainMultiLine*: The text is displayed on multiple lines. The look of the input control depends on the platform.

</td></tr><tr><td>

style

</td><td>

The visual emphasis, alignment, font color, and background color of the field value in the UI. You can specify one or more values separated by spaces.

 When you’re specifying the visual emphasis, the value can be one of the following:

 -   *importance-low*: A smaller font size and lighter weight is used than medium
-   *importance-medium* \(default\): The medium font size and weight is used.
-   *importance-high*: A larger font size than medium and bold for the font weight is used.

 When you’re specifying the alignment, the value can be one of the following:

 -   *column-left* \(default\): The field is aligned to the left side of its container.
-   *column-right*: The field is aligned to the right side of its container.

 To define the foreground or background color of the field value, you can use color styles. For details, see the *Foreground and Background Color Styles* section.

 You can also specify a JavaScript expression that applies styles dynamically based on mapped field values. For details, see the *Defining Dynamic Styles* section.

 **Attention:** For field objects, the visual emphasis and alignment styles work only when they are defined within the scope of the *ListView* template \(that is, the layout property of a [layout](mobile_ref_msdl_objtypes_layout.md) object is set to *ListView*\); they are ignored outside of this scope. Dynamic styles for field values are supported within the scope of the *ListView* template and in form headers configured with the *HeaderSimple* or *HeaderFirstAttachment* template. The style property can also be used with [recordActionLink](MOBILE_ref_MSDL_objtypes_RecordActionLink.md) objects but with a different set of values. For details, see [Customizing the Design and Layout for a List of Records](Mobile_msdl_screen_customize_ListViewTemplate.md).

</td></tr><tr><td>

weight

</td><td>

The value that is used to set the width of the field within the UI element line defined by the [layout](mobile_ref_msdl_objtypes_layout.md) object with the layout attribute set to *Inline*. The default value is *1*.In the following example, the `TotalAmount` field takes two-thirds of the total width, and the `Currency` field takes one-third.

```
add layout "Layout_1" {
      layout = "Inline"
      add field "ReceiptDetailsExpenseDetails#TotalAmount" {
        weight = 2
      }
      add field "ReceiptDetailsExpenseDetails#Currency" {
        pickerType = Attached
      }
    }
```

</td></tr></tbody>
</table>

## Example

In the following example, a field is added.

```
add field "OrderNbr" {        
    forceIsDisabled = True        
    listPriority = 100      
}
```

## Foreground and Background Color Styles

You can use the *color-\** styles to control the foreground color of a field value and *backcolor-\** styles to control the background color of a field value.

For the standard color set, use one of the following suffixes with *color-\** or *backcolor-\**:

-   *blue*
-   *indigo*
-   *purple*
-   *pink*
-   *red*
-   *orange*
-   *yellow*
-   *green*
-   *teal*
-   *gray*
-   *graydark*
-   *info*
-   *warning*

For the status color set, use one of the following suffixes with *color-\** or *backcolor-\**:

-   *status-blue*
-   *status-purple*
-   *status-red*
-   *status-orange*
-   *status-green*
-   *status-gray*

You can also specify a custom color by using a hex color value with the standard *color-\** or *backcolor-\** style, such as `color-#CCE5F5` or `backcolor-#CCE5F5`. Custom hex colors are not supported for the *color-status-\** or *backcolor-status-\** style.

The *color-content-main* style applies the default content color used by built-in UI elements. This color depends on the current UI theme setting of the mobile app.

The *backcolor-\** and *backcolor-status-\** styles affect the background of the field value. If the field value is empty or contains only whitespace, no background is applied. If a background color value is not provided or is incorrect, the default background is used.

The mobile app supports both light and dark themes. In dark mode, the displayed color may be adjusted, so it can differ slightly from the value specified in the style property.

## Defining Dynamic Styles

To define a dynamic style, you specify a JavaScript expression in the style property of a field. The expression must start with `=` and return a space-separated list of styles to apply to the field value.

In the expression, you can use `args.row.FIELDNAME.value` to reference the value of a mapped field in the current record or list entry.

**Attention:** The expression is evaluated in a strict environment. It cannot access global objects, make network calls, or perform disk I/O operations. A style expression can use only the values of fields that are mapped to mobile and available in the current record or list entry. It cannot access sibling list entries, the parent document, or child list entries. No additional type conversion is performed for field values.

The following example highlights the `QtySelected` value when it is greater than the `QtyAvailable` value in the same record.

```
add field "QtySelected" { 
  style = "=args.row.QtySelected.value > args.row.QtyAvailable.value 
           ? 'importance-low color-red' : 'importance-low'" 
}
```

The returned value can combine styles. In the preceding example, the field value uses both `importance-low` and `color-red` when the condition is true.

The following example shows one way to dynamically style the `Status` field on the mobile screen mapped to the [Expense Receipt](../UserGuide/EP_30_10_20.md) \(EP301020\) form.

```
add field "Status" { 
  style = "={'A': 'backcolor-status-blue', 'H': 'backcolor-status-orange', 
             'R': 'backcolor-status-gray', 'O': 'backcolor-status-red', 
             'C': 'backcolor-status-red'}[args.row.Status.value]"
}
```

In this code, the background color of the field value is dynamically updated based on the field's current value. Because the field displays a status, the example uses the softer *backcolor-status-\** styles. The following screenshots show the applied background color for the *On Hold* and *Released* statuses.



**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

