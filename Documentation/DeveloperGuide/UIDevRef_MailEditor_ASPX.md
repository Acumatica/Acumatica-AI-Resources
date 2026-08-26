# Mail Editor: Conversion from ASPX to HTML and TypeScript {#_4b8c219b-aeb2-4805-8a29-10418d10ab57 .concept}

The following tables will help you to convert the ASPX elements that are related to a mail editor to HTML or TypeScript elements.

## PXMailEdit { .section}

The following table shows the correspondence between the PXMailEdit element and the HTML or TypeScript element. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXMailEdit```
<px:PXMailEdit ... />
```

|Replace with field and specify qp-mail-editor as the control type, as shown in the following code.```
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

|
|CommandName```
<px:PXMailEdit
  CommandName="RunEmailActivity"
  ... />
```

|Use the action property of the config attribute of the qp-mail-editor control, as shown below.```
<field
  ... 
  control-type="qp-mail-editor" 
  config.bind="{action: 'RunEmailActivity'}">
</field>
```

|
|DataField```
<px:PXMailEdit
  DataField="Email"
  ... />
```

|Use the name property of the field tag, as shown in the following code.```
<field name="Email"
  control-type="qp-mail-editor">
</field>
```

 If you defined the control explicitly by using the qp-mail-editor tag, use the state.bind property of this tag, as shown in the following code.```
<qp-mail-editor
  state.bind="Email">
</<qp-mail-editor>
```

|
|ID```
<px:PXMailEdit
  ID="edDefContactEmail"
  ... />
```

|Use the id property of the config attribute of the qp-mail-editor control, as shown below.```
<field name="Email" 
  control-type="qp-mail-editor" 
  config.bind="{id: 'edDefContactEmail'}">
</field>
```

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to mail editors. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXMailEdit|-   runat
-   CommandSourceID

|

**Parent topic:**[Mail Editor](../DeveloperGuide/UIDevRef_MailEditor_Mapref.md)

