# Button: Grid Dependent Buttons {#_2705e65f-403d-4c8a-b404-b2f7e63e764c .concept}

A grid dependent button is a button which state depends on the row selected in the table, data feed, or a tree \(meaning, any control bound to PXViewCollection\). The state of the action means all properties of the action, such as visibility and display name.

**Note:** All properties of the action state are defined in the PXActionState interface.

The state of a grid dependent button can change when a different row is selected in the grid \(the RowSelected event\) and when a field value of the selected row is changed.

You can configure a grid dependent button by using the actionConfig decorator on the corresponding action in TypeScript.

To define a grid dependent button, do the following in TypeScript:

1.  Define the action in the view class for the grid.
2.  Attach the actionConfig decorator and specify the following properties:
    -   stateDependsOn: Optional. The list of fields depending on which the state of the action should be recalculated. If the value is not specified, the state of the action is recalculated on each change of any field of the current record.
    -   processState: A lambda expression that calculates the state of the action.
    -   processOrder: Optional. The ordinal number of the action that determines when it will be processed in the sequence of actions of the same view. You should use this property when one action state depends on another action state.

The following code shows how to change the state of an action depending on the value of a field of the current record of the same view. In this example, the `ItemAvailability` action is enabled or disabled depending on the value of the `IsStockItem` field.

``` {#codeblock_w4d_555_djc}
export class SOLine extends PXView {

  IsStockItem: PXFieldState<PXFieldOptions.Hidden>;

  @actionConfig({
    processState: (state, current) => {
      state.enabled = current?.IsStockItem?.value === true;
    },
    stateDependsOn: ["IsStockItem"] })
  ItemAvailability: PXActionState;
```

**Parent topic:**[Button](../DeveloperGuide/UIDevRef_Button_Mapref.md)

