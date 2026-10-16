# Case Submittal to Internal Teams: Implementation Checklist

The following sections provide details you can use to ensure that the system is configured properly for submitting internal cases to IT, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist

To make it possible for employees to submit cases to internal teams, you must properly implement the basic CRM configuration. Make sure that the necessary features have been enabled, entities have been created, and settings have been specified, as described in the following checklist.

<table id="_75f5a845-9a95-409c-9ffd-7c022ec672dc"><thead><tr><th>

Form

</th><th>

Criteria to Check

</th></tr></thead><tbody><tr><td>

[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)

</td><td>

The following features have been enabled:-   *Customer Management*: This feature provides the customer relationship management \(CRM\) functionality.
-   *Case Management* in the *Customer Management* group of features: With this feature enabled, internal cases can be created and the appropriate personnel can assign cases to owners and process them.

</td></tr><tr><td>

[Customer Management Preferences](CR_10_10_00.md) \(CR101000\)

</td><td>

The default settings have been saved to the system, as described in [Basic Customer Relationship Management](../ImplementationGuide/config_CRM_Basic_Mapref.md).

</td></tr><tr><td>

[Case Classes](CR_20_60_00.md) \(CR206000\)

</td><td>

At least one case class has been created, as described in [Defining Case Classes](CRM_Case_Classes_Mapref.md), with the **Allow Selecting Employee as Case Contact** check box selected on the **Details** tab.

</td></tr><tr><td>

[Employee Classes](EP_20_20_00.md) \(EP202000\)

</td><td>

The needed employee classes have been created with the necessary settings and attributes.

</td></tr><tr><td>

[Employees](EP_20_30_00.md) \(EP203000\)

</td><td>

Employee records have been created in the system, including for all employees to whom internal cases will be submitted.

</td></tr><tr><td>

[Users](SM_20_10_10.md) \(SM201010\)

</td><td>

User profiles have been created for employees.

</td></tr></tbody>
</table>

## Validation of Configuration

To make sure that all configuration has been performed correctly, we recommend that in your system, you perform instructions similar to those described in [Case Submittal to Internal Teams: Process Activity](CRM_Support_Submitting_Cases_to_IT_Activity.md).

**Parent topic:**[Submitting Cases to Internal Teams](../UserGuide/CRM_Support_Submitting_Cases_to_IT_Mapref.md)

