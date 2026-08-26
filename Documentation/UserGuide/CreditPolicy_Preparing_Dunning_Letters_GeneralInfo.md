# Preparation of Dunning Letters: General Information {#_f7d716c4-e289-4904-a23d-0873ce080a5f .concept}

In Acumatica ERP, the [Dunning Letter](AR_66_10_00.md) \(AR661000\) report is used to generate a printed version of a dunning letter. You can control the look and feel of this report in addition to the reporting functions. You can use the default report or customize the report by using the Acumatica Report Designer. You can provide settings specifying who will receive the report-based email and which format should be used, as well as possibly a specific template to be used as the email body \(for email personalization\). For details on modifying reports, see the [Acumatica Report Designer Guide](ReportDesigner_Main.md).

## Learning Objectives {#section_eb2_hjv_vxb .section}

In this chapter, you will learn how to do the following:

-   Run and review the [AR Aging](AR_63_10_00.md) \(AR631000\) report
-   Prepare dunning letters by using the *By Customer* dunning process

## Applicable Scenarios {#section_gb2_hjv_vxb .section}

You prepare and send dunning letters if you want to remind your customers about overdue documents they must pay.

## Appearance and Content of Dunning Letters {#section_ib2_hjv_vxb .section}

By using the [Dunning Letter](AR_66_10_00.md) \(AR661000\) report form, you can print a dunning letter by using the **Print** action on the report toolbar or email it by using the **Send** action. By default, the system generates an email based on the *DunningLetterNotification* notification template, which you can edit by using the [Email Templates](SM_20_40_03.md) \(SM204003\) form.

If you want to print or email multiple letters at once, you can use the [Print/Release Dunning Letters](AR_52_20_00.md) \(AR522000\) mass-processing form. The mass-emailing process requires the mailing with the *DUNNINGLETTER* identifier to be configured for the customer accounts that you plan to notify. For details on mailings, see [Mailings for Customers: General Information](Finance_PredefinedMailings_Customers_GeneralInfo.md). For details on the configuration of a dunning letter mailing, see [To Set Up a Dunning Letter Mailing](AR__HOW_Configure_DunningLetter_Mailing.md).

## Documents Included in Dunning Letters {#section_lb2_hjv_vxb .section}

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

You use the [Prepare Dunning Letters](AR_52_10_00.md) \(AR521000\) form to prepare dunning letters. The table on this form lists the customer accounts that have at least one overdue document. You can generate dunning letters for all listed customers or only those you select.

After you have selected the customer accounts that you want to process \(by selecting the check boxes in their rows\), you click **Process** \(on the form toolbar\) to prepare dunning letters. You can instead prepare dunning letters for all records in the table by clicking **Process All**. If the letters have been generated successfully, the system displays a green check mark on the form toolbar. The letters are prepared with the *Released* status and are ready for printing or emailing.

**Tip:** You can schedule the preparation of dunning letters to be performed automatically by using the automation schedule functionality. For details on configuring schedules, see [Scheduling Automated Processing](SA_Scheduling_Automated_Processing_Mapref.md).

When a dunning letter is prepared, the system updates the information in the **Dunning Letter Info** section on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. For each document involved, the system updates the date of the last released dunning letter that included the document, and increases the document's dunning level by one.

If the *Multicurrency Accounting* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system selects the currency for the dunning letter based on the customer's settings. Specifically, it selects the currency based on the state of the **Enable Currency Override** check box on the [Customers](AR_30_30_00.md) \(AR303000\) form:

-   If the check box is cleared for the customer, the dunning letter is created in the customer's currency. This currency is specified in the **Currency ID** box on the **Financial** tab of this form.
-   If the check box is selected for the customer, the dunning letter is created in your company’s base currency. This currency is specified in the **Base Currency ID** box on the **Company Details** tab of the [Companies](CS_10_15_00.md) \(CS101500\) form for the company to which you are signed in.

## Dunning Letter Statuses {#section_qb2_hjv_vxb .section}

During the processing of a dunning letter, the system changes the status of the letter as follows:

-   *Released*: This status indicates that the dunning letter has been prepared and released and can be printed, sent by email, or voided. If a nonzero dunning fee was specified for the level of this letter on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the system also creates the invoice for the dunning fee during the release of the dunning letter. If the **Automatically Release Dunning Fee Documents** check box is selected on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) form, the system automatically releases the invoice when the corresponding dunning letter is released.
-   *Voided*: This status indicates that the dunning letter has been voided, the system decreases the dunning level for each document that was included to this letter, and will process these documents when you prepare a dunning letter for this customer account again.

## Letter Previewing and Sending {#dl_printing .section}

You use the [Print/Release Dunning Letters](AR_52_20_00.md) form to print released dunning letters or initiate the emailing of them. On this form, you can print dunning letters to be sent through postal mail, or generate emails that you can preview before sending them on the [Emails Pending Processing](SM_50_70_00.md) \(SM507000\) form.

**Attention:** This is the default workflow of sending emails; consult your system administrator to find out whether it has been modified.

Letters from all branches can be sent separately or can be consolidated \(on generation\) into a single letter to the customer. This is controlled by the **Prepare Dunning Letters** box on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. In the **Dunning Letter from Branch** box on this tab, you should also select the branch that will be specified as the sender.

**Parent topic:**[Preparing Dunning Letters](../UserGuide/CreditPolicy_Preparing_Dunning_Letters_Mapref.md)

