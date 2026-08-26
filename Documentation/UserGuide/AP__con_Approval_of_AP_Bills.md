# Approving Accounts Payable Documents {#_5c1cb842-8578-4766-a837-8b0c31ef5cfe .concept}

In most companies, approval of vendor bills and payments to vendors by the designated employees is required before the documents are processed in the accounting systems and paid. Approvals are used, for example, to prevent double-payments of bills or payments for inaccurate or fraudulent bills.

In Acumatica ERP you can configure an approval workflow for the following types of AP documents: bills, credit adjustments, debit adjustments, payments, cash purchases, prepayment requests, and prepayments.

The process of approving a vendor document can be performed by one person only or by multiple persons, depending on the company policy. When multiple persons are designated to approve a document, they can approve it either in parallel \(the documents are reviewed by multiple approvers at the same time\) or in multiple successive stages \(that is, once one employee has approved the document, it becomes available for approval by the next employee\).

In this topic, you will read about setting up approval workflow for AP documents and processing documents with approval required.

**Note:** The functionality is available only if the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Approval Workflow {#section_ffh_njv_vxb .section}

In some companies, authorized employees approve AP bills for payment before other users can pay these bills. With this capability set up, all released bills are available for payment only after they are approved by an authorized person. The approval is performed by using a specific form to which you should restrict access for all other employees except the authorized ones. For details, see [Bill Approval for Payment](AP__con_Bill_Approval_for_Payment.md).

Acumatica ERP offers easy-to-use, system-wide capabilities for configuring an approval workflow for multiple types of documents. To make it possible to use the capability, you enable the *Approval Workflow* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

With the feature enabled, you can configure an approval workflow with the needed complexity, which can be any of the following:

-   Single-stage approval: One authorized employee approves documents for payment or release.
-   Multistage approval: Multiple employees approve documents in a fixed order \(the next approver receives a document only when the previous one has approved it\).
-   Parallel approval: Multiple employees approve documents in any order or simultaneously.

By using the *Approval Workflow* feature, you can configure an approval workflow for the following documents as described in the noted topics.

|Document Type|Topic with Details|
|-------------|------------------|
|Expense receipts|[Expense Receipts: Expense Receipt Approval](TimeExpenses_Process_Expense_Receipts_Approval.md)|
|Expense claims|[Expense Claims: Expense Claim Approval](TimeExpenses_Process_Expense_Claims_Approval.md)|
|Cash transactions|[Cash Transaction Approval](CA__con_Cash_Transaction_Approval.md)|
|Accounts payable documents|[Approving Accounts Payable Documents](AP__con_Approval_of_AP_Bills.md)|
|Accounts receivable documents|[Approval of Accounts Receivable Documents](AR__con_Approval_of_AR_Invoices.md)|
|Sales orders|[Specific Approvals: Sales Orders](../ImplementationGuide/SO__con_Approvals.md)|
|Purchase orders|[Specific Approvals: Purchase Orders](../ImplementationGuide/PO__con_Purchase_Order_Approvals.md)|
|Purchase requests and requisitions|[Approval Configuration: Approval Maps](../ImplementationGuide/config_Approvals_Create_Approval_Maps.md)|

## Configuration of the Approval Workflow {#section_kfh_njv_vxb .section}

For general information about the configuration of approvals in the system, see [Approval Configuration: General Information](../ImplementationGuide/config_Approvals_General_Info.md).

For information about configuration of the approval workflow of AP documents, see [Specific Approvals: Accounts Payable Documents](../ImplementationGuide/config_Approvals_AP_Documents.md)

## Processing of AP Documents with Approvals Set Up {#section_pfh_njv_vxb .section}

With approvals set up, when an AP document that is subject to approval is created, saved, and taken off hold, it gets the *Pending Approval* status. The responsible approver receives an email notification \(if an email notification template is specified for this approval process\) about the document pending his or her approval. On the [Approvals](EP_50_30_10.md) \(EP503010\) form, an approver can review the list of documents pending approval, and can select one record or multiple records in the list and approve them.

To reject a document, the approver needs to open it on the corresponding data entry form by clicking the document reference number in the list. The approver can also approve or reject the document directly on the corresponding data entry form, if needed. For example, individual vendor bills can be approved or rejected by an authorized person on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

If entry of an approval or rejection reason has been set up, the approver enters a reason in the **Enter Reason** dialog box, which is opened on the [Bills and Adjustments](AP_30_10_00.md) form.

When the document is approved by all needed reviewers, it gets the next processing status according to workflow configured. For example, if printing check before release is required, an approved check gets the *Pending Print* status, otherwise, it gets the *Balanced* status and can be released. If one approver rejects a document, it gets the *Rejected* status and is no longer listed on the [Approvals](EP_50_30_10.md) form. A rejected document is kept in the system with the history of approvals.

**Note:** A document keeps the *Pending Approval* status until it has been approved by all the employees assigned according to the approval map or it has been rejected by at least one employee.

You can edit or delete an AP document with approval set up \(such as an approved document, a rejected document, or a document that was not approved because of the specific conditions defined in the approval map\). To do this, you need to put this document on hold. If you edit the document, the process of approval starts again once you take it off hold.

You can view the detailed approval information for each particular AP document on the **Approvals** tab of the corresponding data entry form. On this tab, you can view to whom the document was assigned, who actually approved the bill, and when approval was granted.

**Note:** The system automatically releases the AP bills and cash purchases generated as a result of the release of expense claims if the **Automatically Release AP Documents** check box is selected on the [Time and Expenses Preferences](EP_10_10_00.md) \(EP101000\) form even if the approval workflow functionality is activated for AP documents on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. The bills generated on release of these expense claims are not assigned for approval as the system considers these bills to be approved because the expense claims for which these bills were generated have already been approved.

-   **[Bill Approval for Payment](../UserGuide/AP__con_Bill_Approval_for_Payment.md)**  

-   **[To Approve Bills for Payment](../UserGuide/AP__how_Approving_Bills_for_Payment.md)**  

-   **[To Apply Cash Discounts](../UserGuide/AP__how_Taking_Vendor_Discounts.md)**  


