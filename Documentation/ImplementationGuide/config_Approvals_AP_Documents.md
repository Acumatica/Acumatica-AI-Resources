# Specific Approvals: Accounts Payable Documents {#_adbe9b41-f6c9-417c-a365-e8e3009dbabf .concept}

Acumatica ERP offers easy-to-use, system-wide capabilities for configuring the approval functionality for various types of AP documents.

In Acumatica ERP you can configure an approval workflow for any of the following types of AP documents: bill, credit adjustment, debit adjustment, payment, cash purchase, prepayment request, and prepayment. If approval is set up for a particular type of document, regardless of how the documents were created \(through entry on the creation form or by being generated during some process\), they go through the approval process before they are processed further.

You can configure the approval workflow with different levels of complexity, which can be any of the following:

-   One authorized employee approves documents.
-   Multistage \(sequential\) approval: Multiple employees approve documents in a fixed order \(the next approver receives a document only when the previous one has approved it\).
-   Parallel approval: Multiple employees approve documents in any order or simultaneously.

## Configuration of Approval for AP Documents { .section}

To set up the approval functionality for AP documents, you perform the following general steps:

1.  You identify the employees who will be reviewing AP documents, and plan the workgroups that will include these employees. You also review your organization's hierarchy of workgroups on the [Company Tree](../UserGuide/EP_20_40_61.md) \(EP204061\) form, and add any new workgroups needed for approvals.
2.  You make sure that the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
3.  For each AP document type for which you will set up approvals, you need to configure at least one approval maps by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, as described in [Approval Configuration: Approval Maps](config_Approvals_Create_Approval_Maps.md).
4.  Optionally, if you plan to use notification templates to notify users about particular AP documents that require approval, you need to create the needed notification templates \(from scratch or by modifying predefined templates\) on the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.
5.  On the **Approval** tab of the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\), add a row to the table for each type of document that requires approval \(*Bill*, *Credit Adj.*, *Debit Adj.*, *Payment Req.*, *Payment*, *Cash Payment*, or *Prepayment*\), and select the relevant approval map. Make sure the **Active** check box is selected for each row you have added. You can assign the same approval map to multiple document types or create separate maps for different types. Optionally, you can specify a notification template in any row.

**Note:** If you do not specify a notification template, the employees assigned to approve AP documents can find the list of AP documents pending approval on the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503010\) form.

Once you have set up the approval functionality, AP documents that meet the conditions for approval cannot be released until they have been approved by the assigned approvers. For more information about setting up the approvals functionality, see [To Set Up the Approval of AP Documents](AP__How_To_Set_Up_Approvals_for_AP_Documents.md).

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

