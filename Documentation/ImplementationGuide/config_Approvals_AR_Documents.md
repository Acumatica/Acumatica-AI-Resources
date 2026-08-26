# Specific Approvals: Accounts Receivable Documents {#_cebb8041-8234-46fc-aeb5-eaa131b08fd1 .concept}

Acumatica ERP offers easy-to-use, system-wide capabilities for configuring the approval workflow for various types of AR documents.

## AR Documents That Can Be Approved { .section}

In Acumatica ERP, you can configure the approval workflow for the following AR documents, which causes approvals regardless of how the documents were created \(through direct entry or by being generated during some process\):

-   Customer refunds on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form
-   Cash returns on the [Cash Sales](../UserGuide/AR_30_40_00.md) \(AR304000\) form
-   AR invoices, credit memos, and debit memos on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form

**Note:** The approval functionality is not applicable to credit write-offs, overdue charges, or invoices generated from the forms related to sales orders.

## Configuration of Approval for AR Documents { .section}

To implement the approval of AR documents from start to finish, you need to complete the following instructions:

1.  You identify the employees who will be reviewing AR documents, and plan the workgroups that will include these employees. You also review your organization's hierarchy of workgroups on the \(EP204061\) form, and add any new workgroups needed for approvals.
2.  You make sure that the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
3.  On the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, you create an approval map \(or multiple maps, if needed\) for each AR document type for which an approval process will be applied, as described in [Approval Configuration: Approval Maps](config_Approvals_Create_Approval_Maps.md).
4.  If you plan to use notification templates to notify users about particular AR documents that require approval, you create the needed notification templates \(from scratch or by modifying predefined templates\) on the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.
5.  On the **Approval** tab of the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form, you add a row to the table for each type of document that requires approval \(*Refund*, *Cash Return*, *Invoice*, *Credit Memo*, or *Debit Memo*\), and select the relevant approval map. Make sure the **Active** check box is selected for each row you have added. You can assign the same approval map to multiple document types or create separate maps for different types.
6.  Optional: If you have created any notification templates, you select them in the **Pending Approval Notification** column of the **Approval** tab of the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) form.

Once you have set up the approval functionality, AR documents that meet the conditions for approval cannot be released until they have been approved by the assigned approvers.

**Note:** If you do not specify a notification template, the employees assigned to approve AR documents can find the list of AR documents pending approval on the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503010\) form.

For information about setting up the approval functionality for AR documents, see [To Set Up the Approval of AR Documents](AR__HOW_Set_Up_Approvals_for_AR_Documents.md).

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

