# Deposit Configuration Example {#_8cdada2a-3d4b-409b-94e1-4e599044c3e4 .concept}

Suppose that your company works with a processing center. The processing center collects credit card payments from your customers and at the end of the month transfers collected amounts to your bank account. The processing center accepts payments made by using Visa and MasterCard. The processing center charges 2.9% per transaction made by using Visa and 3% per transaction made by using MasterCard. The bank charges $0.20 per $100 of the amount deposited by the processing center.

In this topic, you will read about how to configure deposit processing according the example, process the created deposit and view the generated transactions.

## Configuration of Deposit Processing {#section_o2d_kjv_vxb .section}

In Acumatica ERP, you create the following entities:

-   General Ledger accounts: *Bank Account* of the *Asset* type; *Deposits from Customers* account of the *Asset* type; *Fees and Charges* account of the *Expense* type
-   Entry types: *BANKCHAR* \(*Disbursement* type of transactions, *CA* module, *Fees and Charges* offset account\) for bank charges; *PROCCHAR* \(*Disbursement* type of transactions, *CA* module, *Fees and Charges* offset account\) for processing center charges
-   Bank cash account: *Bank Cash Account* to deposit payments
-   Clearing cash account: *Clearing Cash Account*, linked to the Deposits from Customers GL account, to temporarily store credit card payments
-   Payment methods: Visa; MasterCard

Then you associate entry types with the bank account on the **Entry Types** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, and payment methods with the clearing cash account on the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form. After making and saving these associations, you specify processing charge rates for each payment method \(as shown in the table below\) by using the **Clearing Accounts** tab of [Cash Accounts](CA_20_20_00.md) form.

|Clearing Account|Payment Method|Charge Type|Charge Rate, %|
|----------------|--------------|-----------|--------------|
|Clearing Cash Account|Visa|PROCCHAR|2.9|
|Clearing Cash Account|MasterCard|PROCCHAR|3.0|

## Deposit Creation {#section_r2d_kjv_vxb .section}

Once the configuration is finished, you use the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form to record credit card payments processed by the processing center to the Clearing Cash Account. Suppose you have recorded the payments shown below.

|Payment Method|Amount|
|--------------|------|
|Visa|100|
|Visa|150|
|Visa|210|
|MasterCard|250|

At the end of the month, the processing center transfers the collected payments to your bank account and sends you the statement, or you can view the list of transferred payments online if the processing center provides such a service.

You use the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form to create a deposit according to the statement sent by the processing center. You add the recorded payments on the **Payments** tab. Once payments are added, you can view the charges applied by the system on the **Charges** tab. If you have added all the payments listed above, the applied charges are as follows.

|Charge|Payment Method|Charge Rate, %|Chargeable Amount|Charge Amount|
|------|--------------|--------------|-----------------|-------------|
|PROCCHAR|Visa|2.9|460|13.34|
|PROCCHAR|MasterCard|3.0|250|7.50|

In the Summary area of the [Bank Deposits](CA_30_50_00.md) form, you can see that the deposit total is $710 and the total amount transferred to the bank is $689.16. You save the deposit with the *Balanced* status and wait until the bank notifies you that the deposit is processed. You can wait for a bank statement or you can view the list of bank transactions online if the bank provides such a service.

## Deposit Release {#section_w2d_kjv_vxb .section}

Suppose that the bank has confirmed the deposit processing and you have received a statement. You open the saved deposit and add the bank charges applied \(on the **Charges** tab of the [Bank Deposits](CA_30_50_00.md) form\). In our example the charge you add has the following settings.

|Charge|Payment Method|Charge Rate, %|Chargeable Amount|Charge Amount|
|------|--------------|--------------|-----------------|-------------|
|BANKCHAR|EMPTY|0.0|689.16|1.40|

Once bank charges are added, you compare the deposit in the system with the confirmation document you have received from the bank. If the details are correct, you release the deposit. The system generates the transactions shown in the following table, which you can view by clicking the batch number on the **Financial** tab of the [Bank Deposits](CA_30_50_00.md) form.

**Attention:** The **Separate Charges** check box is cleared on the **Financial** tab of [Bank Deposits](CA_30_50_00.md). For details on the use of this check box, see [Finance Charge Transactions](CA__CON_FinCharge_Transactions.md).

|Account|Debit Amount|Credit Amount|
|-------|------------|-------------|
|Deposits from Customers|0.00|100.00|
|Deposits from Customers|0.00|150.00|
|Deposits from Customers|0.00|210.00|
|Deposits from Customers|0.00|250.00|
|Bank Account|687.76|0.00|
|Fees and Charges|13.34|0.00|
|Fees and Charges|7.50|0.00|
|Fees and Charges|1.40|0.00|

**Parent topic:**[Preparation of Deposits](../UserGuide/CA__CON_Preparation_of_Deposits.md)

