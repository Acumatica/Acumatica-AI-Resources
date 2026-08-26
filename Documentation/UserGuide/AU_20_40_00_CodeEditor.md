# Code Editor {#_c2678973-d557-47d4-b8ee-9dd69f55b465 .reference}

Page ID: \(AU204000\)

On this page, you can develop, view, and edit the customization code that has been added to the project. The name that appears on the page is *Code Editor:* followed by the object name of the *Code* item whose code you are viewing.

**Tip:** You open the Code Editor for any *Code* item by clicking the link in the table on the [Code](AU_20_40_00.md) page or by clicking its name under **Code** in the navigation pane. You can also open the Code Editor from an Acumatica ERP form by clicking **Customization** &gt; **Inspect Element** to open the **Element Properties** dialog box, and then clicking **Actions** &gt; **Customize Business Logic**.

## Page Toolbar { .section}

The page toolbar includes standard and page-specific buttons and commands. The page-specific commands are listed in the following table.

|Button|Description|
|------|-----------|
|**Move to Ext. Library**|Launches the operation that converts the current *Code* item into a file of customization code, adds the file to the extension library project in Microsoft Visual Studio, and removes the item from the customization project. See the [To Move a Code Item to the Extension Library](../CustomizationPlatform/CG_GL_Items_Code_MovingToLib.md) for details.

 **Attention:** The customization project must be bound to an existing extension library project in Visual Studio before you click the **Move to Ext. Library** button. See [Customization Project Editor](SM_20_45_10.md) for details.

|
|**New Action**|Opens the **Create Action** dialog box, which you can use to create a code template for a new action.|
|**Open Screen**|Opens the form bound to the business logic controller if you are editing the customization code of the business logic executed for a form.|
|**Override Method**|Opens the **Select Methods to Override** dialog box, which you can use to select multiple virtual methods of the graph to override.|
|**View Source**|Opens the Source Code Browser \(see [Source Code](SM_20_45_70.md)\) with the original source code of the graph if you are editing the customization code of the business logic executed for a form.|

|Element|Description|
|-------|-----------|
|**Action Name**|The name of the action delegate method.|
|**Display Name**|The name of the action that will be displayed on the applicable Acumatica ERP form.|
|This dialog box has the following buttons.|
|**OK**|Adds the template of the action declaration to the graph extension and closes the dialog box.|
|**Cancel**|Closes the dialog box without any changes.|

|Column|Description|
|------|-----------|
|The table in the dialog box contains the following columns.|
|**Selected**|A check box that you select to indicate that the virtual method will be overridden in the graph extension.|
|**Type**|The identifier of the class type that contains the declaration of the virtual method.|
|**Method**|The signature of the virtual method.|
|This dialog box has the following buttons.|
|**Save**|Adds to the graph extension a template of an overridden method for each method selected in the table.|
|**Cancel**|Closes the dialog box without any changes.|

## Source Code Pane { .section}

You use the Source Code pane of the Code Editor page to view and edit the code for the *Code* item that you opened from the navigation pane or the [Code](AU_20_40_00.md) page.

