# Specific Approvals: Inventory Adjustments {#_8344d109-7853-461f-81d9-929d43fe3e6c .concept}

To reduce the risk of errors and unauthorized write-offs, some businesses rely on approval for inventory adjustments. Acumatica ERP provides the workflow you can use to ensure that an appropriate person has reviewed and approved the transaction before it is released. The approval workflow applies to both system-generated adjustments and adjustments created by users.

## Configuration of Approval { .section}

To implement approvals for inventory adjustments on the [Adjustments](../UserGuide/IN_30_30_00.md) \(IN303000\) form, you perform the following general steps:

1.  You identify the employees who will be reviewing documents of specific types and plan the workgroups that will include these employees. You also review your organization's hierarchy of workgroups on the [Company Tree](../UserGuide/EP_20_40_61.md) \(EP204061\) form and add any new workgroups needed for approvals.

    For more information on the company tree and workgroups, see [Company Tree and Workgroups](../UserGuide/EP__con_Company_Organizational_Chart.md).

2.  You make sure that the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
3.  On the [Assignment and Approval Maps](../UserGuide/EP_20_50_00.md) \(EP205000\) form, you create an approval map \(or multiple maps, if needed\) for the *Adjustment* entity type, as described in [Approval Configuration: Approval Maps](config_Approvals_Create_Approval_Maps.md).
4.  Optional: You create email templates to notify approvers about new transactions on the [Adjustments](../UserGuide/IN_30_30_00.md) form that are pending approval. You can create email templates by using the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.

    For more information on email templates, see [Email Templates](../UserGuide/EM__con_Notification_Templates.md).

5.  On the **Approval** tab of the [Inventory Preferences](../UserGuide/IN_10_10_00.md) \(IN101000\) form, you do the following:
    1.  You add a row to the table and select the **Active** check box for this row.
    2.  In the **Approval Map** column, you specify the approval map that has been created.
    3.  Optional: In the **Pending Approval Notification** column, you select the email template to be used for these notification emails.

Once you have set up the approval functionality, the system works as follows for new adjustments:

-   All manually created adjustments have the *On Hold* status by default. When you remove the adjustment from hold, the system determines whether approval is required. If the adjustment must be approved before release, the system assigns it *Pending Approval* status.
-   If a system-generated adjustment is subject to approval, the system creates it with the *Pending Approval* status. If this adjustment doesn’t meet the criteria of the approval map, the system changes its status based on the standard workflow without approvals.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

