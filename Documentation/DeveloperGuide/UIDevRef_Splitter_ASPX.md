# Splitter: Conversion from ASPX to HTML

The following tables will help you to convert the ASPX elements that are related to the splitter to HTML elements.

## PXSplitContainer

The following table shows the correspondence between the PXSplitContainer element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML, you need to replace these ASPX elements with their analogs in HTML.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXSplitContainer```
<px:PXSplitContainer runat="server" ID="sp1" 
  SplitterPosition="300" SkinID="Horizontal" 
  Panel1MinSize="150" Panel2MinSize="150">
```

</td><td>

Use the qp-splitter tag, as shown in the following code.```
<qp-splitter id="Relations_sp" 
  split="height" initial-split="300"
  first-pane-min-size="150" 
  last-pane-min-size="150">
```

</td></tr><tr><td>

&lt;Template1&gt; and &lt;Template2&gt;```
<Template1>
  <px:PXGrid ID="grdJoins" ...></px:PXGrid>
</Template1>
<Template2>
  <px:PXGrid ID="grdOns" ...></px:PXGrid>
</Template2>
```

</td><td>

Use the &lt;split-pane&gt; tag, as shown in the following code.```
<split-pane>
  <qp-grid id="Relations_grdJoins" 
    view.bind="Relations" wg-container>
  </qp-grid>
</split-pane>
<split-pane>
  <qp-grid id="JoinConditions_grdOns" 
    view.bind="JoinConditions" wg-container>
  </qp-grid>
</split-pane>
```

</td></tr><tr><td>

ID```
<px:PXSplitContainer ID="sp1">
```

</td><td>

Use the id attribute of the qp-splitter tag.```
<qp-splitter id="splitter-ItemClass">
```

</td></tr><tr><td>

SplitterPosition```
<px:PXSplitContainer ID="sp1" 
  SplitterPosition="300">
```

</td><td>

Use the initial-split attribute of the qp-splitter tag.```
<qp-splitter id="splitter-ItemClass" 
  initial-split="20%">
```

</td></tr><tr><td>

SkinID```
<px:PXSplitContainer ID="sp1" 
  SkinID="Horizontal">
```

</td><td>

Use the split attribute of the qp-splitter tag.```
<qp-splitter id="Relations_sp" 
  split="height">
```

</td></tr><tr><td>

Panel1MinSize```
<px:PXSplitContainer ID="sp1"  
  Panel1MinSize="150">
```

</td><td>

Use the first-pane-min-size attribute of the qp-splitter tag.```
<qp-splitter id="Relations_sp" 
  first-pane-min-size="150">
```

</td></tr><tr><td>

Panel2MinSize```
<px:PXSplitContainer ID="sp1" 
  Panel2MinSize="150">
```

</td><td>

Use the last-pane-min-size attribute of the qp-splitter tag.```
<qp-splitter id="Relations_sp" 
  last-pane-min-size="150">
```

</td></tr></tbody>
</table>

## Obsolete ASPX Control

The following table lists the obsolete ASPX element that is related to the splitter. You do not need to replace this ASPX elements with any HTML element.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXSplitContainer

</td><td>

-   runat

</td></tr></tbody>
</table>

**Parent topic:**[Splitter](../DeveloperGuide/UIDevRef_Splitter_Mapref.md)

