# Transaction Matching Settings {#_99faa10e-e414-4df5-9973-b715fd6c0d6f .concept}

In Acumatica ERP, you can tailor the settings of the automatic matching process to suit your company's needs.

The automatic matching process uses the available information about imported transactions for searching matching documents and for calculating the relevance rate, which is a measure of how closely a document matches the selected transaction.

The default settings that the system uses for relevance calculation are specified on the **Bank Statements** tab of the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form. However, you can specify matching settings that apply to a particular cash account by using the **Transaction Matching Settings** dialog box, which opens when you select the cash account and click **Match Settings** on the form toolbar of the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form. These settings are applied when the cash account is selected on the form, regardless of the user working on the form.

During the matching process, the system uses the first two sections of the matching settings—**Disbursement Matching** and **Receipt Matching** on the **Matching Settings** tab—to filter payments and expense receipts by date. The documents whose dates fall into the specified range are considered candidates for calculating the match relevance rate. You can also select the **Allow Matching to Credit Memo** check box to make the system match receipt bank transactions to AR credit memos prior to matching them to AP bills. The system uses the **Invoice Matching** section to filter invoices based on their due date or discount date or by cash account.

Then the system uses the settings specified on the **Relevance Calculation** tab—**Payment and Expense Receipt Relevance** and **Invoice Relevance**—to calculate the matching relevance for all documents. You can select the **Consider Empty Ref. Nbr. as Matching** check box to make the system automatically match bank transactions to cash transactions with empty reference numbers.

For each matching document, the system displays the calculated rate in the right column on the **Relevance Calculation** tab. The match relevance rate is between 0.00 and 100.00. The best match is the cash transaction with the highest rate or a significantly high rate \(see the details in [Bank Reconciliation: Additional Information](finance_Bank_Reconciliation_Transaction_Comparison_and_Match_Relevance.md)\). The system uses the settings specified in the **Auto-Match Thresholds** section for automatically matching invoices and payments.

**Parent topic:**[Processing Imported Transactions](../UserGuide/CA__CON_ProcessingImportTrans.md)

