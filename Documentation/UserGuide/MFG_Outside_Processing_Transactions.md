# Outside Processing: Generated Transactions {#_b852d641-2c03-45d1-82ff-b3a71ad73b09 .concept}

When you process production orders that include outside operations, you record payments for the subcontractor services \(which may include material costs\) by creating and processing purchase orders and the related documents and transactions. To track these expenses, the system generates the GL transactions described in the following section.

## Transactions Generated for Non-Stock Items Used as Materials { .section}

Suppose that for a non-stock item that is used as a material for outside processing \(that is, a subcontractor service\), the **Accrue Cost** check box is selected on the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, and the **Require Receipt** check box is selected on the **General** tab of the same form. As a result, the system posts to the Expense Accrual account the costs of materials when the items are received to a warehouse of your organization and a production order is released. Transactions generated on release of the inventory receipt are listed in the following table.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Expense Accrual account|Item|Amount|0.00|
|PO Accrual account|Item|0.00|Amount|

On the [Non-Stock Items](IN_20_20_00.md) form for a non-stock item used for outside services, *Sales* is selected in the **Post Cost to Expenses On** box on the **Price/Cost** tab and the **Require Receipt** check box is cleared on the **General** tab, then you create the AP bill with this non-stock item. When you release the AP bill, the transactions listed in the following table are generated.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Expense account|Item|Amount|0.00|
|AP account|Item|0.00|Amount|

When you issue or backflush the non-stock item that represents the subcontractor services, the transactions listed in the following table are generated for both the non-stock item and the materials shipped to the vendor.

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Work in Process account|Item|Amount|0.00|
|Expense Accrual account|Item|0.00|Amount|

If the **Accrue Cost** check box is cleared on the **Price/Cost** tab of the [Non-Stock Items](IN_20_20_00.md) form, the amounts are posted to the Expense account instead of the Expense Accrual account.

**Parent topic:**[Producing Items with Outside Processing](../UserGuide/MFG_Outside_Processing_Mapref.md)

