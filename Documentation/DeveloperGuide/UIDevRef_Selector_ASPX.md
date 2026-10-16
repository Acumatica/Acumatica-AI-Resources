# Selector Control: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to the selector control to HTML or TypeScript elements.

## PXSelector

The following table shows the correspondence between PXSelector and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXSelector```
<px:PXSelector 
  runat="server"
  ID="edContactID" 
  DataField="ContactID"
  AllowEdit="True" 
  DataSourceID="ds"
  AllowAddNew="True" 
  AutoRefresh="True"
  CommitChanges="True" />
```

</td><td>

Use the field tag, as shown in the following code. The control represents the selector control if the PXSelector attribute is specified \(or its descendants are specified\) for the DAC field in the name attribute.```
<field name="ContactID"
  config-allow-edit.bind="true">
</field>
```

In rare cases, you can use the qp-selector tag.

</td></tr><tr><td>

AllowAddNew```
<px:PXSelector ID="edContactID" ...
  AllowAddNew="True" />
```

</td><td rowspan="2">

Use the config-allow-edit property in HTML, as shown in the following code. The property enables the link and add the **+** \(**Add Row**\) button to the lookup table of the selector control.```
<field name="ContactID" 
  config-allow-edit.bind="true">
</field>
```

</td></tr><tr><td>

AllowEdit```
<px:PXSelector ID="edContactID" ...
  AllowEdit="True" />
```

</td></tr><tr><td>

CommitChanges```
<px:PXSelector ID="edContactID" ...
  CommitChanges="True" />
```

</td><td>

In the TypeScript file, use the PXFieldOptions.CommitChanges type parameter when defining the field, as shown in the following code.```
ContactID:
  PXFieldState<PXFieldOptions.CommitChanges>;

```

</td></tr><tr><td>

DataField```
<px:PXSelector 
  DataField="ContactID" ... />
```

</td><td>

Use the name property of the field tag in HTML to specify the DAC field name, as shown in the following code.```
<field name="ContactID" ... ></field>
```

</td></tr><tr><td>

DisplayMode```
<px:PXSelector ID="edSrvOrdType" 
  DataField="SrvOrdType" 
  DisplayMode="Text" ... />
```

</td><td>

Specify what should be displayed in the selector by using the config-display-mode property in HTML, as shown in the following code. The possible values are "both", "id", and "text".```
<field name="EntityTypeName"
  config-display-mode.bind="'text'">
</field>
```

</td></tr><tr><td>

TextField```
<px:PXSelector ID="edViewName" 
  DataField="ViewName"
  ValueField="Name"
  TextField="DisplayName"
  ... />
```

</td><td>

Use the textField property in the controlConfig decorator.```
@controlConfig({
  valueField: "Name", textField: "DisplayName" })
ViewName: PXFieldState<PXFieldOptions.CommitChanges>;
```

</td></tr><tr><td>

TextMode```
<px:PXSelector ID="edNavScreen"
  DatField="Link"
  DisplayMode="Text"
  TextField="Title"
  TextMode="Editable"/>
```

</td><td>

Use the selectorMode property in the controlConfig decorator.```
@columnConfig({ 
  displayMode: GridColumnDisplayMode.Both, 
  editorConfig: { 
    displayMode: "text", 
    selectorMode: PXSelectorMode.TextModeEditable 
  } 
})
Link: PXFieldState<PXFieldOptions.CommitChanges>;
```

</td></tr><tr><td>

ValueField```
<px:PXSelector ID="edViewName" 
  DataField="ViewName"
  ValueField="Name"
  TextField="DisplayName"
  ... />
```

</td><td>

Use the valueField property in the controlConfig decorator.```
@controlConfig({
  valueField: "Name", textField: "DisplayName" })
ViewName: PXFieldState<PXFieldOptions.CommitChanges>;
```

</td></tr></tbody>
</table>

## PXSegmentMask

The following table shows the correspondence between PXSegmentMask and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_388a0d39-d256-448f-b499-ccbe1430a9d1"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXSegmentMask```
<px:PXSegmentMask
  CommitChanges="True" 
  ID="edCustomerID"
  runat="server" 
  DataField="CustomerID"
  AllowAddNew="True" 
  AllowEdit="True"
  DataSourceID="ds" 
  AutoRefresh="True"/>
```

</td><td>

Use the field tag, as shown in the following code. The control represents the selector control if the PXSelector attribute is specified \(or its descendants are specified\) for the DAC field in the name attribute.```
<field name="CustomerID"
  config-allow-edit.bind="true"></field>
```

In rare cases, you can use the qp-selector tag.

</td></tr><tr><td>

Wildcard```
<px:PXSegmentMask 
  DataField="SubCD"
  SelectorMode="Segment"
  WildCard="?" />
```

</td><td>

Use the wildCard property of the controlConfig or columnConfig decorator.```
@columnConfig({
  wildcard: "?",
  editorConfig: {
    wildcard: "?"
  }
})
SubCD: PXFieldState;
```

**Note:** You need to specify the wildCard property twice: first for the column value when the table just shows the value, and second in the editorConfig decorator, when a user actually selects the control inside the column and edits the value in the control.

</td></tr></tbody>
</table>

## PXMultiSelector

The following table shows the correspondence between the PXMultiSelector ASPX element and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_2d0a9f7e-8202-4aa1-90c9-6f50b69fbd7b"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXMultiSelector```
<px:PXMultiSelector 
  ID="edMailTo" 
  runat="server" 
  SkinID="email" 
  TextField="SearchSuggestion" 
  ValueField="EMail" 
  DataSourceID="ds" 
  DataField="MailTo" 
  Width="100%" 
  AutoGenerateColumns="false" 
  Hidden="True" 
  CommitChanges="True">
```

</td><td>

Use the multiSelect property, which is available in the config attribute of the qp-selector control, as shown in the following code. The property indicates whether multiple values can be selected in the control.```
@controlConfig({
  multiSelect: true,
  valueTemplate: '{1} <{0}>' }) 
MailTo: PXFieldState;
```

</td></tr></tbody>
</table>

## Parameters

The following table shows the correspondence between Parameters and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_7bd6c45b-24a5-44f1-8974-e89025afb3ef"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

Parameters```
<px:PXSelector ... DataField="RefNbr">
  <Parameters>
    <px:PXControlParam ControlID="grid" 
      Name="APRegister.docType" 
      PropertyName="DataValues[&quot;DocType&quot;]" 
      Type="String" />
  </Parameters>
</px:PXSelector>
```

</td><td>

Use the parameters property in the config property of the qp-selector control. For details, see [Selector Control: Selector Parameters](UIDevRef_Selector_Params.md).```
@columnConfig({
  editorConfig: {
    parameters: (screen: AP203500) => ({ 
      "APRegister.docType": screen.Document_Detail.activeRow.DocType.value })
  }
})
RefNbr: PXFieldState;
```

</td></tr></tbody>
</table>

**Parent topic:**[Selector](../DeveloperGuide/UIDevRef_Selector_Mapref.md)

