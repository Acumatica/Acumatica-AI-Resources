# Tree Selector Control: Conversion from ASPX to HTML and TypeScript

The following tables will help you to convert the ASPX elements that are related to a tree selector control to HTML or TypeScript elements.

## PXTreeSelector

The following table shows the correspondence between the PXTreeSelector element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_53b158c3-95c7-4d0b-b468-cfb18f27756e"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXTreeSelector```
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

</td><td>

To display a tree selector control without tabs, use the qp-tree-selector control, as the following example shows.```
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

</td></tr><tr><td>

AllowEditValue```
<px:PXTreeSelector
  AllowEditValue="True"/>
```

</td><td>

Use the allowEditValue property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

AppendSelectedValue```
<px:PXTreeSelector
  AppendSelectedValue="True"/>
```

</td><td>

Use the appendSelectedValue property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

CommitChanges```
<px:PXTreeSelector
  CommitChanges="True"
  DataField="NTo" />
```

</td><td>

Use the CommitChanges option of PXFieldState in TypeScript, as the following code shows. With this option, the control commits changes to the server each time a user has changed the value in the box and focus is no longer on the box.```
export class UserItems extends PXView {
  NTo:
    PXFieldState<
    PXFieldOptions.CommitChanges>;
}
```

</td></tr><tr><td>

DataField```
<px:PXTreeSelector
  DataField="NTo" />
```

</td><td>

Use the `name` attribute of the field tag in HTML, as the following code shows.```
<field name="NTo"></field>
```

</td></tr><tr><td>

InitialExpandLevel```
<px:PXTreeSelector
  InitialExpandLevel="0" />
```

</td><td>

Use the openedLayers property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

PopulateOnDemand```
<px:PXTreeSelector 
  PopulateOnDemand="True" />
```

</td><td>

Use the dynamic property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

ShowRootNode```
<px:PXTreeSelector 
  ShowRootNode="False" />
```

</td><td>

Use the hideRootNode property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

TreeParentId```
<px:PXTreeSelectorWithGrid 
  TreeParentId="Path" />
```

</td><td>

Use the parentIdField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr></tbody>
</table>

## PXTreeSelectorWithGrid

The following table shows the correspondence between the PXTreeSelectorWithGrid element and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_5f394465-1126-4dfc-b285-ab1e1800de8c"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXTreeSelectorWithGrid```
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

</td><td>

To display a tree selector control with two tabs, use the qp-tree-selector control, as the following example shows.```
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

</td></tr><tr><td>

AllowEditValue```
<px:PXTreeSelectorWithGrid
  AllowEditValue="True"/>
```

</td><td>

Use the allowEditValue property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

AppendSelectedValue```
<px:PXTreeSelector
  AppendSelectedValue="True"/>
```

</td><td>

Use the appendSelectedValue property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

CommitChanges```
<px:PXTreeSelectorWithGrid
  CommitChanges="True"
  DataField="NTo" />
```

</td><td>

Use the CommitChanges option of PXFieldState in TypeScript, as the following code shows. With this option, the control commits changes to the server each time a user has changed the value in the box and focus is no longer on the box.```
export class UserItems extends PXView {
  NTo:
    PXFieldState<
    PXFieldOptions.CommitChanges>;
}
```

</td></tr><tr><td>

DataField```
<px:PXTreeSelectorWithGrid
  DataField="NTo" />
```

</td><td>

Use the `name` attribute of the field tag in HTML, as the following code shows.```
<field name="NTo"></field>
```

</td></tr><tr><td>

InitialExpandLevel```
<px:PXTreeSelectorWithGrid
  InitialExpandLevel="0" />
```

</td><td>

Use the openedLayers property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

PopulateOnDemand```
<px:PXTreeSelectorWithGrid 
  PopulateOnDemand="True" />
```

</td><td>

Use the dynamic property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

SelectorDataMember```
<px:PXTreeSelectorWithGrid 
  SelectorDataMember="UserItems" />
```

</td><td>

Use the view property in the selectorConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

SelectorDescriptionField```
<px:PXTreeSelectorWithGrid 
  SelectorDescriptionField="FullName" />
```

</td><td>

Use the description property in the selectorConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

SelectorKeyField```
<px:PXTreeSelectorWithGrid 
  SelectorKeyField="KeyUserName" />
```

</td><td>

Use the key property in the selectorConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

SelectorTabTitle```
<px:PXTreeSelectorWithGrid 
  SelectorTabTitle="Users" />
```

</td><td>

Use the selectorTabTitle property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

ShowRootNode```
<px:PXTreeSelectorWithGrid 
  ShowRootNode="False" />
```

</td><td>

Use the hideRootNode property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

TreeParentId```
<px:PXTreeSelectorWithGrid 
  TreeParentId="Path" />
```

</td><td>

Use the parentIdField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr></tbody>
</table>

## PXTreeItemBinding

The following table shows the correspondence between the PXTreeItemBinding element, which is used inside the PXTreeSelector or PXTreeSelectorWithGrid element, and the HTML or TypeScript elements. During the conversion of ASPX pages to HTML and TypeScript, you need to replace these ASPX elements with their analogs in HTML or TypeScript.

<table id="_1ef56f1e-a673-4a97-b1ed-d6b9ea16d2d0"><thead><tr><th>

ASPX

</th><th>

HTML or TypeScript

</th></tr></thead><tbody><tr><td>

PXTreeItemBinding```
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

</td><td>

Use treeConfig property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

DataMember```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      DataMember="ScreenUserItems" 
    />
  </DataBindings>
</px:PXTreeSelector>
```

</td><td>

Use the dataMember property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control. See an example in the following code.```
<field name="NTo"
  control-type="qp-tree-selector"
  control-config.bind="{
    treeConfig: {
      dataMember: 'ScreenUserItems'
    }
  }">
</field>
```

</td></tr><tr><td>

DescriptionField```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      DescriptionField="Descr" 
    />
  </DataBindings>
</px:PXTreeSelector>
```

</td><td>

Use the descriptionField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

ImageUrlField```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      ImageUrlField="Icon" 
    />
  </DataBindings>
</px:PXTreeSelector>
```

</td><td>

Use the iconField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

TextField```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      TextField="SegmentedClassCD" 
    />
  </DataBindings>
</px:PXTreeSelector>
```

</td><td>

Use the textField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

ToolTipField```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      ToolTipField="ToolTip" 
    />
  </DataBindings>
</px:PXTreeSelector>
```

</td><td>

Use the toolTipField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

</td></tr><tr><td>

ValueField```
<px:PXTreeSelector>
  <DataBindings>
    <px:PXTreeItemBinding 
      ValueField="ItemClassID" 
    />
  </DataBindings>
</px:PXTreeSelector>
```

</td><td>

Use the valueField property in the treeConfig configuration property, which is available through the config attribute of the qp-tree-selector control.

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

Use the keySeparatorChar property in the treeConfig property of the controlConfig or fieldConfig decorators.

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

The following table lists the obsolete ASPX elements that are related to a tree selector control. You do not need to replace these ASPX elements with any HTML or TypeScript elements.

<table id="_41289709-97c0-49e8-889b-0b2cf1319062"><thead><tr><th>

ASPX Control

</th><th>

Properties

</th></tr></thead><tbody><tr><td>

PXTreeSelector

</td><td>

-   AutoRefresh
-   ID
-   MaxDropWidth
-   MinDropWidth
-   TreeDataMember
-   TreeDataSourceID

</td></tr><tr><td>

PXTreeSelectorWithGrid

</td><td>

-   AutoRefresh
-   ID
-   MaxDropWidth
-   MinDropWidth
-   TreeDataMember
-   TreeDataSourceID

</td></tr></tbody>
</table>

**Parent topic:**[Tree Selector](../DeveloperGuide/UIDevRef_TreeSelector_Mapref.md)

