# Element Inspector {#_5f9d2d33-1a33-4edd-8629-3100d2020335 .reference}

For any visual element on a form, you can use the Element Inspector to do the following:

-   View information about the element, such as its control type, data access class, data field, data view, business logic controller, actions \(if applicable\), and drop-down control values
-   View the ASPX source code with the UI control for the inspected element
-   View the HTML source code with the layout definition of the UI control for the inspected element
-   View the TypeScript source code with the presentation logic of the UI control for the inspected element
-   View the source code of the data access class that provides data for the inspected element
-   View the source code of the business logic executed for the inspected element
-   Start the customization of the inspected element

**Tip:** While you are viewing a form, you can activate the Element Inspector from the [Customization Menu](AU_CustomizationMenu.md). If you need to activate the Element Inspector for a pop-up panel, dialog box, or other UI element for which the **Customization** menu is unavailable, you can press Control+Alt.

After the Element Inspector is activated, the ![](Images/AU_ElementInspector_help_cursor.png) cursor indicates that you can select a UI element to inspect it. If you click an element, the Element Inspector opens the [Element Properties Dialog Box](AU_ElementInspector.md#_8ce780b0-243f-480c-8b4c-ed6431116e3f) for the element.

**Tip:** In the Modern UI, you can use the [Element Inspector](AU_ElementInspector.md) tool if you have one of the following:

-   The *Customizer*, *Administrator*, or *ReportDesigner* role
-   At least *View Only* access rights to the [Generic Inquiry](SM_20_80_00.md) \(SM208000\), [Import Scenarios](SM_20_60_25.md), or [Export Scenarios](SM_20_70_25.md) \(SM207025\) form

## Element Properties Dialog Box {#_8ce780b0-243f-480c-8b4c-ed6431116e3f .section}

The Element Inspector opens the **Element Properties** dialog box when you have selected a UI element to inspect. The dialog box contains the following elements.

|Element|Description|
|-------|-----------|
|**Control Type**|The type of the inspected UI element.|
|**Data Class**|The name of the DAC to which the field for the inspected element belongs.|
|**Data Field**|The string value of the DataField property of the inspected UI element. \(It corresponds to the name of the field in the DAC.\)|
|**View Name**|The name of the data view that provides data for the inspected UI element.|
|**Business Logic**|The name of the BLC bound to the form.|
|**Description**|The description of the inspected UI element. When you click *More*, the system opens a pane that partially overlaps the working area of the screen and contains the complete element's description.|
|**Action Name**|The name of the action of the inspected toolbar button or menu command.|
|The dialog box has the following buttons.|
|**Drop-Down Values**|Opens the **Drop-Down Values** dialog box, which lists all possible values of the control and the corresponding values that are saved to the database.

 **Tip:** The button is displayed only if you have selected a drop-down control.

|
|**Customize**|Launches the Customization Project Editor, which opens on the [Screen Editor](AU_20_45_20.md)page for the form that contains the inspected element.

 This button appears if you have the *Customizer* role.

|
|**Actions**|Opens the **Actions** menu with the following commands:

 -   **Customize Business Logic**: Creates a graph extension template for the BLC that is bound to the form, adds the template code to the customization project, and opens the Customization Project Editor on the [Code Editor](AU_20_40_00_CodeEditor.md) page, which loads the BLC extension template so that you can edit it.
-   **Customize Data Fields**:

Opens the Customization Project Editor on the [Data Class](AU_DataClassEditor.md) page so that you can customize the inspected element attributes in the **Edit Attributes** area.

-   **View ASPX Source**: Opens the **Screen ASPX** tab of the [Source Code](SM_20_45_70.md) browser with the ASPX source code of the current form.
-   **View HTML Source**: Opens the **Screen HTML** tab of the [Source Code](SM_20_45_70.md) browser with the HTML source code of the current form.
-   **View TypeScript Source**: Opens the **Screen TypeScript** tab of the [Source Code](SM_20_45_70.md) browser with the TypeScript source code of the current form.
-   **View Business Logic Source**: Opens the **Business Logic** tab of the [Source Code](SM_20_45_70.md) browser with the source code of the BLC that is bound to the form.
-   **View Data Class Source**: Opens the **Data Access** tab of the [Source Code](SM_20_45_70.md) browser with the source code of the DAC to which the field for the inspected element belongs.

 This button appears if you have the *Customizer* role.

|
|**Cancel**|Cancels the inspection of the element and closes the dialog box.|

**Tip:** If you open the Customization Project Editor or the [Source Code](https://help-2022r2.acumatica.com/(W(387))/Wiki/ShowWiki.aspx?wikiname=HelpRoot_Dev_CustomizationToolReference&PageID=2e58bb02-40c0-47c6-8cea-78607cccc4e1) browser, you can access any source code of the website—not only the source code of the inspected element and the current form, DAC, and BLC.

## Drop-Down Values Dialog Box { .section}

In the dialog box, you can view all possible values of the selected drop-down control and the corresponding values that are saved to the database. For details on the internal names of drop-down control values, see [Combo Box: Configuration](../DeveloperGuide/UIDevRef_ComboBox_Configuration.md).

You open this dialog box by clicking **Drop-Down Values** in the **Element Properties** dialog box. The dialog box contains the following elements.

|Element|Description|
|-------|-----------|
|**Value**|The internal value of the drop-down control that is saved to the database.|
|**Description**|The display name that will be shown in the drop-down box for the selected field.|
|The dialog box has the following button.|
|**Close**|Closes the dialog box.|

