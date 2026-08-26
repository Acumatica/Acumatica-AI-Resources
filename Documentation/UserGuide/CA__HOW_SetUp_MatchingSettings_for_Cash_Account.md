# To Set Up Transaction Matching Settings Applicable to a Particular Cash Account {#_f60d8a9e-2f69-4a67-b37a-e5a4765fecba .task}

You can define and save a specific set of matching settings that will be applied by the automatic matching process to a particular cash account selected on the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form by performing the following instructions.

## To Set Up Matching Settings to Be Used When a Particular Cash Account Is Selected {#section_kyd_kjv_vxb .section}

1.  Open the [Process Bank Transactions](CA_30_60_00.md) \(CA306000\) form.
2.  In the Selection area, in the **Cash Account** box, specify the cash account for which you want to adjust matching settings.
3.  On the form toolbar, click **Match Settings** to open the **Transaction Match Settings** dialog box.

    This dialog box displays the settings that will be applied for the selected cash account. For cash accounts for which the matching settings were previously modified and saved in this dialog box, by you or another user, the saved matching settings are displayed. For other cash accounts, the default settings configured on the **Bank Statements** [Cash Management Preferences](CA_10_10_00.md) \(CA101000\) form are displayed.

4.  In the dialog box, review the settings and change them if needed as follows:
    1.  In the **Disbursement Matching** section, specify the number of days allowed before or after the bank transaction date \(or both\) for transactions to be considered matching.
    2.  Optional: Select the **Allow Matching to Credit Memo** check box if you want to automatically match receipt bank transactions to AR credit memos.
    3.  In the **Receipt Matching** section, specify the number of days before or after the bank transaction date \(or both\) allowed for transactions to be considered matching.
    4.  In the **Weights for Relevance Calculation** section, specify the relative weights for matching payee names, document dates, and reference numbers. Depending on how the payments received from different customers vary, you should base these weights on the importance of each factor in identifying the documents.
    5.  Optional: Select the **Consider Empty Ref. Nbr. as Matching** check box if you want the system to automatically match transactions with empty reference numbers.
    6.  In the **Date Range for Relevance Calculation** section, specify the average delay for payments and the estimated deviation to be used for relevance calculation.
5.  Click **Save &amp; Close**.

    The settings are saved; they are effective only when the current cash account is selected on the [Process Bank Transactions](CA_30_60_00.md) form \(regardless of whether you or another user selects the cash account on the form\). The default settings and the settings that have been saved for other cash accounts are not affected by these changes.


**Parent topic:**[Processing Imported Transactions](../UserGuide/CA__CON_ProcessingImportTrans.md)

