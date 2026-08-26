# Examples of Processing Bills with Retainage {#_15701528-8f5e-4ebe-9e6b-70ea86c680af .concept}

In this topic, you will find some examples of bills with retainage being processed in the system.

## Processing a Bill with Retainage and Without Taxes {#_60ebc20c-7194-4ee5-a83d-b19bccc70019 .section}

Suppose that your company has hired a construction company to build a new building. On June 5, 2017, the construction company sends you an invoice with a total amount of $50,000. By contract, it has been agreed upon that 20% of the total amount \($10,000\) is withheld by your company until the contractual work is finished and the other part \($40,000\) is paid within 15 days. The responsible persons of your company enter and process the needed documents in the system, and the related General Ledger batches are created in the system.

The following table shows the journal entries of the General Ledger batch generated when the Accounts Payable bill is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|00.00|40,000.00|
|Retainage Payable account|00.00|10,000.00|
|Work in Progress account|50,000.00|00.00|

On June 12, 2017, your company pays $40,000 for the bill with retainage. A batch with the following journal entries is created for the payment.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|40,000.00|00.00|
|Cash account|00.00|40,000.00|

On December 4, 2017, the construction work has been completed. The accountant then releases the retainage—that is, creates a retainage bill in the system. When the retainage bill is released, a batch with the following journal entries is created.

|Account|Debit|Credit|
|-------|-----|------|
|Retainage Payable account|10,000.00|00.00|
|Accounts Payable account|00.00|10,000.00|

On December 15, 2017, your company makes the final payment to the construction company. The following table shows the journal entries of the batch created for the payment.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|10,000.00|00.00|
|Cash account|00.00|10,000.00|

## Processing a Taxable Bill with Retainage and if Taxes Are Not Retained {#section_a1m_njv_vxb .section}

Suppose that your company has hired a construction company to build a new building. Taxes at the rate of 5% are applied to the bill and should be calculated and reported for the bill with retainage \(that is, taxes calculated on retained amount\). On June 5, 2017, the construction company sends you an invoice with a total amount before taxes of $50,000. By contract, it has been agreed that 20% of the this amount \($10,000\) is withheld by your company until the contractual work is finished and the other part \($40,000\) along with full tax amount \($2500\) is paid within 15 days. The responsible persons of your company enter and process the needed documents in the system, and the related General Ledger batches are created in the system.

The following table shows the journal entries of the General Ledger batch generated when the Accounts Payable bill is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|00.00|42,500.00|
|Retainage Payable account|00.00|10,000.00|
|Work in Progress account|50,000.00|00.00|
|Tax Claimable account|2,500.00|00.00|

On June 12, 2017, your company pays the bill with retainage. A batch with the following journal entries is created for the payment.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|42,500.00|00.00|
|Cash account|00.00|42,500.00|

On December 4, 2017, the construction work has been completed. The accountant then releases the retainage—that is, creates a retainage bill in the system. When the retainage bill is released, a batch with the following journal entries are created.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|00.00|10,000.00|
|Retainage Payable account|10,000.00|00.00|

On December 11, 2017, your company makes the final payment to the construction company. The following table shows the journal entries of the batch created for the payment.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|10,000.00|00.00|
|Cash account|00.00|10,000.00|

## Processing a Taxable Bill with Retainage if Taxes Are Retained {#_0895f21b-c0f1-4355-a547-a79c2aec4953 .section}

Suppose that your company has hired a construction company to build a new building. Taxes at the rate of 5% are applied to the bill and should be calculated and reported separately for the bill with retainage and the retainage bill. On June 5, 2017, the construction company sends you an invoice with a total amount before taxes of $50,000. By contract, it has been agreed upon that 20% of the total amount \($10,000\) is withheld by your company until the contractual work is finished, and the other part \($40,000\) is paid within 15 days. The responsible persons of your company enter and process the needed documents in the system, and the related General Ledger batches are created in the system.

The following table shows the journal entries of the General Ledger batch generated when the Accounts Payable bill is released.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|00.00|42,000.00|
|Retainage Payable account|00.00|10,500.00|
|Work in Progress account|50,000.00|00.00|
|Tax Claimable account|2,000.00|00.00|
|Retainage Tax Claimable account|500.00|00.00|

On June 12, 2017, your company pays $42,000 for the bill with retainage. A batch with the following journal entries is created for the payment.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|42,000.00|00.00|
|Cash account|00.00|42,000.00|

On December 4, 2017, the construction work has been completed. The accountant then releases the retainage—that is, creates a retainage bill in the system. When the retainage bill is released, a batch with the following journal entries is created.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|00.00|10,500.00|
|Retainage Payable account|10,500.00|00.00|
|Tax Claimable account|500.00|00.00|
|Retainage Tax Claimable account|00.00|500.00|

On December 11, 2017, your company makes the final payment to the construction company. The following table shows the journal entries of the batch created for the payment.

|Account|Debit|Credit|
|-------|-----|------|
|Accounts Payable account|10,500.00|00.00|
|Cash account|00.00|10,500.00|

**Parent topic:**[Processing AP Documents with Retainage](../UserGuide/AP__MNG_Managing_Bills_with_Retainage.md)

