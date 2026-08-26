# Contract Billing: Mass-Processing {#_7faa9502-47f7-4d4a-b4d7-79c336e24ca7 .concept}

In Acumatica ERP, you can perform mass-processing billing \(to bill multiple contracts simultaneously\) for a contract after contract usage has been recorded or you can perform mass-processing billing for a contract with no usage.

In Acumatica ERP, multiple contracts can be billed simultaneously on the [Run Contract Billing](CT_50_10_00.md) \(CT501000\) form. On this form, you specify a billing date, and the system displays a list of contracts whose next billing date is earlier or equal than the billing date. You can initiate contract billing for the contract or contracts you selected, or run the billing process for all listed contracts at once.

If the contracts were billed successfully, the system marks them with green check marks.

When you run the contract billing process, invoices are generated for each contract. Each invoice is generated with the *Balanced* status or with the *On Hold* status, depending on whether the **Hold Documents on Entry** check box is cleared or selected, respectively on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.

After the mass-processing billing completes, you can view and further process any generated invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, either by accessing it directly or from the **AR History** tab of the [Customer Contracts](CT_30_10_00.md) form, if you click the link of the reference number of any of the invoices listed for the selected contract. For more information, see [Processing AR Invoices](Finance_ARInvoices_Mapref.md).

**Parent topic:**[Billing Contracts](../UserGuide/Contracts_Billing_Contracts_Mapref.md)

