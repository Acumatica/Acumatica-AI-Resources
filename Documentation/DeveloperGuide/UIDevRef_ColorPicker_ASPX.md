# Color Picker: Conversion from ASPX to HTML and TypeScript

The following table will help you to convert the ASPX element for the color picker control to an HTML element.

## PXTextEdit

The following table shows the correspondence between the PXTextEdit element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXTextEdit```
<px:PXTextEdit
  ID="edPrimaryColor"
  runat="server"
  DataField="PrimaryColor"
  CommitChanges="True"
  TextMode="Color" />
```

</td><td>

HTML template:```
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

</td></tr></tbody>
</table>

**Parent topic:**[Color Picker](../DeveloperGuide/UIDevRef_ColorPicker_Mapref.md)

