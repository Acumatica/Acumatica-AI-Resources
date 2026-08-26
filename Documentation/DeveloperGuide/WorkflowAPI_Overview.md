# Getting Started with Workflow API: General Information {#_cde7606c-6fb8-47ce-ac36-2bf2bf474cc5 .concept}

A workflow is a depiction of the ways the state of a record created on a particular form changes as a result of specific user interactions on the form and other events. You can use Workflow API to design and tailor the workflows of forms to meet your company's needs.

## Learning Objectives { .section}

In this topic, you will learn what workflows are and how you can use them.

## Applicable Scenarios { .section}

You might need to create or customize workflows if the movement of records in the company follows an established sequence of operations. By customizing predefined workflows to represent this sequence, you can automate the company’s processes, which can speed the processing of records. You may want to instead develop new workflows if the predefined workflows are not similar enough to the way the entity is processed in your company or the form does not already have a workflow.

## Advantages of Workflows { .section}

Workflows provide the following advantages over the previous approaches:

-   **Shorter, more readable code:**You can use Workflow API to declaratively describe complicated logic that was previously in RowSelected event handlers. This makes it much easier to understand the structure and modify the logic—for example, to enable an action for a particular status.
-   **Support for no-code customization:**When you implement logic by using Workflow API, users \(customizers\) can later view and customize it from the Customization Project Editor without coding.
-   **Custom actions without changing graph code:** With Workflow API, you can define actions without changing the graph code. Such actions are created within the workflow. Users \(customizers\) can even create workflow actions in the Customization Project Editor without coding.
-   **Conditions:** Workflows introduce conditions. You can change action and field properties dynamically depending on conditions.
-   **No-code dialog boxes:** Worfklows introduce a type of dialog boxes that does not require additional code in the graph or on the frontend.

Compared to automation steps, workflows are much easier to modify—for example, when adding a new state. Also, when a default workflow is updated, you can still apply customizations of the workflow unless they introduce breaking changes.

## States and Transitions { .section}

A workflow can be described as a state machine, with transitions showing the movement of the record through its processing in the system as the corresponding work is performed in the company. For example, a workflow can involve the changing of the status of an opportunity based on user interactions on the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form to reflect the progress made with the potential customer that represents an opportunity.

For details on defining states, see [Defining Workflow States](WorkflowAPI_States_Mapref.md). For details on defining transitions, see [Implementing Transitions](WorkflowAPI_Transitions_Mapref.md).

## Actions and Fields {#_025b02b6-bc0f-4e7e-b05b-82809bc22cba .section}

You can configure action and field properties for a form and its workflows at the same time, depending on the conditions specified for the form when a record is in any workflow state or in a particular workflow state. For details on actions and their properties, see [Implementing Workflow Actions](WorkflowAPI_Actions_Mapref.md).

## Conditions { .section}

Conditions can be used in the properties of actions and fields at the form level \(that is, for all workflows of a particular form\). At the workflow level, conditions can be used to determine whether transitions are performed. Also, conditions can be used to determine whether actions are performed automatically. For details on defining and using conditions, see [Defining Conditions](WorkflowAPI_Conditions_Mapref.md).

## Customization and Creation of Workflows { .section}

You can customize predefined workflows for forms that have them; the resulting customized workflows are sometimes referred to as *inherited* because they inherit all modifications of the predefined workflow. You can also create custom workflows that are not based on existing workflows. For details on customizing a predefined workflow, see [Customizing a Predefined Workflow](WorkflowAPI_CustomizingExistingWorkflow_Mapref.md).

You can define a single workflow for the whole form or multiple workflows, one for a record with each value of the specific field that identifies the workflow state, such as the record type. You can configure the settings, such as field properties, conditions, and actions, for the whole form. For each of the workflows of the form, you can specify the properties of actions and fields for every workflow state. These properties determine the appearance of the form when the record is in a particular workflow state.

