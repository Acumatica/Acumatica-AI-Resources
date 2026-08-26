# Use of User Input Translations {#_3a886bbf-f41b-4386-a224-0a9d9bfa32bc .concept}

Starting with Acumatica ERP 6, you can translate user input for multiple text boxes in the system. That is, you can maintain your data in multiple languages. These data translations can later be used in printed reports and documents.

In this topic, you will read about how to print reports and documents, how to send notifications in the language preferred by the customer or vendor, and how the system searches for translations.

## Printing Localized Reports {#section_qbt_bkm_jw .section}

If you have enabled multilingual user input and provided translations for the fields that supply data to a report, you can prepare a fully localized report—that is, a report whose strings \(headers and footers\) and data are localized. By default, the system prepares a report in the language associated with the locale you used to sign in. You can override this locale by specifying another locale on a report form in the **Locale** box.

Before you prepare a localized report, you should make sure that all of the following preliminary steps have been completed:

1.  All the needed locales are added and activated on the [System Locales](SM_20_05_50.md) \(SM200550\) form. For step-by-step instructions, see [To Add a New Locale](SM__how_Add_Locale.md).
2.  Multilingual user input is set up, as described in [Enabling Multilingual User Input](SM__CON_Locales_and_Languages.md#section_lqy_4c2_jw).
3.  The user interface is localized, including reports. For details, see [Translation Process](SM__con_Translation_Process.md) in the System Administration Guide and [Report Localization: General Information](RD_Localization_of_Reports_GeneralInfo.md) in the Acumatica Report Designer Guide.
4.  There are translations for the fields that supply data to the report.

Once you have finished, you can prepare a fully localized report as follows:

1.  You select the needed locale in the **Locale** box on the report form.
2.  You run the report.

    The system prints the localized version of the report, where the report's strings and report's data are translated to the language of the locale you have selected on the report form.


If you have not selected a locale on the report form, the system prepares the report in the language of the locale you are currently signed in with.

**Attention:** A user may specify a locale while constructing a report by using the Report Designer. The locale setting from the Report Designer overrides the locale you used to sign in, but not the locale you specified in the **Locale** box on the report form.

For example, suppose that your company utilizes two locales: `en-US` and `fr-CA`. English is set up as the default language, and French is the alternative language. Some of the company's personnel speak English and some speak French. Also, the company's data—such as descriptions of GL accounts and descriptions in inventory items—is maintained in two languages.

Further suppose that a user who prefers working under the English locale needs to prepare a report in French for his or her French-speaking manager. The user opens the report form, selects the French locale in the **Locale** box, and runs the report. The system prepares the report in French, regardless of the locale the user is currently signed in with.

## Printing Localized Documents { .section}

You can associate a locale with a customer or vendor. If you do, with the enabled multilingual user input, when you create a document for this customer or vendor and add a document line with an inventory item, the system does the following:

-   Populates the column with descriptions of inventory items in the language specified for the customer or vendor
-   Applies to the document the region-specific settings defined for the locale you are currently signed in with
-   Populates the boxes for which translations are available with the values in the language of the locale you used to sign in

For example, suppose that you work under the `en-US` locale. You associate a customer with some French locale, such as `fr-CA`, and enter translations of inventory item descriptions in French. Then you create an invoice on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, select the customer, and add an inventory item. The system populates the descriptions of credit terms, GL accounts and subaccounts, taxes, and the payment method of the customer in English. But the system populates the **Transaction Descr.** column with the item description in French. When you release the invoice, this item description in French is posted to the ledger as the GL transaction description.

**Attention:** The system supports the described behavior for documents that you create on the following forms: [Bills and Adjustments](AP_30_10_00.md) \(AP301000\), [Cash Purchases](AP_30_40_00.md) \(AP304000\), [Invoices and Memos](AR_30_10_00.md) \(AR301000\), [Cash Sales](AR_30_40_00.md) \(AR304000\), [Sales Orders](SO_30_10_00.md) \(SO301000\), and [Invoices](SO_30_30_00.md) \(SO303000\).

You may frequently need to print reports that are versions of documents created in Acumatica ERP, as with the [Invoice/Memo](AR_64_10_00.md) \(AR641000\) and [Sales Order](SO_64_10_10.md)\(SO641010\) reports.

You can initiate the printing of a document directly from its entry form. If you are signed in with the locale that is specified for the customer or vendor and you have translated the strings of the report for this locale, the system will print a fully localized document. Otherwise, the system will print the document with only the description of the inventory items in a customer's preferred language.

For example, suppose that a customer wants to receive sales orders in French. You should perform the following steps:

1.  Make sure that the strings of the [Sales Order](SO_64_10_10.md) \(SO641010\) report, which corresponds to sales orders created on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, are translated in French.
2.  Make sure that descriptions of inventory items, taxes, and credit and shipping terms have French translations.
3.  Specify `fr-CA` as the customer's locale.
4.  Sign in with the `fr-CA` locale, and create a sales order for the customer on the [Sales Orders](SO_30_10_00.md) form.
5.  Initiate printing of the sales order by clicking **Print Sales Order** on the More menu, and the system opens the ready-to-print sales order in French.

Also, you can print a document by using the corresponding report form. On the report form, you select the reference number of the document, specify locale of the customer or vendor in the **Locale** box, and run the report. The system opens the ready-to-print document in the language of the locale you have specified. For details, see the previous section in this topic.

## Sending Localized Notifications { .section}

Multilingual user input can also be used in correspondence you send to your customers and vendors by means of Acumatica ERP mailings, which are described in detail in [Mailings for Customers: General Information](Finance_PredefinedMailings_Customers_GeneralInfo.md). Starting with Acumatica ERP 6, you can specify a locale for a notification template. The system uses the assigned locale to apply region-specific settings to the text, dates, and digits in the body of the notification template. The system also retrieves the translations of the values needed to replace the placeholders in the body according to the language of the locale.

If you want to send mailings in the language preferred by a customer or a vendor, you need to set up the system as follows:

1.  You create a dedicated notification template on the [Email Templates](SM_20_40_03.md) \(SM204003\) and specify the locale of the needed language in the **Locale** box. You also compose the notification text in the language of the locale. For details on creating a notification template, see [Email Templates](EM__con_Notification_Templates.md).
2.  If you want to send a document as an attachment, you create a dedicated report for this document type—for example, a copy of the [Invoice/Memo](AR_64_10_00.md) \(AR641000\) report—by using the Report Designer. You enter the strings of the report \(headers and footers\) in the same language that you used to compose the notification and, in the report settings, specify the same locale as you specified for the notification template. For details, see [Report Creation: General Information](RD_Creating_Report_GeneralInfo.md) in the Acumatica Report Designer Guide.
3.  You group the customers or vendors who prefer the same language to one customer or vendor class. For this class, you specify a locale that is associated with the language in the **Locale** box of the [Customer Classes](AR_20_10_00.md) \(AR201000\) or [Vendor Classes](AP_20_10_00.md) \(AP2010100\) form.

    **Attention:** The system will assign the locale to the new customer or vendor accounts automatically when you select the customer or vendor class for the account on the [Customers](AR_30_30_00.md) \(AR303000\) or [Vendors](AP_30_30_00.md) \(AP303000\) form. For existing vendors and customers, you need to manually select the preferred locale for each account.

4.  You configure the mailing settings for the customer or vendor class on the **Mailing &amp; Printing** tab of the [Customer Classes](AR_20_10_00.md) or [Vendor Classes](AP_20_10_00.md) form. For a mailing, you specify the notification template and report you have created.

    **Attention:** The customer or vendor class provides the default settings for the customer or vendor accounts of the class, but you can override these default settings to make the mailing configuration more specific. Mailings modified for specific accounts on the [Customers](AR_30_30_00.md) or [Vendors](AP_30_30_00.md) form are marked by the system as overridden \(that is, the **Overridden** check box is selected on the form\). If you change the configuration of a mailing for a customer or vendor class, these changes affect the mailings of all customer or vendor accounts of this class, except those mailings that were modified specifically for a customer or vendor account \(overridden\).


Once you have performed these configuration steps, when you initiate emailing by using a mass processing form or the corresponding action on an entry form, the system does the following:

1.  Generates emails from the notification template you have created in the preferred language and specified for the customer or vendor on the **Mailing &amp; Printing** tab of the [Customers](AR_30_30_00.md) or [Vendors](AP_30_30_00.md) form.
2.  Applies region-specific settings to each email body.
3.  Replaces any placeholders with the corresponding translations \(if placeholders are used for the values for which translations are available\).
4.  Attaches the report that you have created in the preferred language and specified for the customer or vendor on the **Mailing &amp; Printing** tab.

As a result, customers and vendors receive notifications in their preferred languages.

## Troubleshooting User Input Translations {#_847db9a7-b760-4bef-a7b2-8ebeb3e05ff3 .section}

Once you have entered translations for multiple boxes that have multilanguage support and you start using these translations in documents or reports, you may realize that some translations are missing. In most cases, this means that you have not entered a translation, and the system is displaying the value entered for the default language or another alternative language. The system searches for a translation as follows:

1.  If a locale is specified for the applicable customer, vendor, or report, the system searches for a translation available for the language of the locale. If this translation is available, the system ends the search and displays the translation.
2.  If a translation for the language of the locale assigned to the customer, vendor, or report is not available or a locale is not specified for these entities, the system searches for a translation specified for the language of the locale you used to sign in. If a translation for the locale language is available, the system ends the search and displays the translation.
3.  If a translation for the locale language is not available, the system searches for a translation specified for the language selected as the default on the [System Locales](SM_20_05_50.md) \(SM200550\) form. If a translation for the default language is available, the system ends the search and displays the translation.
4.  If the translation for the default language is not available, the system searches for a translation specified for any language selected as an alternative on the [System Locales](SM_20_05_50.md) form, in the sequence specified for alternative languages in the **Sequence** column on this form. If a translation for some alternative language is available, the system ends the search and displays the translation.
5.  If no translation is available, the system displays an empty value.

When the system displays a translation of a value in a box with multilanguage support, it always displays the ISO code of the corresponding language on the right side of the box.

**Parent topic:**[Managing Locales and Languages](../UserGuide/SM__mng_Locales.md)

