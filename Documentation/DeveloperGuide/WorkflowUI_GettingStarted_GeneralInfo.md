# Getting Started with Workflows: General Information {#_7f95facd-7331-45f0-9424-e05082f900d1 .concept}

A workflow is a depiction of the ways the state of a record created on a particular Acumatica ERP form changes as a result of specific user interactions on the form and other events. You can use the pages of the Customization Project Editor to create and customize workflows.

## Learning Objectives { .section}

In this lesson, you will learn what workflows are and how you can use them.

## Applicable Scenarios { .section}

You might need to use workflows if the movement of records in the company follows an established sequence of operations. By customizing predefined workflows to align with this sequence, you can speed up the processing of records and automate the needed steps in the company's processes. You may want to instead develop custom workflows if the predefined workflows are not similar enough to the way the record is processed in your company or the form does not already have a workflow.

## Customization of Workflows { .section}

You can customize predefined workflows for forms that have them; the resulting workflows are referred to as *customized* or *inherited*. You can also create *custom* workflows, which are not based on existing workflows, for any form.

You can define a single workflow for the whole form or multiple workflows, one for a record with each value of a specific field, such as a record type. For the whole form, you can configure the settings, such as field properties, conditions, and actions. For each of the workflows of the form, you can configure the properties of actions and fields for every state \(status\) the record can have. These properties determine the appearance of the form when the record has a particular status.

## States and Transitions { .section}

A workflow can be described as a state machine, with transitions showing the movement of the record through its processing in the system as the corresponding work is performed in the company. For example, a workflow can involve the changing of the status of an opportunity based on user interactions on the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form to reflect the progress made with the potential customer that represents an opportunity.

For details on transitions, see [Conditions and Transitions: General Information](WorkflowUI_ConditionsTransitions_GeneralInfo.md).

## Actions and Fields {#_025b02b6-bc0f-4e7e-b05b-82809bc22cba .section}

An action of the workflow generally represents a button \(or the related command on the More menu\) on an Acumatica ERP form, while a field of the workflow is usually a box or a check box on a form. You can configure the action and field properties for a form and its workflows. The properties of actions and fields can depend on the conditions specified for the form when a record has any state or has a particular state. The action properties indicate whether the button \(or the related command on the More menu\) is visible and whether it is enabled. The field properties indicate whether the box is visible, whether it is enabled, and whether it is required.

If a field is disabled, hidden, or required at the workflow level or at the form level \(that is, for all workflows of a particular form\), the corresponding box becomes unavailable, hidden, or required, respectively, on the Acumatica ERP form. If an action is disabled or hidden at one of these levels, the related button or command on the More menu becomes unavailable or hidden, respectively, on the Acumatica ERP form.

## Conditions { .section}

Conditions can be used in the properties of actions and fields at the form level \(that is, for all workflows of a particular form\). At the workflow level, conditions can be used to determine whether transitions are performed. Also, conditions can be used to determine whether actions are performed automatically.

**Parent topic:**[Getting Started with Workflows](../DeveloperGuide/WorkflowUI_GettingStarted_Mapref.md)

