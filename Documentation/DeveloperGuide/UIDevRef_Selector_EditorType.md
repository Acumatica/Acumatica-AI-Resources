# Selector Control: Displaying of the Value in the Selector Control {#_6047e714-d389-4a65-ba65-8db61e81b06a .concept}

In some cases, you may want to explicitly specify the control that is used to display the value selected in a selector control. By default, the qp-text-editor control is used to display the selected value. To specify a control explicitly, you can use the editorType property of the config attribute of the selector control, as shown in the following code example.

```language-xml
<field name="MailTo" control-type="qp-selector"
  config-editor-type.bind="'qp-mail-editor'">
</field>
```

In the code above, you have specified that the selected value in the selector control should be displayed by using the qp-mail-editor control. For details about this control, see [Mail Editor](UIDevRef_MailEditor_Mapref.md).

**Parent topic:**[Selector](../DeveloperGuide/UIDevRef_Selector_Mapref.md)

