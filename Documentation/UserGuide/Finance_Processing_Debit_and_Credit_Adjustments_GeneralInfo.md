# Debit and Credit Adjustments: General Information {#_1693bbe7-f8bb-4478-ac2e-8f67b6958a51 .concept}

To correct released AP documents, you create debit adjustments and credit adjustments on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

An open accounts payable bill can be reversed. When you reverse a bill, the system automatically creates a debit adjustment with the same details. Before you save the adjustment, you should type another **Vendor Reference** value if the **Raise an Error On Duplicate Vendor Reference Number** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.

## Learning Objectives {#section_jh3_njv_vxb .section}

In this chapter, you will learn how to do the following:

-   Create and release a debit adjustment
-   Apply the debit adjustment to an open AP bill
-   Create and release a credit adjustment for a released AP bill

## Applicable Scenarios {#section_mh3_njv_vxb .section}

You create a debit adjustment to decrease the amount you owe to a vendor. You create a credit adjustment to increase the amount you owe to a vendor.

## Debit Adjustment Processing {#section_oh3_njv_vxb .section}

You can create a debit adjustment to account for a vendor's credit memo, or you can use it as a clearing document to correct errors on an existing bill or credit adjustment. A debit adjustment may be created as a request for a refund \(for example, for damaged items or an overpaid bill\) or it can be directly applied against bills or credit adjustments.

You can enter a debit adjustment by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The summary of a debit adjustment includes information about the vendor, the vendor location, and the currency used for the transaction.

A debit adjustment should contain at least one line. The adjustment can have a summary line or any number of detail lines.

**Tip:** We recommend that when you enter a document, you include all the details available in the original vendor document.

When it is first saved, a debit adjustment is automatically assigned a unique identifier that makes it possible to track the debit adjustment through the system. The system generates this identifier according to the numbering sequence assigned to debit adjustments on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.

To facilitate auditing and user reference, you can attach to each debit adjustment an electronic version or a scanned image of the original vendor document or internal document. Also, you can attach a related document to each line of the document.

Generally, a debit adjustment is not linked to a bill or other document that it is related to. You may include a reference to the original document \(bill or prepayment\) in the description of the adjustment and a reference to the related vendor document in the **Vendor Reference** box. If the **Raise an Error on Duplicate Vendor Reference Number** check box is cleared on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, then you can use the same reference number \(of the original vendor document\) on both the bill and the related debit adjustment; this will make it easier to find both the bill and the adjustment.

Each adjustment has one of the following statuses, which tells you its stage in processing:

-   *On Hold*: Generally, this status is used for an adjustment that is a draft. This is the default status for new documents if the **Hold Documents on Entry** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form or if approvals have been configured for debit adjustments. A debit adjustment with the *On Hold* status can be edited.
-   *Balanced*: After editing is completed, a *Balanced* adjustment may be saved only if it remains balanced. If the **Validate Document Totals on Entry** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) form, you can take an adjustment off hold only if you correctly type the document control total.
-   *Pending Approval*: If approvals are enabled in your system, after an adjustment \(that is subject to approval\) is created, saved, and taken off hold, the system assigns this status to the adjustment. The adjustment needs to be approved by responsible approvers assigned according to the approval map specified on the **Approval** tab of the [Accounts Payable Preferences](AP_10_10_00.md) form.
-   *Rejected*: If approvals are enabled in your system and at least one approver rejects an adjustment, the system assigns this status to the adjustment. You can delete a document with this status or click **Hold** on the form toolbar, edit the document, and submit it for the approval.
-   *Open*: This status reflects that the document has been released and may be applied against bills and credit adjustments. The status remains *Open* until the unapplied balance becomes zero.
-   *Closed*: This status means that the unapplied balance of the document is zero.
-   *Reserved*: This status means that an open debit adjustment was put on hold by clicking **Hold** on the form toolbar. By using this status, you can temporarily suspend the document's processing.

Released debit adjustments may be matched against any bills and credit adjustments of the same vendor or may be used to offset a vendor's refunds. Released debit adjustments appear on the [Checks and Payments](AP_30_20_00.md) \(AP302000\) form and can be applied against credit adjustments and bills.

Debit adjustments are always applied to the balance of the main vendor of a bill, which is the same vendor as specified in this debit adjustment. That is, if a debit adjustment is prepared for the AP bill that has joint payee balances specified, the **Amount Paid \(Payment currency\)** that you specify on the **Documents to Apply** tab of the [Checks and Payments](AP_30_20_00.md) form cannot exceed the amount of the bill minus joint payee amounts.

**Attention:** When you create an AP payment and load the documents to be paid, the debit adjustments appear at the top of the list so that you do not forget to apply them.

## Reversal of Debit Adjustments {#section_zh3_njv_vxb .section}

You can reverse original debit adjustments with the *Open* and *Closed* status by clicking **Reverse** on the More menu of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The **Reverse** command is not available for original debit adjustments created automatically on reverse of an original bill.

If you reverse a debit adjustment, the system performs the following actions on the [Bills and Adjustments](AP_30_10_00.md) form:

1.  Creates a credit adjustment with the *On Hold* or *Balanced* status, depending on whether the **Hold Documents on Entry** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
2.  For the credit adjustment, fills in the **Original Document** box on the **Financial** tab with the **Ref. Nbr.** of the debit adjustment being reversed.
3.  On release of the credit adjustment, creates a GL transaction by using the same rules as for manually created credit adjustments.

**Attention:** On reversal of a debit adjustment created for a tax agency in a foreign currency, the system will not use the document rate to convert the amount to the base currency amount. The same rule is applied when you are reversing a tax bill in a foreign currency.

An original debit adjustment cannot be reversed if it has open retainage debit adjustments or applications that have not been reversed.

## Credit Adjustment Processing {#section_e33_njv_vxb .section}

An accounts payable credit adjustment may be used to correct errors in an existing bill or to account for a vendor's debit memo. Posting a credit adjustment increases the balance of accounts payable.

You can enter a credit adjustment by using the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. The summary of a credit adjustment includes information about the vendor, the vendor location, and the currency used for the transaction.

A credit adjustment should contain at least one line. The adjustment can have a summary line or any number of detail lines.

**Tip:** We recommend that when you enter a document, you include all the details available in the original vendor document.

To facilitate auditing and user reference, you can attach to each adjustment an electronic version or a scanned image of the original vendor document. Also, you can attach a related document to each line of the document.

When it is first saved, a credit adjustment is automatically assigned a unique identifier that lets you track the credit adjustment through the system. The system generates this identifier according to the numbering sequence assigned to credit adjustments on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.

If automatic calculation of taxes is configured in your system, the system calculates the applicable taxes for each credit adjustment and records the tax amounts to the document. If your system is integrated with the AvaTax service of Avalara or other specialized third-party software, the applicable taxes are calculated by this service or software and recorded to the document when you save it. For an overview of this integration, see [Setup of Online Integration with Avalara AvaTax](TX__con_Integrating_with_AvaTax.md).

A credit adjustment has no reference to a bill that it is related to. You may include a reference to the original document \(bill or prepayment\) in the description of the adjustment and a reference to the related vendor document in the **Vendor Reference** box. If the **Raise Error On Invoice Number Duplicates** option is not selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, then you can use the reference number of the original vendor document on both the bill and the related credit adjustment; this will make it easier to find both the bill and the adjustment.

Each adjustment has one of the following statuses, which tells you its stage in processing:

-   *On Hold*: The credit adjustment is being edited and cannot be released. The system assigns this status to each created credit adjustment by default because the **Hold Documents on Entry** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) form or if approvals have been configured for credit adjustments.
-   *Pending Approval*: The credit adjustment needs to be approved for release by the responsible person or persons. The system assigns this status when the credit adjustment for which the approval is needed is removed from hold. This status could be assigned to the document only if the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   *Rejected*: The credit adjustment was rejected by the responsible person. This status could be assigned to the document only if the *Approval Workflow* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.
-   *Balanced*: The credit adjustment is ready and can be released or scheduled.
-   *Open*: The credit adjustment has been released.
-   *Closed*: The credit adjustment has been applied.
-   *Scheduled*: The credit adjustment is a template for generating recurring documents according to a schedule. Based on the template, the system generates recurring documents that can be edited and then released. \(The scheduled document itself cannot be released and can be edited as a template.\)
-   *Pre-Released*: The credit adjustment has been released and requires expense reclassification. This status can be assigned to the credit adjustment only if the *Expense Reclassification* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form.
-   *Voided*: The previously scheduled credit adjustment was voided and is no longer used as a template for generating recurring documents.

Once it has been released, a credit adjustment cannot be edited or deleted; you only can reverse it. If you reverse the adjustment, the system generates a debit adjustment with the same details. Before you save the debit adjustment, you should type another **Vendor Reference** value if the **Raise an Error on Duplicate Vendor Reference Number** option is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.

You can pay adjustments individually by using the [Bills and Adjustments](AP_30_10_00.md) \(AP302000\) form. Also, adjustments can be paid in bulk along with the bills on the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form. For details on payments, see [Paying Multiple AP Bills](Finance_PayingMultipleBills_Mapref.md).

**Parent topic:**[Processing Debit and Credit Adjustments](../UserGuide/Finance_Processing_Debit_and_Credit_Mapref.md)

