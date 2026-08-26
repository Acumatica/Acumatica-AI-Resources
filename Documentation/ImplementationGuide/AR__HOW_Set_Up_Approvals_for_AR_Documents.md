# To Set Up the Approval of AR Documents {#_6018840b-8127-4e37-8aaf-074862c2b26a .task}

You set up the approval workflow for AR documents by using the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form. For more information on these approvals, see [Specific Approvals: Accounts Receivable Documents](config_Approvals_AR_Documents.md).

## Before You Proceed {#section_gpm_4jv_vxb .section}

Before you set up the approval of AR documents in your system, do the following steps:

1.  Review the organization's hierarchy of workgroups on the [Company Tree](../UserGuide/EP_20_40_61.md) \(EP204061\) form, and add new groups whose members are authorized to approve AR documents, if needed.
2.  You make sure that the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
3.  You make sure that needed approval maps and notification templates \(if required\) have been configured, as described in [Approval Configuration: Approval Maps](config_Approvals_Create_Approval_Maps.md) and [Approval Configuration: Pending Approval Notifications](config_Approvals_Notifications.md).
4.  Optionally, if a notification template is prepared and used, the system will use it for notifying approvers about the documents pending their approval.

**Note:** The approval map defines the employees designated for approving AR documents and the conditions that AR documents must match to be assigned for approval.

## To Specify the Approval Settings for AR Documents {#section_ipm_4jv_vxb .section}

1.  Open the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form.
2.  Go to the **Approval** tab of this form.
3.  For each AR document for which you want to specify an approval map, do the following:
    1.  On the table toolbar, click **Add Row**. Notice that the **Active** check box is selected, which indicates that this approval map will be used for documents of the specified type.
    2.  In the **Type** column, select the document type for which you want to set up approval process: *Invoice*, *Credit Memo*, *Debit Memo*, *Cash Refund*, and *Refund*.
    3.  In the **Approval Map** column, select the approval map that has been created for AP documents of the specified type.
    4.  Optional: In the **Pending Approval Notification** column, select the email template to be used for generating emails about the documents of this type that are pending approval.
4.  Click **Save** on the form toolbar.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

