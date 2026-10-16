# Tab: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert tab-related ASPX elements to HTML or TypeScript elements.

## PXTab

The following table shows the correspondence between the PXTab ASPX control and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXTab```
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

</td><td>

Use the qp-tabbar control, as shown in the following code. The control represents a tab bar in HTML.```
<qp-tabbar id="tab">
</qp-tabbar>
```

</td></tr><tr><td>

ID```
<px:PXTab ID="tabsSOOrder">
</px:PXTab>
```

</td><td>

Use the id attribute of the qp-tabbar control. The attribute specifies the ID of the tab bar, as shown in the following example.```
<qp-tabbar
  id="tabsSOOrder"
</qp-tabbar>
```

</td></tr><tr><td>

SelectedIndex```
<px:PXTab SelectedIndex="1">
</px:PXTab>
```

</td><td>

Use the active-tab-id attribute of the qp-tabbar control. The attribute specifies the ID of the active tab on the tab bar, as shown in the following example.```
<qp-tabbar 
  active-tab-id="tabSettings"
</qp-tabbar>
```

</td></tr><tr><td>

TabIndex```
<px:PXTab TabIndex="23">
</px:PXTab>
```

</td><td>

Use the tabIndex property of the config attribute of the qp-tabbar control.

</td></tr></tbody>
</table>

## PXTabItem

The following table shows the correspondence between the PXTabItem ASPX control and HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_388a0d39-d256-448f-b499-ccbe1430a9d1"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXTabItem```
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

</td><td>

Use the qp-tab control, as shown in the following code. The control represents a tab in HTML.```
<qp-tab
  id="tabEstimates"
  caption="Estimates">
  <qp-grid>
  </qp-grid>
</qp-tab>
```

</td></tr><tr><td>

LoadOnDemand```
<px:PXTabItem 
  LoadOnDemand="true">
</px:PXTabItem>
```

</td><td>

Use the load-on-demand attribute of the qp-tab control. The attribute makes the system load the tab, even if the tab is inactive. The following code uses this attribute.```
<qp-tab load-on-demand="true">
</qp-tab>
```

</td></tr><tr><td>

Text```
<px:PXTabItem Text="Options">
</px:PXTabItem>
```

</td><td>

Use the caption attribute of the qp-tab control. The attribute specifies the title of the tab. The following code uses this attribute.```
<qp-tab caption="Options">
</qp-tab>
```

</td></tr><tr><td>

Visible```
<px:PXTabItem Visible="True">
</px:PXTabItem>
```

</td><td>

Use the visible attribute of the qp-tab control. The attribute specifies whether the tab appears on the form. The following code uses this attribute.```
<qp-tab visible="true">
</qp-tab>
```

</td></tr><tr><td>

VisibleExp```
<px:PXTabItem 
  VisibleExp="DataControls[&quot;edDuplicateFound&quot;]
    .Value == true" 
  LoadOnDemand="True">
```

</td><td>

Use `visible.bind='<condition>'` for the qp-tab tag, as shown in the following example.

```
<qp-tab
  visible.bind="Lead.DuplicateFound.value === true">
</qp-tab>
```

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists obsolete ASPX elements that are related to tabs. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

AutoSize```
<px:PXTab>
  <AutoSize Enabled="True"/>
</px:PXTab>
```

</td><td>

All properties

</td></tr><tr><td>

PXTab```
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

</td><td>

-   AllowAutoHide
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

</td></tr><tr><td>

PXTabItem```
<px:PXTabItem 
  BindingContext="TreeNodeSelectedForm"
  DependsOnView="ComplianceDocuments"
  RepaintOnDemand="true">
</px:PXTabItem>
```

</td><td>

-   BindingContext
-   DependsOnView
-   RepaintOnDemand

</td></tr></tbody>
</table>

**Parent topic:**[Tab](../DeveloperGuide/UIDevRef_Tab_Mapref.md)

