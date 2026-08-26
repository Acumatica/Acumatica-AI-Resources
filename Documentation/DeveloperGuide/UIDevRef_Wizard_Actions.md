# Wizard: Configuration of Buttons {#_22296cbc-1d3a-453a-a7fa-213aee91e69c .concept}

A wizard has a footer with the following default buttons:

-   **Cancel**
-   **Prev**
-   **Next**
-   **Save**

You can configure these buttons in the following ways:

-   Override the actions behind these buttons.

    For this purpose, use the \*\*\*Command properties in the config attribute of the [qp-wizard](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=67eb60e0-a2c4-4420-e797-1556d7f4784e) tag. In these properties, you specify the name of an action defined in a graph. The action specified in the config attribute will be performed before the default behavior for the button, such as switching to the next step of the wizard or saving the entered data.

-   Override the default text displayed on the buttons.

    For this purpose, use the buttons array in the config attribute of the [qp-wizard](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=67eb60e0-a2c4-4420-e797-1556d7f4784e) tag.

-   Disable the **Next** button at runtime.

    For this purpose, use the disableNext property in the config attribute of the [qp-wizard](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=67eb60e0-a2c4-4420-e797-1556d7f4784e) tag.


For reference of the config properties, see the [IWizardConfig](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=cb56332d-a454-d3b8-7eba-1e187d67e222) interface.

## Overriding The Next Button { .section}

Suppose that you need to invoke an action that is performed when a user clicks **Next** in the wizard. For example, you need to perform additional checks when a user switches to the next step. Do the following:

1.  In a graph, implement the action that should be performed when a user switches to the next step.

    An example is shown in the following code.

    ```language-csharp
    public PXAction<BudgetFilter> WNext;
    [PXButton]
    [PXUIField(MapEnableRights = PXCacheRights.Update, Visible = false)]
    public virtual IEnumerable wnext(PXAdapter adapter)
    { 
      bool errorHappened = false;
      if (PreloadFilter.Current.LedgerID == null)
      {
        PreloadFilter.Cache.
          RaiseExceptionHandling<BudgetPreloadFilter.ledgerID>(PreloadFilter.Current, 
            PreloadFilter.Current.LedgerID,
            new PXSetPropertyException(ErrorMessages.FieldIsEmpty, PXErrorLevel.RowError));
        errorHappened = true;
      }
      if (errorHappened)
      {
        return adapter.Get();
      }
      return adapter.Get(); 
    }
    ```

2.  In TypeScript, define the configuration of a wizard, and specify the name of the action from the graph.

    The following code shows how to specify the name of the action in the wizard configuration.

    ```language-csharp
    @graphInfo({ graphType: "PX.Objects.GL.GLBudgetEntry", primaryView: "Filter", 
      pageLoadBehavior: PXPageLoadBehavior.PopulateSavedValues, bpEventsIndicator: true })
    export class GL302010 extends PXScreen {
      wizardConfig: IWizardConfig = {
        nextCommand: "wNext"
      };
    }
    ```

    **Note:** You do not need to map the action in the view or screen class in TypeScript.


**Parent topic:**[Wizard](../DeveloperGuide/UIDevRef_Wizard_Mapref.md)

