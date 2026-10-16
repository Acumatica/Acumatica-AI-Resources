# &lt;sm:Field&gt;

The sm:Field tag has the following attributes.

<table id="_409b70e3-1b83-4a6d-a631-ca17ca427e2e"><thead><tr><th>

Attribute

</th><th>

Description

</th></tr></thead><tbody><tr><td>

Container

</td><td>

The name of the container object of the field, as it is specified in the WSDL schema. This attribute is specified if the field from another container is used in the container.

</td></tr><tr><td>

DisplayName

</td><td>

The name for the field, which by default is automatically set by the system. However, you can change it.

</td></tr><tr><td>

ForceIsDisabled

</td><td>

An indicator of whether the field will be unavailable on the editing form regardless of the server logic. By default, the field availability depends on the server logic.

</td></tr><tr><td>

ForceIsVisible

</td><td>

An indicator of whether the field is visible on the editing form regardless of the server logic. By default, the field visibility depends on the server logic.

</td></tr><tr><td>

ForceRequired

</td><td>

An indicator of whether the field is mandatory and must be filled on the screen. If its value is *true*, the field is mandatory. If its value is *false*, the field is not mandatory. If the attribute is not specified, the need to fill the field is determined by the data obtained from the server.

</td></tr><tr><td>

ForceType

</td><td>

The field type that is used by the application instead of the original field type. The only value of this attribute is *String*, which is an indicator of whether the field is visible on the editing form regardless of the server logic. By default, the field visibility depends on the server logic.

</td></tr><tr><td>

FormPriority

</td><td>

The priority value that defines the position of the field on the form.

</td></tr><tr><td>

ListDisplayFormat

</td><td>

The format that is used to display the field in the list. The value can be one of the following:-   *Value*: An indicator that the field is represented only by the field value in the list.
-   *CaptionValue*: An indicator that the field is represented by the caption and the value in the list.

</td></tr><tr><td>

ListPriority

</td><td>

The priority value that defines the position of the field in the list.

</td></tr><tr><td>

Name

</td><td>

The field identifier, as found in the WSDL schema.

</td></tr><tr><td>

PickerType

</td><td>

\(Applicable to a selector field.\) The processing type of the selector field value. The value can be one of the following:-   *Attached*: An indicator that the selector is displayed as a pop-up dialog.
-   *Detached*: An indicator that the selector is displayed as a separate screen.

</td></tr><tr><td>

SelectorDisplayFormat

</td><td>

The selector field format that is used to display the field value. The value can be one of the following:-   *Key*: An indicator that the value is represented by the key field of the selector.
-   *Description*: An indicator that the value is represented by the value field of the selector. This is the default value of the SelectorDisplayFormat attribute.
-   *KeyDescription*: An indicator that the value is represented by the combination of the key and value fields of the selector.

</td></tr><tr><td>

Special

</td><td>

The field type that is used by the mobile app for a special purpose. The value can be one of the following:

    -   In the Acumatica ERP form, the edit button is displayed for the corresponding field control.
    -   In the mobile app, the data field is not empty and contains an ID that can be used to select the appropriate data record of the business entity.
-   *EmailAddress*: An indicator that the app should treat this field as an input box for an email address. It enables auto-complete for email addresses, and the system displays a list of possible completions as the user types an email address for a new email activity by using the on-screen keyboard. The suggested completions are taken from the system database or from the device's address book. The value is not supported in iOS apps.
-   *GpsCoords*: An indicator that the app should get a user location and fill the field before sending to the Acumatica ERP server the data record, which is modified on the screen. If the field value is not defined, an action mapped on the screen cannot be executed; for example, the user cannot save a data record, which contains an empty field with the Special attribute set to *GpsCoords*.

The location is reported as a string in the following format: *&lt;Latitude&gt;:&lt;Longitude&gt;*, for instance, *65.61295166666667:-20.137938333333334*.

You can forcibly hide the field by setting the ForceIsVisible attribute to *false*, so it is not shown in the user interface, or you can make the field unavailable for editing by setting the ForceIsDisabled attribute to *true*. If the ForceIsVisible and ForceIsDisabled attributes are not specified, then an appropriate field state will be defined by the Acumatica ERP server.


 The following screenshot shows an example of using the Special attribute for fields mapped on a screen in the mobile app.


</td></tr><tr><td>

TextType

</td><td>

The type of text to be used for the field value. The value can be one of the following:-   *HTML*: An indicator that the text can be HTML markup.
-   *PlainSingleLine*: An indicator that the text is displayed on a single line.
-   *PlainMultiLine*: An indicator that the text is displayed on multiple lines. The look of the input control depends on the platform.

</td></tr><tr><td>

Weight

</td><td>

The value that is used to set the width of the field within the UI element line defined by the [&lt;sm:Layout&gt;](MOBILE_sm_Layout.md) tag with the Template attribute set to *Inline*. The default value is *1*.In the following example, the `TotalAmount` field takes 2/3 of the total width, and the `Currency` field takes 1/3.

```
<sm:Layout Template="Inline">
    <sm:Field Container="ReceiptDetailsExpenseDetails" 
      Name="TotalAmount" Weight="2"/>
    <sm:Field Container="ReceiptDetailsExpenseDetails" 
      Name="Currency" PickerType="Attached"/>
</sm:Layout>
```

</td></tr></tbody>
</table>

**Parent topic:**[XML Tags](../StudioDeveloperGuide/MOBILE_Ref_Tags.md)

