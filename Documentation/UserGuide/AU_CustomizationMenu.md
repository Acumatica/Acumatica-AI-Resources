# Customization Menu

You can access the **Customization** menu on the form title bar of an opened Acumatica ERP form if your user account is assigned the *Customizer* role. \(For details, see [To Assign the Customizer Role to a User Account](../CustomizationPlatform/CG_GL_Stages_Role.md).\)

**Tip:** You click **Customization** on the form title bar to access the customization-related menu commands associated with the form, as shown in the following screenshot.


## Menu Commands

You can use the following customization-related menu commands.

<table id="_fb7f915d-2585-4a85-b2fc-0ff3bb95d85b"><thead><tr><th>

Command

</th><th>

Description

</th></tr></thead><tbody><tr><td>

**Select Project**

</td><td>

Opens the **Select Customization Project** dialog box, which you use to select an existing customization project or to specify the name of a new project for all modifications that you are going to perform.

</td></tr><tr><td>

**Inspect Element**

</td><td>

Launches the [Element Inspector](AU_ElementInspector.md), so that you can select a UI control on the current form and open the **Element Properties** dialog box for the selected control. You use this dialog box to inspect and customize the control.

 **Tip:** You can use the keyboard shortcut Ctrl+Alt+Click to inspect elements on pop-up windows and dialog boxes.

 If you have selected a customization project, all the modifications that you initiate in the inspector will be added to this current project. Otherwise, the Element Inspector opens the **Select Customization Project** dialog box.

</td></tr><tr><td>

**Manage User-Defined Fields**

</td><td>

Opens the [Edit User-Defined Fields](cs_20_50_20.md) \(CS205020\) form, where you can select user-defined fields for the current form from the previously defined list of attributes and user-defined fields \(for details, see [Managing Attributes and User-Defined Fields](CS__con_Attributes_and_User_Defined_Fields.md)\).

 This command appears only on data entry forms and reports.

 For details on how to add user-defined user fields, see [To Add User-Defined Fields to a Form](Admin_HOW_AddUserField.md).

</td></tr><tr><td>

**Edit Project**

</td><td>

Opens the Customization Project Editor for the currently selected customization project.

</td></tr><tr><td>

**Manage Customizations**

</td><td>

Opens the [Customization Projects](SM_20_45_05.md) \(SM204505\) form.

</td></tr><tr><td>

**Show State Diagram**

</td><td>

Opens the **State Diagram** dialog box, which contains the workflow diagram for the selected form and the **Customize Workflow** button.

 If you click the **Customize Workflow** button, the system opens the **Select Customization Project** dialog box. In this dialog box, you select an existing customization project \(or click **New** and then specify the name of the customization project to be created in the **New Project** dialog box\) and click **OK**. This opens the Customization Project Editor, so that you can modify the workflow for the current form. For details, see [Workflow Creation: General Information](../DeveloperGuide/WorkflowUI_CreatingWorkflow_GeneralInfo.md) and [Diagram View: General Information](../DeveloperGuide/WorkflowUI_CustomizingInheritedWorkflow_GeneralInfo.md).

 If you have only one customization project, the system opens the Customization Project Editor for this project after you click **Customize Workflow**, without displaying the **Select Customization Project** dialog box.

 **Tip:** This command is displayed for forms with workflows without composite states.

</td></tr></tbody>
</table>

<table id="_6adfabb5-9264-4273-938a-db4a41510b1c"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td colspan="2">

The dialog box has the following element.

</td></tr><tr><td>

**Project Name**

</td><td>

Provides the ability to select an existing customization project.

</td></tr><tr><td colspan="2">

The dialog box has the following buttons.

</td></tr><tr><td>

**OK**

</td><td>

Confirms your selection and closes the dialog box.

</td></tr><tr><td>

**Cancel**

</td><td>

Cancels the operation and closes the dialog box.

</td></tr><tr><td>

**New**

</td><td>

Opens the **New Project** dialog box, where you can create a new project.

</td></tr></tbody>
</table>

<table id="_74e3cbad-a7f5-4bb1-851c-86c05bf062fd"><thead><tr><th>

Element

</th><th>

Description

</th></tr></thead><tbody><tr><td colspan="2">

The dialog box has the following element.

</td></tr><tr><td>

**Project Name**

</td><td>

The name of the customization project you are creating.

 **Tip:** The customization project name is used as the namespace if you create an extension library from the project. The first character of the name must be a letter or the underscore symbol.

</td></tr><tr><td colspan="2">

The dialog box has the following buttons.

</td></tr><tr><td>

**OK**

</td><td>

Creates an empty customization project with the specified name and closes the dialog box.

 **Tip:** As soon as you click **OK**, the system creates a customization project in the database.

</td></tr><tr><td>

**Cancel**

</td><td>

Closes the dialog box without creating a customization project.

</td></tr></tbody>
</table>

