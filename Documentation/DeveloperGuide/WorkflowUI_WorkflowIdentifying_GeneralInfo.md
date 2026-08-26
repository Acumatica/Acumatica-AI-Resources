# Workflow-Identifying Fields: General Information {#_9daf8f57-5208-4d30-872f-402b01b18236 .concept}

You can add multiple workflows for a particular form. In this case, each workflow is applied to all records that have a specific value in a particular field. This field is described as a *workflow-identifying field* because its value determines the workflow to be used.

For example, for opportunities on the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form, one workflow can be applied to opportunities for which one opportunity class is selected, and another workflow can be applied to opportunities for which another class is selected.

Both inherited workflows and custom workflows have workflow-identifying fields. An inherited workflow uses the same workflow-identifying field as the predefined workflow does.

## Learning Objectives { .section}

In this chapter, you will gain experience creating a workflow that is based on the specific value of a selected field.

## Applicable Scenarios { .section}

You customize a workflow with a workflow-identifying field if you need to make changes to the workflow so that it is better suited for your business processes, and you do not want to create such a workflow from scratch.

## Workflow Types {#_ae1e964f-6c29-4105-b10a-fd62bb254e21 .section}

A workflow type is a setting on the [Workflows](../UserGuide/AU_20_10_20.md) page that determines the applicable records to which the workflow is applied. The applicable records depend on the particular form for which the workflow is defined. For example, on the [Leads](../UserGuide/CR_30_10_00.md) \(CR301000\) form, leads are the only applicable records, so one workflow for all leads is usually sufficient. On the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, the applicable records include sales orders, invoices, and credit memos, so a separate workflow type should be used for each of these entities.

The table of the [Workflows](../UserGuide/AU_20_10_20.md) page has the **Workflow Type** column. The table of this page contains one row for each workflow, and the row shows the workflow used for records of the type. Thus, for a workflow without a workflow-identifying field, there is only one row. If the workflow has a workflow-identifying field, the table has multiple rows, with the workflow type determining the records that use the workflow.

## Workflow Types for Custom Workflows { .section}

For a custom workflow, you set the workflow type to *DEFAULT* to use this workflow with all records, regardless of their settings.

If you need to apply different custom workflows to records with different values in a particular field, you specify the **Type Identifier** on the [Workflows](../UserGuide/AU_20_10_20.md) page for the form. Then for each workflow you want to add, you click **Add Workflow** on the page toolbar; in the **Add Workflow** dialog box, which opens, you need to specify a workflow type other than *DEFAULT*.

**Tip:** The **Type Identifier** box is unavailable for the forms that contain active workflows that use the option in this box as the workflow type.

For example, for the [Opportunities](../UserGuide/CR_30_40_00.md) \(CR304000\) form, to apply a workflow to the records of a specific opportunity class, on the [Workflows](../UserGuide/AU_20_10_20.md) page, you select *Class ID* in the **Type Identifier** box of the Summary area and click **Add Workflow** on the More menu. Then in the **Add Workflow** dialog box, you select a type other than *DEFAULT*.

## Changing of the Value of the Workflow-Identifying Field { .section}

If you select the **Allow Users to Modify Type** check box, a user can modify the element that corresponds to the field. If this check box is cleared, the element is unavailable for selection. With the check box selected, if a user changes the value of the field that defines the workflow type for a record on a particular form, the system does the following:

-   If the current state of the record does not exist in the new workflow, the system transitions the record to the initial state of the new workflow that corresponds to the field value. The new workflow is then used for the record.
-   If the current state of the record exists in the new workflow, the record remains in this state, and the new workflow is used for the record.

**Parent topic:**[Customizing Workflows with a Workflow-Identifying Field](../DeveloperGuide/WorkflowUI_WorkflowIdentifying_Mapref.md)

