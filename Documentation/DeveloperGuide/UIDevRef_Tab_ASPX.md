# Tab: Conversion from ASPX to HTML and TypeScript {#_88f6ddb6-fd34-4f7b-9b0e-7b5209c5b84f .concept}

The following tables will help you to convert tab-related ASPX elements to HTML or TypeScript elements.

## PXTab { .section}

The following table shows the correspondence between the PXTab ASPX control and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXTab```
<px:PXTab ID="tab" runat="server"
  Width="100%" Height="100%">
  <Items>
    <px:PXTabItem Text="Material">
    </px:PXTabItem>
    <px:PXTabItem Text="Tools">
    </px:PXTabItem>
  </Items>
  <AutoSize Enabled="True"/>
</px:PXTab>
```

|Use the qp-tabbar control, as shown in the following code. The control represents a tab bar in HTML.```
<qp-tabbar id="tab">
</qp-tabbar>
```

|
|ID```
<px:PXTab ID="tabsSOOrder">
</px:PXTab>
```

|Use the id attribute of the qp-tabbar control. The attribute specifies the ID of the tab bar, as shown in the following example.```
<qp-tabbar
  id="tabsSOOrder"
</qp-tabbar>
```

|
|SelectedIndex```
<px:PXTab SelectedIndex="1">
</px:PXTab>
```

|Use the active-tab-id attribute of the qp-tabbar control. The attribute specifies the ID of the active tab on the tab bar, as shown in the following example.```
<qp-tabbar 
  active-tab-id="tabSettings"
</qp-tabbar>
```

|
|TabIndex```
<px:PXTab TabIndex="23">
</px:PXTab>
```

|Use the tabIndex property of the config attribute of the qp-tabbar control.|

## PXTabItem { .section}

The following table shows the correspondence between the PXTabItem ASPX control and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXTabItem```
<px:PXTabItem
  Text="Estimates"
  BindingContext="form"
  RepaintOnDemand="false">
  <Template>
    <px:PXGrid>
     </px:PXGrid>
  </Template>
</px:PXTabItem>
```

|Use the qp-tab control, as shown in the following code. The control represents a tab in HTML.```
<qp-tab
  id="tabEstimates"
  caption="Estimates">
  <qp-grid>
  </qp-grid>
</qp-tab>
```

|
|LoadOnDemand```
<px:PXTabItem 
  LoadOnDemand="true">
</px:PXTabItem>
```

|Use the load-on-demand attribute of the qp-tab control. The attribute makes the system load the tab, even if the tab is inactive. The following code uses this attribute.```
<qp-tab load-on-demand="true">
</qp-tab>
```

|
|Text```
<px:PXTabItem Text="Options">
</px:PXTabItem>
```

|Use the caption attribute of the qp-tab control. The attribute specifies the title of the tab. The following code uses this attribute.```
<qp-tab caption="Options">
</qp-tab>
```

|
|Visible```
<px:PXTabItem Visible="True">
</px:PXTabItem>
```

|Use the visible attribute of the qp-tab control. The attribute specifies whether the tab appears on the form. The following code uses this attribute.```
<qp-tab visible="true">
</qp-tab>
```

|
|VisibleExp```
<px:PXTabItem 
  VisibleExp="DataControls[&quot;edDuplicateFound&quot;]
    .Value == true" 
  LoadOnDemand="True">
```

|Use `visible.bind='<condition>'` for the qp-tab tag, as shown in the following example.

```
<qp-tab
  visible.bind="Lead.DuplicateFound.value === true">
</qp-tab>
```

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists obsolete ASPX elements that are related to tabs. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|AutoSize```
<px:PXTab>
  <AutoSize Enabled="True"/>
</px:PXTab>
```

|All properties|
|PXTab```
<px:PXTab 
  AllowAutoHide="True"
  BindingContext="form"
  DataKeyNames="ProdOrdID"
  DataMember="AMBSetupRecord"
  DataSourceID="ds"
  DefaultControlID="edBatchID"
  DynamicTabs="False"
  FilesIndicator="False" 
  Height="100%"
  MarkRequired="Dynamic"
  NoteIndicator="False"
  runat="server"
  SelectedIndexExpr=''
  Style="z-index: 100"
  Width="100%" >
</px:PXTab>
```

|-   AllowAutoHide
-   BindingContext
-   DataKeyNames
-   DataMember
-   DataSourceID
-   DefaultControlID
-   DynamicTabs
-   FilesIndicator
-   Height
-   MarkRequired
-   NoteIndicator
-   runat
-   SelectedIndexExpr
-   Style
-   Width

|
|PXTabItem```
<px:PXTabItem 
  BindingContext="TreeNodeSelectedForm"
  DependsOnView="ComplianceDocuments"
  RepaintOnDemand="true">
</px:PXTabItem>
```

|-   BindingContext
-   DependsOnView
-   RepaintOnDemand

|

**Parent topic:**[Tab](../DeveloperGuide/UIDevRef_Tab_Mapref.md)

