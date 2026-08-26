# Dialog Box: Executing Action on Dialog Box Closing {#_557fdf13-8542-4f65-9176-59e341b454f1 .concept}

You can specify the action to be executed when a dialog box is closed. To do this, specify the name of the action method in the command property of the qp-panel tag.

Suppose that you have defined the following action in a graph.

```
public PXAction<GLBudgetTree> Preload;
[PXButton]
[PXUIField(MapEnableRights = PXCacheRights.Update, Visible = false)]
public virtual IEnumerable preload(PXAdapter adapter)
{ ... }
```

In the frontend, you only need to provide the name of the action in the qp-panel tag, as shown in the following code. You do not need to declare a property of the PXActionState type in TypeScript unless you want to hide it from the More menu.

```
<qp-panel id="Details" caption="Preload Accounts" auto-repaint="true" 
  **command="preload"**>
```

**Parent topic:**[Dialog Box](../DeveloperGuide/UIDevRef_DialogBox_Mapref.md)

