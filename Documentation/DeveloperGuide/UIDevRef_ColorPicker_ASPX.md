# Color Picker: Conversion from ASPX to HTML and TypeScript {#_87131e49-ca7c-4b96-99b7-c5f3d0ce6476 .concept}

The following table will help you to convert the ASPX element for the color picker control to an HTML element.

## PXTextEdit { .section}

The following table shows the correspondence between the PXTextEdit element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXTextEdit```
<px:PXTextEdit
  ID="edPrimaryColor"
  runat="server"
  DataField="PrimaryColor"
  CommitChanges="True"
  TextMode="Color" />
```

|HTML template:```
<qp-fieldset>
  <field name="PrimaryColor">
  </field>
</qp-fieldset>
```

TypeScript:

```
PrimaryColor:
  PXFieldState<PXFieldOptions.CommitChanges>;

```

**Note:** You need to specify `control-type="qp-color-picker"` in HTML unless the field has the PXColorList attribute specified in the DAC.

|

**Parent topic:**[Color Picker](../DeveloperGuide/UIDevRef_ColorPicker_Mapref.md)

