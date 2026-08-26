# Tree Selector Control: Conversion from ASPX to HTML and TypeScript {#_3b1d0c07-e5bc-4936-9e93-aaa25d8e4a99 .concept}

The following tables will help you to convert the ASPX elements that are related to a tree selector control to HTML or TypeScript elements.

## PXTreeSelector { .section}

The following table shows the correspondence between the PXTreeSelector element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXTreeSelector```
<px:PXTreeSelector
  ID="edsubject"
  runat="server"
  DataField="Subject"
  TreeDataSourceID="ds"
  PopulateOnDemand="True"
  InitialExpandLevel="0"
  ShowRootNode="False"
  MinDropWidth="468"
  MaxDropWidth="600"
  AllowEditValue="True"
  AppendSelectedValue="True"
  AutoRefresh="True"
  TreeDataMember="ItemsWithPrevious" >
  <DataBindings>
    <px:PXTreeItemBinding
      DataMember="ItemsWithPrevious"
      TextField="Name"
      ValueField="Path"
      ImageUrlField="Icon"
      ToolTipField="Path" />
  </DataBindings>
</px:PXTreeSelector>
```

|To display a tree selector control without tabs, use the qp-tree-selector control, as the following example shows.```
<field name="Subject"
  control-type="qp-tree-selector"
  control-config.bind="{
    treeConfig: {
      idField: 'Path',
      dataMember: 'ItemsWithPrevious',
      descriptionField: 'Name',
      parentIdField: 'Key',
      iconField: 'Icon',
      mode: 'single'
    },
  }">
</field>
```

|
|AllowEditValue```
<px:PXTreeSelector
  AllowEditValue="True"/>
```

|Use the allowEditValue property, which is available through the config attribute of the qp-tree-selector control.|
|AppendSelectedValue```
<px:PXTreeSelector
  AppendSelectedValue="True"/>
```

|Use the appendSelectedValue property, which is available through the config attribute of the qp-tree-selector control.|
|CommitChanges```
<px:PXTreeSelector
  CommitChanges="True"
  DataField="NTo" />
```

|Use the CommitChanges option of PXFieldState in TypeScript, as the following code shows. With this option, the control commits changes to the server each time a user has changed the value in the box and focus is no longer on the box.```
export class UserItems extends PXView {
  NTo:
    PXFieldState<
    PXFieldOptions.CommitChanges>;
}
```

|
|DataField```
<px:PXTreeSelector
  DataField="NTo" />
```

|Use the `name` attribute of the field tag in HTML, as the following code shows.```
<field name="NTo"></field>
```

|
|InitialExpandLevel```
<px:PXTreeSelector
  InitialExpandLevel="0" />
```

|Use the openedLayers property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|PopulateOnDemand```
<px:PXTreeSelector 
  PopulateOnDemand="True" />
```

|Use the dynamic property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|ShowRootNode```
<px:PXTreeSelector 
  ShowRootNode="False" />
```

|Use the hideRootNode property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|TreeParentId```
<px:PXTreeSelectorWithGrid 
  TreeParentId="Path" />
```

|Use the parentIdField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|

## PXTreeSelectorWithGrid { .section}

The following table shows the correspondence between the PXTreeSelectorWithGrid element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXTreeSelectorWithGrid```
<px:PXTreeSelectorWithGrid
  ID="edNTo"
  runat="server"
  DataField="NTo"
  PopulateOnDemand="True"
  TreeDataSourceID="ds"
  CommitChanges="True"
  AllowEditValue="True"
  ShowRootNode="False"
  MinDropWidth="468"
  MaxDropWidth="600"
  InitialExpandLevel="0"
  AppendSelectedValue="True"
  AutoRefresh="True"
  TreeDataMember="ScreenUserItems"
  SelectorDataMember="UserItems"
  SelectorKeyField="KeyUserName"
  SelectorDescriptionField="FullName"
  TreeParentId="Path"
  SelectorTabTitle="Users">
  <DataBindings>
    <px:PXTreeItemBinding
      DataMember="ScreenUserItems"
      TextField="Name"
      ValueField="Key"
      ImageUrlField="Icon"
      ToolTipField="Path" />
  </DataBindings>
</px:PXTreeSelectorWithGrid>
```

|To display a tree selector control with two tabs, use the qp-tree-selector control, as the following example shows.```
<field name="NTo"
  control-type="qp-tree-selector"
  control-config.bind="{
    treeConfig: {
      idField: 'Key',
      valueField: 'Path',
      datamember: 'ScreenUserItems',
      descriptionField: 'Name',
      iconField: 'Icon',
    },
    selectorConfig: {
      view: 'UserItems',
      key: 'KeyUserName',
      description: 'FullName',
    },
  }">
</field>
```

|
|AllowEditValue```
<px:PXTreeSelectorWithGrid
  AllowEditValue="True"/>
```

|Use the allowEditValue property, which is available through the config attribute of the qp-tree-selector control.|
|AppendSelectedValue```
<px:PXTreeSelector
  AppendSelectedValue="True"/>
```

|Use the appendSelectedValue property, which is available through the config attribute of the qp-tree-selector control.|
|CommitChanges```
<px:PXTreeSelectorWithGrid
  CommitChanges="True"
  DataField="NTo" />
```

|Use the CommitChanges option of PXFieldState in TypeScript, as the following code shows. With this option, the control commits changes to the server each time a user has changed the value in the box and focus is no longer on the box.```
export class UserItems extends PXView {
  NTo:
    PXFieldState<
    PXFieldOptions.CommitChanges>;
}
```

|
|DataField```
<px:PXTreeSelectorWithGrid
  DataField="NTo" />
```

|Use the `name` attribute of the field tag in HTML, as the following code shows.```
<field name="NTo"></field>
```

|
|InitialExpandLevel```
<px:PXTreeSelectorWithGrid
  InitialExpandLevel="0" />
```

|Use the openedLayers property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|PopulateOnDemand```
<px:PXTreeSelectorWithGrid 
  PopulateOnDemand="True" />
```

|Use the dynamic property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|SelectorDataMember```
<px:PXTreeSelectorWithGrid 
  SelectorDataMember="UserItems" />
```

|Use the view property in the selectorConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|SelectorDescriptionField```
<px:PXTreeSelectorWithGrid 
  SelectorDescriptionField="FullName" />
```

|Use the description property in the selectorConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|SelectorKeyField```
<px:PXTreeSelectorWithGrid 
  SelectorKeyField="KeyUserName" />
```

|Use the key property in the selectorConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|SelectorTabTitle```
<px:PXTreeSelectorWithGrid 
  SelectorTabTitle="Users" />
```

|Use the selectorTabTitle property, which is available through the config attribute of the qp-tree-selector control.|
|ShowRootNode```
<px:PXTreeSelectorWithGrid 
  ShowRootNode="False" />
```

|Use the hideRootNode property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|TreeParentId```
<px:PXTreeSelectorWithGrid 
  TreeParentId="Path" />
```

|Use the parentIdField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|

## PXTreeItemBinding { .section}

The following table shows the correspondence between the PXTreeItemBinding element, which is used inside the PXTreeSelector or PXTreeSelectorWithGrid element, and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

|ASPX|HTML or TypeScript|
|----|------------------|
|PXTreeItemBinding```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      DataMember="ItemClassNodes" 
      TextField="SegmentedClassCD" 
      ValueField="ItemClassID" 
      DescriptionField="Descr" />
  </DataBindings>
</px:PXTreeSelector>
```

|Use treeConfig property, which is available through the config attribute of the qp-tree-selector control.|
|DataMember```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      DataMember="ScreenUserItems" 
    />
  </DataBindings>
</px:PXTreeSelector>
```

|Use the dataMember property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control. See an example in the following code.```
<field name="NTo"
  control-type="qp-tree-selector"
  control-config.bind="{
    treeConfig: {
      dataMember: 'ScreenUserItems'
    }
  }">
</field>
```

|
|DescriptionField```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      DescriptionField="Descr" 
    />
  </DataBindings>
</px:PXTreeSelector>
```

|Use the descriptionField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|ImageUrlField```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      ImageUrlField="Icon" 
    />
  </DataBindings>
</px:PXTreeSelector>
```

|Use the iconField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|TextField```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      TextField="SegmentedClassCD" 
    />
  </DataBindings>
</px:PXTreeSelector>
```

|Use the textField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|ToolTipField```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      ToolTipField="ToolTip" 
    />
  </DataBindings>
</px:PXTreeSelector>
```

|Use the toolTipField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|
|ValueField```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      ValueField="ItemClassID" 
    />
  </DataBindings>
</px:PXTreeSelector>
```

|Use the valueField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.|

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

|Use the keySeparatorChar property in the treeConfig property of the controlConfig or fieldConfig decorators.

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

The following table lists the obsolete ASPX elements that are related to a tree selector control. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

|ASPX Control|Properties|
|------------|----------|
|PXTreeSelector|-   AutoRefresh
-   ID
-   MaxDropWidth
-   MinDropWidth
-   TreeDataMember
-   TreeDataSourceID

|
|PXTreeSelectorWithGrid|-   AutoRefresh
-   ID
-   MaxDropWidth
-   MinDropWidth
-   TreeDataMember
-   TreeDataSourceID

|

**Parent topic:**[Tree Selector](../DeveloperGuide/UIDevRef_TreeSelector_Mapref.md)

