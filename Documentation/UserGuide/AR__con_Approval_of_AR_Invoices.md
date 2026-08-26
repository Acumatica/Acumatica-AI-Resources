# Approval of Accounts Receivable Documents {#_186b674c-d428-4445-9bf9-9af1898f7bc1 .concept}

In most companies, approval of accounts receivable documents by the designated employees is required before the documents are processed in the accounting systems and paid. Approvals prevent, for example, invoices that were entered more than once, or payments of inaccurate or fraudulent invoices. Additionally, to maintain effective control over your cash flow, you can implement an approval workflow for cash returns and customer refunds.

The process of approving a customer document can be performed by one employee only or by multiple employees, depending on your company's review policy. When multiple employees are designated to approve a document, they can approve it either in parallel \(that is, the documents are reviewed by multiple approvers at the same time\), or in multiple successive stages \(that is, once one employee has approved the document, it becomes available for approval by the next employee\).

In this topic you will read about setting up an approval workflow for AR documents and processing documents with approval required.

**Note:** The functionality is available only if the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Document Types to be Approved {#section_l4m_4jv_vxb .section}

In Acumatica ERP, the approval process can be configured for the following accounts receivable documents, which are created or generated on the listed forms:

-   Customer refunds created on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form
-   Cash returns created on the [Cash Sales](AR_30_40_00.md) \(AR304000\) form
-   AR invoices, credit memos, and debit memos created on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form
-   AR invoices generated from the [Recurring Transactions](AR_20_35_00.md) \(AR203500\) form
-   AR invoices generated from the [Prepare Dunning Letters](AR_52_10_00.md) \(AR521000\) form
-   AR invoices generated from the [Run Contract Billing](CT_50_10_00.md) \(CT501000\) form
-   AR invoices generated from the [Bill Expense Claims](EP_50_20_00.md) \(EP502000\) form
-   Credit memos generated from the [Generate AR Tax Adjustments](AR_50_45_00.md) \(AR504500\) form
-   AR invoices generated from the forms related to field services
-   AR invoices generated from the forms related to projects

**Note:** This approval functionality is not applicable to credit write-offs, overdue charges, or invoices generated from the forms related to sales orders.

## Configuration of Approval for Accounts Receivable Documents {#section_o4m_4jv_vxb .section}

To implement the approval of accounts receivable documents from start to finish, you need to complete the following instructions:

1.  Make sure that the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  On the [Assignment and Approval Maps](EP_20_50_00.md) \(EP205000\) form, create an approval map \(or multiple maps, if needed\) for the AR document types for which an approval process will be applied, as described in [Approval Configuration: Approval Maps](../ImplementationGuide/config_Approvals_Create_Approval_Maps.md). For details, see [Approval Configuration: General Information](../ImplementationGuide/config_Approvals_General_Info.md).
3.  On the **Approval** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, add a row to the table for each type of document that requires approval \(*Refund*, *Cash Return*, *Invoice*, *Credit Memo*, or *Debit Memo*\), and select the relevant approval map. Make sure the **Active** check box is selected for each row you have added.
4.  Optional: On the [Notification Templates](SM_20_40_03.md#) \(SM204003\) form, create a template that the system uses to generate notification emails for employees who are assigned to approve accounts receivable documents. Alternatively, you can select the *AR Invoice* predefined notification template in the **Notification ID** box in the Summary area of this form and update it, if necessary.
5.  Optional: If you have created a notification template, select it in the **Pending Approval Notification** column on the **Approval** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) form.

Once you have set up the approval process, accounts receivable documents that meet the conditions for approval cannot be released until they are approved by the assigned approvers. For step-by-step instructions, see [To Set Up the Approval of AR Documents](../ImplementationGuide/AR__HOW_Set_Up_Approvals_for_AR_Documents.md).

## Processing AR Documents with Approvals Set Up {#section_r4m_4jv_vxb .section}

On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, for a document of a document type that requires approval—that is, a document for which a relevant approval map is specified for the document type on the **Approval** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form—approval of the document proceeds as follows:

1.  The document of this type is initially created with the *On Hold* status, even if the **Hold Documents on Entry** check box is cleared on the [Accounts Receivable Preferences](AR_10_10_00.md) form.
2.  When you click **Remove Hold** on the form toolbar, if the conditions configured in the approval map are met, the document's status changes to *Pending Approval*. The document maintains this status until all approvers specified in the approval map approve or reject the document. For details, see [To Approve Invoices, Debit Memos, and Credit Memos](AR__how_Approve_AR_Documents.md).

    If a notification template is specified for the applicable document type in the **Pending Approval Notification** column on the **Approval** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) form, a notification is sent to each approver.

3.  If the document was put on credit hold and has the *Credit Hold* status, you click **Remove Credit Hold** \(under **Approval**\) on the More menu to remove the credit hold for the document; the document's status returns to *Pending Approval*. For details, see [Automatic Credit Verification: General Information](CreditPolicy_Automatic_Credit_Verification_GeneralInfo.md).
4.  Each assigned approver either approves or rejects the document. If the entry of an approval or rejection reason is set up, the approver enters a reason in the **Enter Reason** dialog box, which is opened on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. The processing continues as follows:
    -   Approved documents are assigned one of the following statuses depending on the settings specified in the **Data Entry Settings** section on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) form:

        -   *Pending Print*—if the **Require Invoice/Memo Printing Before Release** check box is selected
        -   *Pending Email*—if the **Require Invoice/Memo Printing Before Release** check box is cleared and the **Require Invoice/Memo Emailing Before Release** check box is selected
        -   *Balanced*—if both the **Require Invoice/Memo Printing Before Release** check box and **Require Invoice/Memo Emailing Before Release** check box are cleared
        Then the processing of the document continues as usual according to the workflow described in [AR Invoices: General Information](Finance_ARInvoices_GeneralInfo.md).

    -   If a document is rejected, it is assigned the *Rejected* status. Rejected documents can be put on hold for further editing, or they can be deleted or left in the system.

        Rejected documents appear in the following reports that show unreleased documents: [AR Edit](AR_61_10_00.md) \(AR611000\) and [AR Edit Detailed](AR_61_05_00.md) \(AR610500\).


**Parent topic:**[Approving Financial Documents](../UserGuide/AR__MNG_Approving_Fin_Documents.md)

