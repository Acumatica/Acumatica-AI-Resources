# Workflow Dialog Boxes: Configuration of the Layout {#_aaaa6b54-753c-4f9d-b0a8-fdc9f165455a .concept}

You can configure the layout of controls in a workflow dialog box in the following ways:

-   Split controls into multiple columns by calling the ColumnsCount method in a workflow dialog box configuration.

    By default, all controls are displayed in a single column.

-   Span multiple columns of a control by calling the ColumnSpan method in the configuration of a field in the workflow dialog box.
-   Specify the size of a control by calling the ControlSize method in the configuration of a field in the workflow dialog box.
-   Arrange the order of controls by calling the PlaceBefore and PlaceAfter methods in the configuration of a field in the workflow dialog box.

    These methods may be useful if you are updating a workflow dialog box in a predefined workflow. By default, all fields are displayed in the order in which they are added to the dialog box.


**Parent topic:**[Implementing Workflow Dialog Boxes](../DeveloperGuide/WorkflowAPI_DialogBox_Mapref.md)

