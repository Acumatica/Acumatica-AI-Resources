# Preparation of Dunning Letters: Dunning Process by Document {#_c7b66536-eb6a-4316-b96c-56f72212bd65 .concept}

You select the *By Document* option in the **Dunning Process** box on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form to specify that when the system prepares dunning letters, it groups overdue documents by customer account and by document dunning level.

You can prepare a separate dunning letter for each document, or you can group the documents of a customer account with different levels into one letter. If you group documents into one letter, in the printed version, the documents are grouped by level.

In general, you prepare dunning letters as follows:

1.  You select the documents for which you want to prepare dunning letters and initiate the preparation. For details, see [Letter Preparation](#dl_prepare).

    **Tip:** Before you start preparing dunning letters, make sure that customers do not have open payments, prepayments, and credit memos that can be applied against outstanding documents.

2.  Optional: You edit the lists of included documents \(if needed\) and release the prepared dunning letters. For more information, see [Letter Editing and Releasing](#dl_release). You can skip this step if you have enabled the automatic release of letters.
3.  You print the reviewed and released dunning letters or send them by email, as described in [Letter Previewing and Sending](#dl_printing).

You can use the following forms to view the history of dunning letters that have been produced:

-   [Dunning Letter History by Customer](AR_40_80_00.md) \(AR408000\): Displays the history of dunning letters that have been produced for the selected customer account
-   [Dunning Letter History by Document](AR_40_85_00.md) \(AR408500\): Shows the history of dunning letters that have been produced for documents of the selected customer account

In this topic, you will read about the letter generation rules, the dunning process workflow, and the way the system changes the status of a dunning letter.

## Dunning Letter Generation Rules {#section_dd2_hjv_vxb .section}

When you group overdue documents by customer account and document dunning level, the generation of the letters is based on the following rules:

-   The letter of the *first* level is generated for a document for which the number of days past due exceeds the number of days specified for this level in the **Days Past Due** box on the **Dunning** tab. The document is marked with the first dunning level.
-   The letter of the *second* level is generated when the document \(whose level is 1\) is still unpaid and the number of days the document is past due exceeds the number of days specified for this level in the **Days Past Due**. The system increases the dunning level of the document. \(If you have only two levels defined, see the description for the letter for the last level.\)
-   The letters of the *next* levels in the sequence are generated similarly to the letters of the second level.
-   The letter of the *last* level for the document is generated if the document is still unpaid and the number of days the document is past due exceeds the number of days specified for this level. When this letter is prepared, the system selects the **Final Reminder** check box for this letter on the [Print/Release Dunning Letters](AR_52_20_00.md) \(AR522000\) form. In this case, the customer account can be selected on the [Manage Credit Holds](AR_52_30_00.md) \(AR523000\) form, so that you can put this account on credit hold. The rest of the overdue documents of this customer account are still included in the dunning process.

    **Attention:** If for some reason the process of dunning letters preparation was delayed for a period of time, the system will shift the dates of dunning letter generation for the period of the delay.


If you want to notify customers receiving dunning letters about all open documents—unpaid \(the due date is still in the future\), due \(the due date has passed\), and overdue \(the number of days past due has exceeded the number of days past due specified for the level\)—you select the **Add Coming-Due Documents** check box on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) form. \(Unpaid and due documents are marked with a level of zero.\) With this check box selected, the system includes open documents as follows: If you prepare a dunning letter for a document associated with the first level, the system includes overdue, unpaid, and due documents. When you prepare the next dunning letter for this document, the system includes overdue and unpaid documents but no due ones.

## Dunning Letter Statuses {#section_hd2_hjv_vxb .section}

During the processing of a dunning letter, the system changes its status as follows:

-   *Draft*: The dunning letter has been prepared and can be released. You can edit the list of customer documents included in the letter. If the **Automatically Release Dunning Letters** check box is selected on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) form, the system skips the *Draft* status.
-   *Released*: The dunning letter has been released and can be printed, sent by email, or voided. If a nonzero dunning fee was specified for the level of this letter \(on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) form\), the invoice for the dunning fee was also created during the release of the dunning letter. If the **Automatically Release Dunning Fee Documents** check box \(on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) form\) is selected, the system automatically releases the invoice when the corresponding dunning letter is released.
-   *Voided*: The dunning letter has been voided, the system has decreased the dunning level for each document that was included in this letter, and these documents are available for preparing a new letter with the *Draft* status.

## Documents Included in Dunning Letters {#section_jd2_hjv_vxb .section}

You can include the following documents in dunning letters, in addition to overdue and open invoices and debit memos:

-   Open credit memos
-   Open payments, prepayments, and refunds

Credit memos are listed in dunning letters with their full amount, even if they have credit terms specified in the **Terms** box on the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) form and cash discounts applied. That is, a cash discount does not reduce the amount of a credit memo included in a dunning letter.

You include additional documents by selecting the **Add Open Payments and Credit Memos** check box on the [Prepare Dunning Letters](../Shared/../UserGuide/AR_52_10_00.md) \(AR521000\) form. Depending on the states of the **Add Coming-Due Documents** and **Add Open Payments and Credit Memos** check boxes, documents are included in the generated dunning letters as described in the *System Behavior* column of the following table.

|Add Coming-Due Documents Check Box|Add Open Payments and Credit Memos Check Box|System Behavior|
|----------------------------------|--------------------------------------------|---------------|
|Cleared|Cleared|Overdue invoices and debit memos are included in the dunning letter.|
|Selected|Cleared|Open invoices and debit memos are included in the dunning letter.|
|Cleared|Selected|Overdue invoices, overdue debit memos, open credit memos, and open payments are included in the dunning letter.|
|Selected|Selected|Open invoices, open debit memos, open credit memos, and open payments are included in the dunning letter.|

When you run the [Dunning Letter](../Shared/../UserGuide/AR_66_10_00.md) \(AR661000\) report, the amounts of the following documents that increase the customer's balance are shown with the plus sign \(+\):

-   Invoices
-   Debit memos
-   Overdue charges
-   Refunds

The amounts of the following documents that decrease the customer's balance are shown with the minus sign \(–\):

-   Credit memos
-   Payments
-   Prepayments

## Letter Preparation {#dl_prepare .section}

You use the [Prepare Dunning Letters](AR_52_10_00.md) \(AR521000\) form to prepare dunning letters. The table lists the overdue documents grouped by customer and by document dunning level. For instance, if a customer account has two overdue documents with different levels, the system will display two rows in the table. If a customer account has two documents with the same level, the system will group the documents into one row.

The way by which you select and process documents affects the contents of the letter that is prepared. If you want to prepare separate dunning letters for documents of the same customer account but each with a different dunning level, you should select one document and click **Process** \(on the form toolbar\); you then select the next one and process it. If you want the system to group into one letter documents of the same customer but with different dunning levels, you should select all of these documents and click **Process**.

After you have selected the documents that you want to process \(by selecting the Included check boxes in their rows\), you click **Process** to prepare these dunning letters. You can instead prepare dunning letters for all records in the table by clicking **Process All**. If the letters have been generated successfully, the system displays a green check mark on the form toolbar. If the **Automatically Release Dunning Letters** check box is cleared on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the letters are prepared with the *Draft* status, and you need to release them; if the check box is selected, the letters are prepared with the *Released* status and are ready for printing or emailing.

**Attention:** You can schedule the preparation of dunning letters to be performed automatically by using the automation schedule functionality. For details on configuring schedules, see [Scheduling Automated Processing](SA_Scheduling_Automated_Processing_Mapref.md).

## Letter Editing and Releasing {#dl_release .section}

If the **Automatically Release Dunning Letters** check box is cleared on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, each generated letter has the *Draft* status, and you can adjust the list of documents included for each letter or delete the draft of the letter itself. The [Print/Release Dunning Letters](AR_52_20_00.md) \(AR522000\) form displays the list of prepared dunning letters. You can highlight the row in the table with the letter you want to edit and click **View Dunning Letter**on the table toolbar. The system navigates to the [Dunning Letter](AR_30_60_00.md) \(AR306000\) form, where you can view and adjust the list of documents.

If you have deleted either the documents from the list or the letter itself \(with all the documents it included\), the system will process these documents the next time you prepare dunning letters.

On this form, you can exclude a particular document from the dunning process by selecting the document in the table and clicking **Revoke** on the table toolbar. The system removes the document from the list and marks it as excluded from the dunning process by selecting the **Revoked** check box in the **Dunning Letter Info** section on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) form for each document involved. \(You can select or clear this check box on the [Invoices and Memos](AR_30_10_00.md) form as well.\)

The deletion or exclusion of documents from the list may influence the level of the dunning letter that is displayed on the **Dunning Letter Level** in the Summary area of the form. The system uses the value of this box to define the dunning fee amount for which an invoice should be generated. If there are documents with different dunning levels included in the letter, the system sets the highest document level \(that is, the level with the largest value\) as the dunning level of the letter. If you delete documents with the highest level, the system decreases the level of the letter.

By using the [Dunning Letter](AR_30_60_00.md) form, you can also release the letter and then print or email it \(or void it, if needed\).

On the [Print/Release Dunning Letters](AR_52_20_00.md) form, you can release groups of dunning letters by selecting the **Release Dunning Letter** action and processing the selected documents or all listed documents.

When a dunning letter is released manually or automatically, the system updates the information in the **Dunning Letter Info** section on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. For each document involved, the system updates the date of the last released dunning letter that included the document, and increases the document dunning level by one.

## Selection of Documents and Modification of Dunning Fees in Dunning Letters {#section_vd2_hjv_vxb .section}

You can review the documents included in dunning letters and dunning fees before you release a dunning letter. Specific documents can be excluded from the dunning letter, and the dunning fee amount can be modified. When the dunning letter is released, the system creates a dunning fee invoice based on the dunning fee specified in the dunning letter.

You can modify dunning fees if the following conditions are met on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form:

-   *By Document* is selected in the **Dunning Process** box.
-   The **Automatically Release Dunning Letters** check box is cleared. Dunning letters are created with the *Draft* status, and their settings can be modified.

**Attention:** If *By Customer* is selected in the **Dunning Process** box on the [Accounts Receivable Preferences](AR_10_10_00.md) form, the **Automatically Release Dunning Letters** check box is always selected, and dunning letters are created with the *Released* status. The default dunning fees specified on the [Customer Classes](AR_20_10_00.md) \(AR201000\) form for the customer class are used in these letters and cannot be modified by users.

You can remove documents from the dunning letter, modify dunning fees, or perform both actions by performing the following general steps:

1.  On the [Prepare Dunning Letters](AR_52_10_00.md) \(AR521000\) form, you prepare the dunning letters.
2.  On the [Print/Release Dunning Letters](AR_52_20_00.md) \(AR522000\) form, you review each prepared dunning letter by clicking the letter and then clicking **View Dunning Letter** on the table toolbar.
3.  On the [Dunning Letter](AR_30_60_00.md) \(AR306000\) form, which opens, you review the dunning letter and remove documents; if the dunning fee should be updated, you modify the value in the **Dunning Fee** box of the Summary area.
4.  You release the dunning letters by clicking **Release** on the form toolbar of the [Dunning Letter](AR_30_60_00.md) or [Print/Release Dunning Letters](AR_52_20_00.md) form.

    For each released dunning letter, the system creates a dunning fee invoice with the dunning fee that you specified. \(You can open the dunning fee invoice by clicking the link in the **Fee Reference Nbr.** box on the [Dunning Letter](AR_30_60_00.md) form.\)


## Letter Previewing and Sending {#dl_printing .section}

You use the [Print/Release Dunning Letters](AR_52_20_00.md) form to print released dunning letters or initiate the emailing of them. On this form, you can print dunning letters to be sent through postal mail, or generate emails that you can preview before sending them on the [Emails Pending Processing](SM_50_70_00.md) \(SM507000\) form.

**Attention:** This is the default workflow of sending emails; consult your system administrator to find out whether it has been modified.

Letters from all branches can be sent separately or can be consolidated \(on generation\) into a single letter to the customer. This is controlled by the **Prepare Dunning Letters** box on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. In the **Dunning Letter from Branch** box on this tab, you should also select the branch that will be specified as the sender.

**Parent topic:**[Preparing Dunning Letters](../UserGuide/CreditPolicy_Preparing_Dunning_Letters_Mapref.md)

