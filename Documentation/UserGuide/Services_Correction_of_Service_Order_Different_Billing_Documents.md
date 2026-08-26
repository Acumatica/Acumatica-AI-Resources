# Service Order Billing Correction: Billing Document Types {#_a69146a1-14b0-4f4a-b9d1-6d7f6899147c .concept}

You perform different steps to correct a billing document originating from a service order, depending on the type of the billing document. In the following sections of this topic, the processes of correcting different billing documents are described.

## Correction of an AR Invoice Originating from a Service Order { .section}

To correct an accounts receivable invoice originating from a service order if the invoice has already been released, you need to reverse the invoice, unclose and correct the service order, and then generate a new AR invoice for the service order.

To reverse an accounts receivable invoice, on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, click the **Reverse and Apply to Memo** command on the More menu \(under **Corrections**\). The system creates a document of the *Credit Memo* type and opens it on the same form. Notice that on the **Details** tab of the form, in the **Related Svc. Doc. Nbr.** column, the reference number of the related service order is specified.

When you release the credit memo, the original invoice is assigned the *Canceled* status. The associated service order can then be corrected and billed again. On the [Service Orders](FS_30_01_00.md) \(FS300100\) form, you should do one of the following on the More menu under **Corrections**:

-   If the service order’s status is *Closed*, click **Unclose**.
-   If the service order’s status is *Completed*, click **Reopen**.

Then you can make the needed corrections and process the service order billing once again.

## Correction of a Project-Related Service Order { .section}

If you need to correct a service order for which a project transaction has been generated and released, you can reverse the project transaction, make corrections to the service order, and generate another project transaction.

**Note:** Correction of a project-related service order is applicable only if the *Projects* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

To reverse a project transaction, click **Reverse Bill** on the More menu \(under **Corrections**\) on the [Service Orders](FS_30_01_00.md) \(FS300100\) form. The system generates a reversed project transaction \(that is, a project transaction with similar settings but a negative amount and quantity\) and releases the transaction. For the released inventory issue associated with the service order, the system generates a credit memo issue and releases it.

Then you can make the needed corrections to the service order on the [Service Orders](FS_30_01_00.md) form and run the billing process, which causes the system to create the new project transaction \(and inventory issue, if applicable\).

## Correction of a Service Order with an Unreleased Billing Document { .section}

You can make corrections to a service order when a billing document has already been created for the service order but not yet released. In this case, you can just delete the billing document. Once a billing document is deleted, you use the [Service Billing History](FS_40_50_00.md) \(FS405000\) form to quickly find the service order related to the deleted billing document. This form shows the list of service documents with the related billing documents of all statuses, including the documents with the *Deleted* status.

**Parent topic:**[Correcting Service Order Billing](../UserGuide/Services_Correction_of_Service_Order_Mapref.md)

