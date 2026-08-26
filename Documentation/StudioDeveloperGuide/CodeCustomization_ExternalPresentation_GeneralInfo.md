# External and Internal Presentation of Field Values: General Information {#_8d0cfb58-fc30-4e77-b416-5b92bc24d816 .concept}

The FieldSelecting and FieldUpdating events transform the field value between the internal and external presentation. To construct the external value presentation that is displayed in the UI, you handle the FieldSelecting event. To compose the internal presentation that is held in the data access class \(DAC\) field, you handle the FieldUpdating event.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Construct the external value presentation that is displayed on a form
-   Compose the internal presentation that is held in the DAC field

## Applicable Scenarios { .section}

You define the external or internal presentation of field values in the following cases:

-   You want to change the way a field value is displayed on a form
-   You want to change the way a field value is held in the DAC field

## FieldSelecting and FieldUpdating Events {#section_vv2_1y4_y4b .section}

The FieldSelecting event is raised when the client requests the DAC field state from the server to display the field value on a form.

The FieldUpdating event is raised every time the UI posts an updated external value to the server.

Every type attribute adds the event handlers for these two events. By default, these event handlers transform the field value between the internal presentation and the external one. However, in the graph, you can define specific event handlers for the FieldSelecting and FieldUpdating events and cancel the execution of the event handlers defined in attributes. Many attributes—such as PXSelector, PXDefault, and PXUIField—handle events in which they add specific information to the field state.

## Internal and External Presentation { .section}

To specify the external presentation of a field value, you assign it to the e.ReturnValue property in the FieldSelecting event handler. To specify the internal presentation of the value, you assign it to the e.NewValue property in the FieldUpdating event handler. For unbound data fields that are displayed only in the UI, you can use only the FieldSelecting event that defines the UI presentation of the value.

The following properties determine the value presentation within the FieldSelecting event:

-   e.ReturnValue defines the current field value, which is the internal value that is held in the DAC field or the external value that is displayed in the control.
-   e.ReturnState defines one of the following:
    -   The field state \(a PXFieldState object\) that provides the set of UI parameters for the control. The UI control obtains all rendering parameters from the field state.
    -   The button state \(a PXButtonState object\) that provides UI parameters for the action. The button state is constructed in the FieldSelecting event handlers of the following attributes: the PXButton attribute, its successors, and the PXUIField attribute defined for the action.

## External Presentation of Null Field Values { .section}

If you only need to specify how the null values of a field are displayed in the UI and you do not need to make any transformations to the external presentation of the valid values of this field, you can simply specify the NullText property for the column corresponding to this field in the ASPX code. In these cases, you do not need to use the FieldSelecting event handler. The following code shows an example.

```
<px:PXGridColumn DataField="LocationID" NullText="<SPLIT>" />
```

The code above indicates that any null values for the `Location ID` field will be displayed as *&lt;SPLIT&gt;* in the corresponding column on the UI.

**Parent topic:**[Defining the External and Internal Presentation of Field Values](../StudioDeveloperGuide/CodeCustomization_ExternalPresentation_Mapref.md)

