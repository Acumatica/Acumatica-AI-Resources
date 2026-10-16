# Mask Editor: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to the mask editor to HTML or TypeScript elements.

## PXMaskEdit

The following table shows the correspondence between the PXMaskEdit element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXMaskEdit```
<px:PXMaskEdit 
  ID="edStartIPAddress" 
  runat="server" 
  DataField="StartIPAddress" 
  EmptyChar="0" 
  InputMask="###.###.###.###" />
```

</td><td>

Use the fieldConfig or columnConfig decorator to specify the type of the control and its properties.```
@columnConfig({
  editorType: "qp-mask-editor",
  editorConfig: { emptyChar: "0"} })
StartIPAddress: PXFieldState;
```

</td></tr><tr><td>

EmptyChar```
<px:PXMaskEdit ...
 EmptyChar="0" />
```

</td><td>

Use the config.emptyChar property of the qp-mask-editor control.```
@columnConfig({ ...
  editorConfig: { emptyChar: "0"} })
StartIPAddress: PXFieldState;
```

</td></tr><tr><td>

InputMask```
<px:PXMaskEdit ...
  InputMask="###.###.###.###" />
```

</td><td>

Use the config.inputMask property of the qp-mask-editor control. However, by default, the inputMask property is assigned the value from the PXUIField attribute on the corresponding DAC field, so you do not need to specify it.

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists the obsolete ASPX elements that are related to mask editor. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXMaskEdit

</td><td>

-   ID
-   runat

</td></tr></tbody>
</table>

**Parent topic:**[Mask Editor](../DeveloperGuide/UIDevRef_MaskEditor_Mapref.md)

