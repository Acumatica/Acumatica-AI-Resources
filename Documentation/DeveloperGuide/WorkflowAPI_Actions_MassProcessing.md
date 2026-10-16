# Workflow Actions: Mass Processing Actions

You can use a workflow action on a mass processing form, which gives a user the ability to process any number of records simultaneously. To specify that the action should be used for mass processing, you should call the MassProcessingScreen method when adding the action to the screen configuration and specify the graph of the processing form as a type parameter of the method.

You can also call the InBatchMode\(\) method so that the action processes the list of records at once. Otherwise, the action is invoked for each record separately.

An example of the configuration of mass processing is shown in the following code.

```csharp
actions.Add(g => g.Assign, 
  c => c.WithCategory(processingCategory, g => g.PutOnHold)
  **.MassProcessingScreen&lt;RSSVAssignProcess&gt;\(\)**
  **.InBatchMode\(\)**);
```

For a detailed example, see [Processing Operations: To Implement a Processing Operation by Using the Workflow](../StudioDeveloperGuide/CodeCustomization_ProcessingOperations_Activity_CreateWithoutFilter.md).

**Parent topic:**[Implementing Workflow Actions](../DeveloperGuide/WorkflowAPI_Actions_Mapref.md)

