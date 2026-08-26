# To Set Up Default Transaction Matching Settings {#_a4c0444d-bfbd-47a3-a315-47b7e7d7de94 .task}

On the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form, you specify the default matching settings to be used by the automatic matching process on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form by performing the following instructions.

## To Set Up Default Matching Settings {#section_nxd_kjv_vxb .section}

1.  Open the [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form.
2.  On the **Bank Statements** tab, review the settings and change them if needed as follows:
    1.  In the **Disbursement Matching** section, specify the number of days allowed before or after the bank transaction date \(or both\) for transactions to be considered matching.
    2.  Optional: Select the **Allow Matching to Credit Memo** check box if you want to automatically match receipt bank transactions to AR credit memos.
    3.  In the **Receipt Matching** section, specify the number of days before or after the bank transaction date \(or both\) allowed for transactions to be considered matching.
    4.  In the **Invoice Matching** section, select whether invoices should be matched by cash account or by discount and due dates by selecting the **Match by Cash Account** and **Match by Discount and Due Date** check boxes respectively. If you have selected the latter option, specify the needed number of days in the boxes of this section that become available.
    5.  In the **Other Matching Settings** section, specify additional matching settings by selecting the needed check boxes.
    6.  In the **Auto-Match Thresholds** section, review the default values of absolute and relative thresholds and change them, if necessary.

        **Note:** The default values of the **Absolute Relevance Threshold** box \(`75`\) and the **Relative Relevance Threshold** box \(`25`\) are recommended values.

3.  On the **Relevance Calculation** tab, review the settings and change them if needed as follows:
    1.  In the **Payment and Expense Receipt Relevance** section, specify the relative weights for matching payee names, document dates, reference numbers, and average delay for payments and estimated deviation to be used for relevance calculation. Depending on how the payments received from different customers and expenses vary, you should base these weights on the importance of each factor in identifying the documents.
    2.  Optional: Select the **Consider Empty Ref. Nbr. as Matching** check box if you want the system to automatically match transactions with empty reference numbers.
    3.  In the **Invoice Relevance** section, specify the relative weights for matching payee names, document dates, reference numbers, and average delay for invoice payments and estimated deviation to be used for relevance calculation.
4.  Click **Save** on the form toolbar.

    The saved settings will be applied on the [Process Bank Transactions](CA_30_60_00.md) form if no settings have been specified and saved on this form for a particular cash account.


**Parent topic:**[Processing Imported Transactions](../UserGuide/CA__CON_ProcessingImportTrans.md)

