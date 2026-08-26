# Sales with Returns: Generated Transactions {#_e19c289f-fd3f-4c9c-92a1-5543e24e26f6 .concept}

To be able to process both a sale and a return of stock items in the same order, you create a mixed order \(that is, an order of the *MO* type\) on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. The following sections describe the GL transactions generated during the processing of the documents for a sale of one stock item and a return of one stock item \(that is, a mixed order has one sales line and one return line\).

## Transactions Generated for a Sales Invoice { .section}

If the **Order Total** of the related mixed order is positive, the system creates and releases a sales invoice with one sales line and one return line \(when you click **Prepare Invoice** on the form toolbar of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form\). On release of the invoice, the system generates the following general ledger transactions:

**Attention:** For a mixed order on the [Sales Orders](SO_30_10_00.md) form, the sales account is specified based on the **Use Sales Account From** setting of the order type on the [Order Types](SO_20_10_00.md) \(SO201000\) form.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Customer|Invoice amount|0.00|
|Sales account|Mixed order|0.00|Sales amount|
|Sales account|Mixed order|Return Amount|0.00|

## Transactions Generated for a Payment { .section}

If the **Order Total** of the mixed order is positive, you create and release a payment. The system generates the following general ledger transactions:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Cash Account|Payment method|Payment amount|0.00|
|Accounts Receivable account|Customer|0.00|Payment amount|

## Transactions Generated for a Credit Memo { .section}

If the **Order Total** of the mixed order is negative, you create and release a credit memo with one return line \(that is, a line with a positive amount\) and one sales line \(that is, a line with a negative amount\). The system generates the following general ledger transactions:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Receivable account|Customer|0.00|Amount|
|Sales account|Mixed order|Return amount|0.00|
|Sales account|Mixed order|0.00|Sales amount|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Invoices](SO_30_30_00.md) \(SO303000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

## Transactions Generated for a Refund { .section}

If the **Order Total** of the mixed order is negative, you create and release a refund. The system generates the following general ledger transactions:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Cash Account|Payment method|0.00|Return amount|
|Accounts Receivable account|Customer|Return amount|0.00|

## Transactions Generated for an Inventory Issue { .section}

On release of the sales invoice, the system generates an inventory issue transaction with the line that has the *Invoice* transaction type. When an inventory issue with one line of the *Invoice* type is released, the system generates the following general ledger transactions:

|Account|Transaction Type|Source of Account|Debit|Credit|
|-------|----------------|-----------------|-----|------|
|Inventory account|Credit Memo|Depends on the settings of the posting class of the item specified on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form\)|Cost of the returned item|0.00|
|COGS account|Credit Memo|Depends on the settings of the posting class of the item specified on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form\)|0.00|Cost of the returned item|
|Inventory account|Invoice|Depends on the settings of the posting class of the item specified on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form\)|0.00|Cost of the sold item|
|COGS account|Invoice|Depends on the settings of the posting class of the item specified on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form\)|Cost of the sold item|0.00|

You can view the reference number of the GL batch in the **Batch Nbr.** box on the **Financial** tab of the [Issues](IN_30_20_00.md) \(IN302000\) form. You can click the link in this box to view the details of the batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

**Parent topic:**[Processing Sales with Returns](../UserGuide/OrderMgmt_Sales_with_Returns_Mapref.md)

