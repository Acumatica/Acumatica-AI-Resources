# Inclusive VAT Support in Purchase Orders {#_c8e88218-b5b6-4aad-aa0e-bf58c50a2aaa .concept}

The Purchase Orders module supports value added taxes \(VATs\) on purchased items if the *VAT Reporting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

In most European countries, where VATs are often used, prices for consumers are tax-inclusive—that is, specified with the tax amount included. In Acumatica ERP, you can configure the VAT-like taxes or sales taxes as calculated separately on item prices or as extracted from prices. The base and sale prices, too, can be specified as including or excluding the appropriate tax amount.

Inclusive and non-inclusive taxes are configured on the [Taxes](TX_20_50_00.md) \(TX205000\) form. For inclusive taxes, the **Extract from Item Amount** option is selected.

On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, the document details include applicable taxes shown for informational purposes on the **Tax Details** tab; the list of applicable taxes includes the taxes present in both the vendor tax zone and the ordered item's tax category. On the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, tax amounts are calculated because although value-added taxes for inventory items are paid to vendors, they are claimable from the tax agency.

**Note:** Correcting taxes in a purchase order does not affect the taxes in documents \(purchase receipts and Accounts Payable bills\) created from this purchase order. The taxes for each document are calculated when the document is created based on the tax settings of this document.

## Example of Inclusive Tax Processing { .section}

Consider an example in which a company purchases 100 motherboards at $22 each with a 10% VAT included. The total amount is $2200, and the VAT amount calculated for the document is $200.

The following transactions will be generated for the Inventory receipt.

|Account|Credit|Debit|
|-------|------|-----|
|Inventory \(Components\)|0|2200 – 200 = 2000|
|PO Accruals|2000|0|

The following transactions will be generated for the Accounts Payable bill.

|Account|Credit|Debit|
|-------|------|-----|
|PO Accruals|0|2000 \(accrued amount\)|
|Accounts Payable|2200 \(full receipt amount\)|0|
|VAT Claimable Account|0|200|

If any difference arises, because of rounding, between the original order amount and the sum of the tax amount and the amount to be recorded to the accrual account, it will be added to the Purchase Price Variance account.

**Parent topic:**[Managing Purchase Documents](../UserGuide/PO__MNG_Managing_Document.md)

