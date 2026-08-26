# Testing of the Modern UI: Frontend Actions in Wrappers {#_fc952faa-571d-4997-81bf-fe2ab161b3f4 .concept}

If an action is declared only in frontend and does not have a corresponding action in the graph, this action is also included in wrappers and can be used in tests. The name of such action in wrappers is exactly the same as the name of the action in TypeScript.

For example, suppose that the action is declared in TypeScript, as shown in the following code.

```language-javascript
export class AUSchedule extends PXView {
  ViewScreen: PXActionState;
  ...
}
```

The name of the action in wrappers would be `ViewScreen`. You cannot change the name for the action in wrappers.

If you have a frontend action \(that is, an action that is added through the topBarItems property of the gridConfig decorator\), you need to declare this action in a view class, as shown in the code example above.

**Parent topic:**[Testing the Modern UI](../DeveloperGuide/UIDev_Testing_Mapref.md)

