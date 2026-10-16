# Specific Approvals: Vendors and Accounts Payable Documents

If vendors in your organization must be approved before they can be used in purchasing or accounts payable documents, you can configure a vendor approval workflow in Acumatica ERP. You can also set up an approval workflow for the following types of AP documents: bills, credit adjustments, debit adjustments, payments, cash purchases, prepayment requests, and prepayments.

If approvals have been set up for vendors or particular types of AP documents, regardless of how they are created \(through automatic generation or manual entry on the creation form\), they go through approval before moving forward.

You can configure the approval workflow with different levels of complexity, which can be any of the following:

-   Single-stage approval: One authorized employee handles approvals.
-   Multistage \(sequential\) approval: Multiple employees approve records in a fixed order \(the next approver receives a record only when the previous one has approved it\).
-   Parallel approval: Multiple employees approve records in any order; approval can be simultaneous.

## Configuration of Approvals for Vendors and AP Documents

To set up the approval functionality for vendors and AP documents, you perform the following general steps:

1.  You identify the employees who will be reviewing vendors and each type of AP documents, and plan the workgroups that will include these employees. You also review your organization's hierarchy of workgroups on the [Company Tree](../UserGuide/EP_20_40_61.md) \(EP204061\) form, and add any new workgroups needed for approvals.
2.  You make sure that the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
3.  You need to configure an approval map for each applicable entity type, which can be any of the following: vendors, bills, credit adjustments, debit adjustments, payments, cash purchases, prepayment requests, and prepayments. You do this by using the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form, as described in [Approval Configuration: Approval Maps](config_Approvals_Create_Approval_Maps.md).
4.  Optional: If you plan to use notification templates to notify users about vendors or AP documents that require approval, create the needed notification templates from scratch or by modifying predefined templates on the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.
5.  On the **Approval** tab of the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\), add a row to the table for each type of record that requires approval and select the relevant approval map. Make sure the **Active** check box is selected for each row you have added. You can assign the same approval map to multiple record types or create separate maps for different types. Optionally, you can specify a notification template in any row.

**Note:** If you don’t specify a notification template, the employees assigned to approve vendors and AP documents can find the list of vendors and AP documents pending approval on the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503010\) form.

## Approval of Vendors

If the approval of vendors is configured, once a user changes a vendor’s status to *Active*, the system assigns the vendor the *Pending Approval* status. The rules defined by the approval map are used to assign the vendor to a workgroup or to particular employees \(in the workgroup\) for approval. If no assignment occurs, the vendor is assigned the *Active* status.

Once the vendor is assigned to a workgroup, any member of the workgroup can view the vendor on the [Approvals](../UserGuide/EP_50_30_10.md) \(EP503010\) form and approve or reject it. If the vendor is rejected, it is assigned the *Rejected* status. To modify the rejected vendor record, you can change its status to *On Hold*, update the vendor information, and submit it for approval again.

An approved vendor is assigned the *Active* status and becomes visible in drop-down lists when users process accounts payable documents or create purchase orders.

## Approval of AP Documents

Once you have set up the approval functionality, AP documents that meet the conditions for approval cannot be released until they have been approved by the assigned approvers. For more information about setting up the approval functionality, see [To Set Up the Approval of AP Documents](AP__How_To_Set_Up_Approvals_for_AP_Documents.md).

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

