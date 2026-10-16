# Mail Editor: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to a mail editor to HTML or TypeScript elements.

## PXMailEdit

The following table shows the correspondence between the PXMailEdit element and the HTML or TypeScript element. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXMailEdit```
<px:PXMailEdit ... />
```

</td><td>

Replace with field and specify qp-mail-editor as the control type, as shown in the following code.```
<field
  ... 
  control-type="qp-mail-editor">
</field>
```

Alternatively, you can use the qp-mail-editor tag to explicitly define the control, as shown in the following code.```
<qp-mail-editor 
  ... >
</<qp-mail-editor>
```

</td></tr><tr><td>

CommandName```
<px:PXMailEdit
  CommandName="RunEmailActivity"
  ... />
```

</td><td>

Use the action property of the config attribute of the qp-mail-editor control, as shown below.```
<field
  ... 
  control-type="qp-mail-editor" 
  config.bind="{action: 'RunEmailActivity'}">
</field>
```

</td></tr><tr><td>

DataField```
<px:PXMailEdit
  DataField="Email"
  ... />
```

</td><td>

Use the name property of the field tag, as shown in the following code.```
<field name="Email"
  control-type="qp-mail-editor">
</field>
```

 If you defined the control explicitly by using the qp-mail-editor tag, use the state.bind property of this tag, as shown in the following code.```
<qp-mail-editor
  state.bind="Email">
</<qp-mail-editor>
```

</td></tr><tr><td>

ID```
<px:PXMailEdit
  ID="edDefContactEmail"
  ... />
```

</td><td>

Use the id property of the config attribute of the qp-mail-editor control, as shown below.```
<field name="Email" 
  control-type="qp-mail-editor" 
  config.bind="{id: 'edDefContactEmail'}">
</field>
```

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists the obsolete ASPX elements that are related to mail editors. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXMailEdit

</td><td>

-   runat
-   CommandSourceID

</td></tr></tbody>
</table>

**Parent topic:**[Mail Editor](../DeveloperGuide/UIDevRef_MailEditor_Mapref.md)

