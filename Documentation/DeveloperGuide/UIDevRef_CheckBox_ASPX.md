# Check Box: Conversion from ASPX to HTML and TypeScript {#_4c376f8a-30b1-4cb7-98f8-a07426bdd596 .concept}

The following tables will help you to convert the ASPX elements that are related to check boxes to HTML or TypeScript elements.

## PXCheckBox { .section}

The following table shows the correspondence between the PXCheckBox ASPX element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXCheckBox```
<px:PXCheckBox ... />
```

|Replace with field \(whose control type is automatically defined as a check box from the backend code\). In rare cases, you should replace it explicitly with the qp-check-box control.|
|AlignLeft```
<px:PXCheckBox 
  AlignLeft="True" ... />
```

|Use the textAlign property of the config attribute of the qp-check-box control. The property specifies whether the text of the check box should be aligned right or left. The following values are available: right and left.

 ```
<field ...
  control-type="qp-check-box" 
  config.bind="{textAlign: 'right'}">
</field>
```

|
|CommitChanges```
<px:PXCheckBox 
  CommitChanges="True" ... />
```

|Use PXFieldOptions.CommitChanges in TypeScript code.```
export class DefLocation 
  extends PXView {
  OverrideAddress:
    PXFieldState<
      PXFieldOptions.CommitChanges>;
}
```

|
|DataField```
<px:PXCheckBox 
  DataField="AutoPost" ... />
```

|Use the name attribute of the field tag.

 ```
<field name="AutoPost">
</field>
```

|
|FalseValue```
<px:PXCheckBox 
  FalseValue="D" ... />
```

|Use the falseValue property of the config attribute of the qp-check-box control. The property specifies the string and the boolean value that is used as the field value when the check box is cleared.

 ```
<field ...
  control-type="qp-check-box" 
  config.bind="{falseValue: 'D'}">
</field>
```

|
|ID```
<px:PXCheckBox 
  ID="chkAutoPost" ... />
```

|Replace with the id attribute of the qp-field tag if this tag is used as a replacement. In other cases, the ID is not necessary for a check box.|
|RenderStyle```
<px:PXCheckBox 
  RenderStyle="Button" ... />
```

|Use the falseValue property of the config attribute of the qp-check-box control. The property specifies how the check box is rendered. If you need to render the check box as a button, set the property to `button`.```
<field name="ProcessingSucceeded"
  config.bind="{
    renderStyle: 'button'
  }"
>
</field>
```

|
|TrueValue```
<px:PXCheckBox 
  TrueValue="A" ... />
```

|Use the trueValue property of the config attribute of the qp-check-box control. The property specifies the string or the boolean value that is used as the field value when the check box is selected.

 ```
<field ...
  control-type="qp-check-box" 
  config.bind="{trueValue: 'A'}">
</field>
```

|
|SuppressLabel```
<px:PXCheckBox 
  SuppressLabel="True" ... />
```

|Use `class="no-label"` for the field tag. \(You do not need to use `class="no-label"` with `qp-field`, which does not have a label by default.\)```
<field name="Two" class="no-label">
</field>
```

|

## CheckImages { .section}

The following table shows the correspondence between the CheckImages ASPX element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|CheckImages```
<px:PXCheckBox
  ID="edSuccessRecognition"
  runat="server"
  DataField="NumCheck"
  RenderStyle="Button"
>
  <CheckImages Normal="main@Success" />
</px:PXCheckBox>
```

|Use the checkImages property of the config attribute of the qp-check-box control. The property specifies the image that should be used for the selected state of the check box if this check box is rendered as a button \(see `renderStyle`\). The image is an SVG icon from the `\Content\svg_icons` folder of the Acumatica ERP instance.

 ```
<field name="ProcessingSucceeded"
  config.bind="{
    checkImages: { 
      normal: 'main@Success' }
  }"
>
</field>
```

|

## UncheckImages { .section}

The following table shows the correspondence between the UncheckImages ASPX element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|UncheckImages```
<px:PXCheckBox
  ID="chkIsValid"
  runat="server"
  DataField="Valid"
  RenderStyle="Button"
>
  <UncheckImages Normal="main@Fail" />
</px:PXCheckBox>
```

|Use the uncheckImages property of the config attribute of the qp-check-box control. The property specifies the image that should be used for the selected state of the check box if this check box is rendered as a button \(see `renderStyle`\). The image is an SVG icon from the `\Content\svg_icons` folder of the Acumatica ERP instance.

 ```
<field name="ProcessingSucceeded"
  config.bind="{
    uncheckImages: { 
      normal: 'main@Fail' }
  }"
>
</field>
```

|

## Obsolete ASPX Control and Property { .section}

The following table lists the obsolete ASPX element that is related to check boxes. You do not need to replace this ASPX element with any HTML or TypeScript elements.

|ASPX Control|Property|
|------------|--------|
|PXCheckBox|runat|

**Parent topic:**[Check Box](../DeveloperGuide/UIDevRef_CheckBox_Mapref.md)

