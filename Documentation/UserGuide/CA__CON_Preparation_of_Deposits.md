# Preparation of Deposits {#_323644f1-ea34-4377-92bc-c1fcb4a86d05 .concept}

When a business receives customer payments, employees often record them to a specific cash account. However, the payments appear in the bank account later, when they are physically deposited. As a rule, businesses deposit customer checks and cash to the bank in bulk. Thus, during reconciliation of cash accounts with bank statements, employees often have trouble matching up the individual payments going into a cash account with the summary amounts of the deposits on a bank statement, which have the dates of the deposits at the bank. These conditions create difficulties in accurately tracking cash on hand and reconciling the balances of cash accounts.

In Acumatica ERP, you use bank deposits to track customer payments that you deposit to the bank in bulk. When you enter into the system payments intended for such deposits, the payments are temporarily recorded to special *clearing* cash accounts. These accounts hold payments drawn from customers' Accounts Receivable accounts. Before you make a physical deposit to the bank, you create a deposit in Acumatica ERP and list within it all the payments and cash that make up the physical deposit. After you have made the deposit to the bank, you release the deposit in Acumatica ERP. As a result, the system generates a batch of transactions to move the payment amounts from clearing accounts to the bank account and to record the charges incurred as expenses.

In this topic, you will read about how to configure the processing of bank deposits, record a deposit in the system, and make any needed corrections.

## Configuring Deposit Processing {#deposit_processing_config .section}

You configure the bank deposit processing by performing the following steps:

1.  You create entry types for all applicable bank charges on deposits by using the [Entry Types](CA_20_30_00.md) \(CA203000\) form. For details, see [Registration of Finance Charges](CA__CON_FinCharges.md) and [Entry Types](CA__CON_EntryTypes.md).
2.  On the **Entry Types** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, you associate the created entry types with the bank cash account you use to deposit payments.
3.  By using the [Cash Accounts](CA_20_20_00.md) form, you create at least one clearing cash account to temporarily store the records of customer checks and cash you are going to deposit. The clearing account should be linked to a general ledger account of the *Asset* type denominated in a specific currency. You should create separate clearing cash accounts to store payments in different currencies. For more details, see [Cash Account Types](CA__CON_CashAccountsTypes.md) and [To Create a Cash Account](CA__How_to_Create_Cash_Account.md).
4.  On the **Clearing Accounts** tab of the [Cash Accounts](CA_20_20_00.md) form, you associate the created clearing cash accounts with the bank cash account you use to deposit payments in a specific currency. While associating these accounts, you should specify the entry types to be used to record bank charges and bank charge rates. Optionally, for each charge rate, you can specify a payment method used to record a deposited payment. The system will apply such a charge rate to only deposited payments recorded with this payment method. If a payment method is not specified, a charge rate is applied to deposited payments regardless of their payment method. For details, see [To Specify Charge Rates for a Clearing Account](CA__How_to_Configure_BankAcct_Deposits.md).
5.  For the *Cash/Check* means of payment, you configure payment methods for customers on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form. On the **Allowed Cash Accounts** tab of the form, you assign a clearing account in the customer's currency as the cash account allowed for each method. If you are going to use this payment method mostly for recording payments to be deposited, you should mark it as the default by selecting the **AR Default** check box. For details, see [Payment Methods for Customers](CA__CON_PMs_for_Customers.md).

    **Tip:** In most cases, these payment methods for customers are already present in the system by default, and you only need to associate a clearing account with the payment method.

6.  For the *Credit Card* means of payment, you configure payment methods for customers on the [Payment Methods](CA_20_40_00.md) form. On the **Allowed Cash Accounts** tab of the form, assign a clearing account in the customer's currency as the cash account allowed for each method. If you are going to use this payment method mostly for recording payments to be deposited, mark it as the default one by selecting the **AR Default** check box. For details, see [Payment Methods for Customers](CA__CON_PMs_for_Customers.md).

    If you select the **Void Using Clearing Account** check box, you can add *Voided Payment* and*Voided Refund* documents to bank deposits, as well as documents of the following types if they have the *Voided* status: *Payment*, *Prepayment*, and *Refund*.

7.  You make sure that the payment methods described in the Instructions 5 and 6 are available to customers that will pay by check, cash, or credit card. That is, you make sure that the payment method you have created is listed for each of these customers on the **Payment Methods** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.

You can adjust the precise configuration—the number of clearing accounts for the same bank account, and the number of payment methods with the same clearing account—to best fit your business and its customer base.

## Processing Deposits {#section_ecd_kjv_vxb .section}

Once bank deposit processing has been configured, you can use this functionality as follows:

1.  **Collecting customer payments on clearing accounts**: When a customer payment is received, you enter it into the system on the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form and specify the payment method. Because the payment method is associated with a clearing account, you can select it in the **Cash Account** box to record the payment to this clearing account. \(If the clearing cash account is marked as the default account for the selected payment method, the system will use it automatically.\) When the clearing cash account is selected, the system displays the **Deposit After** box on the form, where you should specify the starting date when the payment can be added to a deposit.

    Also, once a cash sale is completed, you can record it to an appropriate clearing cash account.

2.  **Collecting cash transactions on clearing accounts**: You can add to bank deposits miscellaneous deposits that are not related to customer payments. On the [Cash Transactions](CA_30_40_00.md) \(CA304000\) form, you create a cash transaction and select a clearing account in the **Cash Account** box of the Summary area. For this transaction, the system will automatically select the **Batch Deposit** check box in the **Payment Information** section on the **Financial** tab. When the cash transaction has been entered, you release it.
3.  **Composing a deposit on the [Bank Deposits](CA_30_50_00.md) form**: When a deposit is being prepared for a particular bank, by using the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form, you can create a new deposit in the system. You add payments and cash transactions to the deposit from the clearing account associated with the bank account. A deposit can include a consolidated cash amount to be deposited along with customer checks. You specify the cash account from which you want to deposit cash in the **Cash Drop Account** box and the amount of cash to be deposited in the **Cash Drop Amount** box.

    You should select the **Void Using Clearing Account** check box on the [Payment Methods](CA_20_40_00.md) to be able to add the following types of documents to bank deposits: *Voided Payment*, *Voided Refund*, and the following documents with the *Voided* status: *Payment*, *Prepayment*, and *Refund*.

    A cash transaction added to a bank deposit affects the total amount of the bank deposit as follows, depending on the entry type specified for it on the [Cash Transactions](CA_30_40_00.md) form:

    -   *Disbursement* entry type: The cash transaction produces a credit entry for the clearing account. The amount of this entry is shown with a negative value in the **Deposit Amount** column on the **Payments** tab of the on the [Bank Deposits](CA_30_50_00.md) form. This amount is posted to the debit side of the deposit batch.
    -   *Receipt* entry type: The cash transaction produces a debit entry for the clearing account. The amount of this entry is shown as a positive value in the **Deposit Amount** column on the **Payments** tab of the [Bank Deposits](CA_30_50_00.md) form. This amount is posted to the credit side of the deposit batch.
    **Attention:** If you have reversed a cash transaction fully or partially on the [Cash Transactions](CA_30_40_00.md) form, both the original and reversing transactions will be available for selection in the **Add Payment to Deposit** dialog box on the [Bank Deposits](CA_30_50_00.md) form.

    The system automatically applies charges to the bank deposit if you have specified charge rates on the **Clearing Accounts** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form for a clearing cash account associated with the bank cash account. You can also add a charge to the bank deposit manually on the **Charges** tab of the [Bank Deposits](CA_30_50_00.md) form.

4.  **Composing a deposit on the [Settlement Batches](CA_30_70_00.md) form**: You can also prepare a bank deposit on the [Settlement Batches](CA_30_70_00.md) \(CA307000\) form by clicking **Create Deposit** on the form toolbar. On this form, payment documents with the following types can be included in a bank deposit: *Payment*, *Prepayment*, *Refund*, *Cash Sale*, *Cash Return*, *Voided Payment*, and *Voided Refund*. For these documents to be included in a bank deposit, the following conditions must be met:
    -   The document has a clearing account linked to a processing center specified in the **Cash Account** box on the data entry form where the document is created. For this cash account, on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, the **Clearing Account** check box is selected and on the [Processing Centers](CA_20_50_00.md) \(CA205000\) form, this cash account is selected in the **Cash Account** box for the processing center.
    -   For the payment, the **Batch Deposit** check box is selected on the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) or [Cash Sales](AR_30_40_00.md) \(AR304000\) form.
    -   The payment has not yet been deposited. On the **Financial** tab of the [Payments and Applications](AR_30_20_00.md) or [Cash Sales](AR_30_40_00.md) form, the **Batch Deposit Nbr.** box is empty or the deposit status is *Voided*.
    -   On the [Settlement Batches](CA_30_70_00.md) form, the **Settlement Status** of the payment transaction is *Settled Successfully* or *Refund Settled Successfully*.
5.  **Printing the deposit slip**: If needed, you can run and print the [Deposit Slip](CA_65_65_00.md) \(CA656500\) report, which lists all the payments and the total amount of cash to be deposited. Also, the slip contains such information as the deposit total with all bank charges deducted, the bank information \(name, address, and account number\), and the company name and address.
6.  **Releasing the deposit**: Once the payments listed on the deposit slip are physically deposited to the bank, you can make changes to the deposit by using the [Bank Deposits](CA_30_50_00.md) form to match the list of payments accepted by the bank and to reflect all the charges applied by the bank; you can then release the deposit. The system by default calculates and adds the applicable bank charges associated with the clearing account. The user can change the rate of the applicable charges for the deposit, remove any of the charges, and add other charges. If the charges should not be deducted from the deposit amount, on the **Financial** tab, select the **Separate Charges** check box before you release the deposit.

Once the deposit is released, the system generates a batch of deposit-related transactions to transfer the payment amounts from clearing accounts to the bank account and to post the bank charges incurred for the deposit as expenses. The bank charges will be specified as a separate transaction in the batch if the **Separate Charges** option \(for the deposit\) has been selected; otherwise, their total amount will be deducted from the deposit amount.

## Processing Postdated Checks {#section_mcd_kjv_vxb .section}

Some customer checks are postdated, which means they have future dates. Although sending postdated checks is not a common practice, some customers occasionally send them. These checks should not be deposited to a bank earlier than the date on the check. When you record a postdated check by using the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form, specify the date when the check can be deposited in the **Deposit After** box on the form. When you prepare a deposit, in the table on the **Payments** tab of the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form, the system does not list for selection payments that are dated after the specified deposit date.

## Voiding Deposits {#section_ocd_kjv_vxb .section}

If necessary, you can void a deposit by using the **Void** button on the form toolbar of the [Bank Deposits](CA_30_50_00.md) \(CA305000\) form. The system creates a voided deposit with the same list of payments included and the same accounts and subaccounts involved.

## Including Voided Payments in Deposits {#section_qcd_kjv_vxb .section}

You may need to void a payment included in a deposit. The system does not allow you to void payments included in unreleased deposits, so you should delete these payments from the deposit and void them separately, or release the deposit and then void the payment. For a payment from a released deposit, you can use the **Void Using Clearing Account** check box on the **Settings for Use in AR** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form for the payment method as follows to control exactly how the payment will be voided:

-   If the **Void Using Clearing Account** check box is cleared, for a payment you void, the system creates the transactions between the accounts receivable account and the bank account to reflect the voided payment. You can use this check box state for payment methods based on checks if the bank handles voided checks by adjusting the deposit amounts.
-   If the **Void Using Clearing Account** check box is selected, for a payment you void, the system creates the transactions between the accounts receivable account and the clearing account to reflect the voided payment. You can use this check box state for payment methods based on credit cards if the respective processing center processes voided transactions on your account with the center that matches this clearing account. Also, you can use this option for payment methods based on checks if the bank handles voided checks by creating separate transactions that do not affect the deposits.

## Handling Payments Recorded by Mistake {#section_scd_kjv_vxb .section}

To ease the creation of deposits, you should assign to a clearing account only those payment methods whose payments should be deposited to the respective bank account. If unrelated payments are recorded to the clearing account, users will spend extra time selecting the proper payments for the deposit from a list of related and unrelated payments. If over time you detect that unrelated payments have been recorded to the clearing account by mistake \(and thus cannot be included in any deposit\), remove the payments from the clearing account by voiding them and creating new ones with the proper cash accounts specified.

If you realize that the payments \(cash sales\) to be deposited were recorded to a cash account that is not a clearing account, you should void them and create new ones with the proper cash accounts specified.

## Support of Automatic Surcharges { .section}

For payments included in a bank deposit, creation of automatic surcharges is supported. *Surcharge* is a small fee added to a credit card transaction to cover your company's costs for processing the payment. You can configure and apply a surcharge to each payment created with for a bank deposit.

On the printed form of the [Payment Receipt](AR_64_30_00.md) \(AR643000\) report, every surcharge is shown as a separate line item.

For mode details about the setup and use of surcharges, see [Automatic Credit Card Surcharges](AR__con_CCPayments_Surcharges.md).

-   **[Deposits for Credit Card Payments](../UserGuide/CA__CON_CC_Deposits.md)**  

-   **[Deposit Configuration Example](../UserGuide/CA__CON_DepositConfigExample.md)**  

-   **[To Specify Charge Rates for a Clearing Account](../UserGuide/CA__How_to_Configure_BankAcct_Deposits.md)**  

-   **[To Create a Deposit](../UserGuide/CA__HOW_To_Create_a_Deposit.md)**  

-   **[To Release a Deposit](../UserGuide/CA__HOW_To_Release_Deposit.md)**  

-   **[To Print a Deposit Slip](../UserGuide/CA__HOW_To_Print_Deposit_Slip.md)**  

-   **[To Void a Deposit](../UserGuide/CA__HOW_To_Void_Deposit.md)**  


**Parent topic:**[Tracking Cash Payments](../UserGuide/CA__MNG_TrackingCashPayments.md)

