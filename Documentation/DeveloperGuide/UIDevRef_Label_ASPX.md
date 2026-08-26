# Label: Conversion from ASPX to HTML and TypeScript {#_404091a2-0a25-42f5-b348-83bb28a9a273 .concept}

The following tables will help you to convert the ASPX elements that are related to the label control to HTML or TypeScript elements.

## PXLabel { .section}

The following table shows the correspondence between the PXLabel element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXLabel```
<px:PXLabel 
  runat="server" ID="space1" />
```

|For labels with no text that are used to organize layout, use the appropriate templates instead. For details, see [Form Layout: Predefined Templates](UIDev_DesigningLayout_Templates.md).|
|PXLabel```
<px:PXLabel runat="server" 
  ID="lblRecalcTaxes" 
  Text="Taxes will be recalculated ..." 
  Height="40px" Width="350px">
</px:PXLabel>
```

|For labels that display an informational message, use the qp-info-box tag. For more details, see [Error, Warning, or Informational Notification: General Information](UIDevRef_InfoBox_GeneralInfo.md).```
<qp-info-box 
  caption="Taxes will be recalculated ..." 
  type="info">
</qp-info-box>
```

|
|Text```
<px:PXLabel
  Text="Taxes will be recalculated ..." >
</px:PXLabel>
```

|Use the caption property of the qp-info-box control. ```
<qp-info-box 
  caption="Taxes will be recalculated ...">
</qp-info-box>
```

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to the label control. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXLabel|-   ID
-   runat

|

**Parent topic:**[Label](../DeveloperGuide/UIDevRef_Label_Mapref.md)

