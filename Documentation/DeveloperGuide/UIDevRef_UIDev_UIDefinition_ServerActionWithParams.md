# UI Definition in HTML and TypeScript: Backend Action with Parameters {#_11119cb7-974d-408f-a6f7-bda8d06c79ac .concept}

You can execute an action defined in backend with parameters passed from the frontend. For that purpose, you need to create an object of the ServerCommand type and pass it to the screenService.executeCommand method.

In TypeScript code of the screen, do the following:

1.  Create an object of the ServerCommand type. In the constructor, pass the name of the action property defined in backend and an array of parameter values, as shown in the following code.

    ```
    const command = new ServerCommand("ActionName", [Param1, Param2, ...]);
    ```

2.  When you need to execute the action, call the screenService.executeCommand method.
3.  In the executeCommand method, pass an object of the ServerCommand type, as shown in the following code.

    ```
    this.screenService.executeCommand(command);
    ```


## Example { .section}

Suppose that you have defined an action in a graph, as shown in the following code. The name of the action property is `MatrixGridCellChanged`.

In the action body, you use the `columnName` parameter passed through the adapter \(`adapter.CommandArguments`\).

```
public PXAction<MainItemType> MatrixGridCellChanged;
[PXUIField(Visible = false, Enabled = true, 
  MapEnableRights = PXCacheRights.Select, MapViewRights = PXCacheRights.Select)]
[PXButton(CommitChanges = true)]
public virtual IEnumerable matrixGridCellChanged(PXAdapter adapter)
{ 
  string columnName = adapter.CommandArguments?.TrimEnd();
   ...
}
```

In frontend, you need to execute this action and pass the `columnName` value as a parameter. To do that, you need to call the `this.screenServce.executeCommand` method, and pass the `ServerCommand` object as a parameter.

In the constructor of the `ServerCommand` object, you need to pass the name of the action \(`MatrixGridCellChanged`\) and an array of parameters with a single value \(`columnName`\).

An example for the `MatrixGridCellChanged`action is shown in the following code.

```
export class IN401500 extends PXScreen {
  onMatrixCellChanged(args: any) {
    ...
    this.screenService.executeCommand(new ServerCommand("MatrixGridCellChanged", [columnName]));
    ...
  }
}
```

**Parent topic:**[Defining Acumatica ERP Forms in HTML and TypeScript](../DeveloperGuide/UIDev_UIDefinition_Mapref.md)

