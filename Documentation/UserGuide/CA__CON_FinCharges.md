# Registration of Finance Charges {#_ef935e3a-04a2-47a4-b999-c97eeedd8730 .concept}

Whenever you send payments \(by check, wire transfer, or another payment method\) to your vendors or receive these payments from your customers, the payments are processed by banks or other financial institutions, which generally apply processing fees and charges to each payment. Generally, the sending financial institution transfers the outgoing payments in full and charges the bank account of the payer for any applicable fees. The receiving financial institution deducts the charges and processing fees from the incoming payment amount. To facilitate accounting for these charges, in Acumatica ERP you can configure the finance charges that apply to AP and AR payments, customer refunds, and funds transfers.

In Acumatica ERP, you can configure the application of the bank charges depending on how the bank presents the charges on its statements to facilitate reconciliation with the bank statement.

In this topic, you will read about how to configure the collection of finance charges and to record collected charges.

## Configuration of Finance Charges {#section_qxc_kjv_vxb .section}

To facilitate accounting for the charges applied by each bank for payment processing, you perform the following steps:

1.  Review the bank charges applied to your payments by different banks. To define the bank charges in the system, you use entry types that function like transaction templates. Determine whether you will use the same entry types for all banks or you need separate entry types for each bank. Consider creating a naming convention for the entry types.
2.  By using the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, create or designate general ledger accounts of the expense type to be used to track bank charges. You will specify these accounts as offset accounts when you create entry types. Depending on your company's policies, you can use one account and multiple specific subaccounts for tracking the charges from all banks, or you can use multiple accounts and subaccounts.
3.  Create the needed entry types by using the [Entry Types](CA_20_30_00.md) \(CA203000\) form. For details, see [Entry Types](CA__CON_EntryTypes.md) and [To Add Entry Types for Charges](CA__how_Configuring_Bank_Charges.md).
4.  Make sure that for each bank that charges your company for payment processing, cash accounts have been configured on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form.
5.  Associate the created entry types with the bank accounts by using the **Entry Types** tab of the [Cash Accounts](CA_20_20_00.md) form. For details, see [To Create a Cash Account](CA__How_to_Create_Cash_Account.md).

After the configuration is completed, you can use the created entry types to record bank charges for payments made by using the payment methods allowed for bank accounts. \(Allowed payment methods are listed on the **Payment Methods** tab of the [Cash Accounts](CA_20_20_00.md) form.\)

**Attention:** Entry types are not directly linked to the vendor accounts of the particular banks.

## Collection of Finance Charges {#section_uxc_kjv_vxb .section}

Once the finance charges are configured, their amounts can be recorded on each payment that passes through the financial institution.

For accounts payable, you can add bank charges to payments by using the **Charges** tab on the following forms:

-   [Checks and Payments](AP_30_20_00.md) \(AP302000\): To add charges to AP payments
-   [Cash Purchases](AP_30_40_00.md) \(AP304000\): To add charges to cash purchases

**Attention:** On the [Checks and Payments](AP_30_20_00.md) form, finance charges cannot be created for vendor refunds, debit adjustments, and prepayments.

For each AP payment, in the Summary area of one of the forms listed above, you can view the original amount of the document and the total amount of finance charges.

For accounts receivable, you can add charges to customer payments by using the **Charges** tab of the following forms:

-   [Payments and Applications](AR_30_20_00.md) \(AR302000\): To add charges to customer payments, prepayments, and customer refunds
-   [Cash Sales](AR_30_40_00.md) \(AR304000\): To add charges to cash sales

**Attention:** On the [Payments and Applications](AR_30_20_00.md) form, finance charges cannot be created for credit memos.

For each AR payment \(on the respective form\), you can view the original amount of the document, the total amount of finance charges, and the total amount of charges that the financial institution deducted from or applied to the payment amount.

**Tip:** Even if the specific finance charges were deducted from the customer payment, on either form, the original payment amount is shown, so that you can apply it to customer documents.

For cash management, you can add charges to funds transfers and deposits on the following forms:

-   [Funds Transfers](CA_30_10_00.md) \(CA301000\) To add expenses to funds transfers by clicking the **Add Expense** button on the table toolbar of the form
-   [Bank Deposits](CA_30_50_00.md) \(CA305000\) To add charges to bank deposits on the **Charges** tab of the form

For each bank deposit, in the Summary area of the respective form, you can view the original deposit amount, the total amount of finance charges, and the total amount of the deposit.

For each funds transfer, you can view the transfer amount \(in the Summary area\) and the list of finance charges to be applied in the table of the respective form.

## Generation of Finance Charge Transactions {#section_gyc_kjv_vxb .section}

On the release of each document with charges, the system generates a batch of transactions. You can view the batch for a document by clicking the batch reference number, which is displayed on the **Financial** tab of the form that was used to create the document. \(These forms are described in the previous section.\) The reference number of the batch generated for a funds transfer is displayed in the Summary area of the [Funds Transfers](CA_30_10_00.md) form.

For details on finance charge transactions, see [Finance Charge Transactions](CA__CON_FinCharge_Transactions.md).

-   **[Finance Charge Transactions](../UserGuide/CA__CON_FinCharge_Transactions.md)**  

-   **[To Add Entry Types for Charges](../UserGuide/CA__how_Configuring_Bank_Charges.md)**  


**Parent topic:**[Tracking Cash Payments](../UserGuide/CA__MNG_TrackingCashPayments.md)

