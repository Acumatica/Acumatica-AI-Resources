# Tree Selector Control: Configuration {#_3857ed1c-c633-4d29-9ad5-1261b3d2663e .concept}

The configuration properties of the control are defined by the ITreeSelectorConfig interface.

## Tree Selector Control with Selector Table and Tree View { .section}

To display a tree selector control with two tabs, use the qp-tree-selector control, as the following example shows.

```
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

## Tree Selector Control with Only Tree View { .section}

To display a tree selector control with only tree view, use the qp-tree-selector control, as the following example shows.

```
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

## Tree Selector Control in a Table Column { .section}

To use a tree selector control in a table column, in the columnConfig decorator, you define the editorType property as qp-tree-selector and specify configuration properties in the editorConfig property, as shown in the following example.

```
@columnConfig({
  editorType: "qp-tree-selector",
  editorConfig: {
    treeConfig: {
      idField: "Path",
      dataMember: "EntityItemsWithPrevious",
      descriptionField: "Name",
      parentIdField: "Key",
      iconField: "Icon",
      mode: "single"
    }
  }
})
Subject: PXFieldState;
```

**Parent topic:**[Tree Selector](../DeveloperGuide/UIDevRef_TreeSelector_Mapref.md)

