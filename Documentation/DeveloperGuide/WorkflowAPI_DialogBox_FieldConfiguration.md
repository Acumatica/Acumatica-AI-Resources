# Workflow Dialog Boxes: Configuration of Fields {#_9b4a5a42-cbb4-4397-a968-2924d40855a2 .concept}

You configure fields of the workflow dialog box as described in the sections below.

## Types of Fields in a Workflow Dialog Box {#_e740fa66-5558-426e-a517-1a08d9083f07 .section}

A workflow dialog box can contain the following types of fields:

-   A custom check box field, which is defined with the WithCheckBoxField method. An example is shown in the following code.

    ```language-csharp
    fields.Add("InspectionPassed", field => field.WithCheckBoxField());
    
    ```

-   A custom combo box field, which is defined with the WithComboBoxField method. The list of combo box values is defined with the ComboBoxValues method. An example is shown in the following code.

    ```language-csharp
    fields.Add("InspectionType", field => 
      field.WithComboBoxField().ComboBoxValues(("M", "Manual"),("A", "Auto")));
    
    ```

-   A field that copies its state from the specified DAC field. It is defined with the WithSchemaOf method. An example is shown in the following code.

    ```language-csharp
    fields.Add("Reason", 
      field => field.WithSchemaOf<RequestForInformation.reason>();
    
    ```

    **Tip:** You can add two dependent fields, such as two fields of PXSelector type, to a workflow dialog box so that the value selected in one field updates the available values in the other field. The relationship between them should be defined in the DAC where they are declared.

-   A rich text box field. It is defined with the WithRichTextEditorField method. An example is shown in the following code:

    ```language-csharp
    fields.Add("Reason", field => field
        .WithRichTextEditorField()    
        .Prompt("Reason")
        .DefaultValue(defaultValue));
    ```

    **Attention:** The WithRichTextEditorField method must be the first method in the line of configuration methods. Also, you cannot use the WithSchemaOf method for the rich text box field.


## Configuration of Fields in a Workflow Dialog Box { .section}

You can configure the parts of a workflow dialog box in the following ways:

-   Specify the label text for each field by calling the Prompt method
-   Specify that the value of any field is required unconditionally by calling the IsRequired method, or that the field is required depending on a condition by calling the IsRequiredWhen method
-   Specify the default value of any field by calling one of the following methods:
    -   DefaultValue
    -   DefaultExpression
    -   DefaultValuefromSchemaField
-   Specify the location of a button on the workflow dialog box by calling one of the following methods:
    -   PlaceBefore
    -   PlaceAfter
-   Hide any field by calling one of the following methods:
    -   IsHiddenWhen

        This method hides a field if a condition is met. When using this method, you provide a condition as a parameter.

        **Attention:** The condition specified in the IsHiddenWhen method is not checked during the mass processing of records.

    -   IsHiddenAlways

        This method hides the field unconditionally. This method may be useful if you need to hide a field in a dialog box of a custom workflow if this field is included in this dialog box in a predefined workflow.


An example of using these methods is shown in the following code.

```language-csharp
.WithForms(forms => {
  forms.Update("FormOpen", form =>
    form.WithFields(fields =>
    {
      fields.Add("Reason", field => field.WithSchemaOf<CROpportunity.resolution>()
        .Prompt("Reason")
        .IsHiddenWhen(hideReason));

      fields.Update("Stage", field => field.WithPrompt("Stage ID").IsHiddenAlways());
    }
  ));						
})
```

In the code above, the FormOpen dialog box has been updated in the following ways:

-   The `Reason` field of the `FormOpen` dialog box has been added; it will be hidden when the `hideReason` condition is *True*.
-   The Stage field is always hidden.

## Configuration of Combo Box Fields { .section}

For a combo box field, you can do the following:

-   Define a set of combo box values by calling the ComboBoxValues method
-   Specify that the set of combo box values of a dialog box field should be taken from a source or target state by calling the ComboBoxValuesSource method. In the method parameter, you should specify from where the values should be taken \(which can be a source state, a target state, or explicit values specified in the workflow dialog box definition\).

    For example, suppose that in a workflow state, a set of values for the `CRLead.resolution` field is specified. The workflow includes a transition where this workflow state is a target state, and a workflow dialog box that is shown during this transition. Further suppose that the workflow dialog box includes the `Reason` field, whose configuration is provided by the `CRLead.resolution` field \(through the use of the WithSchemaOf method\). To specify that the values of the `Reason` field should be taken from the target workflow state of a transition where the workflow dialog box is used, you should use the following code for the workflow dialog box.

    ```language-csharp
    .WithForms(forms => {
      forms.Add("FormOpen", form =>
        form.WithFields(fields =>
        {
          fields.Add("Reason", field => field
            .WithSchemaOf<CRLead.resolution>()
            .IsRequired()
            .Prompt("Reason")
            .ComboBoxValuesSource(ComboBoxValuesSource.TargetState));
        }
      ));						
    })
    ```

-   Add a new value and its display name by calling the ComboBoxValue method.

    You should use this method when updating a field in a predefined workflow dialog box.

-   Restrict the set of predefined combo box values by calling the OnlyComboBoxValues method.

**Parent topic:**[Implementing Workflow Dialog Boxes](../DeveloperGuide/WorkflowAPI_DialogBox_Mapref.md)

