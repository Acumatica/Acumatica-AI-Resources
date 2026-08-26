# To Use a Button in a Dialog Box {#_51384199-a50a-48b0-b2c5-fc687d937750 .concept}

In a dialog box, you can create buttons of the following types:

-   A standard button that invokes no method but closes the dialog box and returns a specified predefined value, which can be processed by the method that has opened the dialog box

    **Note:** To arrange buttons in a horizontal row with right alignment in a dialog box, we recommend that you use the PXPanel container with the SkinID property set to *Buttons*.

-   A button that invokes a method of the graph that provides business logic for the form

To add a standard button to a PXPanel container of a dialog box, perform the following actions:

1.  Add the button to a PXPanel container, as described in [To Add Another Supported Control](CG_GL_UI_PXForm_AddStControl.md).
2.  In the Control Tree of the Screen Editor, select the node of the new button.
3.  Click the **Layout Properties** tab item to open the list of properties for the button.
4.  Specify values for the following properties:
    1.  DialogResult: Specify the value that is returned when the button closes the dialog box. Set the property to one of the following values defined in the WebDialogResult enumerator.

        |Value|Description|
        |-----|-----------|
        |*OK*|The user clicked a button with the DialogResult property set to *OK*.|
        |*Cancel*|The user clicked a button with the DialogResult property set to *Cancel*.|
        |*Abort*|The user clicked a button with the DialogResult property set to *Abort*.|
        |*Retry*|The user clicked a button with the DialogResult property set to *Retry*.|
        |*Ignore*|The user clicked a button with the DialogResult property set to *Ignore*.|
        |*Yes*|The user clicked a button with the DialogResult property set to *Yes*.|
        |*No*|The user clicked a button with the DialogResult property set to *No*.|

        When the user clicks the added button, the dialog box is closed, and the specified value is returned to the method that has opened the dialog box.

    2.  Text: Specify the text to be displayed on the button.

        **Note:** In the Text property of a standard button, you can define any text, regardless of the value of the DialogResult property.

5.  Click **Save** to save changes in the customization project.

The following ASPX code snippet creates a panel with two standard buttons arranged a horizontal row with right alignment.

```
<px:PXPanel ... SkinID="Buttons">
  <px:PXButton ... DialogResult="OK"     Text="Next" />
  <px:PXButton ... DialogResult="Cancel" Text="Return" />
</px:PXPanel>
```

If you need to include in the same dialog box a button that invokes a method of the graph, you can add the button to the same PXPanel container and set the button properties as described in [To Use a Button to Invoke a Method](CG_GL_UI_PXButton_ForAction.md).

**Parent topic:**[Button \(PXButton\)](../CustomizationPlatform/CG_GL_UI_PXButton.md)

