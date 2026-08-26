# Step 1: Defining a Workflow Dialog Box {#_fe9ffff2-8847-4da1-85ef-a45059924063 .task}

In this step, you will define and configure the **Assign** dialog box.

Do the following:

1.  In the static Configure method of the `RSSVWorkOrderEntry_Workflow` class, define the **Assign** workflow dialog box, as the following code shows.

    ```language-csharp
                // Define the Assign dialog box
                var formAssign = context.Forms.Create("FormAssign", form =>
                    form.Prompt("Assign").WithFields(fields =>
                    {
                    }));
    ```

    In the code above, you have declared the `FormAssign` workflow dialog box with the **Assign** title.

2.  Inside the lambda expression for the WithFields method, add the `Assignee` field, which will be displayed in the dialog box.

    ```language-csharp
                        fields.Add("Assignee", field => field
                           .WithSchemaOf<RSSVWorkOrder.assignee>()
                           .IsRequired()
                           .Prompt("Assignee"));
    ```

    In the code above, you have added the `Assignee` field to the workflow dialog box. You have copied the field configuration from the `RSSVWorkOrder.assignee` field by specifying this DAC field in the WithSchemaOf method. You have specified that the field is required by calling the IsRequired method, and you have specified the UI name of the field in the Prompt method.

3.  Register the dialog box in the screen configuration by calling the WithForms method in the lambda expression for the AddScreenConfigurationFor method, as the following code shows.

    ```language-csharp
                    .WithForms(forms => forms.Add(formAssign))
    ```


**Parent topic:**[Workflow Dialog Boxes: To Implement a Transition with a Dialog Box](../DeveloperGuide/WorkflowAPI_DialogBox_Activity_ImplementTransition.md)

