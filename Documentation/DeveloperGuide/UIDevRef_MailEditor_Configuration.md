# Mail Editor: Configuration {#_8ee22f9e-aacc-4972-9fcf-e2b2df6561fc .concept}

The configuration parameters for the mail editor control are defined in the IMailEditorControlConfig interface. To configure a mail editor, you typically use the `field` tag with the control type specified as `qp-mail-editor`, as shown in the following code example.

```
<field name="Email" control-type="qp-mail-editor"></field>
```

Alternatively, you can use the qp-mail-editor tag explicitly to configure the mail editor, as shown in the following code example.

```
<qp-mail-editor state.bind="Email"></<qp-mail-editor>
```

**Parent topic:**[Mail Editor](../DeveloperGuide/UIDevRef_MailEditor_Mapref.md)

