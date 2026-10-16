# Code Editor

Page ID: \(AU204000\)

On this page, you can develop, view, and edit the customization code that has been added to the project. The name that appears on the page is *Code Editor:* followed by the object name of the *Code* item whose code you are viewing.

**Tip:** You open the Code Editor for any *Code* item by clicking the link in the table on the [Code](AU_20_40_00.md) page or by clicking its name under **Code** in the navigation pane. You can also open the Code Editor from an Acumatica ERP form by clicking **Customization** &gt; **Inspect Element** to open the **Element Properties** dialog box, and then clicking **Actions** &gt; **Customize Business Logic**.

## Page Toolbar

The page toolbar includes standard and page-specific buttons and commands. The page-specific commands are listed in the following table.

<table id="_e8293a69-7ecc-4c8b-9076-8aff7e0494c7"><thead><tr><th>

Button

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Move to Ext. Library**

</td><td>

Launches the operation that converts the current *Code* item into a file of customization code, adds the file to the extension library project in Microsoft Visual Studio, and removes the item from the customization project. See the [To Move a Code Item to the Extension Library](../CustomizationPlatform/CG_GL_Items_Code_MovingToLib.md) for details.

 **Attention:** The customization project must be bound to an existing extension library project in Visual Studio before you click the **Move to Ext. Library** button. See [Customization Project Editor](SM_20_45_10.md) for details.

</td></tr><tr><td>

**New Action**

</td><td>

Opens the **Create Action** dialog box, which you can use to create a code template for a new action.

</td></tr><tr><td>

**Open Screen**

</td><td>

Opens the form bound to the business logic controller if you are editing the customization code of the business logic executed for a form.

</td></tr><tr><td>

**Override Method**

</td><td>

Opens the **Select Methods to Override** dialog box, which you can use to select multiple virtual methods of the graph to override.

</td></tr><tr><td>

**View Source**

</td><td>

Opens the Source Code Browser \(see [Source Code](SM_20_45_70.md)\) with the original source code of the graph if you are editing the customization code of the business logic executed for a form.

</td></tr></tbody>
</table>

<table id="_1dec14f5-7c47-4d72-8bc0-c0c08d8365c5"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Action Name**

</td><td>

The name of the action delegate method.

</td></tr><tr><td>

**Display Name**

</td><td>

The name of the action that will be displayed on the applicable Acumatica ERP form.

</td></tr><tr><td colspan="2">

This dialog box has the following buttons.

</td></tr><tr><td>

**OK**

</td><td>

Adds the template of the action declaration to the graph extension and closes the dialog box.

</td></tr><tr><td>

**Cancel**

</td><td>

Closes the dialog box without any changes.

</td></tr></tbody>
</table>

<table id="_fd13e088-85bd-4d7f-a19f-6e26fc701f04"><thead><tr><th>

Column

</th><th>

Description

</th></tr></thead><tbody><tr><td colspan="2">

The table in the dialog box contains the following columns.

</td></tr><tr><td>

**Selected**

</td><td>

A check box that you select to indicate that the virtual method will be overridden in the graph extension.

</td></tr><tr><td>

**Type**

</td><td>

The identifier of the class type that contains the declaration of the virtual method.

</td></tr><tr><td>

**Method**

</td><td>

The signature of the virtual method.

</td></tr><tr><td colspan="2">

This dialog box has the following buttons.

</td></tr><tr><td>

**Save**

</td><td>

Adds to the graph extension a template of an overridden method for each method selected in the table.

</td></tr><tr><td>

**Cancel**

</td><td>

Closes the dialog box without any changes.

</td></tr></tbody>
</table>

## Source Code Pane

You use the Source Code pane of the Code Editor page to view and edit the code for the *Code* item that you opened from the navigation pane or the [Code](AU_20_40_00.md) page.

