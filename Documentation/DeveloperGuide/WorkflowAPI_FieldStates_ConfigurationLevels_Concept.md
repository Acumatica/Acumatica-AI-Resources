# Field States: Levels of Configuration {#_0390a164-104e-492a-b45b-62359e389856 .concept}

You can configure a field on the following levels, which are listed in order:

1.  In the definition of a field in a DAC or one of its extensions
2.  In a screen configuration
3.  In a workflow state

Field configurations defined on each level are applied to the next level. For example, if you specified a default value for a field in the PXDefault attribute in a DAC, this value is the default value for this field for the whole screen configuration, and you can change it in the screen configuration. But for some properties \(see the table below\), the configuration specified on the next level can only narrow what has been defined in the previous level.

The following table lists all possible configuration types and the levels where they can be changed.

|Configuration Type|DAC|Screen Configuration|Workflow State|Comment|
|------------------|---|--------------------|--------------|-------|
|Visibility|+|+|+|The condition on the next level can only narrow what has been defined in the previous level.|
|Requirement|+|+|+|
|Availability|+|+|+|
|Specify default value|+|+|+| |
|Specify combo box value|+|+|+|On the workflow state level, you can only restrict the set of values.|

**Parent topic:**[Configuring Field States](../DeveloperGuide/WorkflowAPI_FieldStates_Mapref.md)

