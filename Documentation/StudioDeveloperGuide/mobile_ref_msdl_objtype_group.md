# group {#_37c0e79c-e89e-4e41-8b05-ca3df5e053f1 .concept}

An object that maps a field group to the mobile app. The object can contain the following objects and instructions:

-   [field](mobile_ref_msdl_objtypes_field.md)
-   [layout](mobile_ref_msdl_objtypes_layout.md)
-   Attributes
-   [recordActionLink](MOBILE_ref_MSDL_objtypes_RecordActionLink.md)

## Attributes { .section}

|Attribute|Description|
|---------|-----------|
|Collapsable|An indicator of whether this group may be collapsed or expanded. If its value is *true*, the group can be collapsed or expanded, and you can specify whether the group is collapsed when the screen is opened by using the Collapsed attribute. If the value is *false*, the group is expanded and cannot be collapsed.

 If the Template attribute is set to *ExpansionPanel*, the value of the attribute is ignored. Expansion panels are always collapsible.

|
|Collapsed|An indicator of whether this group is collapsed by default. If its value is *true*, the group is collapsed when the screen is opened. If the value is *false*, the group is expanded when the screen is opened.

 If Template=Group \(or the Template attribute is not set\) and Collapsable=false, the value of the attribute is ignored.

 For expansion panels \(Template=ExpansionPanel\) and collapsible groups \(Template=Group and Collapsable=true\), if the value of the attribute is not specified, the group is collapsed when the screen is opened.

|
|DisplayName|The name of the group in the UI.

 If the Template attribute is set to *ExpansionPanel*, the value of the attribute is ignored. An expansion panel does not have the name of the group in the UI.

|
|Field|Obsolete. The name of the field whose value is displayed when the group is collapsed.

 The value of this field is ignored. Expansion panels \(Template=ExpansionPanel\) always display the first field \(sm:field\) or layout definition \(sm:layout\) in the group. Other groups \(Template=Group\) do not display any fields when the group is collapsed.

|
|FormPriority|The priority value that defines the position of the group on the screen.|
|Template|The template that is used for the group. The following values can be used for this attribute:

 -   *ExpansionPanel*: An expansion panel, which can be collapsed or expanded. The collapsed expansion panel displays only the first field \(field\) or layout definition \(layout\) in the group. An expansion panel does not have the name of the group in the UI. You can configure how the expansion panel is displayed by using the Collapsed and FormPriority attributes of the object.
-   *Group*: A group of UI elements. You can configure how the group is displayed by using the DisplayName, Collapsable, Collapsed, and FormPriority attributes of the object.

 If the value of the attribute is not specified, the *Group* template is used.

|

## Example { .section}

In the following example, a group of fields is added to a screen. Fields from the added group contain information from the `PaymentSettings` container.

```
add group "PayInfoGroup" {      
    displayName = "Payment Settings"      
    collapsable = True      
    collapsed = True      
    add field "PaymentSettings#PaymentMethod"      
    add field "PaymentSettings#CardAccountNo"      
    add field "PaymentSettings#CashAccount"      
    add field "PaymentSettings#PaymentRef"      
    add field "PaymentSettings#ProcessingStatus" {        
       displayName = "CC Processing Status"      
    }    
}
```

**Parent topic:**[Object Types](../StudioDeveloperGuide/MOBILE_Ref_MSDL_ObjTypes.md)

