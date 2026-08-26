# Processing Form:To Create a Simple Processing Form {#_2f0f1a83-3e8a-4d3a-b871-eddfa315d253 .task}

The following activity will walk you through the process of creating the UI of a simple processing form that doesn’t have any filtering parameters defined.

## Story { .section}

The Smart Fix company needs to have a custom Acumatica ERP form that the managers of the company will use to assign repair work orders to particular employees. For this purpose, you’ll create the Assign Work Orders \(RS501000\) processing form.

This form will use the `RSSVWorkOrder` custom table, whose data will be displayed in the table on the form.

## Process Overview { .section}

In this activity, you'll create a form template, add the unbound `Selected` data field to the DAC that will be used for the table on the form, implement the screen class and view class for the form, and define the layout of the form in the HTML file of the form.

## System Preparation { .section}

Before you begin creating a processing form, prepare the Acumatica ERP instance as described in the following prerequisite activity: [Test Instance for Customization: To Deploy an Instance with a Custom Form that Implements a Workflow](../StudioDeveloperGuide/CodeCustomization_PrepareInstance_Activity_DeployInstanceT240.md).

## Step 1: Creating the Form \(Self-Guided Exercise\) { .section}

In this step, you'll create the Assign Work Orders \(RS501000\) form on your own. Although this is a self-guided exercise, this step provides details and suggestions you can use as you create the form. The creation of a form is described in detail in the *T200 Maintenance Forms* training course.

If you are using the Customization Project Editor to complete the self-guided exercise, you can perform the following general instructions:

1.  In the *PhoneRepairShop* customization project, create the form and graph as follows:
    1.  On the toolbar of the [Screens](../UserGuide/AU_20_10_00.md) page of the Customization Project Editor, click **Create New Screen**.
    2.  In the **Create New Screen** dialog box, which opens, specify the following values:
        -   **Screen ID**: `RS.50.10.00`
        -   **Graph Name**: `RSSVAssignProcess`
        -   **Graph Namespace**: `PhoneRepairShop`
        -   **Page Title**: `Assign Work Orders`
        -   **Template**: *Grid \(GridView\)*
        -   **Create Modern UI Files**: Selected
    3.  Move the generated `RSSVAssignProcess` graph to the extension library.
2.  Make sure that the `RSSVWorkOrder` DAC is defined in the `PhoneRepairShop_Code` Visual Studio project.
3.  Build the project in Visual Studio.
4.  Update the customization project with a new version of `PhoneRepairShop_Code.dll`, and publish the customization project.
5.  Include a link to the Assign Work Orders form in the **Processes** category of the **Phone Repair Shop** workspace.
6.  In the Customization Project Editor, do the following:
    -   Verify that the access rights for the Assign Work Orders form were automatically added on the [Access Rights](../UserGuide/AU_20_52_00.md) page
    -   Update the *SiteMapNode* item for the Assign Work Orders form

## Step 2: Adding the Unbound Selected Data Field {#section_sfj_qv2_wfc .section}

Do the following:

1.  In the `RSSVWorkOrder` DAC, add the unbound `Selected` data field, as shown in the following code.

    ``` {#codeblock_onw_zv2_wfc .language-csharp}
            #region Selected
            public abstract class selected : PX.Data.BQL.BqlBool.Field<selected> { }
            [PXBool]
            [PXUIField(DisplayName = "Selected")]
            public virtual bool? Selected { get; set; }
            #endregion
    ```

2.  Rebuild the project.

## Step 3: Defining the Data View { .section}

In this step, you'll define the data view in the `RSSVAssignProcess` graph, which works with the Assign Work Orders \(RS501000\) form. Do the following:

1.  In the `RSSVAssignProcess.cs` file, add the following `using` directive.

    ```language-csharp
    using PX.Data.BQL.Fluent;
    ```

2.  In the `RSSVAssignProcess` graph, use the following code to define the `WorkOrders` data view, which provides the data records to be processed on the form.

    ```language-csharp
            public 
                SelectFrom<RSSVWorkOrder>.
                // Inside the Where condition, use a fluent BQL statement 
                // that selects only the repair work orders with 
                // the Ready for Assignment status. 
                Where<RSSVWorkOrder.status.
                    IsEqual<RSSVWorkOrderEntry_Workflow.States.readyForAssignment>>.
                ProcessingView WorkOrders = null!;
    ```

3.  Rebuild the project.

## Step 4: Defining the Buttons for the Form Toolbar { .section}

In this step, you'll define the toolbar buttons for the form. Do the following:

1.  In the `RSSVAssignProcess` graph, define the `Cancel` action for the toolbar \(shown below\).

    ```language-csharp
            public PXCancel<RSSVWorkOrder> Cancel = null!;
    ```

    Remove the existing `Save` and `Cancel` actions that were auto-generated when you created the graph in Step 1.

2.  In the `RSSVAssignProcess` graph, change the default names of the processing buttons in the constructor of the graph as follows.

    ```language-csharp
            public RSSVAssignProcess()
            {
                WorkOrders.SetProcessCaption("Assign");
                WorkOrders.SetProcessAllCaption("Assign All");
            }
    ```

3.  Rebuild the project.

## Step 5: Defining the Screen Class of the Form { .section}

In the `RS501000.ts` file, define the view of the Assign Work Orders form by adding a screen class and a property for the data view of the form. Do the following:

1.  Open the `RS501000.ts` file.

    **Tip:** You can open a TypeScript file of a form from one of the following locations:

    -   On the [Modern UI Files](../Shared/../UserGuide/AU_20_46_00.md) page of the Customization Project Editor
    -   In the `FrontendSources\screen\src\development\screens` folder of your Acumatica ERP instance. \(The files appear in the file system if you click **Export to Development Folder** on the toolbar of the [Modern UI Files](../Shared/../UserGuide/AU_20_46_00.md) page.\)
2.  In the `RS501000.ts` file, make sure the following import directives are included.

    ```language-javascript
    import {
    	PXScreen, createCollection, graphInfo,
    	viewInfo,
    } from "client-controls";
    ```

3.  In the `RS501000` screen class, modify the graphInfo decorator, and specify the graph and the primary view of the form in the decorator properties, as the following code shows.

    ```language-javascript
    @graphInfo({
    	graphType: "PhoneRepairShop.RSSVAssignProcess",
    	primaryView: "WorkOrders"
    })
    export class RS501000 extends PXScreen {}
    ```

4.  Define the property for the data view of the form, as the following code shows. For the data view that’s used to display a table, initialize the property with the createCollection method. The method takes as the input parameter an instance of the view class, which you'll define in the next step.

    **Attention:** The names of the data view properties should be the same as those in the graph. For example, if the `WorkOrders` view is declared in the `RSSVAssignProcess` graph, the property with the same name should be declared in the `RS501000` screen class.

    ```language-javascript
    export class RS501000 extends PXScreen {
    	@viewInfo({containerName: "Work Orders to Assign"})
    	WorkOrders = createCollection(RSSVWorkOrder);
    }
    ```

    In the viewInfo decorator, you’ve specified the name of the container for the table.


## Step 6: Defining the View Class of the Form { .section}

In the TypeScript file of the form, define the `RSSVWorkOrder` view class for the table on the Assign Work Orders form. Proceed as follows:

1.  In the `RS501000.ts` file, add gridConfig, columnConfig, and GridPreset to the list of import directives.
2.  Define the `RSSVWorkOrder` view class as follows.

    ```language-javascript
    export class RSSVWorkOrder extends PXView { 
    	@columnConfig({ allowCheckAll: true })
    	Selected: PXFieldState; 
    
    	@columnConfig({ hideViewLink: true })
    	OrderNbr: PXFieldState;
    	Description: PXFieldState;
    
    	@columnConfig({ hideViewLink: true })
    	ServiceID: PXFieldState;
    	
    	@columnConfig({ hideViewLink: true })
    	DeviceID: PXFieldState;
    
    	Priority: PXFieldState;
    	
    	@columnConfig({ hideViewLink: true})
    	Assignee: PXFieldState;
    }
    ```

    For the `Selected` field, in the [columnConfig](https://help.acumatica.com/Help?ScreenId=ShowWiki&pageid=174c3931-2148-bc0c-ee45-705f27e1aec6) decorator, you’ve specified that a user can select all records on the page by clicking the check box in the column header.

    For the `OrderNbr`, `ServiceID`, `DeviceID`, and `Assignee` fields in the columnConfig decorator, you have specified that the selector link should not be displayed.

3.  Add the gridConfig decorator to the `RSSVWorkOrder` view class, as the following code shows. In the gridConfig decorator, you must specify the preset property. Because the table is used on the processing form, you’ll use the *Processing* preset. For details about presets, see [Form Layout: Grid Presets](UIDev_DesigningLayout_GridPresets.md).

    ```language-javascript
    @gridConfig({
    	preset: GridPreset.Processing,
    	autoAdjustColumns: true
    })
    export class RSSVWorkOrder extends PXView { 
    ... 
    }
    ```

    In the gridConfig decorator, you’ve also specified that the table width should be adjusted to the screen width. Otherwise, some of the columns could be too narrow to display values.

4.  Save your changes.

## Step 7: Creating the Layout of the Form { .section}

In this step, you’ll define the layout of the Assign Work Orders \(RS501000\) processing form.

1.  Open the `RS501000.html` file.

    **Tip:** You can open an HTML file of a form from one of the following locations:

    -   On the [Modern UI Files](../Shared/../UserGuide/AU_20_46_00.md) page of the Customization Project Editor
    -   In the `FrontendSources\screen\src\development\screens` folder of your Acumatica ERP instance. \(The files appear in the file system if you click **Export to Development Folder** on the toolbar of the [Modern UI Files](../Shared/../UserGuide/AU_20_46_00.md) page.\)
2.  To define the table showing repair work orders, do the following in the `RS501000.html` file:

    1.  Within the template tag, modify the qp-grid tag and bind it to the `WorkOrders` view, as the following code shows.

        ``` {#codeblock_ogf_hjf_wfc .language-xml}
          <qp-grid id="grid-WorkOrders" view.bind="WorkOrders"> </qp-grid>
        ```

    2.  Save your changes.
3.  If you used the `development` folder to modify the TypeScript and HTML files in the preceding Steps 5 to 7, you need to update these files in the customization project. You do this by using the **Detect Modified Files** button on the [Modern UI Files](../UserGuide/AU_20_46_00.md) page.
4.  Publish the customization project.
5.  Optional: In the `RS501000.ts` file, remove the `MasterView = createSingle(MasterViewClass);` and `DetailsView = createCollection(DetailsViewClass);` properties from the screen class. Also, remove the `MasterViewClass` and `DetailsViewClass` classes. These properties and classes are part of the boilerplate code that was generated by the system.

    Publish the customization project again.

6.  Open the Assign Work Orders \(RS501000\) form and review its layout.

You’ve implemented the UI of the processing form. To implement its functionality, follow the instructions in [Processing Operations: To Implement a Processing Operation by Using a Delegate](../StudioDeveloperGuide/CodeCustomization_ProcessingOperations_Activity_CreateWithoutFilter_withDelegate.md) or [Processing Operations: To Implement a Processing Operation by Using the Workflow](../StudioDeveloperGuide/CodeCustomization_ProcessingOperations_Activity_CreateWithoutFilter.md).

**Parent topic:**[Defining a Processing Form](../DeveloperGuide/UIDev_ProcessingScreen_Mapref.md)

