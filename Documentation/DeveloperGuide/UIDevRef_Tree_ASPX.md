# Tree: Conversion from ASPX to HTML and TypeScript {#_1303dc29-b4bd-447f-a6fc-974b82d81d9d .concept}

The following tables will help you to convert the ASPX elements that are related to trees to HTML or TypeScript elements.

## Behavior { .section}

The following table shows the correspondence between the Behavior element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|Behavior```
<px:PXTreeView >
  <AutoCallBack >
    <Behavior 
      RepaintControlsIDs="form, formOper" 
      RepaintControls="All" />
  </AutoCallBack>
</px:PXTreeView>
```

|Use the autoRepaint property of the treeConfig decorator.|

## ExtraColumns { .section}

The following table shows the correspondence between the ExtraColumns element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|ExtraColumns```
<px:PXTree 
  <ExtraColumns>
    <px:ExtraColumn 
      Title="Qty" 
      TagName="qp-text-editor" 
      Width="115" 
      TextAlign="3">
    </px:ExtraColumn>
    <px:ExtraColumn 
      Title="Uom" 
      TagName="qp-text-editor" 
      Width="85" 
      TextAlign="1">
    </px:ExtraColumn>
  </ExtraColumns>
</px:PXTree>
```

|Use the extraColumns property of the treeConfig decorator.|

## Images { .section}

The following table shows the correspondence between the Images element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|Images```
<px:PXTreeView>				
  <Images>
    <ParentImages 
      Normal="tree@Folder" 
      Selected="tree@FolderS" />
    <LeafImages 
      Normal="tree@Folder" 
      Selected="tree@FolderS" />
  </Images>
</px:PXTree>
```

|Use the images property of the treeConfig decorator.|

## PXTree { .section}

The following table shows the correspondence between the PXTree element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXTree```
<px:PXTree 
  runat="server" 
  ID="treeBomTree" 
  CallbackUpdatable="True" 
  DataMember="BomTree" 
  DefaultDrag="Cut" 
  Width="100%" 
  Height="100%" 
  ParentIDName="IDParent" 
  IDName="IDName" 
  Description="Description" 
  ExtraColumnField="ExtraColumns" 
  ActionField="Actions" 
  IconField="Icon" 
  IconColorField="Iconcolor" 
  IconSize="22"
  AddSiblingNode="NewSiblingNodeDefault" 
  AddChildNode="NewChildNodeDefault"
  OnAdd="AddNode" 
  OnDelete="DeleteNode" 
  OnChange="UpdateNode" 
  OnSelect="SelectNode" 
  CheckDropCommand="CheckDropAction" 
  Modifiable="True" 
  Mode="single" 
  SingleClickSelect="True" >
  <ExtraColumns>
    <px:ExtraColumn 
      Title="Qty" 
      TagName="qp-text-editor" 
      Width="115" 
      TextAlign="3">
    </px:ExtraColumn>
    <px:ExtraColumn 
      Title="Uom" 
      TagName="qp-text-editor" 
      Width="85" 
      TextAlign="1">
    </px:ExtraColumn>
  </ExtraColumns>
</px:PXTree>
```

|Use the qp-tree tag in HTML and the treeConfig decorator for a view class in TypeScript.

 The following example shows a declaration of a view class for a tree in TypeScript.

 ```
@treeConfig({
  parentIdField: "IDParent",
  iconField: "Icon",
  idField: "IDName",
  textField: "Description",
  modifiable: false,
  mode: "single",
  singleClickSelect: true,
  onSelect: "SelectNode",
  onAdd: "AddNode",
  onDelete: "DeleteNode",
  onChange: "UpdateNode",
})
export class WorkbenchTreeNode 
 extends PXView  {
  IDName: PXFieldState;
  IDNameOriginal: PXFieldState;
  IDParent: PXFieldState;
  Description: PXFieldState;
  Icon: PXFieldState;
  IconColor: PXFieldState;
  Actions: PXFieldState;
  ExtraColumns: PXFieldState;
}
```

 The following HTML code includes the tree in the layout of an Acumatica ERP form.

 ```
<qp-tree 
  id="treeBomTree" 
  view.bind="BomTree">
</qp-tree>
```

|
|ActionField```
<px:PXTree 
  ActionField="Actions" />
```

|Use the actionField property of the treeConfig decorator.|
|AddChildNode```
<px:PXTree 
  AddChildNode="NewChildNodeDefault" />
```

|Use the addChildNode property of the treeConfig decorator.|
|AddSiblingNode```
<px:PXTree 
  AddSiblingNode="NewSiblingNodeDefault" />
```

|Use the addSiblingNode property of the treeConfig decorator.|
|CheckDropCommand```
<px:PXTree 
  CheckDropCommand="CheckDropAction" />
```

|Use the checkDropCommand property of the treeConfig decorator.|
|DataMember```
<px:PXTree 
  DataMember="ItemClassNodes" />
```

|Use the view attribute of the qp-tree control, as the following code shows.```
<qp-tree 
  id="tree" 
  view.bind="ItemClassNodes">
</qp-tree>
```

|
|DefaultDrag```
<px:PXTree 
  DefaultDrag="Cut" />
```

|Use the defaultDrag property of the treeConfig decorator.|
|Description```
<px:PXTree 
  Description="Description" />
```

|Use the textField property of the treeConfig decorator.|
|ExtraColumnField```
<px:PXTree 
  ExtraColumnField="ExtraColumns" />
```

|Use the extraColumnField property of the treeConfig decorator.|
|Height```
<px:PXTree 
  Height="100%" />
```

|Do not specify the height of a tree control because it is automatically adjusted for various screen sizes. However, if you need to specify the height for some reason, you can use the height property in the treeConfig decorator.|
|IconColorField```
<px:PXTree 
  IconColorField="Iconcolor" />
```

|Use the iconColorField property of the treeConfig decorator.|
|IconField```
<px:PXTree 
  IconField="Icon" />
```

|Use the iconField property of the treeConfig decorator.|
|IconSize```
<px:PXTree 
  IconSize="22" />
```

|Use the iconSize property of the treeConfig decorator.|
|ID```
<px:PXTree 
  ID="tree" />
```

|Use the id attribute of the qp-tree control, as the following code shows.```
<qp-tree 
  id="tree">
</qp-tree>
```

|
|IDName```
<px:PXTree 
  IDName="IDName" />
```

|Use the idField property of the treeConfig decorator.|
|Mode```
<px:PXTree 
  Mode="single" />
```

|Use the mode property of the treeConfig decorator.|
|Modifiable```
<px:PXTree 
  Modifiable="True" />
```

|Use the modifiable property of the treeConfig decorator.|
|OnAdd```
<px:PXTree 
  OnAdd="AddNode" />
```

|Use the onAdd property of the treeConfig decorator.|
|OnChange```
<px:PXTree 
  OnChange="UpdateNode" />
```

|Use the onChange property of the treeConfig decorator.|
|OnDelete```
<px:PXTree 
  OnDelete="DeleteNode" />
```

|Use the onDelete property of the treeConfig decorator.|
|OnSelect```
<px:PXTree 
  OnSelect="SelectNode" />
```

|Use the onSelect property of the treeConfig decorator.|
|ParentIDName```
<px:PXTree 
  ParentIDName="IDParent" />
```

|Use the parentIdField property of the treeConfig decorator.|
|SingleClickSelect```
<px:PXTree 
  SingleClickSelect="True" />
```

|Use the singleClickSelect property of the treeConfig decorator.|
|Width```
<px:PXTree 
  Width="100%" />
```

|Do not specify the width of a tree control because it is automatically adjusted for various screen sizes. However, if you need to specify the width for some reason, you can use the width property in the treeConfig decorator.|

## PXTreeItemBinding { .section}

The following table shows the correspondence between the PXTreeItemBinding element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXTreeItemBinding```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      DataMember="ItemClassNodes" 
      TextField="SegmentedClassCD" 
      ValueField="ItemClassID" 
      DescriptionField="Descr" />
  </DataBindings>
</px:PXTreeView>
```

|Use the properties of the treeConfig decorator, as shown in the following example.

 ```
@treeConfig({
  textField: 'SegmentedClassCD',
})
export class ItemClassNodes 
 extends PXView {
  ItemClassID: PXFieldState;
  SegmentedClassCD: PXFieldState;
  Descr: PXFieldState;
}
```

 **Note:** The DescriptionField property from ASPX is not supported in the Modern UI.

|
|DataMember```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      DataMember="ItemClassNodes" 
    />
  </DataBindings>
</px:PXTreeView>
```

|Use the view attribute of the qp-tree control, as the following code shows.```
<qp-tree 
  id="tree" 
  view.bind="ItemClassNodes">
</qp-tree>
```

|
|DescriptionField```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      DescriptionField="Descr" 
    />
  </DataBindings>
</px:PXTreeView>
```

|The DescriptionField property from ASPX is not supported in the Modern UI.|
|ImageUrlField```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      ImageUrlField="Icon" 
    />
  </DataBindings>
</px:PXTreeView>
```

|Use the iconField property of the treeConfig decorator.|
|TextField```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      TextField="SegmentedClassCD" 
    />
  </DataBindings>
</px:PXTreeView>
```

|Use the textField property of the treeConfig decorator.|
|ToolTipField```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      ToolTipField="ToolTip" 
    />
  </DataBindings>
</px:PXTreeView>
```

|Use the toolTipField property of the treeConfig decorator.|
|ValueField```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      ValueField="ItemClassID" 
    />
  </DataBindings>
</px:PXTreeView>
```

|Use the valueField property of the treeConfig decorator.|

## PXTreeView { .section}

The following table shows the correspondence between the PXTreeView element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXTreeView```
<px:PXTreeView 
  ID="tree" 
  runat="server" 
  DataSourceID="ds" 
  DataMember="ItemClassNodes" 
  Height="180px"
  AutoRepaint="True" 
  SyncPosition="True" 
  SyncPositionWithGraph="True" 
  PreserveExpanded="True" 
  ExpandDepth="0" 
  PopulateOnDemand="True"
  Caption="Item Class Tree" 
  ShowRootNode="False" 
  AllowCollapse="True">
  <CaptionStyle 
    Height="17px" />
  <AutoCallBack 
    Command="GoToNodeSelectedInTree" 
    Target="ds" />
  <DataBindings>
    <px:PXTreeItemBinding 
      DataMember="ItemClassNodes" 
      TextField="SegmentedClassCD" 
      ValueField="ItemClassID" 
      DescriptionField="Descr" />
  </DataBindings>
  <AutoSize Enabled="True" />
</px:PXTreeView>
```

|Use the qp-tree tag in HTML and the treeConfig decorator for a view class in TypeScript.

 The following example shows a declaration of a view class for a tree in TypeScript.

 ```
@treeConfig({
  dynamic: true,
  hideRootNode: true,
  idField: 'ItemClassID',
  textField: 'SegmentedClassCD',
  modifiable: false,
  mode: 'single',
  singleClickSelect: true,
  selectFirstNode: true,
  syncPosition: true,
  openedLayers: 1,
})
export class ItemClassNodes 
 extends PXView {
  ItemClassID: PXFieldState;
  SegmentedClassCD: PXFieldState;
  Descr: PXFieldState;
}
```

 **Note:** The DescriptionField property from ASPX is not supported in the Modern UI.

 The following HTML code includes the tree in the layout of an Acumatica ERP form.

 ```
<qp-tree id="tree" 
  view.bind="ItemClassNodes" 
  caption="Item Class Tree">
</qp-tree>
```

|
|AllowCollapse```
<px:PXTreeView 
  AllowCollapse="True">
</px:PXTreeView>
```

|Use the qp-collapsible attribute as described in [Collapsible Area: Configuration](UIDevRef_CollapsibleArea_Configuration.md).|
|AutoRepaint```
<px:PXTreeView 
  AutoRepaint="True" />
```

|Use the autoRepaint property of the treeConfig decorator.|
|Caption```
<px:PXTreeView 
  Caption="Item Class Tree" />
```

|Use the caption attribute of the qp-tree control, as the following code shows.```
<qp-tree id="tree" 
  view.bind="ItemClassNodes" 
  caption="Item Class Tree">
</qp-tree>
```

|
|DataMember```
<px:PXTreeView 
  DataMember="ItemClassNodes" />
```

|Use the view attribute of the qp-tree control, as the following code shows.```
<qp-tree 
  id="tree" 
  view.bind="ItemClassNodes">
</qp-tree>
```

|
|ExpandDepth```
<px:PXTreeView 
  ExpandDepth="0" />
```

|Use the openedLayers property of the treeConfig decorator.|
|Height```
<px:PXTreeView 
  Height="180px" />
```

|Do not specify the height of a tree control because it is automatically adjusted for various screen sizes. However, if you need to specify the height for some reason, you can use the height property in the treeConfig decorator.|
|ID```
<px:PXTreeView 
  ID="tree" />
```

|Use the id attribute of the qp-tree control, as the following code shows.```
<qp-tree 
  id="tree">
</qp-tree>
```

|
|KeepPosition```
<px:PXTreeView 
  KeepPosition= "True" />
```

|Use the keepPosition property of the treeConfig decorator.|
|PopulateOnDemand```
<px:PXTreeView 
  PopulateOnDemand="True" />
```

|Use the dynamic property of the treeConfig decorator.|
|RenderHtmlText```
<px:PXTreeView 
  RenderHtmlText="True" >
</px:PXTreeView>
```

|Use the renderHTML property of the treeConfig decorator. For more details, see [Tree: Markup of a Tree Node Using HTML](UIDevRef_Tree_renderHTML.md).|
|SelectFirstNode```
<px:PXTreeView 
  SelectFirstNode="True" />
```

|Use the selectFirstNode property of the treeConfig decorator.|
|ShowRootNode```
<px:PXTreeView 
  ShowRootNode="False" />
```

|Use the hideRootNode property of the treeConfig decorator.|
|SyncPosition```
<px:PXTreeView 
  SyncPosition="True" />
```

|Use the syncPosition property of the treeConfig decorator.|
|Width```
<px:PXTreeView 
  Width="180px" />
```

|Do not specify the width of a tree control because it is automatically adjusted for various screen sizes. However, if you need to specify the width for some reason, you can use the width property in the treeConfig decorator.|

## PXDataSource { .section}

The following table shows the correspondence between the PXDataSource element, which is used as a container for the DataTrees and PXTreeDataMember elements, and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXDataSource &gt; KeySeparatorChar```
<px:PXDataSource ID="ds" 
  ...  
  PrimaryView="Filter" 
  KeySeparatorChar="!">
  <DataTrees>
    <px:PXTreeDataMember 
      TreeView="SiteMapTree" 
      TreeKeys="NodeID" />
  </DataTrees>
  <CallbackCommands>
    ...
  </CallbackCommands>	
  <ClientEvents 
    CommandPerformed="afterCallback"/>
  <DataTrees>
    <px:PXTreeDataMember 
      TreeView="FilesTree" 
      TreeKeys="FileKey" />
  </DataTrees>	
</px:PXDataSource>
```

|Use the keySeparatorChar property in the treeConfig property of the controlConfig or fieldConfig decorator.

 ```
@fieldConfig({
  controlType: "qp-tree-selector",
  controlConfig: {
    treeConfig: {
      idField: "FileKey",
      parentIdField: "FileKey",
      valueField: "Path",
      dataMember: "FilesTree",
      textField: "FilePath",
      mode: "single",
      hideRootNode: true
      hideRootNode: true,
      keySeparatorChar: "!",
    }
  }
})
ParentFolder : PXFieldState;
```

|

## Obsolete ASPX Controls and Properties { .section}

The following table lists the obsolete ASPX elements that are related to the tree control. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXTree```
<px:PXTree 
  runat="server" 
  CallbackUpdatable="True"
>
</px:PXTree>
```

|-   CallbackUpdatable
-   runat

|
|PXTreeView```
<px:PXTreeView 
  CaptionVisible="False"
  DataSourceID="ds"
  PreserveExpanded="True"
  RootNodeText="BOM"
  runat="server" 
  SyncPositionWithGraph="True">
</px:PXTreeView>
```

|-   CaptionVisible
-   DataSourceID
-   PreserveExpanded
-   RootNodeText
-   runat
-   SyncPositionWithGraph

|
|AutoCallBack```
<px:PXTreeView/>
  <AutoCallBack 
    Command="GoToNodeSelectedInTree" 
    Target="ds" />
</px:PXTreeView>
```

|All properties|
|AutoSize```
<px:PXTreeView/>
  <AutoSize Enabled="True" />
</px:PXTreeView>
```

|All properties|
|CaptionStyle```
<px:PXTreeView>
  <CaptionStyle 
    Height="17px" />
</px:PXTreeView>
```

|All properties|
|PXTreeDataMember```
<px:PXDataSource>
  <DataTrees>
    <px:PXTreeDataMember 
      TreeView="ItemClassNodes" 
      TreeKeys="ItemClassID" />
  </DataTrees>
</px:PXDataSource>
```

|All properties|

**Parent topic:**[Tree](../DeveloperGuide/UIDevRef_Tree_Mapref.md)

