# Dunning Process Setup: General Information {#_8f9c35a7-ba07-4202-997a-8c63eecf02ea .concept}

Acumatica ERP provides you with capabilities that ease the process of producing dunning letters. Dunning letters are letters of payment collection used to inform your customers of past-due invoices, debit memos, and overdue charges. The form and content of dunning letters generally vary depending on the country in which you perform business. Usually, multiple letters are sent in a sequence. For all customers, the dunning process checks customers' due documents and gives you the ability to prepare and send reminder letters of different levels of severity.

To start producing dunning letters, you define the process settings that suit your company \(one-time setup\) and then you run the process when needed. As a result of executing the process, you have prepared dunning letters that can be emailed to customers or printed to be sent by postal mail.

The functionality is available if the *Dunning Letter Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

In this topic, you will read about the dunning process options offered by Acumatica ERP and the general steps of setting up the process.

## Learning Objectives {#section_tvd_hjv_vxb .section}

In this chapter, you will learn how to implement the dunning process in the system.

## Applicable Scenarios {#section_vvd_hjv_vxb .section}

You implement the dunning process if you want to inform your customers about past-due documents by sending them dunning letters.

You can create the text of successive dunning letters, varying in tone and content from a polite first letter informing the customer about unpaid invoices to a last letter mentioning all allowable collection options. We recommend that these letters be sent at carefully selected intervals so that a customer with intent to pay has enough time between letters to settle all invoices before the arrival of the next letter.

## Dunning Process Options {#section_yvd_hjv_vxb .section}

In Acumatica ERP, you can select how the system prepares dunning letters: by grouping overdue documents by customer account \(the *By Customer* option\) or by grouping overdue documents by customer and by the dunning level of a document \(*By Document*\). You select the appropriate option in the **Dunning Process** box on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. By default, the *By Customer* option is selected. If you want more manual control over the process, you can select the *By Document* option.

**Tip:** We recommend that you make the **Dunning Process** selection when you begin implementing the process and keep that setting. You can switch from *By Customer* to *By Document*, but switching from *By Document* to *By Customer* is not recommended.

You can use the following forms to view the history of dunning letters that have been produced:

-   [Dunning Letter History by Customer](AR_40_80_00.md) \(AR408000\): Shows the history of dunning letters that have been produced for the selected customer account
-   [Dunning Letter History by Document](AR_40_85_00.md) \(AR408500\): Displays the history of dunning letters that have been produced for documents of the selected customer account

## Dunning Level of a Document {#section_cwd_hjv_vxb .section}

A dunning level is a rule that defines a range for days past due, days to settle, and the amount of the dunning fee. A dunning level acts as a filter when you print or email dunning letters. By default, dunning level 1 has 30 days past due and 3 days to settle, and each new dunning level has 30 more days past due. When specifying these dunning settings, you can override the default values.

A dunning level is associated with a particular document \(invoice or credit memo\). The system assigns a dunning level to a document that is equal to the level of the last dunning letter that included this document. If the document has not been included in a dunning letter yet, the system sets the dunning level to *0* for the document.

You can view the current dunning level of a document in the **Dunning Info** section on the **Financial** tab of the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. Also, in this section, you can view the date of the last released dunning letter that included this document.

## Dunning Level of a Customer Class {#section_gwd_hjv_vxb .section}

On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, you can define the dunning levels to be used by default for new customer classes, using the most typical levels. \(If you do not define them, they cannot be used for customer classes at all.\) If dunning levels have been specified in the AR settings, they can also be defined for specific customer classes. For example, different dunning processes can be required for business-to-business \(B2B\) customers and business-to-consumer \(B2C\) customers, for key customers and regular customers, and for customers located in different countries.

You define the dunning levels of a customer class on the **Dunning** tab of the [Customer Classes](AR_20_10_00.md) \(AR201000\) form. When you create a new customer class on the [Customer Classes](AR_20_10_00.md) form, the list of dunning levels is copied to the **Dunning** tab from the [Accounts Receivable Preferences](AR_10_10_00.md) form. A customer always inherits the dunning levels of the customer class, and they cannot be overridden for the individual customer.

For the class you are defining, you can delete unneeded levels, change the settings of existing levels, and add new levels that were not defined on the [Accounts Receivable Preferences](AR_10_10_00.md) form. At any time, you can change the dunning levels specified for a customer class on the [Customer Classes](AR_20_10_00.md) form and for accounts receivable on the [Accounts Receivable Preferences](AR_10_10_00.md) form.

The dunning levels specified on the [Accounts Receivable Preferences](AR_10_10_00.md) form are used for only the creation of new customer classes. If the dunning settings on the [Accounts Receivable Preferences](AR_10_10_00.md) form are changed, the dunning level settings defined for existing customer classes are not updated. To change the dunning levels for existing customers, you should update the dunning levels of the appropriate customer class on the [Customer Classes](AR_20_10_00.md) form.

## Exclusion from the Dunning Process {#section_lwd_hjv_vxb .section}

You can exclude a customer account from the dunning process, regardless of what option is selected for the dunning process. To do this for a customer, you clear both the **Send Dunning Letters by Email** and **Print Dunning Letters** check boxes in the **Print and Email Settings** section on the **Billing** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form.

If you prepare dunning letters by document \(that is, if the *By Document* option is selected in the **Dunning Process** box\), you can exclude a particular document from the dunning process by selecting the **Revoked** check box that appears in the **Dunning Info** section of a document \(the [Invoices and Memos](AR_30_10_00.md) form\). For example, suppose that the dunning level of a particular document is 1, and it is time to prepare dunning letters; however, the customer has notified you that the invoice is settled, but because of bank holidays, the payment is late. By selecting the **Revoked** check box for the document, you can exclude this invoice from the dunning process to avoid negatively affecting your company's relations with this customer.

**Attention:** If you prepare dunning letters by customer, a particular document cannot be excluded from the dunning process.

## Dunning Fee Collection {#section_pwd_hjv_vxb .section}

You may want to charge your customers for the expenses your company incurs while sending dunning letters. If you do this, you can specify a numbering sequence, which the system will use when it assigns numbers to dunning fees, in the **Dunning Fee Numbering Sequence** box on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. If you leave this box empty, when the system assigns numbers to dunning fees, it uses the numbering sequence specified in the **Invoice Numbering Sequence** box of the form.

On the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) form, you can specify the amount of the dunning fee for each level. You specify a dedicated non-stock item that provides a sales account and a subaccount \(if applicable\) to register the collected fee, and a tax category.

**Tip:** Make sure that a correct account and a subaccount \(if applicable\) are specified for the non-stock item in the **Sales Account** and **Sales Sub.** boxes on the **GL Accounts** tab of the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

When a dunning letter of a particular level is released, the system generates an invoice for customer with the fee amount specified for the level. This invoice is created with the *Balanced* status. You can adjust the fee amount, if needed, and then release the invoice on the [Invoices and Memos](AR_30_10_00.md) form.

**Attention:** If the dunning fee amount is set to *0.00*, no invoice is generated.

If you do not need to adjust any dunning fee invoices, you can configure the automatic release of dunning fee invoices when corresponding dunning letters are released. To do this, select the **Automatically Release Dunning Fee Documents** check box on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) form.

**Attention:** The amount of the dunning fee is converted to the customer's currency if the **Enable Currency Override** check box is cleared on the [Customers](AR_30_30_00.md) form.

## Dunning Process Configuration {#section_xwd_hjv_vxb .section}

You need to perform the following steps to set up the dunning process:

1.  *Dunning process setup*: You configure the process of generating and sending dunning letters on the **Dunning** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form. You can specify the settings for the levels, the dunning fee details, and the sending criteria for each letter in the sequence. Also, you can define the number of days you offer a customer to settle the due document. For details on configuring the dunning process, see [Dunning Process Setup: Implementation Activity](CreditPolicy_Dunning_Process_Setup_Implem_Activity.md).
2.  *Report modification*: If the default design of the [Dunning Letter](AR_66_10_00.md) \(AR661000\) report does not suit you, you can modify it by using the Acumatica Report Designer.
3.  *Mailing configuration*: If you plan to send dunning letters by email, you need to configure the *DUNNINGLETTER* mailing for a customer class or a customer. If you want to send an email attachment with the details of due documents, select the [Dunning Letter](AR_66_10_00.md) report to generate it. For details on setting up a dunning letter mailing, see [To Set Up a Dunning Letter Mailing](AR__HOW_Configure_DunningLetter_Mailing.md).

When you have finished setting up the process, you may proceed to preparing and sending dunning letters.

**Parent topic:**[Setting Up the Dunning Process](../UserGuide/CreditPolicy_Dunning_Process_Setup_Mapref.md)

