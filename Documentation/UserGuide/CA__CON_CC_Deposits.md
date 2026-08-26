# Deposits for Credit Card Payments {#_c6f18954-0bea-40ee-85fc-493e3697e68f .concept}

If a processing center that you work with transfers collected amounts as one payment to your bank account, you can configure credit card payments as deposits. The processing center processes the card transactions initiated in your system and records them to your account with the processing center, and at the end of the payment period, the center transfers the collected amounts to your bank account. In your system, you record the credit card payments to a clearing account associated with the bank account and then post them as a deposit to the bank account. Such deposits may require charges from both the bank and the processing center. However, you can configure the system to automatically apply charges from only one source. You can choose which charges \(of a processing center or a bank\) you configure to be automatically applied and which you will add manually. For example, if the processing center applies multiple charges and the charge amounts are usually deducted from the deposit total, it is more convenient to have the processing center charges applied automatically to the deposit and adding bank charges manually.

In this topic you will read about configuration of deposit processing for credit card payments and the process of recording such deposits.

## Configuring Deposit Processing for Credit Card Payments {#section_zcd_kjv_vxb .section}

To configure credit card deposits, perform the steps below:

1.  By using the [Entry Types](CA_20_30_00.md) \(CA203000\) form, create entry types for each of the fees and charges to be applied by the processing center and the bank.
2.  On the **Entry Types** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, associate the created entry types with the bank cash account you use to deposit payments.
3.  By using the [Cash Accounts](CA_20_20_00.md) form, create a separate clearing cash account to temporarily store records of the card transactions processed by each processing center.
4.  On the **Allowed Cash Accounts** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, associate the clearing accounts you created with the payment methods used by each processing center. On the **Settings for Use in AR** tab of the same form, make sure the **Void Using Clearing Account** check box is selected.
5.  By using the **Clearing Accounts** tab of the [Cash Accounts](CA_20_20_00.md) form, associate the clearing accounts to be used to record undeposited credit card payments with the bank cash account. As you do this, for each clearing account specify the entry types to be used to record charges and charge rates. Optionally, for each charge rate, you can specify a payment method used to record a deposited payment. The system will apply this charge rate to only deposited payments recorded with this payment method. If a payment method is not specified, the charge rate is applied to deposited payments regardless of their payment method.

    **Attention:** You can configure only charges that are percentages of the deposit amounts.


Once configuration has been completed, you can process credit card payments as deposits.

## Processing Deposits for Credit Card Payments {#section_ddd_kjv_vxb .section}

The procedure of processing deposits for credit card payments is the same to the one described in [Preparation of Deposits](CA__CON_Preparation_of_Deposits.md). You record credit card payments processed by a processing center to the respective clearing account, and at the end of a period when a processing center transfers collected payments to your bank account, you create a deposit in the system by using the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form.

The charge rate you have specified for the clearing account is applied automatically and can be viewed on the **Charges** tab of the [Bank Deposits](CA_30_50_00.md) form. On this tab, you can add any other applicable charges. To deduct the charges from the deposit amount, make sure the **Separate Charges** check box is cleared \(on the **Financial** tab of this form\).

If the processing center charges monthly fees, you can create appropriate recurring bills and pay them by using the Accounts Payable module. For details, see [Creating Recurring AP Documents](Finance_Creating_Recurring_APDocuments_Mapref.md).

The processing center deposits the collected amounts to the bank account, with a delay that depends on the processing center. You should release deposits on the last days of periods defined by the processing center or on the day when the processing center transfers money to your organization's bank account. For details on the transactions that are generated when you release a deposit, see [Deposit Configuration Example](CA__CON_DepositConfigExample.md).

**Parent topic:**[Preparation of Deposits](../UserGuide/CA__CON_Preparation_of_Deposits.md)

