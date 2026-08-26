# Workflow States: Configuration of Field States {#_9febdef1-b4a7-4340-b1e7-9a8c161df4a0 .concept}

You can configure a state of a field in a screen configuration and in a workflow state.

The description of field states in a workflow state is applied after the system applies the description of field states in the screen configuration and in the DAC so the configurations described in the workflow state can override other field state configuration. For example, if a field was visible under a condition in a screen configuration, it can be made invisible in a workflow state.

For details on configuring the state of a field in the screen configuration, see [Configuring Field States](WorkflowAPI_FieldStates_Mapref.md).

## Adding or Updating a State of a Field in a Workflow State { .section}

To add or update a state of a field in a workflow state, you call the WithFieldStates method in a lambda expression for the Add or Update method that defines a workflow state. Inside the WithFieldStates method, you can do the following:

-   Add a single field or all fields from a specified DAC by using the AddField, AddAllFields, or AddTable method. When adding a field, you can specify how the workflow will affect this field in this state.

    For example, the following code adds fields and tables to a workflow state and specifies how these fields and tables should be affected \(in this case, hidden\).

    ```
    .WithFieldStates(fields => { 
      fields.AddField<printed>(c => c.IsHidden());
      fields.AddField<emailed>(c => c.IsHidden());
      fields.AddField<dontEmail>(c => c.IsHidden());
      fields.AddField<dontPrint>(c => c.IsHidden());
    
      fields.AddTable<SOOrder>(c => c.IsHidden());
      fields.AddTable<SOLine>(c => c.IsHidden());
      fields.AddTable<SOLineSplit>(c => c.IsHidden());
      fields.AddTable<SOAddress>(c => c.IsHidden());
    }
    ```

    If you need to add multiple fields or multiple tables, you can use the AddFields, AddAllFieldsFromTables, and AddTables methods. For example, the following code adds the fields and tables from the previous code example by using only two method calls. If the fields and properties have the same configuration, such as being hidden, it can be assigned to all of them in a single method.

    ```
    .WithFieldStates(fields => { 
      fields.AddFields<BqlFields.FilledWith<printed, emailed, dontEmail, dontPrint>>(c => 
        c.IsHidden());
      fields.AddTables<BqlTables.FilledWith<SOOrder, SOLine, SOLineSplit, SOAddress>>(c => 
        c.IsHidden());
    }
    ```

    **Note:** If you need to configure the state of a DAC, use the AddTable or AddTables method. If you need to configure the states of all fields inside the DAC, use the AddAllFields or AddAllFieldsFromTables methods. If you use the AddTable or AddTables method, you can also restrict adding or removing records from the specified tables.

-   Update a field state by calling the Update method.
-   Replace the entire configuration of the field state by calling the Replace method.
-   Delete the entire configuration of the field state by calling the Remove method.

## Configuring a State of a Field in a Workflow State {#_fc3c7d35-b915-4583-a4b0-09de92768057 .section}

You can configure a field state in the following ways:

-   Configure the appearance and requirement of the field \(or all fields in a DAC\) by calling the following methods:
    -   IsHidden
    -   IsDisabled
    -   IsRequired
-   For a combo box field, specify which values of the combo box field should be available by calling the ComboBoxValues method.

    Only the value defined in the state of a field in a screen configuration can be restricted. For details on defining the list of combo box values in a screen configuration, see [Field States: General Information](WorkflowAPI_FieldStates_GeneralInfo.md).

-   Specify a default value for the field by calling the DefaultValue method.

    **Note:** Settings a default value is available only for the initial state of a workflow.


An example of configuring field states in a workflow state is shown in the following code.

```
fss.Add<State.onHold>(flowState =>
{
  return flowState
    .WithFieldStates(states => { 
      states.AddField<dontEmail>(state => 
        state.DefaultValue(true));
      states.AddTable<ARInvoice>(state => 
        state.IsDisabled()); 
    });
});
```

In the example above, field states have been configured in the following ways:

-   The `dontEmail` field has been assigned a default value of *true*.
-   The `ARInvoice` DAC has been disabled.

**Parent topic:**[Defining Workflow States](../DeveloperGuide/WorkflowAPI_States_Mapref.md)

