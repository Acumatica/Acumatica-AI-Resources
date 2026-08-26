# Processing Form: Processing Dialog Box {#_73c2c4bd-75e2-42d0-a726-41796017898b .concept}

When a user starts a processing operation on a processing form, such as the [Release AR Documents](../UserGuide/AR_50_10_00.md) \(AR501000\) form of Acumatica ERP, the **Processing** dialog box opens, which displays the status of the processing. In this topic, you can learn how to modify this dialog box.

## Adding a Button to the Processing Dialog Box {#_c59cd039-bb0c-47ac-a6e2-47ab437c6f29 .section}

When a processing operation is started, all elements of the processing form become unavailable. If you need to make a button from the processing form available during processing, you have to add this button to the processing dialog box, as described in this topic.

To add a button to the processing dialog box, for the action that corresponds to the button, you set the value of the VisibleOnProcessingResults property of PXButtonAttribute or its descendant to *true* in the graph, as shown in the following code example.

```language-csharp
[PXUIField(DisplayName = Messages.ShowDocuments)]
[PXButton(VisibleOnProcessingResults = true)]
public virtual IEnumerable showDocuments(PXAdapter adapter)
{
    ShowOpenDocuments(SelectedItems);
    return adapter.Get();
}
```

## Turning Off the Displaying of the Processing Dialog Box {#_02f37ef0-5c40-4827-b209-13325542459f .section}

You can turn off the displaying of the processing dialog box and instead display the progress and the result of the processing on the form toolbar.

To not display the processing dialog box on a processing form, you can do one of the following:

-   To not display the processing dialog box for a custom form \(one that has been developed from the ground up\), you override the IsProcessing property of the graph that corresponds to the form, as shown in the following code.

    ```language-csharp
    public override bool IsProcessing
    {
        get { return false; }
        set { }
    }
    ```

-   To not display the processing dialog box for a customized Acumatica ERP form, you configure the IsProcessing property of the graph that corresponds to the form in a graph extension, as shown in the following code.

    ```language-cpp
    public class AllocationProcess_Extension : PXGraphExtension<AllocationProcess>  
    {
        public override void Initialize()
        {
            Base.IsProcessing = false;
        }
    }
    ```

-   To not display the processing dialog box for all processing forms, you add the ProcessingProgressDialog key in the `appSettings` section of the `web.config` file of the application set to *False*, as shown in the following example.

    ```language-xml
    <add key="ProcessingProgressDialog" value="false" />
    ```


**Parent topic:**[Defining a Processing Form](../DeveloperGuide/UIDev_ProcessingScreen_Mapref.md)

