# Setup of ACH Payment Processing {#_020220b1-0c4f-4064-8d7e-25926da1f041 .concept}

ACH payments are electronic payments made through the Automated Clearing House \(ACH\) network in the United States. In Acumatica ERP, you can automate payments to vendors by making ACH payments. To do this, you export a batch of payments to a file that is then processed in the ACH system. For each vendor, the specified amount is automatically credited from one of your company's bank accounts and transferred to the payment recipient electronically.

The National Automated Clearing House Association \(NACHA\) has developed the rules and standards about ACH transactions, including the following:

-   To set up ACH payments, you need an agreement and an account with the ACH operator—that is, the financial institution providing ACH services.
-   You need agreements with your vendors covering ACH transaction authorization, and information about their accounts in the ACH network. Accounts are identified by the financial institution's routing number and the account number within that institution.

By using ACH payments, you reduce errors, while eliminating the hassles of check preparation, printing, and emailing. Because you can pay promptly, you also can usually get available cash discounts.

## Implementation Steps {#section_kbz_fss_k2c .section}

To start paying your vendors through the ACH network, you should perform the following steps:

1.  You sign up for the ACH service with the ACH operator. As part of the sign-up process, you receive the credentials with which your company is registered in the ACH network, such as account number, bank routing number, and company identification.
2.  You set up agreements with your vendors covering ACH transaction authorization, and you get information about their accounts in the ACH network.
3.  You set up the payment method to be used for ACH payments. The payment method includes elements that need to be filled with the vendor's custom information, file export details, and details that need to be filled in with your ACH credentials. For details, see [To Add a Payment Method for ACH Payments \(Export Scenarios\)](CA__HOW_Add_PM_for_ACH.md).
4.  You specify remittance information \(ACH credentials\) for each cash account you are going to use as a source for paying your vendors. For details, see [To Add Remittance Information to a Cash Account](CA__HOW_Add_RemittanceInfo_to_CashAccount.md).
5.  You assign the payment method intended for ACH payments to each vendor that will accept ACH payments. By using the ACH-related information you collected from each vendor in Step 2, fill in the settings of the payment method on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form.

-   **[Setting Up U.S. ACH Payment Processing](../UserGuide/CA__CON_Setup_US_ACH.md)**  

-   **[Setting Up U.S. and Canada ACH Cross-Border Payment Processing](../UserGuide/CA__CON_Setup_Canadian_ACH.md)**  


**Parent topic:**[Configuring Payment Processing](../UserGuide/CA__MNG_Payment_Processing.md)

