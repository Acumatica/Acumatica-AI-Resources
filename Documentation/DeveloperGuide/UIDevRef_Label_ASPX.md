# Label: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to the label control to HTML or TypeScript elements.

## PXLabel

The following table shows the correspondence between the PXLabel element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXLabel```
<px:PXLabel 
  runat="server" ID="space1" />
```

</td><td>

For labels with no text that are used to organize layout, use the appropriate templates instead. For details, see [Form Layout: Predefined Templates](UIDev_DesigningLayout_Templates.md).

</td></tr><tr><td>

PXLabel```
<px:PXLabel runat="server" 
  ID="lblRecalcTaxes" 
  Text="Taxes will be recalculated ..." 
  Height="40px" Width="350px">
</px:PXLabel>
```

</td><td>

For labels that display an informational message, use the qp-info-box tag. For more details, see [Error, Warning, or Informational Notification: General Information](UIDevRef_InfoBox_GeneralInfo.md).```
<qp-info-box 
  caption="Taxes will be recalculated ..." 
  type="info">
</qp-info-box>
```

</td></tr><tr><td>

Text```
<px:PXLabel
  Text="Taxes will be recalculated ..." >
</px:PXLabel>
```

</td><td>

Use the caption property of the qp-info-box control. ```
<qp-info-box 
  caption="Taxes will be recalculated ...">
</qp-info-box>
```

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists the obsolete ASPX elements that are related to the label control. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXLabel

</td><td>

-   ID
-   runat

</td></tr></tbody>
</table>

**Parent topic:**[Label](../DeveloperGuide/UIDevRef_Label_Mapref.md)

