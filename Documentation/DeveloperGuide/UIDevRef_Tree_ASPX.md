# Tree: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to trees to HTML or TypeScript elements.

## Behavior

The following table shows the correspondence between the Behavior element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_c44ada1e-7e36-43a1-a7f5-79cc1c512ffd"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

Behavior```
<px:PXTreeView >
  <AutoCallBack >
    <Behavior 
      RepaintControlsIDs="form, formOper" 
      RepaintControls="All" />
  </AutoCallBack>
</px:PXTreeView>
```

</td><td>

Use the autoRepaint property of the treeConfig decorator.

</td></tr></tbody>
</table>

## ExtraColumns

The following table shows the correspondence between the ExtraColumns element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_1c65e671-6121-436b-94bd-7654c69bb00f"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

ExtraColumns```
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

</td><td>

Use the extraColumns property of the treeConfig decorator.

</td></tr></tbody>
</table>

## Images

The following table shows the correspondence between the Images element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_3760acb7-850c-4313-8f3b-f3f535bdd5b7"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

Images```
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

</td><td>

Use the images property of the treeConfig decorator.

</td></tr></tbody>
</table>

## PXTree

The following table shows the correspondence between the PXTree element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_0c71190c-86e4-4de0-b17c-d07daf7f247d"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXTree```
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

</td><td>

Use the qp-tree tag in HTML and the treeConfig decorator for a view class in TypeScript.

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

</td></tr><tr><td>

ActionField```
<px:PXTree 
  ActionField="Actions" />
```

</td><td>

Use the actionField property of the treeConfig decorator.

</td></tr><tr><td>

AddChildNode```
<px:PXTree 
  AddChildNode="NewChildNodeDefault" />
```

</td><td>

Use the addChildNode property of the treeConfig decorator.

</td></tr><tr><td>

AddSiblingNode```
<px:PXTree 
  AddSiblingNode="NewSiblingNodeDefault" />
```

</td><td>

Use the addSiblingNode property of the treeConfig decorator.

</td></tr><tr><td>

CheckDropCommand```
<px:PXTree 
  CheckDropCommand="CheckDropAction" />
```

</td><td>

Use the checkDropCommand property of the treeConfig decorator.

</td></tr><tr><td>

DataMember```
<px:PXTree 
  DataMember="ItemClassNodes" />
```

</td><td>

Use the view attribute of the qp-tree control, as the following code shows.```
<qp-tree 
  id="tree" 
  view.bind="ItemClassNodes">
</qp-tree>
```

</td></tr><tr><td>

DefaultDrag```
<px:PXTree 
  DefaultDrag="Cut" />
```

</td><td>

Use the defaultDrag property of the treeConfig decorator.

</td></tr><tr><td>

Description```
<px:PXTree 
  Description="Description" />
```

</td><td>

Use the textField property of the treeConfig decorator.

</td></tr><tr><td>

ExtraColumnField```
<px:PXTree 
  ExtraColumnField="ExtraColumns" />
```

</td><td>

Use the extraColumnField property of the treeConfig decorator.

</td></tr><tr><td>

Height```
<px:PXTree 
  Height="100%" />
```

</td><td>

Do not specify the height of a tree control because it is automatically adjusted for various screen sizes. However, if you need to specify the height for some reason, you can use the height property in the treeConfig decorator.

</td></tr><tr><td>

IconColorField```
<px:PXTree 
  IconColorField="Iconcolor" />
```

</td><td>

Use the iconColorField property of the treeConfig decorator.

</td></tr><tr><td>

IconField```
<px:PXTree 
  IconField="Icon" />
```

</td><td>

Use the iconField property of the treeConfig decorator.

</td></tr><tr><td>

IconSize```
<px:PXTree 
  IconSize="22" />
```

</td><td>

Use the iconSize property of the treeConfig decorator.

</td></tr><tr><td>

ID```
<px:PXTree 
  ID="tree" />
```

</td><td>

Use the id attribute of the qp-tree control, as the following code shows.```
<qp-tree 
  id="tree">
</qp-tree>
```

</td></tr><tr><td>

IDName```
<px:PXTree 
  IDName="IDName" />
```

</td><td>

Use the idField property of the treeConfig decorator.

</td></tr><tr><td>

Mode```
<px:PXTree 
  Mode="single" />
```

</td><td>

Use the mode property of the treeConfig decorator.

</td></tr><tr><td>

Modifiable```
<px:PXTree 
  Modifiable="True" />
```

</td><td>

Use the modifiable property of the treeConfig decorator.

</td></tr><tr><td>

OnAdd```
<px:PXTree 
  OnAdd="AddNode" />
```

</td><td>

Use the onAdd property of the treeConfig decorator.

</td></tr><tr><td>

OnChange```
<px:PXTree 
  OnChange="UpdateNode" />
```

</td><td>

Use the onChange property of the treeConfig decorator.

</td></tr><tr><td>

OnDelete```
<px:PXTree 
  OnDelete="DeleteNode" />
```

</td><td>

Use the onDelete property of the treeConfig decorator.

</td></tr><tr><td>

OnSelect```
<px:PXTree 
  OnSelect="SelectNode" />
```

</td><td>

Use the onSelect property of the treeConfig decorator.

</td></tr><tr><td>

ParentIDName```
<px:PXTree 
  ParentIDName="IDParent" />
```

</td><td>

Use the parentIdField property of the treeConfig decorator.

</td></tr><tr><td>

SingleClickSelect```
<px:PXTree 
  SingleClickSelect="True" />
```

</td><td>

Use the singleClickSelect property of the treeConfig decorator.

</td></tr><tr><td>

Width```
<px:PXTree 
  Width="100%" />
```

</td><td>

Do not specify the width of a tree control because it is automatically adjusted for various screen sizes. However, if you need to specify the width for some reason, you can use the width property in the treeConfig decorator.

</td></tr></tbody>
</table>

## PXTreeItemBinding

The following table shows the correspondence between the PXTreeItemBinding element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_1ef56f1e-a673-4a97-b1ed-d6b9ea16d2d0"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXTreeItemBinding```
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

</td><td>

Use the properties of the treeConfig decorator, as shown in the following example.

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

</td></tr><tr><td>

DataMember```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      DataMember="ItemClassNodes" 
    />
  </DataBindings>
</px:PXTreeView>
```

</td><td>

Use the view attribute of the qp-tree control, as the following code shows.```
<qp-tree 
  id="tree" 
  view.bind="ItemClassNodes">
</qp-tree>
```

</td></tr><tr><td>

DescriptionField```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      DescriptionField="Descr" 
    />
  </DataBindings>
</px:PXTreeView>
```

</td><td>

The DescriptionField property from ASPX is not supported in the Modern UI.

</td></tr><tr><td>

ImageUrlField```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      ImageUrlField="Icon" 
    />
  </DataBindings>
</px:PXTreeView>
```

</td><td>

Use the iconField property of the treeConfig decorator.

</td></tr><tr><td>

TextField```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      TextField="SegmentedClassCD" 
    />
  </DataBindings>
</px:PXTreeView>
```

</td><td>

Use the textField property of the treeConfig decorator.

</td></tr><tr><td>

ToolTipField```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      ToolTipField="ToolTip" 
    />
  </DataBindings>
</px:PXTreeView>
```

</td><td>

Use the toolTipField property of the treeConfig decorator.

</td></tr><tr><td>

ValueField```
<px:PXTreeView>
  <DataBindings>
    <px:PXTreeItemBinding 
      ValueField="ItemClassID" 
    />
  </DataBindings>
</px:PXTreeView>
```

</td><td>

Use the valueField property of the treeConfig decorator.

</td></tr></tbody>
</table>

## PXTreeView

The following table shows the correspondence between the PXTreeView element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXTreeView```
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

</td><td>

Use the qp-tree tag in HTML and the treeConfig decorator for a view class in TypeScript.

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

</td></tr><tr><td>

AllowCollapse```
<px:PXTreeView 
  AllowCollapse="True">
</px:PXTreeView>
```

</td><td>

Use the qp-collapsible attribute as described in [Collapsible Area: Configuration](UIDevRef_CollapsibleArea_Configuration.md).

</td></tr><tr><td>

AutoRepaint```
<px:PXTreeView 
  AutoRepaint="True" />
```

</td><td>

Use the autoRepaint property of the treeConfig decorator.

</td></tr><tr><td>

Caption```
<px:PXTreeView 
  Caption="Item Class Tree" />
```

</td><td>

Use the caption attribute of the qp-tree control, as the following code shows.```
<qp-tree id="tree" 
  view.bind="ItemClassNodes" 
  caption="Item Class Tree">
</qp-tree>
```

</td></tr><tr><td>

DataMember```
<px:PXTreeView 
  DataMember="ItemClassNodes" />
```

</td><td>

Use the view attribute of the qp-tree control, as the following code shows.```
<qp-tree 
  id="tree" 
  view.bind="ItemClassNodes">
</qp-tree>
```

</td></tr><tr><td>

ExpandDepth```
<px:PXTreeView 
  ExpandDepth="0" />
```

</td><td>

Use the openedLayers property of the treeConfig decorator.

</td></tr><tr><td>

Height```
<px:PXTreeView 
  Height="180px" />
```

</td><td>

Do not specify the height of a tree control because it is automatically adjusted for various screen sizes. However, if you need to specify the height for some reason, you can use the height property in the treeConfig decorator.

</td></tr><tr><td>

ID```
<px:PXTreeView 
  ID="tree" />
```

</td><td>

Use the id attribute of the qp-tree control, as the following code shows.```
<qp-tree 
  id="tree">
</qp-tree>
```

</td></tr><tr><td>

KeepPosition```
<px:PXTreeView 
  KeepPosition= "True" />
```

</td><td>

Use the keepPosition property of the treeConfig decorator.

</td></tr><tr><td>

PopulateOnDemand```
<px:PXTreeView 
  PopulateOnDemand="True" />
```

</td><td>

Use the dynamic property of the treeConfig decorator.

</td></tr><tr><td>

RenderHtmlText```
<px:PXTreeView 
  RenderHtmlText="True" >
</px:PXTreeView>
```

</td><td>

Use the renderHTML property of the treeConfig decorator. For more details, see [Tree: Markup of a Tree Node Using HTML](UIDevRef_Tree_renderHTML.md).

</td></tr><tr><td>

SelectFirstNode```
<px:PXTreeView 
  SelectFirstNode="True" />
```

</td><td>

Use the selectFirstNode property of the treeConfig decorator.

</td></tr><tr><td>

ShowRootNode```
<px:PXTreeView 
  ShowRootNode="False" />
```

</td><td>

Use the hideRootNode property of the treeConfig decorator.

</td></tr><tr><td>

SyncPosition```
<px:PXTreeView 
  SyncPosition="True" />
```

</td><td>

Use the syncPosition property of the treeConfig decorator.

</td></tr><tr><td>

Width```
<px:PXTreeView 
  Width="180px" />
```

</td><td>

Do not specify the width of a tree control because it is automatically adjusted for various screen sizes. However, if you need to specify the width for some reason, you can use the width property in the treeConfig decorator.

</td></tr></tbody>
</table>

## PXDataSource

The following table shows the correspondence between the PXDataSource element, which is used as a container for the DataTrees and PXTreeDataMember elements, and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_37144b8b-4eab-429e-980e-995960395c8c"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXDataSource &gt; KeySeparatorChar```
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

</td><td>

Use the keySeparatorChar property in the treeConfig property of the controlConfig or fieldConfig decorator.

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

</td></tr></tbody>
</table>

## Obsolete ASPX Controls and Properties

The following table lists the obsolete ASPX elements that are related to the tree control. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXTree```
<px:PXTree 
  runat="server" 
  CallbackUpdatable="True"
>
</px:PXTree>
```

</td><td>

-   CallbackUpdatable
-   runat

</td></tr><tr><td>

PXTreeView```
<px:PXTreeView 
  CaptionVisible="False"
  DataSourceID="ds"
  PreserveExpanded="True"
  RootNodeText="BOM"
  runat="server" 
  SyncPositionWithGraph="True">
</px:PXTreeView>
```

</td><td>

-   CaptionVisible
-   DataSourceID
-   PreserveExpanded
-   RootNodeText
-   runat
-   SyncPositionWithGraph

</td></tr><tr><td>

AutoCallBack```
<px:PXTreeView/>
  <AutoCallBack 
    Command="GoToNodeSelectedInTree" 
    Target="ds" />
</px:PXTreeView>
```

</td><td>

All properties

</td></tr><tr><td>

AutoSize```
<px:PXTreeView/>
  <AutoSize Enabled="True" />
</px:PXTreeView>
```

</td><td>

All properties

</td></tr><tr><td>

CaptionStyle```
<px:PXTreeView>
  <CaptionStyle 
    Height="17px" />
</px:PXTreeView>
```

</td><td>

All properties

</td></tr><tr><td>

PXTreeDataMember```
<px:PXDataSource>
  <DataTrees>
    <px:PXTreeDataMember 
      TreeView="ItemClassNodes" 
      TreeKeys="ItemClassID" />
  </DataTrees>
</px:PXDataSource>
```

</td><td>

All properties

</td></tr></tbody>
</table>

**Parent topic:**[Tree](../DeveloperGuide/UIDevRef_Tree_Mapref.md)

