# Barcode Scan Commands: To Implement a Custom Command {#_898458c6-264b-4ca2-a8e8-4389f10a5c0f .task}

This activity will walk you through the process of defining a custom command for a scan mode.

## Story { .section}

Suppose that you are creating a custom scan mode for a barcode-driven form. You have defined the list of commands for this scan mode and introduced the `ConfirmCommand` command in this scan mode. You now need to implement the custom `ConfirmCommand` command.

## Process Overview { .section}

You will specify the required properties of the `ConfirmCommand` scan command, which is a new custom command, and implement its Process\(\) method.

## System Preparation { .section}

Before you begin performing the step of this activity, do the following:

1.  Prepare an Acumatica ERP instance by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.
2.  Create a barcode scan class by performing the [Barcode Scan Class: To Create a Barcode Scan Class](WMSEngine_BarcodeScanClass_Activity_CreateClass.md) prerequisite activity.
3.  Create the scan mode and define its required properties by performing the [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md) prerequisite activity.
4.  Define the list of commands for the scan mode by performing the [Barcode Scan Commands: To Define the List of Commands](WMSEngine_Command_Activity.md) prerequisite activity.

## Step: Defining the Custom Command { .section}

To implement the `ConfirmCommand`, do the following:

1.  In the `CountMode` class, add the `ConfirmCommand` class for the custom command and define its required properties, as shown in the following code.

    ```
    public class INScanCount : WMSBase
    {
        public sealed class CountMode : ScanMode
        {
            ...
      
            public sealed class ConfirmCommand : ScanCommand
            {
                public override string Code => "CONFIRM"; 
                public override string ButtonName => "scanConfirmDocument";
                public override string DisplayName => Msg.DisplayName; 
                protected override bool IsEnabled => Basis.DocumentIsEditable;
     
                [PXLocalizable]
                public abstract class Msg
                {
                    public const string DisplayName = "Confirm";
                }
            }
      
            ...
        }
    }
    ```

2.  In the `RefNbrState.Msg` class, add the following message.

    ```
    public const string NotSet = "The document number is not selected.";
    ```

3.  In the `CountMode` class, add the Process\(\) method implementation, as shown in the following code.

    ```
    public class INScanCount : WMSBase
    {
        public sealed class CountMode : ScanMode
        {
            ...
      
            public sealed class ConfirmCommand : ScanCommand
            {
                ...
     
                protected override bool Process() 
                {
                    if (Basis.Document == null)
                        Basis.ReportError(RefNbrState.Msg.NotSet);
                    if (Basis.DocumentIsEditable == false)
                        Basis.ReportError(RefNbrState.Msg.InvalidStatus, 
                            Basis.DocumentView.Cache.GetStateExt<INPIHeader.status>(
                            Basis.Document));
     
                    BqlCommand nullPhysicalQtyCmd = BqlCommand.CreateInstance(
                        Basis.Details.View.BqlSelect.GetType());
                    nullPhysicalQtyCmd = nullPhysicalQtyCmd.WhereAnd<Where<
                        INPIDetail.physicalQty.IsNull>>();
                    PXView nullPhysicalQtyView = Basis.Graph.TypedViews.GetView(
                        nullPhysicalQtyCmd, false);
     
                    foreach (INPIDetail detail in nullPhysicalQtyView.SelectMulti().
                        RowCast<INPIDetail>())
                    {
                        Basis.Details.SetValueExt<INPIDetail.physicalQty>(detail, 0m);
                        Basis.Details.Update(detail);
                    }
     
                    Basis.SaveChanges();
     
                    Basis.DocumentView.Current = null;
                    Basis.CurrentMode.Reset(fullReset: true);
                    Basis.ReportInfo(Msg.CountConfirmed);
     
                    return true;
                }
     
                [PXLocalizable]
                public abstract class Msg
                {
                    ...
                    public const string CountConfirmed = "The count has been saved.";
                }
            }
      
            ...
        }
    }
    ```


**Parent topic:**[Defining the List of Barcode Scan Commands](../DeveloperGuide/WMSEngine_Command_Mapref.md)

