# Extension of Scan Components: Customization of Components {#_312f548a-4819-4b5a-9250-61649db0567a .concept}

In this topic, you can find information about how to customize particular scan components.

## Set of Scan Modes { .section}

If you need to change the set of modes of the barcode-driven engine, such as when you are adding a new mode, you override the CreateScanModes method by using the PXOverride attribute and add your new mode, as shown in the following code.

```
public class MyScanExtension : SomeWMS.ScanExtension
{
    /// Overrides <seealso cref="BarcodeDrivenStateMachine{TSelf, TGraph}.CreateScanModes()"/>
    [PXOverride]
    public virtual IEnumerable<ScanMode<SomeWMS>> CreateScanModes(
        Func<IEnumerable<ScanMode<SomeWMS>>> base_CreateScanModes)
    {
        foreach (var mode in base_CreateScanModes())
            yield return mode;
  
        yield return new MyMode();
    }
  
    public sealed class MyMode : SomeWMS.ScanMode
    {
        // implement a new mode here
    }
}
```

## Scan Mode { .section}

If you need to change the configuration of the scan mode, you override the DecorateScanMode method by using the PXOverride attribute and intercept the logic of the mode in this method, as shown in the following code.

```
public class MyScanExtension : SomeWMS.ScanExtension
{
    /// Overrides <seealso cref="BarcodeDrivenStateMachine{TSelf, TGraph}.DecorateScanMode(ScanMode{TSelf})"/>
    [PXOverride]
    public virtual ScanMode<SomeWMS> DecorateScanMode(
        ScanMode<SomeWMS> original,
        Func<ScanMode<SomeWMS>, ScanMode<SomeWMS>> base_DecorateScanMode)
    {
        var mode = base_DecorateScanMode(original);
  
        if (mode is SomeMode someMode)
        {
            mode
                .Intercept.CreateStates.ByOverride((basis, base_CreateStates) =>
                {
                    // Change the set of states
                })
                .Intercept.CreateTransitions.ByReplace(basis =>
                {
                    // Change state-dispatching rules
                })
                .Intercept.CreateCommands.ByAppend(basis =>
                {
                    // Add additional commands
                })
                .Intercept.CreateQuestions.ByBaseSubstitute((basis, base_CreateQuestions) =>
                {
                    // Change the original set of questions
                })
                .Intercept.GetDefaultState.ByOverride((basis, base_GetDefaultState) =>
                {
                    // Сhange the default state
                })
                .Intercept.ResetMode.ByPrepend((basis, fullReset) =>
                {
                    // Сhange the state-clearing logic
                });
        }
  
        return mode;
    }
}
```

## Scan Command { .section}

If you need to change the simple configuration logic of the scan command, you override the DecorateScanCommand method by using the PXOverride attribute and intercept the logic of the component in this method, as shown in the following code.

```
public class MyScanExtension : SomeWMS.ScanExtension
{
    /// Overrides <seealso cref="BarcodeDrivenStateMachine{TSelf, TGraph}.DecorateScanCommand(ScanCommand{TSelf})"/>
    [PXOverride]
    public virtual ScanCommand<SomeWMS> DecorateScanCommand(
        ScanCommand<SomeWMS> original,
        Func<ScanCommand<SomeWMS>, ScanCommand<SomeWMS>> base_DecorateScanCommand)
    {
        var command = base_DecorateScanCommand(original);
  
        if (command is SomeCommand someCommand)
        {
            someCommand
                .Intercept.IsEnabled.ByConjoin(basis =>
                {
                    // Add a condition when the command is enabled
                })
                .Intercept.Process.ByOverride((basis, base_Process) =>
                {
                    // Change the logic of the command
                });
        }
 
        return command;
    }
}
```

## Mode Redirect { .section}

If you need to change the simple configuration logic of the mode redirect, you override the DecorateScanRedirect method by using the PXOverride attribute and intercept the logic of the component in this method, as shown in the following code.

```
public class MyScanExtension : SomeWMS.ScanExtension
{
    /// Overrides <seealso cref="BarcodeDrivenStateMachine{TSelf, TGraph}.DecorateScanRedirect(ScanRedirect{TSelf})"/>
    [PXOverride]
    public virtual ScanRedirect<SomeWMS> DecorateScanRedirect(
        ScanRedirect<SomeWMS> original,
        Func<ScanRedirect<SomeWMS>, ScanRedirect<SomeWMS>> base_DecorateScanRedirect)
    {
        var redirect = base_DecorateScanRedirect(original);
 
        if (redirect is SomeRedirect someRedirect)
        {
            someRedirect
                .Intercept.PrepareRedirect.ByOverride((basis, base_PrepareRedirect) =>
                {
                    // Redirect-preparing logic
                })
                .Intercept.CompleteRedirect.ByOverride((basis, base_CompleteRedirect) =>
                {
                    // Redirect-completing logic
                });
        }
 
        return redirect;
    }
}
```

## Scan Question { .section}

If you need to change the simple configuration logic of the scan question, you override the DecorateScanQuestion method by using the PXOverride attribute and intercept the logic of the component in this method, as shown in the following code.

```
public class MyScanExtension : SomeWMS.ScanExtension
{
    /// Overrides <seealso cref="BarcodeDrivenStateMachine{TSelf, TGraph}.DecorateScanQuestion(ScanQuestion{TSelf})"/>
    [PXOverride]
    public virtual ScanQuestion<SomeWMS> DecorateScanQuestion(
        ScanQuestion<SomeWMS> original,
        Func<ScanQuestion<SomeWMS>, ScanQuestion<SomeWMS>> base_DecorateScanQuestion)
    {
        var question = base_DecorateScanQuestion(original);
 
        if (question is SomeQuestion someQuestion)
        {
            someQuestion
                .Intercept.GetPrompt.ByReplace(basis => // new prompt)
                .Intercept.Confirm.ByOverride((basis, base_Confirm) =>
                {
                    // question-confirming logic
                })
                .Intercept.Reject.ByOverride((basis, base_Reject) =>
                {
                    // question-rejecting logic
                });
        }
  
        return question;
    }
}
```

## Scan State { .section}

If you need to change the simple configuration logic of the scan state, you override the DecorateScanState method by using the PXOverride attribute and intercept the logic of the component in this method, as shown in the following code.

**Note:** For a multi-mode barcode-driven form, such as [Pick, Pack, and Ship](../UserGuide/SO_30_20_20.md) \(SO302020\) or [Receive and Put Away](../UserGuide/PO_30_20_20.md) \(PO302020\), each mode of the form can have its own `InventoryItemState` \(or any other state\) component. Therefore, we recommend that you always check for the mode of the desired component, unless you want to patch a component despite the mode it is used in.

```
public class MyScanExtension : SomeWMS.ScanExtension
{
    /// Overrides <seealso cref="BarcodeDrivenStateMachine{TSelf, TGraph}.DecorateScanState(ScanState{TSelf})"/>
    [PXOverride]
    public virtual ScanState<SomeWMS> DecorateScanState(
        ScanState<SomeWMS> original,
        Func<ScanState<SomeWMS>, ScanState<SomeWMS>> base_DecorateScanState)
    {
        var state = base_DecorateScanState(original);
 
        if (state is SomeEntityState someEntityState)
        {
            someEntityState
                .Intercept.StatePrompt.ByReplace(
                    basis => // New prompt
                )
                .Intercept.IsStateActive.ByConjoin(
                    basis => // New conjoint (&&) condition
                ) // Prefer conjoin for this member
                .Intercept.IsStateSkippable.ByDisjoin(
                    basis => // New disjoint (||) condition
                ) // Prefer disjoin for this member
                .Intercept.GetByBarcode.ByOverride(
                    (basis, barcode, base_GetByBarcode) =>
                {
                    // Change entity-fetching logic
                })
                .Intercept.HandleAbsence.ByAppend((basis, barcode) =>
                {
                    // Handle the entity absence
                })
                .Intercept.ReportMissing.ByReplace((basis, barcode) =>
                {
                    // Report that the entity is missing
                })
                .Intercept.Validate.ByPrepend((basis, entity) =>
                {
                    // Validate the found entity
                })
                .Intercept.Apply.ByAppend((basis, entity) =>
                {
                    // Entity-application logic
                })
                .Intercept.ClearState.ByAppend((basis, entity) =>
                {
                    // Clear the changes made by the Apply method
                })
                .Intercept.SetNextState.ByOverride((basis, base_SetNextState) =>
                {
                    // Set the next state                })
                .Intercept.OnTakingOver.ByAppend(basis =>
                {
                    // Do something when the state takes over
 
                })
                .Intercept.OnDismissing.ByPrepend(basis =>
                {
                    // Do something when the state gets dismissed
                });
        }
        return state;
    }
}
```

## Complex Logic { .section}

If you need to change the complex logic used by the barcode-driven engine or by any of its components, you create a nested extension that overrides the member of the particular ScanExtension component.

```
public class MyScanExtension : SomeWMS.ScanExtension
{
    public class AlterSomeModeSomeCommandLogic : SomeWMS.ScanExtension<SomeWMS.SomeMode.SomeCommand.Logic>
    { 
        /// Overrides <seealso cref="SomeWMS.SomeMode.SomeCommand.Logic.Bar(int)"/>
        [PXOverride]
        public virtual void Bar(int input, Action<int> base_Bar)
        {
            // change the logic of Bar method
        }
    }
}
  
// where the original code is:
public class SomeWMS : WarehouseManagementSystem<SomeWMS, SomeWMS.Host>
{
    public class Host : SomeGraph { }
  
    // WMS-related methods
    // ...
  
    public sealed class SomeMode : ScanMode
    {
        // mode-related methods
        // ...
         
        public sealed class SomeCommand : ScanCommand
        {
            // command-related methods
            // ...
  
            protected override bool Process()
            {
                Basis.Get<Logic>().DoSomething();
                return true;
            }
  
            public class Logic : ScanExtension // contains some complex logic that may be customized in parts
            {
                public virtual void DoSomething()
                {
                    // ...
                    Bar(42);
                    // ...
                }
  
                public virtual void Bar(int input)
                {
                    // some logic here that may call some other methods
                }
            }
        }
    }
}
```

**Parent topic:**[Extending Scan Components](../DeveloperGuide/WMSEngine_ExtendedComponent_Mapref.md)

