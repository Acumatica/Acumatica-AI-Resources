# Splitter: Conversion from ASPX to HTML {#_faa80155-b655-4354-99fc-03ce39e58a1e .concept}

The following tables will help you to convert the ASPX elements that are related to the splitter to HTML elements.

## PXSplitContainer { .section}

The following table shows the correspondence between the PXSplitContainer element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML, you need to replace these ASPX elements with their analogs in HTML.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXSplitContainer```
<px:PXSplitContainer runat="server" ID="sp1" 
  SplitterPosition="300" SkinID="Horizontal" 
  Panel1MinSize="150" Panel2MinSize="150">
```

|Use the qp-splitter tag, as shown in the following code.```
<qp-splitter id="Relations_sp" 
  split="height" initial-split="300"
  first-pane-min-size="150" 
  last-pane-min-size="150">
```

|
|&lt;Template1&gt; and &lt;Template2&gt;```
<Template1>
  <px:PXGrid ID="grdJoins" ...></px:PXGrid>
</Template1>
<Template2>
  <px:PXGrid ID="grdOns" ...></px:PXGrid>
</Template2>
```

|Use the &lt;split-pane&gt; tag, as shown in the following code.```
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

|
|ID```
<px:PXSplitContainer ID="sp1">
```

|Use the id attribute of the qp-splitter tag.```
<qp-splitter id="splitter-ItemClass">
```

|
|SplitterPosition```
<px:PXSplitContainer ID="sp1" 
  SplitterPosition="300">
```

|Use the initial-split attribute of the qp-splitter tag.```
<qp-splitter id="splitter-ItemClass" 
  initial-split="20%">
```

|
|SkinID```
<px:PXSplitContainer ID="sp1" 
  SkinID="Horizontal">
```

|Use the split attribute of the qp-splitter tag.```
<qp-splitter id="Relations_sp" 
  split="height">
```

|
|Panel1MinSize```
<px:PXSplitContainer ID="sp1"  
  Panel1MinSize="150">
```

|Use the first-pane-min-size attribute of the qp-splitter tag.```
<qp-splitter id="Relations_sp" 
  first-pane-min-size="150">
```

|
|Panel2MinSize```
<px:PXSplitContainer ID="sp1" 
  Panel2MinSize="150">
```

|Use the last-pane-min-size attribute of the qp-splitter tag.```
<qp-splitter id="Relations_sp" 
  last-pane-min-size="150">
```

|

## Obsolete ASPX Control { .section}

The following table lists the obsolete ASPX element that is related to the splitter. You do not need to replace this ASPX elements with any HTML element.

|ASPX Control|Properties|
|------------|----------|
|PXSplitContainer|-   runat

|

**Parent topic:**[Splitter](../DeveloperGuide/UIDevRef_Splitter_Mapref.md)

