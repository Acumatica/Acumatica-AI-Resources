# To Use a Button to Invoke a Method {#_16bf4602-b474-4cb4-8394-de9b09d5adab .concept}

You can use the PXButton element on a form to invoke a method of the graph that provides business logic for the form.

To include in a container a button that invokes a method of the graph, perform the following actions:

1.  Open the container in the Screen Editor, as described in [To Open a Container in the Screen Editor](CG_GL_UI_PXForm_ToOpen.md).
2.  Add the button to the container, as described in [To Add Another Supported Control](CG_GL_UI_PXForm_AddStControl.md).
3.  In the Control Tree of the Screen Editor, select the node of the new button.
4.  Click the **Layout Properties** tab item to open the list of properties for the button.
5.  Specify values for the following properties:
    1.  CommandSourceID: Set the property to the value specified in the ID property of the PXDataSource control.
    2.  CommandName: In the property, specify the name of the method to be invoked when the user clicks the button on the form.

        **Note:** The method must be defined in the graph that is specified in the TypeName property of the PXDataSource control.

    3.  Text: Specify the text to be displayed on the button.
6.  Click **Save** to save your changes to the customization project.

The following ASPX code creates a button that invokes the *MethodName* method referenced in the PXDataSource control with the ID property set to *ds*.

```
<px:PXButton ... CommandName="MethodName" CommandSourceID="ds" Text="ButtonText" />
```

**Parent topic:**[Button \(PXButton\)](../CustomizationPlatform/CG_GL_UI_PXButton.md)

