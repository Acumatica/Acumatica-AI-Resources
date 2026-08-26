# Workflow Actions: Persisting Options {#_4690a540-406d-420f-b813-40b2b0f580f4 .concept}

In the code of a graph, you can save the changes to the database by calling the [PXGraph.Persist](https://help.acumatica.com/(W(3))/Help?ScreenId=ShowWiki&pageid=198bc715-56b2-37c5-895f-fd136023c404) method. When adding an action to a screen configuration, you can configure whether and when the current changes in the cache should be saved to the database—that is, when the system should invoke the Persist method. This configuration can be defined in the WithPersistOptions method by using the values of the [ActionPersistOptions](https://help.acumatica.com/(W(3))/Help?ScreenId=ShowWiki&pageid=ac196732-c068-f047-93e2-add0e7bc0de2) enumerator.

**Attention:** If the action being executed triggers a transition, then the transition, by default, will cause the entity to be saved to the database. In this case, specifying the WithPersistOptions\(ActionPersistOptions.NoPersist\) method in that action would have no effect. To prevent the transition from saving the entity to the database, call the DoesNotPersist method in the transition.

The following example shows an action from the workflow on the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form.

```
.WithActions(actions =>
{
  actions.Add(g => g.Open, c => c
    .WithForm(formOpen)
    .WithFieldAssignments(fields =>
    {
      fields.Add<CROpportunity.resolution>(f => f.SetFromFormField(formOpen, ReasonFormField));
      fields.Add<CROpportunity.stageID>(f => f.SetFromFormField(formOpen, StageFormField));
      fields.Add<CROpportunity.isActive>(f => f.SetFromValue(true));
      fields.Add<CROpportunity.closingDate>(f => f.SetFromValue(null));
    })
    .IsHiddenWhen(conditions.IsInNewState)
    **.WithPersistOptions\(ActionPersistOptions.PersistBeforeAction\)**
    .WithCategory(categoryProcessing)
    .IsExposedToMobile(true)
    .MassProcessingScreen<UpdateOpportunityMassProcess>());
```

If you need to save the changes of one entity on a form where this entity is not used, you need to override the Persist method of this form and manually save these changes of this custom entity. This might be useful, for example, if you need to save the changes of a custom entity on a predefined form. For more information, see [Step 6: Overriding the PerformPersist Method](WorkflowAPI_Events_Activity_UseExisting_OverridePersist.md).

**Parent topic:**[Implementing Workflow Actions](../DeveloperGuide/WorkflowAPI_Actions_Mapref.md)

