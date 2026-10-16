# Setup of Integration with Authorize.Net

Acumatica ERP supports the processing of credit and debit card payments through the Authorize.Net payment gateway. Authorize.Net is a processing center that accepts and processes card payments online through an application programming interface \(API\).

You can record card payments in two ways, depending on how your bank reports them—as a batch or as individual transactions.

If your bank reports card payments as a batch, we recommend that you use a clearing cash account to record card payment transactions, so you can group these transactions in a deposit and reconcile the deposit with the bank record in the statement. For details, see [Recording Card Payments by Using Deposits](#recording_CC_using_deposits).

If your bank reports card payments as separate transactions, you can record card payment transactions directly to your bank cash account and reconcile them one to one with the statement records. For details, see [Recording Card Payments Directly](#recording_CC_directly).

You can configure integration with Authorize.Net if the *Integrated Card Processing* and *Authorize.Net Payment Plug-In* features have been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

**Attention:** On the [Activate License](SM_20_15_10.md) \(SM201510\) form, the *Authorize.Net Payment Plug-In* feature must be included and active. If the payment plug-in is not active in the applied license, the corresponding check box is not visible on the [Enable/Disable Features](CS_10_00_00.md) form.

## Recording Card Payments by Using Deposits

For a bank that reports multiple card payments as a batch, you configure and then process card payments as follows:

*Configuration*: You perform the following configuration steps:

1.  You create a cash account and mark it as a clearing account. \(Before performing this step, you should already have a cash account that represents your bank account.\)
2.  You specify the merchant cash account as a clearing account for the bank cash account.

    For details on the configuration of cash accounts, see [Configuring Cash Accounts](CA__MNG_CashAccounts.md).

3.  You configure integration with a processing center and assign the merchant cash account to the processing center in the system. The cash account specified for the processing center sets the currency to be used to process transactions. For details on configuring this integration, see [Integration with Authorize.Net Through the API Plug-in](CA__CON_Integration_AuthorizeNet_APIPlugin.md).
4.  You configure the payment methods, such as Visa, Mastercard, or American Express. You specify the merchant cash account as the allowed cash account and mark it as the default one for use in Accounts Receivable. For details, see [To Add a Payment Method for Payment Processing](CA__HOW_Add_PM_Card.md).
5.  You configure customer payment methods \(customer credit or debit cards\), using the payment methods as templates. For details, see [Configuring Customer Payment Methods](AR__CON_Customer_PaymentMethods.md).

*Initiation*: You create payments in the system and initiate the processing of card payments through a processing center. After you receive a response from the processing center about the transaction status, you release the payment. The system records the transaction to the merchant cash account associated with the customer payment method.

**Important:** If the **Enable Integrated CC Processing** check box is selected on the [Accounts Receivable Preferences](../Shared/../UserGuide/AR_10_10_00.md) \(AR101000\) form, you do not release the payment manually. The system releases it automatically after capturing the payment amount.

*Settlement*: You receive a statement from the processing center that shows the settlement amount deposited to your bank account. Optionally, you can reconcile the merchant cash account by using the received statement. For details on the reconciliation process, see [Performing Settlement of Credit Card Payments and EFTs](CA__MNG_Settlement_of_CC_Payments.md).

*Reconciliation*: You create and process a deposit in the system that includes card payments in the amount of the settlement. When you receive a bank statement, you can easily reconcile the deposit with a transaction from the bank statement. For details on configuring and processing deposits, see [Preparation of Bank Deposits](CA__CON_Preparation_of_Deposits.md).

## Recording Card Payments Directly

For a bank that reports each card payment individually, you configure and then process card payments as follows:

*Configuration*: You perform the following configuration steps:

1.  You create a cash account that represents your bank account \(linked to a GL account of the *Asset* type\) to which the processing center will move funds.

    For details on the configuration of cash accounts, see [Configuring Cash Accounts](CA__MNG_CashAccounts.md).

2.  You configure integration with a processing center, and assign the bank cash account to the processing center in the system. For details on configuring integration, see [Integration with Authorize.Net Through the API Plug-in](CA__CON_Integration_AuthorizeNet_APIPlugin.md).
3.  You configure the payment methods, such as Visa, Mastercard, or American Express. You specify the bank cash account created in Step 1 as the allowed cash account and mark it as the default one for use in Accounts Receivable. For details, see [To Add a Payment Method for Payment Processing](CA__HOW_Add_PM_Card.md).
4.  You configure customer payment methods \(customer credit or debit cards\), using the payment methods as templates. For details, see [Configuring Customer Payment Methods](AR__CON_Customer_PaymentMethods.md).

*Initiation*: When your customers want to pay by using credit or debit cards, you create these payments in the system and initiate the processing of card payments through a processing center. After you receive a response from the processing center about the transaction status, you release the payment. The system records the transaction to the bank cash account associated with the customer payment method.

**Important:** If the **Enable Integrated CC Processing** check box is selected on the [Accounts Receivable Preferences](../Shared/../UserGuide/AR_10_10_00.md) \(AR101000\) form, you do not release the payment manually. The system releases it automatically after capturing the payment amount.

*Reconciliation*: You receive a bank statement and reconcile each document in the system with a bank transaction. For details on the reconciliation process, see [Bank Reconciliation: To Reconcile a Cash Account](Finance_Bank_Reconciliation_Activity.md).

-   **[Integration with Authorize.Net Through the API Plug-in](../UserGuide/CA__CON_Integration_AuthorizeNet_APIPlugin.md)**  

-   **[To Configure the Authorize.Net Processing Center](../UserGuide/CA__HOW_Configure_AuthorizeNet_ProcCenterAPI.md)**  

-   **[To Add a Payment Method for Payment Processing](../UserGuide/CA__HOW_Add_PM_Card.md)**  


**Parent topic:**[Configuring Payment Processing](../UserGuide/CA__MNG_Payment_Processing.md)

