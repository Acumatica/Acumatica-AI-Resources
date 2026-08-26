# Examples of Processing Invoices with Retainage {#_02a30b3d-c012-40d9-b350-f60a62c23651 .concept}

In this topic, you will find some examples of invoices with retainage being processed in the system.

## Processing an Invoice with Retainage and Without Taxes {#_60ebc20c-7194-4ee5-a83d-b19bccc70019 .section}

Suppose that a customer has hired your company to build a new building. On June 5, 2017, your company issues an invoice with a total amount of $50,000 to the customer. By contract, it has been agreed upon that 20% of the total amount \($10,000\) is withheld by the customer until the contractual work is finished and the other part \($40,000\) is paid within 15 days. The responsible persons of your company enter and process the needed documents in the system, and the related General Ledger batches are created in the system.

The following table shows the journal entries of the General Ledger batch generated when the Accounts Receivable invoice is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|40,000.00|00.00|
|Retainage Receivable account|10,000.00|00.00|
|Project Income account|00.00|50,000.00|

On June 12, 2017, the customer pays $40,000 for the invoice with retainage. A batch with the following journal entries is created when the payment is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|00.00|40,000.00|
|Cash account|40,000.00|00.00|

On December 4, 2017, the construction work has been completed. The accountant then releases the retainage—that is, creates a retainage invoice in the system. When the retainage invoice is released, a batch with the following journal entries is created.

|Account|Debit|Credit|
|-------|-----|------|
|Retainage Receivable account|00.00|10,000.00|
|Accounts Receivable account|10,000.00|00.00|

On December 15, 2017, the customer makes the final payment to your company. The following table shows the journal entries of the batch created for the released payment.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|00.00|10,000.00|
|Cash account|10,000.00|00.00|

## Processing a Taxable Invoice with Retainage and if Taxes Are Not Retained {#section_akq_4jv_vxb .section}

Suppose that a customer has hired your company to build a new building. Taxes at the rate of 5% are applied to the invoice and should be calculated and reported for the original invoice \(that is, it is not necessary to retain taxes calculated on the retained amount\). On June 5, 2017, your company issues an invoice to the customer with a total amount before taxes of $50,000. By contract, it has been agreed on that 20% of this amount \($10,000\) is withheld by the customer until the contractual work is finished and the other part \($40,000\) along with the full tax amount \($2500\) is paid within 15 days. The responsible persons of your company enter and process the needed documents in the system, and the related General Ledger batches are created in the system.

The following table shows the journal entries of the General Ledger batch generated when the Accounts Receivable invoice is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|42,500.00|00.00|
|Retainage Receivable account|10,000.00|00.00|
|Project Income account|00.00|50,000.00|
|Tax Payable account|00.00|2,500.00|

On June 12, 2017, the customer pays the invoice with retainage. A batch with the following journal entries is created for the payment.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|00.00|42,500.00|
|Cash account|42,500.00|00.00|

On December 4, 2017, the construction work has been completed. The accountant then releases the retainage—that is, creates a retainage invoice in the system. When the retainage invoice is released, a batch with the following journal entries is created.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|10,000.00|00.00|
|Retainage Receivable account|00.00|10,000.00|

On December 11, 2017, the customer makes the final payment to your company. The following table shows the journal entries of the batch created for the payment.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|00.00|10,000.00|
|Cash account|10,000.00|00.00|

## Processing a Taxable Invoice with Retainage if Taxes Are Retained {#_0895f21b-c0f1-4355-a547-a79c2aec4953 .section}

Suppose that a customer has hired your company to build a new building. Taxes at the rate of 5% are applied to the invoice and should be calculated and reported separately for the original invoice and the retainage invoice. On June 5, 2017, your company issues an invoice to the customer with a total amount before taxes of $50,000. By contract, it has been agreed that 20% of the total amount \($10,000\) is withheld by the customer until the contractual work is finished and the other part \($40,000\) is paid within 15 days. The responsible persons of your company enter and process the needed documents in the system, and the related General Ledger batches are created in the system.

The following table shows the journal entries of the General Ledger batch generated when the Accounts Receivable invoice is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|42,000.00|00.00|
|Retainage Receivable account|10,500.00|00.00|
|Project Income account|00.00|50,000.00|
|Tax Payable account|00.00|2,000.00|
|Retainage Tax Payable account|00.00|500.00|

On June 12, 2017, the customer pays $42,000 for the invoice with retainage. A batch with the following journal entries is created for the payment.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|00.00|42,000.00|
|Cash account|42,000.00|00.00|

On December 4, 2017, the construction work has been completed. The accountant then releases the retainage—that is, creates a retainage invoice in the system. When the retainage invoice is released, a batch with the following journal entries is created.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|10,500.00|00.00|
|Retainage Receivable account|00.00|10,500.00|
|Tax Payable account|00.00|500.00|
|Retainage Tax Payable account|500.00|00.00|

On December 11, 2017, the customer makes the final payment to your company. The following table shows the journal entries of the batch created for the payment.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Receivable account|00.00|10,500.00|
|Cash account|10,500.00|00.00|

**Parent topic:**[Processing AR Documents with Retainage](../UserGuide/AR__MNG_ProcessingInvoices_with_Retainage.md)

