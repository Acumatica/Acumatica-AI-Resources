# Workflow Actions: Action's Behavior {#_130f3839-46aa-45e1-9be8-bf9945094191 .concept}

You can specify the following behavior for a workflow action without implementing an action method in a graph:

-   Open a report by calling the IsRunReportScreen method and specifying the configuration of the report in the parameter. The following code shows an example from the `INSiteMaint` graph.

    ```
    actions.AddNew(locationLabels.ActionName, a => a
      .WithCategory(PredefinedCategory.Reports)
      .DisplayName(Messages.INLocationLabels)
      .IsRunReportScreen(report =>
      {
        return report
          .ReportID(locationLabels.ReportID)
          .WithWindowMode(PXBaseRedirectException.WindowMode.New)
          .WithAssignments(rass =>
          {
            rass.Add(locationLabels.Parameters.Site, z => z.SetFromField<INSite.siteCD>());
          });
    }));
    ```

    In the code above, the action has opened a report in a new window and assigns a value to a report parameter.

-   Open a generic inquiry form—for example, a substitute form—by calling the IsSearchRecordScreen method.
-   Open a form where a user can create a new record by calling the IsCreateRecordScreen method.

**Important:** You should define the behavior of an action either in the code of a graph or in the screen configuration. If you define the behavior of an action in a workflow, the action method in a graph should be empty.

## Configuring an Action to Run Automatically { .section}

You can configure an action to run automatically in a workflow without the user having to click a button to trigger the action. This can be done in one of the following ways:

-   By defining the action in the graph to be of type PXAutoAction and calling the IsAutoAlways method or the IsAutoWhen method on it in the screen configuration.
-   By defining the action in the screen configuration itself \(instead of in a graph\) and calling the IsAutoAlways method or the IsAutoWhen method on it.

The IsAutoAlways method will cause the action to always be triggered automatically without a condition being checked. Alternatively, you can call the IsAutoWhen method and pass in a `condition` as a parameter to this method. The action will be triggered automatically when the condition is `True`. An example is shown in the following code.

```
public override void Configure(PXScreenConfiguration config)
{
          var context = config.GetScreenConfigurationContext<SOOrderEntry, 
                              SOOrder>();
		  var IsBackOrderedbyPartialShipment = context.Conditions.
		  FromBql<SOOrderCustomUnboundFields
          .usrbackOrderedbyShipmentConfirmation.IsEqual<True>>()
		  .WithSharedName("IsBackOrderedbyPartialShipment");
		  **var sendEmailAction = context.ActionDefinitions.CreateNew\("sendEmail", 
                       a =&gt; a.DisplayName\("Send Email"\)\);**
		  context.UpdateScreenConfigurationFor(screen =>
			screen
			.WithActions(actions => {
				**actions.Add\(sendEmailAction\);**				
			})
			.WithFlows(flows => flows.Update<SOBehavior.sO>(f =>
				f.WithFlowStates(fss =>
				{
				  fss.Update(State.Initial, state =>
			          state.WithActions(actions =>
				    {
				      actions.Add(sendEmailAction, a => 
                      **a.IsAutoWhen\(IsBackOrderedbyPartialShipment\)**);
				    }
					));
			    }))
			)
		);
}
```

In the code above, a workflow action, `sendEmailAction`, has been defined in the screen configuration itself through the use of the Configure method. The screen configuration has then been updated through the use of the UpdateScreenConfigurationFor method. Inside the lambda expression of this method, the `sendEmailAction` action has been added to the lambda expression of the WithActions method. Finally, in the lambda expression of the WithActions method of the state, the `sendEmailAction` action has been added. The action is set to trigger automatically through the use of the IsAutoWhen method when the `IsBackOrderedbyPartialShipment` condition is `True`.

**Important:** An action of the PXAction type that is declared in a graph cannot be configured to run automatically through the use of the IsAutoAlways and IsAutoWhen methods.

**Parent topic:**[Implementing Workflow Actions](../DeveloperGuide/WorkflowAPI_Actions_Mapref.md)

