# Credit Memos in Foreign Currencies: General Information {#_fcb805ed-1d1a-41fd-8d64-bae950a47850 .concept}

In Acumatica ERP, the amount of a released invoice, which increases a customer’s debt, cannot be changed directly in the released document. If you need to decrease the customer's balance, you issue a credit memo.

## Learning Objectives {#section_x1x_3jv_vxb .section}

In this chapter, you will learn how to do the following:

-   Create a credit memo in a foreign currency
-   Apply the credit memo to an invoice in a foreign currency

## Applicable Scenarios {#section_z1x_3jv_vxb .section}

You create a credit memo in a foreign currency in the following cases:

-   You need to adjust the balance of a released multicurrency invoice.
-   You need to decrease the amount owed to you by a particular customer.

## Use of a Credit Memo to Decrease the Amount of an Invoice {#section_bbx_3jv_vxb .section}

You issue a credit memo, which will be used to decrease a customer’s debt, by using the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) form—the same form you use to create an invoice. The credit memo is independent of the original invoice, with no direct reference to it. The processing of a credit memo includes the application of this credit memo to the applicable invoice, which establishes a link between these two documents. A credit memo may have multiple lines or one summary line. Credit memos do not have due dates and may be numbered differently from invoices, depending on the standards in place in your organization.

The release of a credit memo decreases the customer's balance. The application of a released credit memo against invoices, debit memos, and overdue charges decreases the outstanding amount of these documents by the amount of the credit memo. For details, see [Credit Memos in Foreign Currencies: Process Activity](Multicurrency_CreditMemo_Process_Activity.md).

**Parent topic:**[Applying Credit Memos in Foreign Currencies to Invoices](../UserGuide/Multicurrency_CreditMemo_Mapref.md)

