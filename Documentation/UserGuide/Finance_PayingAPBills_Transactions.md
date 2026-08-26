# AP Bill Payments: Generated Transactions {#_3d051d42-ab48-4e1a-b12b-d77d2c281a97 .concept}

When a payment is released, a batch is created with transactions reducing the balances of the cash account and the vendor's accounts payable account.

Releasing an AP payment creates the following GL transaction.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Amount|
|Accounts Payable account|Amount|0.00|

AP payments that do not require the printing of checks \(for example, those to be paid by a wire transfer\) can be released regardless of when they are actually paid.

When a payment is released, a batch is created with transactions that reduce the balances of the cash account and the vendor's AP account. If the payment is released before the cash discount date, a cash discount can be used \(and deducted from the payment amount\).

Releasing a payment creates a batch of the following accounting transactions.

|Account|Debit|Credit|
|-------|-----|------|
|Cash account|0.00|Amount – cash discount|
|Accounts Payable account|Amount|0.00|
|Cash discount account|0.00|Cash discount|

If a payment is created in a foreign currency, the following additional accounts may be involved:

-   *Realized Gain Account* or *Realized Loss Account*: The balance of one of these accounts is updated by the amount resulting from different currency exchange rates on the date of the bill and the date when the bill has been paid.
-   *Rounding Gain Account* or *Rounding Loss Account*: The balance of one of these accounts is updated by the amount resulting from rounding the sum of the document details to the document total.

**Parent topic:**[Paying AP Bills](../UserGuide/Finance_PayingAPBills_Mapref.md)

