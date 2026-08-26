# Mask Editor: Conversion from ASPX to HTML and TypeScript {#_03cb1b44-9b5e-4e42-9354-2275831054be .concept}

The following tables will help you to convert the ASPX elements that are related to the mask editor to HTML or TypeScript elements.

## PXMaskEdit { .section}

The following table shows the correspondence between the PXMaskEdit element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXMaskEdit```
<px:PXMaskEdit 
  ID="edStartIPAddress" 
  runat="server" 
  DataField="StartIPAddress" 
  EmptyChar="0" 
  InputMask="###.###.###.###" />
```

|Use the fieldConfig or columnConfig decorator to specify the type of the control and its properties.```
@columnConfig({
  editorType: "qp-mask-editor",
  editorConfig: { emptyChar: "0"} })
StartIPAddress: PXFieldState;
```

|
|EmptyChar```
<px:PXMaskEdit ...
 EmptyChar="0" />
```

|Use the config.emptyChar property of the qp-mask-editor control.```
@columnConfig({ ...
  editorConfig: { emptyChar: "0"} })
StartIPAddress: PXFieldState;
```

|
|InputMask```
<px:PXMaskEdit ...
  InputMask="###.###.###.###" />
```

|Use the config.inputMask property of the qp-mask-editor control. However, by default, the inputMask property is assigned the value from the PXUIField attribute on the corresponding DAC field, so you do not need to specify it.|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to mask editor. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXMaskEdit|-   ID
-   runat

|

**Parent topic:**[Mask Editor](../DeveloperGuide/UIDevRef_MaskEditor_Mapref.md)

