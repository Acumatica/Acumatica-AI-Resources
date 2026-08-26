# Payments with a Corporate Card: Generated Transactions {#_32dc1e86-cb8a-4471-b10e-a720730d1877 .concept}

As you process expenses paid with a corporate credit card, you create and process bills and payments. To update vendor balances, the system generates the GL transactions described in the following sections.

## Transaction Generated for a Bill Paid with a Corporate Credit Card {#section_zjl_njv_vxb .section}

To process a bill paid with a corporate credit card, you process the bill as usual. The system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable|**AP Account** specified for the vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Amount|
|Expense account|Account specified in the **Account** column for the document line on the **Details** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form|Amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) form.

## Transaction Generated for the Bill Payment {#section_ckl_njv_vxb .section}

When you process the payment that uses the corporate credit card, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accrued liability account|GL account linked to the cash account that represents the corporate credit card account in the system and which is specified in the **Cash Account** box on the [Checks and Payments](AP_30_20_00.md) \(AP302000\)|0.00|Amount|
|Accounts Payable|**AP Account** specified for the vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form|Amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) form.

## Transaction Generated for the Bill to Pay the Bank {#section_fkl_njv_vxb .section}

When you receive a bank statement for the corporate credit card, you create an AP bill in the amount of the statement and specify the accrued liability account as the expense account in the bill. When you process the credit card bill, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Accounts Payable|**AP Account** specified for the vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form|0.00|Statement amount|
|Accrued liability account|Expense account specified for the vendor that represents the bank in the **Expense Account** box on the [Vendors](AP_30_30_00.md) form|Statement amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

## Transaction Generated for Payment of the Credit Card Bill {#section_ikl_njv_vxb .section}

When you pay the credit card bill, you process an AP payment for the credit card bill from the cash account you use to pay for the credit card \(such as a checking account\). When you process the payment, the system generates the following general ledger transaction:

|Account|Source of Account|Debit|Credit|
|-------|-----------------|-----|------|
|Checking account|GL account linked to the cash account specified in the **Cash Account** box on the [Checks and Payments](AP_30_20_00.md) \(AP302000\)|0.00|Statement amount|
|Accounts Payable|**AP Account** specified for the vendor that represents the bank on the [Vendors](AP_30_30_00.md) \(AP303000\) form|Statement amount|0.00|

You can view the reference number of the GL batch on the **Financial** tab of the [Checks and Payments](AP_30_20_00.md) form.

**Parent topic:**[Processing Payments with a Corporate Card](../UserGuide/Finance_Expenses_with_CorporateCC_Mapref.md)

