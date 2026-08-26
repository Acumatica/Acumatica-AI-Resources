# Step 2: Deriving the Value of the Field {#_b93f8202-2eaa-4798-9110-f34ea6faaee2 .task}

You can implement the deriving of a field value from the `RSSVSetup` DAC and the copying of it to the `ARRegister` DAC by using one of the following:

-   The FieldDefaulting event
-   The PXDefault attribute

To populate the `UsrPrepaymentPercent` field of the `ARRegister` DAC extension when a payment is created, you will use the FieldDefaulting event. Do the following:

1.  Create an extension of the `ARPaymentEntry` graph, as shown in the following code.

    You learned the name of the graph to extend in Instruction 1 of the previous step.

    ```language-csharp
        public class ARPaymentEntry_Extension : PXGraphExtension<ARPaymentEntry>
        {
        }
    ```

2.  Add the following `using` directives.

    ```language-csharp
    using PX.Data;
    using PX.Data.BQL.Fluent;
    using PX.Objects.AR;
    ```

3.  Use Acuminator to suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error in a comment. In this course, for simplicity, the extension is always active.
4.  Define the `FieldDefaulting` event handler for the `UsrPrepaymentPercent` field of the `ARRegister` extension, as shown in the following code.

    ```language-csharp
            public virtual void _(Events.FieldDefaulting<ARPayment,
                          ARRegisterExt.usrPrepaymentPercent> e)
            {
                RSSVSetup setupRecord = SelectFrom<RSSVSetup>.View.Select(Base);
                if (setupRecord != null)
                {
                    e.NewValue = setupRecord.PrepaymentPercent;
                }
            }
    ```

    In the code above, you have selected the record with the repair work order preferences and assigned the `PrepaymentPercent` field value to the `UsrPrepaymentPercent` field of the `ARRegister` DAC. You have checked for the null value of `setupRecord` so that the NullReferenceException exception is not thrown if the data on the form has not been filled in yet.


Another way to derive the default value is to use the PXDefault attribute, which performs the same logic. If you use this approach, the PXDefault attribute for the `UsrPrepaymentPercent` field should look as follows.

```language-csharp
[PXDefault(typeof(Select<RSSVSetup>), 
  SourceField = typeof(RSSVSetup.prepaymentPercent), 
  PersistingCheck = PXPersistingCheck.Nothing)]
```

This approach provides the following advantages:

-   You do not need to create a graph extension.
-   Your logic is written in declarative style.

**Attention:** You need to specify the SourceField parameter if the field names are not identical.

**Parent topic:**[Workflow Events: To Create a Workflow Event](../DeveloperGuide/WorkflowAPI_Events_Activity_CreateNew.md)

