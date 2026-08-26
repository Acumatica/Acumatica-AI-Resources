# Barcode Scan Class: To Create a Barcode Scan Class {#_dc434af2-e24b-4dc4-970f-5e2dac563c9f .task}

This activity will walk you through the process of creating a barcode scan class.

## Story { .section}

Suppose that you need to create a barcode-driven version of the [Physical Inventory Review](../UserGuide/IN_30_50_00.md) \(IN305000\) form. The form should have only one scan mode. For this form, you need to define a barcode scan class and configure this mode.

## Process Overview { .section}

You will define the `INScanCount` barcode scan class as a descendant of the WarehouseManagementSystem&lt;TSelf,TGraph&gt; base scan class.

In the `INScanCount` class, you will create a host class as an empty descendant for INPICountEntry, the graph object of the [Physical Inventory Review](../UserGuide/IN_30_50_00.md) \(IN305000\) form.

You will then implement the CreateScanModes\(\) `abstract` method of the base class to make the barcode scan class usable. In the method, you will use the `yield return` construction to avoid array creation.

## System Preparation { .section}

Before you begin performing the steps of this activity, you need to prepare an Acumatica ERP instance and the *PhoneRepairShop* customization project by performing the [Test Instance: To Deploy an Instance](WMSEngine_InitialConfiguration_Activity_DeployInstance.md) prerequisite activity.

## Step 1: Creating a Barcode Scan Class { .section}

To create a barcode scan class, do the following:

1.  In the `PhoneRepairShop_Code` Visual Studio project, add a reference to the `PX.BarcodeProcessing.dll` file.
2.  Create the `INScanCount` class and make it `public`.
3.  Add the `using` directives shown in the following code to the file.

    ```
    using PX.BarcodeProcessing;
    using PX.Objects.IN;
    using PX.Objects.IN.WMS;
    ```

4.  In the `INScanCount` class, add a host class to apply the barcode scan class to, as shown in the following code.

    ```
    public class INScanCount
    {
        public class Host : INPICountEntry { }
    }
    ```

5.  To simplify referencing the nested components of the barcode scan class, add the following line before the `INScanCount` class declaration. The WarehouseManagementSystem&lt;TSelf,TGraph&gt; class is a descendant of the BarcodeDrivenStateMachine&lt;TSelf, TGraph&gt; class, which contains warehouse-related logic and components.

    ```
    using WMSBase = WarehouseManagementSystem<INScanCount, INScanCount.Host>;
    ```

6.  Derive the `INScanCount` class from `WMSBase`. The following code shows the result of this step.

    ```
    using PX.BarcodeProcessing;
    using PX.Objects.IN;
    using PX.Objects.IN.WMS;
    
    namespace PhoneRepairShop
    {
        using WMSBase = WarehouseManagementSystem<INScanCount, INScanCount.Host>;
        public class INScanCount: WMSBase
        {
            public class Host : INPICountEntry { }
        }
    }
    ```

7.  Fix or suppress the [PX1016](https://github.com/Acumatica/Acuminator/blob/master/docs/diagnostics/PX1016.md) error that is displayed by Acuminator.

## Step 2: Making the Barcode Scan Class Usable { .section}

To make the barcode scan class usable, do the following:

1.  Add the `using` directives shown in the following code to the file.

    ```
    using System.Collections.Generic;
    using PX.Data;
    ```

2.  To make the barcode-driven part of the graph extension work, implement the CreateScanModes\(\) abstract method as follows.

    ```
    public class INScanCount : WMSBase
    {
        ...
             
        protected override IEnumerable<ScanMode<INScanCount>> CreateScanModes() 
        {
            yield return new CountMode(); 
        }
    }
    ```

    **Tip:** You will implement the `CountMode` scan mode in [Barcode Scan Mode: To Define the Required Properties](WMSEngine_ScanMode_CreateScanMode_Activity.md).

3.  To facilitate access to the important members of the host graph, add the following members.

    ```
    public class INScanCount : WMSBase
    {
        ...
      
        public virtual INPIHeader Document => DocumentView.Current;
        public virtual PXSelectBase<INPIHeader> DocumentView => Graph.PIHeader;
        public virtual PXSelectBase<INPIDetail> Details => Graph.PIDetail;
    
        ...
    }
    ```

4.  Add the following supplementary method, which will be reused in further implementation of the custom barcode-driven form.

    ```
    public class INScanCount : WMSBase
    {
        ...
      
        protected virtual bool IsDocumentStatusEditable(string status) => 
            status == INPIHdrStatus.Counting;
        ...
    }
    ```

5.  To define when the document with which the barcode scan class works can be edited by the barcode processing, override the DocumentIsEditable member of the `WMSBase` class.

    ```
    public class INScanCount : WMSBase
    {
        ...
      
        public override bool DocumentIsEditable => 
            base.DocumentIsEditable && IsDocumentStatusEditable(Document.Status);
    
        ...
    }
    ```


**Parent topic:**[Creating a Barcode Scan Class](../DeveloperGuide/WMSEngine_BarcodeScanClass_Mapref.md)

