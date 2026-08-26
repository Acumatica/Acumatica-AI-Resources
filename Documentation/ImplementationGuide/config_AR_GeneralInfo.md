# Accounts Receivable: General Information {#_bdf4f0fb-661f-4a67-80e2-f84139972c05 .concept}

For users to be able to define customers and enter and process customer documents in the system, the accounts receivable functionality has to be implemented in Acumatica ERP. The implementation process includes defining statement cycles, creating customer classes, and specifying the accounts receivable preference settings.

## Learning Objectives { .section}

In this chapter, you will learn how to implement the basic configuration of the accounts receivable functionality for a company.

## Applicable Scenarios { .section}

You perform the basic configuration of the accounts receivable functionality during the implementation of Acumatica ERP, after the company has been configured in the system and the general ledger functionality and cash management functionality have been implemented.

## Workflow of the Implementation of the Accounts Receivable Functionality { .section}

To implement the accounts receivable functionality, you perform the following general steps:

1.  On the [Statement Cycles](../UserGuide/AR_20_28_00.md) \(AR202800\) form, you define the necessary statement cycles to track customers' outstanding balances. These cycles will later be used for sending electronic or printed statements to the customers.
2.  On the [Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\) form, you create the default customer class, which will be used to provide default values for customer accounts of the class when they are created and for other customer classes that may be created.
3.  On the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form, you specify the settings to be used in accounts receivable.

## Speeding of Data Entry {#section_pxk_4jv_vxb .section}

To help make data entry easier and more error-proof, you can use the following settings on the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) form:

-   **Default Customer Class ID**: Here you specify the customer class whose values are shared by most customer classes and customers. Then when you create a new customer class or a new customer account, the corresponding elements on the form will be populated with the values of the default customer class automatically, thus speeding data entry. \(You should have already specified the default customer class, as described in [Customers: Customer Class Settings](../UserGuide/AR__CON_CustomerClasses.md), and used it to ease the creation of other customer classes.\)
-   **Combine Sales Sub. from**: In this box, you can specify the rule to create the default sales subaccount \(if subaccounts are used in your system\) for use on Accounts Receivable documents. This default subaccount can have its values for different segments taken from different subaccounts related to the document. For each segment of the resulting sales subaccount, you can specify from which subaccount—such as the company's branch, customer location, inventory item, or employee account—the segment value should be copied. For details, see [Combined Subaccounts: To Define a Subaccount Mask for AR Documents](config_Combined_Subaccounts_Implem_Activity.md).
-   **Balance Write-Off Reason** and **Credit Write-Off Reason Code**: In these boxes, you specify the reason codes to be used by default for writing off credits and balances. The system will fill in the reason codes specified here in the **Reason Code** box on the [Write Off Balances and Credits](../UserGuide/AR_50_50_00.md) \(AR505000\) form when you select the type of write-off operation, as well as on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form. For details on write-off functionality, see [Direct Write-Offs: General Information](../UserGuide/Finance_Direct_Write-Offs_GeneralInfo.md) and [Direct Write-Offs: Write-Off Setup](../UserGuide/AR__CON_SettingUp_WriteOffs.md).

## Deferring of the Release of AR Documents {#section_hyk_4jv_vxb .section}

You select the **Hold Documents on Entry** check box to indicate to the system that a new document should be saved as a draft. That is, the system saves each new document with the *On Hold* status until a user clicks **Remove Hold** on the toolbar of an appropriate form and the system changes the document status to *Balanced*.

**Attention:** For documents with the *Invoice* type, the system may instead change the document status to either *Pending Print* or *Pending Email*.

The **Hold Documents on Entry** setting affects system behavior on the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\), [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\), and [Cash Sales](../UserGuide/AR_30_40_00.md) \(AR304000\) forms. The system behavior controlled by this option applies to all document types that can be created on these forms.

## Error-Proof Entry of Amounts {#section_lyk_4jv_vxb .section}

You select the **Validate Document Totals on Entry** check box to prevent any actions from being performed on a document \(that is still editable\) until a user types the total amount of the document in the **Amount** box, which is displayed on the data entry form if the check box is selected. The amount that the user enters must be equal to the amount calculated by the system.

The **Validate Document Totals on Entry** setting affects system behavior on only the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form. The system behavior controlled by this option applies to all document types that can be created on this form.

## Foolproof Entry of an External Reference Number {#section_uyk_4jv_vxb .section}

You select the **Require Payment Reference on Entry** check box to prevent any actions from being performed on a document \(that is still editable\) until a user types the external reference number of the document in the **Payment Ref.** box, which is displayed on the form. You can turn on auto-numbering for this box when you configure a payment method. For details, see [Payment Methods for Customers](../UserGuide/CA__CON_PMs_for_Customers.md).

The **Require Payment Reference on Entry** setting affects system behavior on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) and [Cash Sales](../UserGuide/AR_30_40_00.md) \(AR304000\) forms. The system behavior controlled by this option applies to all document types that can be created on these forms.

## Printing and Emailing of Documents {#section_txk_4jv_vxb .section}

To make the printing and emailing of invoices and memos a required step before these documents are released, you should select the following check boxes: **Require Invoice/Memo Printing Before Release** and **Require Invoice/Memo Emailing Before Release**. When you create an invoice for a customer that prefers to receive a printed copy of the documents—that is, the **Print Invoices** check box is selected for the customer on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form—the invoice is created with the *Pending Print* status. After you have printed the invoice, its status is changed to *Balanced* and you can release it. To print Accounts Receivable documents, use the [Print/Email AR Documents](../UserGuide/AR_50_80_00.md) \(AR508000\) form.

## Emailing and Printing Settings {#section_oyk_4jv_vxb .section}

You select the **Require Invoice/Memo Printing Before Release** check box to prevent an invoice from being released until a user prints the invoice for those customers who prefer to receive printed copies.

The system assigns the *Pending Print* status to the invoice when a user creates the invoice or clicks **Remove Hold** on the form toolbar if both the following conditions are met:

-   The **Print Invoices** check box is selected for the customer account on the **Billing** tab of the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form.
-   The **Printed** check box is cleared for the invoice on the **Financial** tab of the [Invoices and Memos](../UserGuide/AR_30_10_00.md) \(AR301000\) form.

You select the **Require Invoice/Memo Emailing Before Release** check box to prevent an invoice from being released until a user sends the invoice by email to those customers who prefer to receive invoices by email.

The system assigns the *Pending Email* status to the invoice when a user creates the invoice or clicks **Remove Hold** on the form toolbar if both the following criteria are met:

-   The **Send Invoices by Email** check box is selected for the customer account on the **Billing** tab of the [Customers](../UserGuide/AR_30_30_00.md) form.
-   The **Emailed** check box is cleared for the invoice on the **Financial** tab of the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form.

These settings affect system behavior on only the [Invoices and Memos](../UserGuide/AR_30_10_00.md) form. The system behavior controlled by this option applies to all document types that can be created on this form.

## Managing Mailings {#section_yxk_4jv_vxb .section}

To inform your customers of past-due invoices, debit memos, and overdue charges, you can configure the sequence of dunning letters on the **Dunning Settings** tab of the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form. You can specify the sending criteria for each letter in the sequence. Also, you can define the number of days you offer a customer to settle the due document before the next letter is sent. If a customer account has at least one due document that meets the specified criteria, you can prepare and send a dunning letter. Note that you need to configure a corresponding mailing to be able to prepare and send dunning letters. For details, see [To Set Up a Dunning Letter Mailing](../UserGuide/AR__HOW_Configure_DunningLetter_Mailing.md).

To inform your customers of new invoices, their balance, and the expiration of a credit card, you can configure multiple mailings. The list of predefined mailings is available on the **Mailing Settings** tab of the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) form. On this tab, you can modify the list of mailings as it to be copied to a new customer class and configure the basic settings of each mailing. Also, if the Sales Orders module is activated, the mailings listed on the **Mailing Settings** tab of the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form are also copied to a new customer class.

For details on configuring mailings, see [Mailings for Customers: General Information](../UserGuide/Finance_PredefinedMailings_Customers_GeneralInfo.md).

## Processing of Batches {#section_a5s_jld_sv .section}

The processing workflow of batches generated in the accounts receivable subledger is controlled by settings in the **Posting and Retention Settings** section on the **General** tab of the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form.

By using these settings, you can do the following:

-   Prevent the automatic posting of the batches generated when a document is released. To do this, you clear the **Automatically Post on Release** check box.
-   Switch on the summarizing of amounts of document lines that contain the same sales account in one transaction. To do this, you select the **Post Summary on Updating GL** check box and make sure that the *Summary* option is specified for the sales account in the **Post Option** column on the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form. For details, see the description of the check box in the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) topic.

**Parent topic:**[Accounts Receivable](../ImplementationGuide/config_AR_Mapref.md)

