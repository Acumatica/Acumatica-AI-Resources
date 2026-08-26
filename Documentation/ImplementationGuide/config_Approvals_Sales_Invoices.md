# Specific Approvals: Sales Invoices {#_aa10af12-0fe9-44ee-87fc-b4b2e215d6b9 .concept}

Many businesses use sales orders as the approval point for sales documents. Some businesses may need to review and approve other sales documents. For example, a company may need to approve sales invoices entered directly at the point of sale on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. Other companies may consolidate lines from multiple sales orders into a single invoice and configure approval of the amount for all lines or specific items in this document.

In Acumatica ERP, you can configure the approval functionality for sales invoices created on the [Invoices](../UserGuide/SO_30_30_00.md) form. You can also configure the approval of other types of documents that are created on this form, such as credit memos, debit memos, cash sales, or cash returns.

## Configuration of Approval { .section}

To implement approvals for documents of any type that are created on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form, you perform the following general steps:

1.  You identify the employees who will be reviewing documents of specific types and plan the workgroups that will include these employees. You also review your organization's hierarchy of workgroups on the [Company Tree](../UserGuide/EP_20_40_61.md) \(EP204061\) form and add any new workgroups needed for approvals.

    For more information on the company tree and workgroups, see [Company Tree and Workgroups](../UserGuide/EP__con_Company_Organizational_Chart.md).

2.  You make sure that the *Approval Workflow* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.
3.  On the [Assignment and Approval Maps](../UserGuide/EP_20_50_00.md) \(EP205000\) form, you create an approval map \(or multiple maps, if needed\) for the *Invoice* entity type, as described in [Approval Configuration: Approval Maps](config_Approvals_Create_Approval_Maps.md).

    **Note:** For this entity type, the system provides the same entities and fields for the configuration of conditions on the **Conditions** tab of the [Approval Maps](../UserGuide/EP_20_50_15.md) \(EP205015\) form as it does when you select *Invoices and Memos* in the **Entity Type** box.

    Some of the fields in the drop-down list of the **Field Name** column \(for example, *Default Retainage Percent*\) for the *Invoices* entity type have corresponding UI elements that are displayed only on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form. If the approval conditions for the *Invoices* entity type are based on these fields, the approver of the document will not be able to view the values in the UI elements corresponding to these fields on the [Invoices](../UserGuide/SO_30_30_00.md) form.

4.  Optional: You create email templates to notify approvers about new documents on the [Invoices](../UserGuide/SO_30_30_00.md) form that are pending approval. You can create email templates by using the [Email Templates](../UserGuide/SM_20_40_03.md) \(SM204003\) form.

    For more information on email templates, see [Email Templates](../UserGuide/EM__con_Notification_Templates.md).

5.  On the **Approval** tab of the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form, you do the following:
    1.  You add a row to the **Invoices** table and select the **Active** check box for this row.
    2.  In the **Type** column, you select the type of the document that requires approval.
    3.  In the **Approval Map** column, you specify the approval map that has been created.

        **Note:** You can use the same approval map for any number of document types by adding a row to the table and selecting the approval map in the **Approval Map** column.

    4.  Optional: In the **Pending Approval Notification** column, you select the email template to be used for these notification emails.

Once you have set up the approval functionality, documents on the [Invoices](../UserGuide/SO_30_30_00.md) form that meet the conditions for approval cannot be released until they have been approved by the assigned approvers.

## The Approval Workflow { .section}

If approvals have been activated for a type of a document on the **Approval** tab of the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form, the system assigns the *On Hold* status to all new documents of this type on the [Invoices](../UserGuide/SO_30_30_00.md) \(SO303000\) form. It assigns the status to these documents regardless of the following:

-   The state of the **Hold Invoices on Entry** check box on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form for the order type of the sales order for which the system has generated the invoice
-   The state of the **Hold Documents on Entry** check box on the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form

If the document does not require approval based on the conditions specified in the approval map, after you remove it from hold, the system automatically approves it and assigns the next status according to the document's workflow. If the document requires approval, the system assigns the *Pending Approval* status to it. Also, on the form toolbar, the **Approve** and **Reject** buttons appear. You can do one of the following:

-   Approve the document: If you click **Approve**, the system assigns the document the next status according to the document's workflow.

    After you approve a document on the [Invoices](../UserGuide/SO_30_30_00.md) form, you can edit only the following settings of this document: the value in the **Currency** box in the Summary area, the values in the **Payment Method** and **Cash Account** boxes on the **Financial** tab, and the values in the **Amount Paid** and **Write-Off Amount** columns on the **Applications** tab.

-   Reject the document. If you click **Reject**, the system assigns the document the *Rejected* status.

    You can then put the document on hold and edit its details. Once you remove it from hold, the document will be assigned the *Pending Approval* status again if it still requires approval.

    Documents that have been rejected do not prevent the closing of the financial period in which they are dated. If a sales invoice created from a sales order is rejected, the link to the rejected invoice remains in the related sales order on the **Shipments** tab of the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, and the system displays a warning message about the invoice's rejected status.


**Note:** If approvals have been activated in the **Invoices** table on the **Approvals** tab of the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) form for documents of the *Credit Memo* type, the system will do the following when you correct or cancel an invoice on the [Invoices](../UserGuide/SO_30_30_00.md) form:

-   If you click **Correct Invoice** and then release the created correction invoice, the system will automatically approve the cancellation credit memo that is created and released on the release of a correction invoice. The automatic approval will happen even if the document should have been assigned the *Pending Approval* status according to the conditions of the applicable approval map.
-   If you click **Cancel Invoice** on the [Invoices](../UserGuide/SO_30_30_00.md) form, the system creates a cancellation credit memo that proceeds through approval in the same way as it would if you created a new credit memo on the [Invoices](../UserGuide/SO_30_30_00.md) form and removed the document from hold.

**Parent topic:**[Setting Up Specific Approvals](../ImplementationGuide/config_Approvals_Doc_Types_Workflow.md)

