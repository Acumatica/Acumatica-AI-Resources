# Specific Approvals: Projects, Project-Related Documents, and Time Activities {#_0d0b7e95-8c51-4ec3-8c14-30936b8aaf44 .concept}

If projects in your organization must be approved before they can be used to record project transactions and activities, you can easily configure the approval of projects in Acumatica ERP. You can also set up the approval workflow for the following types of project-related documents: pro forma invoices, change orders, change requests, subcontracts, project quotes, cost projections, cost projections by date, and progress worksheets.

**Important:** The *Approval Workflow* feature and features related to specific types of project-related documents may be subject to additional licensing; please consult the Acumatica ERP sales policy for details.

## Configuration of Approval for Projects and Project-Related Documents {#section_qzn_gsg_31c .section}

To set up the approval functionality for projects and project-related documents, you perform the following general steps:

1.  You identify the employees who will be reviewing projects and project-related documents, and plan the workgroups that will include these employees. You also review your organization's hierarchy of workgroups on the [Company Tree](../UserGuide/EP_20_40_61.md) \(EP204061\) form, and add any new workgroups needed for approvals.
2.  You make sure that the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
3.  You need to configure an approval map for each needed entity type \(projects, pro forma invoices, change orders, change requests, project quotes, cost projections, cost projections by date, subcontracts, and progress worksheets\) by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, as described in [Approval Configuration: Approval Maps](config_Approvals_Create_Approval_Maps.md).
4.  Optionally, if you plan to use notification templates to notify users about projects or project-related documents that require approval, you need to create the needed notification templates \(from scratch or by modifying predefined templates\) on the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.
5.  To make approval required for projects and project-related documents, you specify the needed approval maps in the appropriate boxes of the **Approval** tab \(**Approval Settings** section\) of the [Projects Preferences](../UserGuide/PM_10_10_00.md) \(PM101000\) form. In the **Pending Approval Notification** section of the tab, you specify any needed notification template to be used for projects or the specific project-related documents.

## Approval of Projects and Project-Related Documents {#section_rzn_gsg_31c .section}

If approval of projects and project-related documents is configured, once a user takes a project or project-related document off hold, the system assigns this record the *Pending Approval* status and uses the rules defined by the approval map to assign the project or project-related document to a workgroup or to a particular employee \(in the workgroup\) for approval. If no assignment occurs, the project or project-related document is assigned the *Active* status.

Once the project or project-related document is assigned to a workgroup, any member of the workgroup can view the project or project-related document on the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503000\) form and approve or reject it. If the project or project-related document is rejected, it is assigned the *In Planning* status.

An approved project or project-related document is assigned the *Active* status and becomes visible when users process project-related transactions.

## Approval of Time Activities { .section}

To control the completion of time activities related to a project, you can assign the employee who will be responsible for approving these time activities.

**Attention:** The approval of time activities is not configured in the same way as other types of approvals, by creating and assigning an approval map, thus no approval maps are needed.

An authorized approver of time activities can view the time activities assigned for approval on the [Approve Time Activities](../UserGuide/EP_50_70_10.md) \(EP507000\) form. The approver can apply a filter to the list of documents on this form to find specific time activities and then approve or reject them.

A time activity is assigned the *Pending Approval* status if the following conditions are met:

-   An approver has been assigned to the project task specified in this time activity.

    To assign the approver to a particular project task, you specify the employee ID for the project task in the **Approver** box on the **Summary** tab of the [Project Tasks](../UserGuide/PM_30_20_00.md) \(PM302000\) form. Alternatively, you can specify the employee ID of the approver in the **Approver** column in the row with this project task on the **Tasks** tab of the [Projects](../UserGuide/PM_30_10_00.md) \(PM301000\) form.

-   An approver has clicked the **Complete** button on the [Activities](../UserGuide/EP_40_43_00.md) \(EP404300\) form.

You can also specify an approver on the project level. To do this, you specify the employee ID of the approver in the **Time Activity Approver** box on the **Summary** tab of the [Projects](../UserGuide/PM_30_10_00.md) form. This employee will be assigned to approve time activities instead of the approver specified at the project task level. If no approver is specified at the project task level, time activities related to the project task will not require any approval \(including the approval by the project-level approver\).

If the same employee is typically assigned for approving particular projects, you can configure approvers to be assigned automatically for newly created projects and project tasks as follows:

-   For time activities related to projects that are created based on a particular project template: To configure this, you specify the employee ID of the approver in the **Time Activity Approver** box on the **Summary** tab of the [Projects](../UserGuide/PM_30_10_00.md) form.
-   For time activities related to project tasks created based on a common task \(which is a typical task not associated with any particular project template\): To configure this, for the common task, you specify the employee ID of the approver in the **Approver** box on the **Summary** tab of the [Common Tasks](../UserGuide/PM_20_80_30.md) \(PM208030\) form.
-   For time activities related to project tasks created based on a particular project template task: To configure this, for the project template task, you specify the employee ID of the approver in the **Approver** box on the **Summary** tab of the [Project Template Tasks](../UserGuide/PM_20_80_10.md) \(PM208010\) form.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

