# Override of a Method: Overriding a Method Through the UI {#_6fa2a444-17b4-42f9-9e6a-64e85167626a .concept}

You can create a template of the override method and edit it in the Customization Project Editor. To override a method, perform the following actions:

1.  Create a graph extension, as described in [Graph Extensions: Creating a Graph Extension Through the UI](CodeCustomization_GraphExtension_CreateInEditor.md).
2.  On the [Code Editor](../UserGuide/AU_20_40_00_CodeEditor.md) page, click **Override Method**. The **Select Methods to Override** dialog box opens.
3.  In the **Selected** column of the dialog box, select the check box for the method to be overridden.
4.  Click **Save** to add the code template for the override method to the graph extension.

Once the override method template has been created, you can implement the needed code within the template.

You can decide whether to call the method pointed to by the delegate. By invoking the base method, you also start the execution of the override method queue.

When you publish the customization project, the platform saves the graph extension as a C\# source code file in the `App_RuntimeCode` folder of the website. You can later develop the method in Microsoft Visual Studio. \(See [Integrating the Project Editor with Microsoft Visual Studio](../CustomizationPlatform/CG_Platform_Studio.md) for details.\)

**Parent topic:**[Overriding a Graph Method](../StudioDeveloperGuide/CodeCustomization_OverrideMethod_Mapref.md)

