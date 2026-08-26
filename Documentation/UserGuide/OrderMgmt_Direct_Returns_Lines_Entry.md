# Direct Returns: Direct Return with Replacement {#_030aea5c-0c48-451b-8b44-c9a9ce790e0a .concept}

If a customer returns stock items directly to the retail store and requests for the exact replacement of these items, you can process both return and replacement in a single document.

## Processing Direct Return with Replacement { .section}

To process a direct return with replacement, you create sales invoice or credit memo on the [Invoices](SO_30_30_00.md) \(SO303000\) form, and add to the document the lines with items to be returned and the lines with items for replacement.

In the created document, return and replacement lines will have different signs. In a credit memo \(an invoice of the *Credit Memo* type\), return lines have quantities with positive sign, and replacement lines have quantities with negative sign. In a sales invoice, return lines have quantities with negative sign, and replacement lines have quantities with positive sign. You must select the type of the document for processing a direct return for replacement so that the total balance of the document will be equal to zero or above zero.

When the sales invoice or credit memo is released, the system generates an inventory issue transaction to update the item information in inventory. The inventory operation is specified on the line level in the generated inventory transaction, in the inventory issue. For a replacement line, an inventory issue line with the *Invoice* type is generated to issue the replacement item from inventory. For a return line, an inventory issue line with the *Credit Memo* type is generated to return an item to inventory.

Also, on release of the sales invoice or credit memo, this invoice or credit memo, respectively, becomes visible and available for further processing on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form.

**Parent topic:**[Processing Direct Returns](../UserGuide/OrderMgmt_Direct_Returns_Mapref.md)

