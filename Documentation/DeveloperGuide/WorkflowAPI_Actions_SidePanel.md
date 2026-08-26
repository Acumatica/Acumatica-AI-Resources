# Workflow Actions: Opening of a Side Panel {#_15dc6c1a-59e6-471f-b81c-f33d6ccb3637 .concept}

You can create an action in a workflow and configure it to open a side panel. A side panel is a navigation option that you can use to drill down to relevant details about any record listed on a form. The action that you configure in a workflow to open a side panel appears as a tab icon in the side panel on the UI when the relevant form is opened.

To configure an action to open a side panel, you perform the following general steps:

1.  You get the screen configuration and configure the side panel settings as follows:
    1.  You get the screen configuration by using the GetScreenConfigurationContext method, and you add a set of settings \(for the new action to be defined in the next step\) to the screen configuration by using the SidePanel method. This method is provided by the Navigation helper object of the screen configuration. See the following code for an example.

        ```
        
                var context = config.GetScreenConfigurationContext<SOOrderEntry, SOOrder>();
                var sidePanel = context.Navigation.SidePanel(screen => screen
                                ... );
        
        ```

    2.  In the lambda expression of the SidePanel method in the code above, you call the NavigateToScreen method and pass in a `ScreenID` as a parameter. This `ScreenID` should belong to the form that you want to open when the action is triggered on the UI. You can pass in the `ScreenID` as a `string` or as a graph type such as `NavigateToScreen<SOOrderEntry>()`.

        You will also call the WithIcon method and pass in an icon name as a parameter. This method specifies the icon for the action on the UI. Optionally, you can call the WithAssignments method to specify a list of navigation parameters. An example is shown in the following code.

        ```
        
                        var sidePanel = context.Navigation.SidePanel(screen => screen
        			   .NavigateToScreen("SO3031SP")
                                .WithIcon("new_quote")
                                .WithAssignments(filler =>
                       {
                           filler.Add(nameof(SOOrder.OrderNbr), c => c.SetFromField<orderNbr>());
                       }));
         
        ```

2.  Add a new action to the screen configuration and configure it to open a side panel as follows:
    1.  You add a new action to the screen configuration by using the CreateNew method provided by the ActionDefinitions helper object. You provide a name for the action and a lambda expression as parameters of the method. The lambda expression is used to configure the action. You then call the DisplayName method to set the display name of this action on the user interface.
    2.  You call the IsSidePanelScreen method and pass as a parameter the `sidePanel` variable that you created in Step 1a. The `sidePanel` variable defines the side panel configuration of the new action. An example is shown in the following code.

        ```
        
                      var action = 
                           context.ActionDefinitions.CreateNew("ShowInvoicesAndMemos", a => a
                           .DisplayName("Invoices and Memos")
                           .IsSidePanelScreen(sidePanel));
        
        ```

3.  You add the `action` defined in the previous step to the lambda expression of the WithActions method of the AddScreenConfigurationFor or the UpdateScreenConfigurationFor method for the screen configuration. An example is shown in the following code.

    ```
    
                context.UpdateScreenConfigurationFor(screen =>
                {
                    return screen
                        .WithActions(actions =>
                        {
                            actions.Add(action);
                        });
                });
    
    ```


**Parent topic:**[Implementing Workflow Actions](../DeveloperGuide/WorkflowAPI_Actions_Mapref.md)

