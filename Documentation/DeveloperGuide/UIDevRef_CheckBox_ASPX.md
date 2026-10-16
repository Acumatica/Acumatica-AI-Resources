# Check Box: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to check boxes to HTML or TypeScript elements.

## PXCheckBox

The following table shows the correspondence between the PXCheckBox ASPX element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXCheckBox```
<px:PXCheckBox ... />
```

</td><td>

Replace with field \(whose control type is automatically defined as a check box from the backend code\). In rare cases, you should replace it explicitly with the qp-check-box control.

</td></tr><tr><td>

AlignLeft```
<px:PXCheckBox 
  AlignLeft="True" ... />
```

</td><td>

Use the textAlign property of the config attribute of the qp-check-box control. The property specifies whether the text of the check box should be aligned right or left. The following values are available: right and left.

 ```
<field ...
  control-type="qp-check-box" 
  config.bind="{textAlign: 'right'}">
</field>
```

</td></tr><tr><td>

CommitChanges```
<px:PXCheckBox 
  CommitChanges="True" ... />
```

</td><td>

Use PXFieldOptions.CommitChanges in TypeScript code.```
export class DefLocation 
  extends PXView {
  OverrideAddress:
    PXFieldState<
      PXFieldOptions.CommitChanges>;
}
```

</td></tr><tr><td>

DataField```
<px:PXCheckBox 
  DataField="AutoPost" ... />
```

</td><td>

Use the name attribute of the field tag.

 ```
<field name="AutoPost">
</field>
```

</td></tr><tr><td>

FalseValue```
<px:PXCheckBox 
  FalseValue="D" ... />
```

</td><td>

Use the falseValue property of the config attribute of the qp-check-box control. The property specifies the string and the boolean value that is used as the field value when the check box is cleared.

 ```
<field ...
  control-type="qp-check-box" 
  config.bind="{falseValue: 'D'}">
</field>
```

</td></tr><tr><td>

ID```
<px:PXCheckBox 
  ID="chkAutoPost" ... />
```

</td><td>

Replace with the id attribute of the qp-field tag if this tag is used as a replacement. In other cases, the ID is not necessary for a check box.

</td></tr><tr><td>

RenderStyle```
<px:PXCheckBox 
  RenderStyle="Button" ... />
```

</td><td>

Use the falseValue property of the config attribute of the qp-check-box control. The property specifies how the check box is rendered. If you need to render the check box as a button, set the property to `button`.```
<field name="ProcessingSucceeded"
  config.bind="{
    renderStyle: 'button'
  }"
>
</field>
```

</td></tr><tr><td>

TrueValue```
<px:PXCheckBox 
  TrueValue="A" ... />
```

</td><td>

Use the trueValue property of the config attribute of the qp-check-box control. The property specifies the string or the boolean value that is used as the field value when the check box is selected.

 ```
<field ...
  control-type="qp-check-box" 
  config.bind="{trueValue: 'A'}">
</field>
```

</td></tr><tr><td>

SuppressLabel```
<px:PXCheckBox 
  SuppressLabel="True" ... />
```

</td><td>

Use `class="no-label"` for the field tag. \(You do not need to use `class="no-label"` with `qp-field`, which does not have a label by default.\)```
<field name="Two" class="no-label">
</field>
```

</td></tr></tbody>
</table>

## CheckImages

The following table shows the correspondence between the CheckImages ASPX element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_5328df2a-e1e7-4831-8907-b20949003ecb"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

CheckImages```
<px:PXCheckBox
  ID="edSuccessRecognition"
  runat="server"
  DataField="NumCheck"
  RenderStyle="Button"
>
  <CheckImages Normal="main@Success" />
</px:PXCheckBox>
```

</td><td>

Use the checkImages property of the config attribute of the qp-check-box control. The property specifies the image that should be used for the selected state of the check box if this check box is rendered as a button \(see `renderStyle`\). The image is an SVG icon from the `\Content\svg_icons` folder of the Acumatica ERP instance.

 ```
<field name="ProcessingSucceeded"
  config.bind="{
    checkImages: { 
      normal: 'main@Success' }
  }"
>
</field>
```

</td></tr></tbody>
</table>

## UncheckImages

The following table shows the correspondence between the UncheckImages ASPX element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_388a0d39-d256-448f-b499-ccbe1430a9d1"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

UncheckImages```
<px:PXCheckBox
  ID="chkIsValid"
  runat="server"
  DataField="Valid"
  RenderStyle="Button"
>
  <UncheckImages Normal="main@Fail" />
</px:PXCheckBox>
```

</td><td>

Use the uncheckImages property of the config attribute of the qp-check-box control. The property specifies the image that should be used for the selected state of the check box if this check box is rendered as a button \(see `renderStyle`\). The image is an SVG icon from the `\Content\svg_icons` folder of the Acumatica ERP instance.

 ```
<field name="ProcessingSucceeded"
  config.bind="{
    uncheckImages: { 
      normal: 'main@Fail' }
  }"
>
</field>
```

</td></tr></tbody>
</table>

## Obsolete ASPX Control and Property

The following table lists the obsolete ASPX element that is related to check boxes. You do not need to replace this ASPX element with any HTML or TypeScript elements.

|ASPX Control|Property|
|------------|--------|
|PXCheckBox|runat|

**Parent topic:**[Check Box](../DeveloperGuide/UIDevRef_CheckBox_Mapref.md)

