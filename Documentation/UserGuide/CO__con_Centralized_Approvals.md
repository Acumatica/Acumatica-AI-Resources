# Approving Records {#_f4bf1749-cc54-4e4a-8acb-6997ac42cc6c .concept}

Every organization has its own established processes of record review and approval. For records of specific types, more than one approval may be required. By enabling the *Approval Workflow* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and setting up approval maps in Acumatica ERP, your organization can reduce the time required for record assignment and routing because the system provides automatic assignment for all the required approvals.

Also, Acumatica ERP streamlines the approval workflow by providing a single form, [Approvals](EP_50_30_10.md) \(EP503010\), that you can use as a starting point for all records that require approval. For details, see [Approval Configuration: Approval Maps](../ImplementationGuide/config_Approvals_Create_Approval_Maps.md).

## Visibility Options { .section}

By using the [Approvals](EP_50_30_10.md) \(EP503010\) form, you can perform approvals of records of multiple types, including cash transactions, purchase orders, requisition requests, requisitions, expense claims, time cards, and equipment time cards.

By using the filter tabs on the form, you can view records grouped in any of the following ways:

-   All records that you can approve, including escalated records assigned to users of workgroups that are at lower levels in the company tree but in the node of your workgroup
-   Records that are assigned to you for approval
-   Records that are assigned to the users of your workgroup

**Tip:** With some types of records, such as expense claims or employee time cards, although you are allowed to approve records assigned to other users of your workgroup, you may not be able to view the details of these records on the corresponding entry forms because of the specifics of the record visibility settings effective on these forms.

## Approval or Rejection of Records { .section}

As an approver, you can either reject or approve a particular record. You can approve or reject all the records listed on the [Approvals](EP_50_30_10.md) \(EP503010\) form or only the records you select. To approve particular records, you need to select the unlabeled check box for each record and then click **Approve**.

If the approval map for a particular type of record is configured so that entering a reason is required to complete record approval or rejection, records of this type cannot be approved or rejected on the [Approvals](EP_50_30_10.md) form. In this case, approvers can use only the corresponding entry form to approve or reject records of that type.

**Note:** If a record that requires multiple approvals is first approved by a member of a workgroup located above any of the assigned workgroups on the company tree, the record immediately becomes approved by the lower groups, regardless of whether those groups have actually performed their approvals.

If you reject a record, the system assigns the *Rejected* status to it. Rejected records cannot be removed from the system; they are stored with the history of approvals. If your organization's policies allow the editing of rejected records, users can modify the rejected records. Any modification removes all approval records for the record, and the approval process can be started again from the lowest level.

