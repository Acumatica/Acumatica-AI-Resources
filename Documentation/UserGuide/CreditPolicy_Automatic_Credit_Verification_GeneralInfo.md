# Automatic Credit Verification: General Information {#_be6653db-700a-4453-9738-6ee166974f4b .concept}

You may encounter an unfortunate situation when a customer has not paid for a long time and has not responded to any inquiries or requests for payment. You might have notified the customer about due invoices with a sequence of dunning letters or in some other way. In this case, you can put a hold on the customer's credit until the issue is resolved.

## Learning Objectives {#section_msc_hjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Analyze how credit verification rules affect customers' credit check
-   Remove credit hold for an invoice

## Putting AR Documents and Customers on Credit Hold {#section_osc_hjv_vxb .section}

On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you can put an AR document on credit hold, even if the customer for whom the document is created is not on credit hold and has passed credit verification.

An employee who is authorized to manage customer credit can apply credit holds to applicable customers by using the [Manage Credit Holds](AR_52_30_00.md) \(AR523000\) form. Once a credit hold has been applied to a customer account, no new sales orders or invoices can be created for this customer.

## Removing Credit Hold for AR Documents and Customers {#section_rsc_hjv_vxb .section}

On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, when you save an AR invoice \(or other document on the form\) for the customer or click **Remove Hold** on the form toolbar, the system validates the customer's credit limit and places the invoice on credit hold if the validation has failed \(which can occur when the credit limit has been exceeded or a document is long past due\). When the system places the invoice on credit hold, it changes the status of the document to *Credit Hold*.

To remove credit hold from a document, you click **Remove Credit Hold** \(under **Approval**\) on the More menu of the [Invoices and Memos](AR_30_10_00.md) form. When you remove credit hold from the document, the system changes the document’s status to the one it had before it was put on credit hold—*Balanced*, *Pending Print*, or *Pending Email*. If you modify a document for which credit hold was removed, the system puts this document on credit hold again when you save these modifications if the updated document's amount is greater than the amount at the moment when credit hold was removed for the document.

An authorized user can manually remove a customer from credit hold by changing the customer status from *Credit Hold* to *Active*. To do this, the authorized user's role should have access to the **Status** box of the [Customers](AR_30_30_00.md) \(AR303000\) form. This can also be done on the [Manage Credit Holds](AR_52_30_00.md) \(AR523000\) form.

If approvals are configured for AR documents created on the [Invoices and Memos](AR_30_10_00.md) form—that is, if the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and an approval map is defined on the [Approval Maps](EP_20_50_15.md) \(EP205015\) form—an invoice that has been on credit hold is assigned the *Pending Approval* status when you click **Remove Credit Hold** on the More menu of the [Invoices and Memos](AR_30_10_00.md) form. Once this invoice is approved, it is assigned the *Credit Hold* status and can then be removed from credit hold. For more information on approvals, see [Approval of Accounts Receivable Documents](AR__con_Approval_of_AR_Invoices.md).

**Parent topic:**[Analyzing Automatic Credit Verification for Customers](../UserGuide/CreditPolicy_Automatic_Credit_Verification_Mapref.md)

