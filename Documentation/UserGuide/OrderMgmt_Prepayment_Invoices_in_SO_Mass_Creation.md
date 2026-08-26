# Prepayment Invoices: Mass Creation {#_aea09048-c47c-4c1e-a144-d8d136a8f1f9 .concept}

Acumatica ERP supports the mass creation of prepayment invoices for multiple sales orders at once. Instead of creating prepayment invoices individually for each sales order, you can generate multiple prepayment invoices in a single operation.

## Generating Multiple Prepayment Invoices { .section}

When you use mass creation, the system creates a separate prepayment invoice for each processed sales order. Each prepayment invoice is calculated and populated according to the settings of the corresponding sales order, including the customer’s credit terms, the required prepayment percent or amount, and unbilled order lines.

You create multiple prepayment invoices at once on the [Process Orders](SO_50_10_00.md) \(SO501000\) form. On this form, the *Create Prepayment Invoice* action is available on the **Action** box of the Selection area. This action appears in the list only when the *VAT Recognition on AR Prepayments* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\).

Mass creation of prepayment invoices reduces manual effort, ensures consistent calculation of prepayments, and improves efficiency when processing a large number of sales orders that require advance payments.

**Parent topic:**[Processing Prepayment Invoices for Sales Orders](../UserGuide/OrderMgmt_Prepayment_Invoices_Mapref.md)

