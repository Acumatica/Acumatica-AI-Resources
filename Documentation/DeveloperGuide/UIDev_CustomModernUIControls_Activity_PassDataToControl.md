# Custom Frontend Modern UI Controls: To Pass Data to the Record Insights Panel

This activity will walk you through the process of passing data to a custom control from the backend.

## Story

In [Custom Frontend Modern UI Controls: To Implement the Record Insights Panel](UIDev_CustomModernUIControls_Activity_CreateControl.md), you created the Record Insights panel as a custom control and included it in the *PhoneRepairShop* customization project.

Now suppose that the Smart Fix company wants the Record Insights panel to be shown at the top of the Repair Work Orders \(RS301000\) form. The panel should dynamically display the following key information about the open repair work order:

-   One of the following statuses based on the current workflow state of the repair work order: *Needs Attention*, *In Progress*, *Completed*, or *Invoiced*. The order’s status value should be passed to the control's `status` property.
-   A warning message when user action is required. The appropriate warning message should be passed to the control's `warningMessage` property.
-   Status details—a message describing the current state of the repair work order and any actions that need to be taken by the user. The appropriate status detail message should be passed to the control's `details` property.

The control should also update the colors of its left border and status badge based on the repair work order’s status. The value required to set the colors should be passed to the control's `accent` property.

To meet these requirements, you need to pass data to the custom control from the backend.

## Process Overview

You'll add the Record Insights panel to the Repair Work Orders \(RS301000\) form and pass data to this custom control from the backend by:

1.  Defining attached fields and calculating their values in the form's primary graph by using the `PXFieldAttachedTo` class
2.  Exposing the fields in the form's TypeScript code via a TypeScript extension
3.  Adding the custom control in the form's HTML code via an HTML extension
4.  Binding the custom control to the attached fields

## System Preparation

Before you begin performing the steps of this activity, complete the [Custom Frontend Modern UI Controls: To Implement the Record Insights Panel](UIDev_CustomModernUIControls_Activity_CreateControl.md) activity.

## Step 1: Adding Attached Fields to the Graph

In this step, you'll define virtual read-only fields that are maintained by the `RSSVWorkOrderEntry` graph, which is the primary graph for the Repair Work Orders \(RS301000\) form. Because the values displayed on the Record Insights panel are needed only on this form and aren’t stored in the database, you'll define them as attached fields in the `RSSVWorkOrderEntry` graph.

Each attached field is implemented as a descendant of `PXFieldAttachedTo<RSSVWorkOrder>.By<RSSVWorkOrderEntry>.AsString.Named<TSelf>`. In this declaration:

-   `RSSVWorkOrder` is the DAC to which the virtual field is attached.
-   `RSSVWorkOrderEntry` is the graph that owns and maintains the field.
-   `AsString` defines the field type.
-   `Named<TSelf>` uses the class name as the field name.

To define the value of each attached field, you override the `GetValue()` method. In this activity, you'll define this method to call a `protected virtual` helper method, which determines the value to return. You'll group these methods within the corresponding `PXFieldAttachedTo` descendant. This keeps each attached field’s logic grouped inside the corresponding `PXFieldAttachedTo` descendant, making the logic easier to modify.

For user-facing strings, you'll localize the value returned by the helper method by using the `PXMessages.LocalizeNoPrefix()` method. You won’t localize the value of the `panelAccent` field because it’s used as a technical value by the frontend to select the appropriate visual style.

**Tip:** An alternative approach that can be used to pass data to the Record Insights panel is to declare unbound fields in the primary DAC of the form and then use `FieldSelecting` handlers in the form's graph to populate the values for each field. But if you used this approach in this activity, you would be adding fields to the DAC that are only used within a single graph. The cleaner approach described in this activity doesn't require you to make any changes to the DAC.

Open the `PhoneRepairShop_Code` Visual Studio project located in the `App_Data\Projects` folder of your instance. In the `RSSVWorkOrderEntry.cs` file, add the attached fields as follows:

1.  Create the `Attached Fields` region and add an attached field called `panelStatus`, as shown below.

    ```csharp
    #region Attached Fields
    // Acuminator disable once PX1016 ExtensionDoesNotDeclareIsActiveMethod extension
    // should be constantly active
    public class panelStatus :
        PXFieldAttachedTo<RSSVWorkOrder>.By<RSSVWorkOrderEntry>.AsString.Named<panelStatus>
    {
        public override string? GetValue(RSSVWorkOrder row) =>
            PXMessages.LocalizeNoPrefix(GetPanelStatus(row));
    }
    #endregion
    ```

    This field determines the status that should be displayed in the Record Insights panel. The `GetValue(RSSVWorkOrder row)` method defines the value of the field by calling the `(GetPanelStatus(RSSVWorkOrder row)` helper method.

    The helper method will contain the logic that determines the value of the `panelStatus` field. The method returns a value of the `string` type.

    **Tip:** The `GetValue(RSSVWorkOrder row)` method in the code above also localizes the returned value. Any strings that are displayed in the UI of a form should be localized by using a method of the PXMessages class, such as PXMessages.Localize or PXMessages.LocalizeNoPrefix.

2.  Within the `panelStatus` class, define the `(GetPanelStatus(RSSVWorkOrder row)` helper method after the ``GetValue(RSSVWorkOrder row)`` method, as shown below.

    ```csharp
    private static string? GetPanelStatus(RSSVWorkOrder row)
    {
        if (row == null)
            return null;
    
        if (row.Status == WorkOrderStatusConstants.OnHold ||
            row.Assignee == null ||
            row.Status == WorkOrderStatusConstants.ReadyForAssignment)
            return PanelStatus.NeedsAttention;
    
        if (row.InvoiceNbr == null &&
            row.Status == WorkOrderStatusConstants.Assigned)
            return PanelStatus.InProgress;
    
        if (row.InvoiceNbr == null &&
            row.Status == WorkOrderStatusConstants.Completed)
            return PanelStatus.Completed;
    
        return PanelStatus.Invoiced;
    }
    ```

    **Tip:** In Step 2 of this activity, you'll define the string constants being returned by the helper method in the code above and by the other helper methods that you'll define in the following instructions of the current step.

    Now you'll define the remaining attached fields and the required methods similarly.

3.  Add an attached field called `panelWarningMessage`, as shown below.

    ```csharp
    // Acuminator disable once PX1016 ExtensionDoesNotDeclareIsActiveMethod extension
    // should be constantly active
    public class panelWarningMessage :
        PXFieldAttachedTo<RSSVWorkOrder>.By<RSSVWorkOrderEntry>.AsString.Named<panelWarningMessage>
    {
        public override string? GetValue(RSSVWorkOrder row) =>
            PXMessages.LocalizeNoPrefix(GetPanelWarningMessage(row));
    }
    ```

    This field determines the warning message that should be displayed in the Record Insights panel.

4.  Within the `panelWarningMessage` class, define the `(GetPanelWarningMessage(RSSVWorkOrder row)` helper method after the `GetValue(RSSVWorkOrder row)` method, as shown below.

    ```csharp
    private static string? GetPanelWarningMessage(RSSVWorkOrder row)
    {
        if (row == null)
            return null;
    
        if (row.Status == WorkOrderStatusConstants.OnHold)
            return PanelWarningMessages.OnHoldWarning;
    
        if (row.Assignee == null ||
            row.Status == WorkOrderStatusConstants.ReadyForAssignment)
            return PanelWarningMessages.NoAssigneeWarning;
    
        return null;
    }
    ```

5.  Add an attached field called `panelDetails`, as shown below.

    ```csharp
    // Acuminator disable once PX1016 ExtensionDoesNotDeclareIsActiveMethod extension
    // should be constantly active
    public class panelDetails :
        PXFieldAttachedTo<RSSVWorkOrder>.By<RSSVWorkOrderEntry>.AsString.Named<panelDetails>
    {
        public override string? GetValue(RSSVWorkOrder row) =>
            PXMessages.LocalizeNoPrefix(GetPanelDetails(row));
    }
    ```

    This field determines the message that should be displayed in the status details section of the Record Insights panel.

6.  Within the `panelDetails` class, define the `(GetPanelDetails(RSSVWorkOrder row)` helper method after the `GetValue(RSSVWorkOrder row)` method, as shown below.

    ```csharp
    private static string? GetPanelDetails(RSSVWorkOrder row)
    {
        if (row == null)
            return null;
    
        if (row.Status == WorkOrderStatusConstants.OnHold)
            return PanelDetailsMessages.OnHoldDetails;
    
        if (row.Assignee == null ||
            row.Status == WorkOrderStatusConstants.ReadyForAssignment)
            return PanelDetailsMessages.NoAssigneeDetails;
    
        if (row.Status == WorkOrderStatusConstants.Assigned)
            return PanelDetailsMessages.InProgressDetails;
    
        if (row.InvoiceNbr == null &&
            row.Status == WorkOrderStatusConstants.Completed)
            return PanelDetailsMessages.CompleteDetails;
    
        return PanelDetailsMessages.ReadyDetails;
    }
    ```

7.  Add an attached field called `panelAccent`, as shown below.

    ```csharp
    // Acuminator disable once PX1016 ExtensionDoesNotDeclareIsActiveMethod extension
    // should be constantly active
    public class panelAccent :
        PXFieldAttachedTo<RSSVWorkOrder>.By<RSSVWorkOrderEntry>.AsString.Named<panelAccent>
    {
        public override string? GetValue(RSSVWorkOrder row) =>
            GetPanelAccent(row);
    }
    ```

    This field determines the colors that should be applied to the panel's left border and the status badge's text and background.

    **Tip:** In the code above, you didn't localize the value returned by the `GetPanelAccent(row)` helper method because the string returned by this method is not localizable.

8.  Within the `panelAccent` class, define the `(GetPanelAccent(RSSVWorkOrder row)` helper method after the `GetValue(RSSVWorkOrder row)` method, as shown below.

    ```csharp
    private static string? GetPanelAccent(RSSVWorkOrder row)
     {
         if (row == null)
             return null;
    
         if (row.Status == WorkOrderStatusConstants.OnHold ||
             row.Status == WorkOrderStatusConstants.ReadyForAssignment ||
             row.Assignee == null)
             return PanelAccent.Danger;
    
         if (row.Status == WorkOrderStatusConstants.Assigned)
             return PanelAccent.Warning;
    
         if (row.InvoiceNbr == null &&
             row.Status == WorkOrderStatusConstants.Completed)
             return PanelAccent.Neutral;
    
         return PanelAccent.Success;
     }
    ```


The fields that you’ve defined in this step aren't shown in the UI directly. Instead, they’re used as a data source for the custom control.

## Step 2: Adding String Constants to Represent Different Visual States

In this step, you'll add four classes to the `Constants.cs` file of the Visual Studio project and define string constants within each. These constants represent the possible values for each of the fields that you added in the previous step. These values will then be passed to the `status`, `warningMessage`, `details`, and `accent` properties of the custom control to modify the control's visual state.

Do the following:

1.  In the `Constants.cs` file, define the `PanelStatus` class, as shown below.

    ```csharp
    //Constants for the Record Insight Panel's status property
    [PXLocalizable]
    public static class PanelStatus
    {
        public const string NeedsAttention = "Needs Attention";
        public const string InProgress = "In Progress";
        public const string Completed = "Completed";
        public const string Invoiced = "Invoiced";
    }
    ```

2.  After the `PanelStatus` class, define the `PanelWarningMessages` class, as shown below.

    ```csharp
    //Constants for the Record Insight Panel's warning message property
    [PXLocalizable]
    public static class PanelWarningMessages
    {
        public const string OnHoldWarning = 
          "The repair work order is on hold and must be reviewed before further processing.";
        public const string NoAssigneeWarning = 
          "No assignee has been selected for this repair work order.";
    }
    ```

3.  Define the `PanelDetailsMessages` class \(shown below\).

    ```csharp
    //Constants for the Record Insight Panel's details property
    [PXLocalizable]
    public static class PanelDetailsMessages
    {
        public const string OnHoldDetails = 
          "Check the priority and required repair items before removing the hold.";
        public const string NoAssigneeDetails = 
          "Assign an employee to this repair work order.";
        public const string InProgressDetails = 
          "The repair work order is being processed and has not been completed yet.";
        public const string CompleteDetails = 
       "The repair work order has been completed but has not yet been linked to an invoice.";
        public const string ReadyDetails = 
          "The repair work order has been completed and has been linked to an invoice.";
    }
    ```

4.  Define the `PanelAccent` class \(shown below\).

    ```csharp
    //Constants for the Record Insight Panel's accent property
    public static class PanelAccent
    {
        public const string Danger = "danger";
        public const string Neutral = "neutral";
        public const string Warning = "warning";
        public const string Success = "success";
    }
    ```

    **Tip:** You don't add the `[PXLocalizable]` attribute to the `PanelAccent` class because the string constants in this class aren't displayed in the UI.

5.  Build the Visual Studio project.

## Step 3: Exposing the Attached Fields in the TypeScript Code

The attached fields are maintained by the `RSSVWorkOrderEntry` graph and are available through the graph’s `WorkOrders` data view. You should expose the new attached fields by using another TypeScript extension of `RSSVWorkOrder` view class because:

-   You already initialize the `WorkOrders` data view by using `createSingle(RSSVWorkOrder)` in the TypeScript code of the Repair Work Orders \(RS301000\) form.
-   You already use a TypeScript extension file to expose the `UsrOrderType` field.

This approach keeps the existing initialization of the `WorkOrders` view unchanged and follows the same extension pattern already used in the form.

Do the following:

1.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form of your Acumatica ERP instance, open the *PhoneRepairShop* customization project.
2.  In the navigation pane of the Customization Project Editor, click **Modern UI Files**. The [Modern UI Files](../UserGuide/AU_20_46_00.md) \(AU204600\) page opens.
3.  On the page toolbar, click **Export to Development Folder**.
4.  In the **Replace Files** dialog box, which opens, click **Yes**.
5.  In the `FrontendSources\screen\src\development\screens\RS\RS301000\extensions` folder of your instance, create the `RS301000_PhoneRepairShop_RecordInsights.ts` extension file. Add the following code to this file and save your changes.

    ```javascript
    import { PXFieldState } from "client-controls";
    import {
      RS301000,
      RSSVWorkOrder
    } from "src/customizationScreens/Company/screens/RS/RS301000/RS301000";
    
    export interface RS301000_PhoneRepairShop_RecordInsights extends RS301000 {}
    export class RS301000_PhoneRepairShop_RecordInsights {}
    
    export interface RSSVWorkOrder_PhoneRepairShop_RecordInsights
      extends RSSVWorkOrder {}
    export class RSSVWorkOrder_PhoneRepairShop_RecordInsights {
      PanelStatus: PXFieldState;
      PanelWarningMessage: PXFieldState;
      PanelDetails: PXFieldState;
      PanelAccent: PXFieldState;
    }
    ```

    In this code:

    -   `RS301000_PhoneRepairShop_RecordInsights` extends the `RS301000` screen class.
    -   `RSSVWorkOrder_PhoneRepairShop_RecordInsights` extends the `RSSVWorkOrder` view class.
    -   The following properties shown in the code above correspond to the attached fields maintained by the graph: `PanelStatus`, `PanelWarningMessage`, `PanelDetails`, and `PanelAccent`.
    This follows the same extension pattern that’s used to expose the `UsrOrderType` field for the Repair Work Orders form. By using another extension file instead of changing the base `RSSVWorkOrder` view class, you keep the screen customization modular and avoid affecting the existing frontend structure.

6.  On the [Customization Projects](../UserGuide/SM_20_45_05.md) \(SM204505\) form of your Acumatica ERP instance, open the *PhoneRepairShop* customization project.
7.  In the navigation pane of the Customization Project Editor, click **Modern UI Files**. The [Modern UI Files](../UserGuide/AU_20_46_00.md) \(AU204600\) page opens.
8.  On the page toolbar, click **Add New Record**.
9.  In the **Add Files** dialog box, select `RS301000_PhoneRepairShop_RecordInsights.ts` and click **Save**.

**Tip:** You can open a TypeScript file of a form:

-   On the [Modern UI Files](../Shared/../UserGuide/AU_20_46_00.md) page of the Customization Project Editor.
-   In the `FrontendSources\screen\src\development\screens` folder of your Acumatica ERP instance. \(The files appear in the file system if you click **Export to Development Folder** on the toolbar of the [Modern UI Files](../Shared/../UserGuide/AU_20_46_00.md) page.\)

## Step 4: Adding the Custom Control to the Form

In this step, you'll create an HTML extension of the Repair Work Orders \(RS301000\) form. In this extension, you'll add the Record Insights panel. You'll then bind this custom control's properties to the attached fields you declared in the `RSSVWorkOrderEntry` graph and exposed in the `RS301000_PhoneRepairShop_RecordInsights.ts` extension file.

Do the following:

1.  In the `FrontendSources\screen\src\development\screens\RS\RS301000\extensions` folder of your instance file, create the `RS301000_PhoneRepairShop_RecordInsights.html` extension file.

2.  In the `RS301000_PhoneRepairShop_RecordInsights.html` file, add the following code.

    ```xml
    <template>
      <require from="controls/record-insights-panel/record-insights-panel"></require>
      <record-insights-panel
        before="#form-Order"
        title="Repair Work Order Insights"
        status.bind="WorkOrders.PanelStatus.value"
        warning-message.bind="WorkOrders.PanelWarningMessage.value"
        details.bind="WorkOrders.PanelDetails.value"
        accent.bind="WorkOrders.PanelAccent.value">
      </record-insights-panel>
    </template>
    ```

    In the code above, you’ve added the Record Insights panel, and you’ve specified that the custom control should appear before the Summary area of the Repair Work Orders \(RS301000\) form by specifying `before="#form-Order"`. This is the ID of the `<qp-template>` tag in the `RS301000.html` file of the form. You have also bound the properties of the custom control to the attached fields that are exposed by the `WorkOrders` data view.

    **Tip:** For simplicity, the value of the title property of the control is hard-coded in this example.

3.  Add the `RS301000_PhoneRepairShop_RecordInsights.html` file to the customization project by performing actions similar to Instructions 6–9 of the previous step.
4.  Publish the customization project.

**Parent topic:**[Creating Custom Frontend Controls for the Modern UI](../DeveloperGuide/UIDev_CustomModernUIControls_Mapref.md)

