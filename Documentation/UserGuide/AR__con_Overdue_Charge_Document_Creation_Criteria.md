# Overdue Charges: Criteria for Creating Overdue Charge Documents {#_7bd8f530-ac19-4efb-803a-7cc7aef4ddcd .concept}

The processing of overdue documents creates documents of the *Overdue Charge* type. When the system finds a customer's overdue document, the system adds this document as a line item to the document of the *Overdue Charge* type \(which is created once any overdue document is found\). If the system has found multiple overdue documents of a customer, the system creates a document of the *Overdue Charge* type with multiple lines. These documents of the *Overdue Charge* type, also referred to as overdue charge documents, can be viewed on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

You can set up a threshold amount that defines the amount of charges that should initiate the generation of an overdue charge document. You specify this threshold amount in the **Total Threshold** box on the [Overdue Charges](AR_20_45_00.md) \(AR204500\) form.

**Attention:** The overdue fee is not included in the overdue charge document amount that is compared to the threshold.

With the total threshold specified, the system decides whether to create an overdue charge document as follows:

1.  It finds an overdue document of a customer or multiple documents of the customer.
2.  It calculates the charge amount for each overdue document it found.
3.  It compares the total amount of the calculated charges to the threshold amount, and then the system proceeds as follows:
    -   If the total amount is greater than the threshold amount, the system creates an overdue charge document for the customer.
    -   If the total amount is less than the threshold amount, the system does not create an overdue charge document for the customer.

For example, suppose that your company collects overdue charges only if the charge amount is greater than $10; you thus specify `10` in the **Total Threshold** box. Further suppose that your company charges a fixed charge amount of $1. If a customer has at least 10 overdue documents, the system will create an overdue charge document to debit the customer account. If your company instead charges an annual rate, the system behaves in the same way. If the total of calculated percentages for a customer's overdue documents is greater than $10, the system creates an overdue charge document for the customer.

In addition to setting a threshold for the overdue charge amount, you can set a minimum amount and a threshold amount for adding a document as a line to the overdue charge document. You can configure the line threshold for only a charge that is defined as a percentage. To do this, you set up an overdue charge code on the [Overdue Charges](AR_20_45_00.md) form and specify the *Charging a Percentage with a Minimum Amount* or *Charging a Percentage with a Threshold Amount* charging method. For details, see [Overdue Charges: Charge Codes](AR__CON_OverdueChargeCodes_Defenition.md).

## Overdue Fee Collection {#section_xcf_hjv_vxb .section}

You may want to charge your customers an additional fee each time overdue charges are calculated. In the **Overdue Fee Settings** section of the [Overdue Charges](AR_20_45_00.md) form, you can specify the amount of the overdue fee and the account and subaccount to register the collected fee to.

The fee is recorded as a separate line in the document of the *Overdue Charge* type on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

**Parent topic:**[Applying Overdue Charges](../UserGuide/CreditPolicy_Overdue_Charges_Mapref.md)

