# Reclassification of Unknown Payments {#_0aa6d9d7-d41d-435d-8da1-475a0bc1d34b .concept}

During a financial period, you can receive or download a list of the recent bank transactions, which helps you to clear documents in the system regularly. Regular reviews of such a list make visible to your company any transactions that you did not previously know about. These transactions include interest earned, bank charges, incoming Automated Clearing House \(ACH\) payments \(direct debits\), transactions with input errors, bounced checks, incoming wire transfers, and payments made automatically by the bank for standing orders. While you can easily identify some of these transactions, such as interest or bank charges, identification of others may take some time.

Acumatica ERP provides functionality that you can use to record payments without details when they arrive \(or appear on the bank statement\) to special accounts and reclassify them later by adding the details that have become known.

## Configuring Processing of Unknown Payments {#section_pvc_kjv_vxb .section}

To enable this functionality, you configure the processing of unknown payments. Because accounts that temporarily store unknown payments and bank accounts to which you will later reclassify these payments are cash accounts denominated to specific currencies, the processing of unknown payments must be configured separately for each currency involved. For each currency, complete the following steps to configure processing of unknown payments:

1.  To temporarily hold unknown payments in the specific currency, create at least one General Ledger account by using the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form . We recommend that this be an account of the *Liability* type with a name that reflects its intended use; for example, the name may include *Unknown Payments* or *Unrecognized Payments*.
2.  Create a cash account by using the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form linked to the General Ledger account created in Step 1. For details, see [Cash Account Types](CA__CON_CashAccountsTypes.md).
3.  On the [Entry Types](CA_20_30_00.md) \(CA203000\) form, create separate entry types for the incoming and outgoing unknown payments made in this currency. For details, see [Entry Types](CA__CON_EntryTypes.md).
4.  By using the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, bring up each bank account \(to which you will later reclassify unknown payments\) denominated to the specific currency and \(on the**Entry Types** tab\) add the entry type created in Step 2 to the list of entry types allowed for the bank account.

Finally, on the **General** tab \(**Reconciliation Settings** section\) of the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form, in the **Unrecognized Receipts Type** box, specify the entry type to be used by default for unknown payments; this default entry type \(of the *Receipt* or *Disbursement* type\) can be the one associated with the currency used most often by your customers.

Once the configuration is finished, you may proceed with the recording and further reclassification of the unknown payments.

## Processing Unknown Payments {#section_uvc_kjv_vxb .section}

When you detect an unknown payment on the bank statement, you process it as follows:

1.  On the [Cash Transactions](CA_30_40_00.md) \(CA304000\) or [Cash Account Details](CA_30_30_00.md) \(CA303000\) form, create a cash transaction and use the appropriate entry type for an unknown payment that appears on this bank account. The transaction records the unknown payment as if it is made from the unknown payment account \(the offset account for the entry\) to the bank cash account.
2.  Once the details of the payment become known, on the [Reclassify Payments](CA_50_65_00.md) \(CA506500\) form, specify the appropriate selection criteria to locate the payment. Once you locate the payment, specify its details, which at minimum should include the module of origin, the actual payer or recipient \(that is, customer or vendor\), the customer or vendor location, and the applicable payment method and release it. Upon release of the payment, the payment amount will be moved from the unknown payment account to the appropriate Accounts Payable or Accounts Receivable account. You can view the resulting document by clicking the **View Resulting Document** button on the form toolbar.

    **Note:** The system assigns to the resulting document the payment reference number specified in the **Document Ref.** box of the initial unknown payment.


After reclassification, you have the correct transaction between the cash account and the AR or AP account, which can be reconciled with the bank statement and traced in the customer or vendor documents, and the amount on the temporary account is reversed. For details, see [Reclassification Results](CA__CON_ReclassifiedJournalTrans.md).

## Searching for Unknown Payments {#section_yvc_kjv_vxb .section}

You use the [Reclassify Payments](CA_50_65_00.md) \(CA506500\) form to view the released unrecognized payments \(reclassified or not\). As you record the unknown payments by using the dedicated entry type, you start your search by selecting the corresponding entry type in the **Entry Type** box of the form. Then you can further narrow the results by specifying a cash account and date range. The system displays only released unknown payments that require reclassification and have been recorded by using the selected entry type to the specified account.

If you want to view payments that have been reclassified, you additionally select the **Show Reclassified** check box. The system displays the list of reclassified payments. You can view the resulting document by highlighting the needed record and clicking **View Resulting Document** on the form toolbar.

If you want to view recorded unknown payments that have not been released yet, you can use the following forms:

-   [Cash Transactions](CA_30_40_00.md) \(CA304000\): You search for the payment by its reference number. You may specify the document reference number and the cash account as the filter criteria in the reference number selection window.
-   [Cash Account Details](CA_30_30_00.md) \(CA303000\): You search for the payment by selecting the cash account to which you have recorded it and the possible date range, and selecting the **Include Unreleased** check box. You may further narrow the results by filtering the table records by the value of the **Document Ref.** column.
-   [Release Cash Transactions](CA_50_20_00.md) \(CA502000\): You search for the payment by filtering the table records by cash account and transaction description.

You can release a balanced unknown payment by using all of the forms listed above.

-   **[Reclassification Results](../UserGuide/CA__CON_ReclassifiedJournalTrans.md)**  


**Parent topic:**[Tracking Cash Payments](../UserGuide/CA__MNG_TrackingCashPayments.md)

