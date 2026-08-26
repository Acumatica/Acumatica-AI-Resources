# Approving Financial Documents {#_e48029c1-9301-4515-b1c6-3b3529c938ed .concept}

Most businesses have their own processes of reviewing and approving financial documents. AR documents such as invoices, credit memos, and debit memos should be approved before release by an authorized employee. With Acumatica ERP you can adjust the approval workflows as required by your organization's policies and set up approval for multiple types of documents.

In the following sections, you can read about the mechanisms you can set up in Acumatica ERP to keep control of financial documents.

## Invoice Approval for Payment {#section_inm_4jv_vxb .section}

In some companies, authorized employees approve AR invoices for payment before other users can enter payments or apply memos to these invoices. With this mechanism enabled, all released invoices are available for payment only after being approved by an authorized person. This person performs the approval by using a specific form to which you should restrict access for all other employees, but the authorized ones. For details, see [To Approve Invoices, Debit Memos, and Credit Memos](AR__how_Approve_AR_Documents.md).

## Approval Workflow {#section_knm_4jv_vxb .section}

Acumatica ERP offers an easy-to-use, system-wide mechanism of configuring approval workflow for multiple types of documents. To use the functionality, you enable the *Approval Workflow* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

With the feature enabled, you can configure approval workflow with the needed complexity:

-   Single-stage approval: One authorized employee approves documents for payment or release.
-   Multistage approval: Multiple employees approve documents in a fixed order; the next approver receives a document only when the previous one has approved it.
-   Parallel approval: Multiple employees approve documents in any order or simultaneously.

-   **[Approval of Accounts Receivable Documents](../UserGuide/AR__con_Approval_of_AR_Invoices.md)**  

-   **[To Approve Invoices, Debit Memos, and Credit Memos](../UserGuide/AR__how_Approve_AR_Documents.md)**  


