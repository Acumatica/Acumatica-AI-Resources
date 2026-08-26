# Tree: Configuration {#_4d67cac9-50ec-4580-8af9-52b0d7d3a646 .concept}

You configure a tree in TypeScript and define its location on an Acumatica ERP form in HTML.

## Definition in TypeScript { .section}

To specify the configuration parameters of a tree, you use the treeConfig decorator in TypeScript. The ITreeControlConfig interface defines the properties that are available in the decorator. You put the decorator on a definition of the view class for the tree, as shown in the following example.

```
@treeConfig({
  parentIdField: "IDParent",
  iconField: "Icon",
  idField: "IDName",
  textField: "NodeText",
  modifiable: false,
  mode: "single",
  singleClickSelect: true,
  onSelect: "SelectNode",
  onAdd: "AddNode",
  onDelete: "DeleteNode",
  onChange: "UpdateNode",
})
export class WorkbenchTreeNode extends PXView  {
  IDName: PXFieldState;
  IDNameOriginal: PXFieldState;
  IDParent: PXFieldState;
  NodeText: PXFieldState;
  Icon: PXFieldState;
  IconColor: PXFieldState;
  Actions: PXFieldState;
  ExtraColumns: PXFieldState;
}
```

In the screen class of the form, you use the createCollection method to define the property for the data view that corresponds to the tree, as the following example shows.

```
@graphInfo({ 
  graphType: "PX.Objects.AM.EngineeringWorkbenchMaint", 
  primaryView: "Documents" })
export class AM208100 extends PXScreen {
  BomTree = createCollection(WorkbenchTreeNode);
}
```

## Tree Toolbar { .section}

The actions of the tree toolbar must be defined in TypeScript. You use the PXActionState in the tree view class, which is the inheritor of the PXView class. \(See the example below.\) Actions of the tree toolbar are not displayed on the form toolbar by default.

```
export class TreeNode extends PXView {
    AddProperty: PXActionState;
}
```

## Layout in HTML { .section}

You use the qp-tree tag in HTML to define the position of the tree on an Acumatica ERP form, as the following example shows.

```
<qp-tree id="treeBomTree" view.bind="BomTree"></qp-tree>
```

**Parent topic:**[Tree](../DeveloperGuide/UIDevRef_Tree_Mapref.md)

