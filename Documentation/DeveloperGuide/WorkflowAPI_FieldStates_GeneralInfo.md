# Field States: General Information {#_d23ef630-ba57-4a55-b6cf-f98eec74f804 .concept}

You can configure the states of fields, including default values and appearance, in a screen configuration.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Add a field state to a screen configuration
-   Specify the default value of a field
-   Specify the set of values for a combo box field

## Applicable Scenarios { .section}

You define field states in a screen configuration when you need to configure the properties of this field for all workflows of a form.

## Adding or Updating of a Field State { .section}

To add a state of a field to a screen configuration or update the state, you call the WithFieldStates method in the screen configuration \(that is, in the AddScreenConfigurationFor or UpdateScreenConfigurationFor method\). Inside the WithFieldStates method, you can do the following:

-   Add a field state by calling the Add method
-   Update a field state by calling the Update method
-   Replace the entire configuration of the field state by calling the Replace method
-   Delete the entire configuration of the field state by calling the Remove method

## Configuration of a Field State {#_fc3c7d35-b915-4583-a4b0-09de92768057 .section}

You can configure a field state in the following ways:

-   Configure the appearance and requirement of the field depending on a condition by calling the following methods:
    -   IsHiddenWhen
    -   IsDisabledWhen
    -   IsRequiredWhen
-   Make a field hidden, disabled, or required by calling the respective method:

    -   IsHiddenAlways
    -   IsDisabledAlways
    -   IsRequiredAlways
    These methods may be useful to edit the properties of a field from a predefined screen configuration.

-   Add a combo box value by calling one of the following methods:
    -   SetComboValue
    -   SetComboValues
-   Specify a default value for the field by calling one of the following methods:

    -   WithDefaultValue

        This method allows the developer to specify the exact value.

    -   WithDefaultExpression

        This method allows the developer to provide a BQL expression that determines the proper value.

    An example of the use of this method is shown in the following code.

    ```
    context.AddScreenConfigurationFor(screen =>
    {
      return screen
        .StateIdentifierIs<CRCase.status>()
        .AddDefaultFlow(DefaultCaseFlow)
        ...
        .WithFieldStates(fields =>
        {
          fields.Add<CRCase.resolution>(field => field
            .SetComboValues(
              (_reasonRejected, "Rejected"),
              (_reasonResolved, "Resolved"),
              ...
              (_reasonUnassigned, "Unassigned"),
              (_reasonAssigned, "Assigned"),
              (_reasonUpdated, "Updated"))
            **.WithDefaultValue\("Assigned"\)**);
        })
    });
    ```

    In the code above, the `CRCase.resolution` field is added to the screen configuration. The default value of the field is specified in the WithDefaultValue method.

    **Note:** If a field has combo box values, the default value should be one of the values listed in the SetComboValues method.


**Parent topic:**[Configuring Field States](../DeveloperGuide/WorkflowAPI_FieldStates_Mapref.md)

