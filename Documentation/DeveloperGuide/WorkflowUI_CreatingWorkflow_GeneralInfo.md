# Workflow Creation: General Information {#_7fb3d840-5e77-4d7b-8e33-2c523bb158b4 .concept}

The process of creating a workflow does not require coding. Instead, you can use pages of the Customization Project Editor, which make it easy to work with the workflow and its components.

Before you can add a workflow, the screen corresponding to the form must be added to the list of customized screens on the [Screens](../UserGuide/AU_20_10_00.md) page. To define a workflow, you use the pages organized under the **Screens** node in the navigation pane of the Customization Project Editor for a particular form.

**Tip:** The term *screen* is generally used to describe what you are creating or customizing in the Customization Project Editor. This term distinguishes the entity you work with here from the resulting form that will be used in Acumatica ERP. However, a form and its corresponding screen are essentially the same thing.

## Learning Objectives { .section}

In this lesson, you will learn how to use the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page, and how to create a workflow from scratch.

## Applicable Scenarios { .section}

You create a workflow when you need to implement a custom business process for an Acumatica ERP form and this form does not have any workflow or has a workflow that does not fit your business processes.

## Creation of a Workflow for a Form {#_615920c3-3637-41ce-a933-dd05c47b1a91 .section}

When you define a workflow for a particular form, you need to do the following:

1.  Determine all possible states of the record that users work with on the particular form, and define those that do not already exist.
2.  For each state, add all actions that can be performed with a record in this state and all transitions associated with each action.
3.  Optional: When an action is invoked, if a user has to provide additional information for the record to transition to a different state, define the dialog boxes that contain the UI elements whose settings should be specified.
4.  Optional: If some modifications to the form elements \(that is, whether they appear, are available, and are required\) are needed, specify which UI elements on the applicable form are shown, enabled, and required for each state of the workflow.
5.  Optional: If some modifications to the form actions are needed, specify which commands on the applicable form should have connotations and should be duplicated on the form toolbar \(in addition to being shown on the More menu\) for each state of the workflow.
6.  Optional: If the values of certain fields should be updated after a transition, add new values for the fields.
7.  Optional: If some modifications to the form fields are needed when the record enters a particular state or when it leaves it, add new values for these fields \(for details, see [Composite States: General Information](WorkflowUI_CompositeStates_GeneralInfo.md)\).
8.  Optional: If certain states have similar properties or can be skipped under certain conditions, add these states to a composite state \(for details, see [Composite States: General Information](WorkflowUI_CompositeStates_GeneralInfo.md)\).

## Creation of Multiple Workflows for a Form { .section}

You can add multiple workflows for a particular form. In this case, each workflow is applied to all records that have a specific value in a particular field, which can thus be described as a *workflow-identifying field* because its value determines the workflow to be used.

For example, for opportunities on the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form, one workflow can be applied to opportunities for which one opportunity class is selected, and another workflow can be applied to opportunities for which another class is selected.

For details on creating or customizing a workflow with workflow-identifying field, see [Workflow-Identifying Fields: General Information](WorkflowUI_WorkflowIdentifying_GeneralInfo.md).

## Primary Pages for Workflow Creation and Editing {#_ae2cc857-4e17-4853-afa9-0a6474b3e6d6 .section}

For any screen that has been added to the [Screens](../UserGuide/AU_20_10_00.md) page, you can use the [Workflows](../UserGuide/AU_20_10_20.md) page to view the workflows and their general settings. \(The table on the page is empty if no workflows have been defined for the screen.\) To open this page, in the navigation pane of the Customization Project Editor, you click **Workflows** under the form ID.

You can click **Add Workflow** on the page toolbar, which opens the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page. This page, which is sometimes called the *Workflow Editor*, is the primary page that you will use when you are developing or modifying a workflow. By clicking **Diagram View** on the page toolbar, you can work with the [Workflow \(Diagram View\)](../UserGuide/AU_20_10_30_VisualEditor.md) page. The diagram view is also referred to as the *Workflow Visual Editor*.

To use the [Workflow \(Tree View\)](../UserGuide/AU_20_10_30.md) page for an existing workflow, you can click the link in the **Workflow Name** column of the [Workflows](../UserGuide/AU_20_10_20.md) page. You can also click the workflow name in the navigation pane under **Workflows** for the screen you are modifying.

## Development of Workflows in an Extension Library { .section}

You can develop and customize workflows not only in the Customization Project Editor but also in Visual Studio by using an extension library. To develop workflows, you should use Workflow API, which is a part of Acumatica Framework. For details, see [Getting Started with Workflow API: General Information](WorkflowAPI_Overview.md).

## Use of a Single Customization Project Vs. Multiple Projects { .section}

You should make all modifications to a form's workflow within a single customization project. This includes modifications to actions, fields, conditions, dialog boxes, and event handlers. If you have multiple customization projects that contain different workflow modifications for the same form, you need to specify the level for each of these projects before you publish them. The system will then apply the changes from the customization project with the highest level and will not apply the changes from other projects. For details about the levels of customization projects, see [Project Publication: General Information](../CustomizationPlatform/CustomizationProjects_PublishingProjects_GeneralInfo.md).

If you want to have multiple customization projects that modify the workflow of the same form, you need to use Workflow API. If you want to apply the changes from different customization projects that modify the same form without Workflow API, you need to combine these changes in a single project. For details, see [Getting Started with Workflow API: General Information](WorkflowAPI_Overview.md).

**Parent topic:**[Creating Workflows](../DeveloperGuide/WorkflowUI_CreatingWorkflow_Mapref.md)

