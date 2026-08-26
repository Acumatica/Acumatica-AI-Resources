# Accounts Receivable: Adjustment of AR Preferences {#_0dd8b5bc-c399-457e-b3cc-26e6d76fd23b .concept}

Initial configuration of the Accounts Receivable module was performed during implementation. This topic describes settings on the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form that you should reconsider because they control customer settings and your interactions with customers. You should review these settings, which are described below, and change them as needed before you begin setting up customer accounts.

## Speeding of Data Entry {#section_pxk_4jv_vxb .section}

To help make data entry easier and more error-proof, you can use the following settings on the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) form:

-   **Default Customer Class ID**: Here you specify the customer class whose values are shared by most customer classes and customers. Then when you create a new customer class or a new customer account, the corresponding elements on the form will be populated with the values of the default customer class automatically, thus speeding data entry. \(You should have already specified the default customer class, as described in [Customers: Customer Class Settings](../UserGuide/AR__CON_CustomerClasses.md), and used it to ease the creation of other customer classes.\)
-   **Combine Sales Sub. from**: In this box, you can specify the rule to create the default sales subaccount \(if subaccounts are used in your system\) for use on Accounts Receivable documents. This default subaccount can have its values for different segments taken from different subaccounts related to the document. For each segment of the resulting sales subaccount, you can specify from which subaccount—such as the company's branch, customer location, inventory item, or employee account—the segment value should be copied. For details, see [Combined Subaccounts: To Define a Subaccount Mask for AR Documents](config_Combined_Subaccounts_Implem_Activity.md).
-   **Balance Write-Off Reason** and **Credit Write-Off Reason Code**: In these boxes, you specify the reason codes to be used by default for writing off credits and balances. The system will fill in the reason codes specified here in the **Reason Code** box on the [Write Off Balances and Credits](../UserGuide/AR_50_50_00.md) \(AR505000\) form when you select the type of write-off operation, as well as on the [Payments and Applications](../UserGuide/AR_30_20_00.md) \(AR302000\) form. For details on write-off functionality, see [Direct Write-Offs: General Information](../UserGuide/Finance_Direct_Write-Offs_GeneralInfo.md) and [Direct Write-Offs: Write-Off Setup](../UserGuide/AR__CON_SettingUp_WriteOffs.md).

## Printing and Emailing of Documents {#section_txk_4jv_vxb .section}

To make the printing and emailing of invoices and memos a required step before these documents are released, you should select the following check boxes: **Require Invoice/Memo Printing Before Release** and **Require Invoice/Memo Emailing Before Release**. When you create an invoice for a customer that prefers to receive a printed copy of the documents—that is, the **Print Invoices** check box is selected for the customer on the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form—the invoice is created with the *Pending Print* status. After you have printed the invoice, its status is changed to *Balanced* and you can release it. To print Accounts Receivable documents, use the [Print/Email AR Documents](../UserGuide/AR_50_80_00.md) \(AR508000\) form.

## Preparation of Consolidating Statements and Dunning Letters {#section_vxk_4jv_vxb .section}

Depending on the policies established in your company, you can prepare a single consolidated statement for each customer or prepare multiple statements for each branch of your company. To prepare consolidated statements for all customers, select the **Consolidate Statements for All Branches** check box, and in the **Statement From** box, select the branch that will be specified as the sender.

You can prepare consolidated dunning letters as well. To prepare consolidated dunning letters for all customers, select the **Consolidate Dunning Letters for All Branches** check box, and in the **Dunning Letter from Branch** box, select the branch that will be specified as the sender.

## Managing Mailings {#section_yxk_4jv_vxb .section}

To inform your customers of past-due invoices, debit memos, and overdue charges, you can configure the sequence of dunning letters on the **Dunning Settings** tab of the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form. You can specify the sending criteria for each letter in the sequence. Also, you can define the number of days you offer a customer to settle the due document before the next letter is sent. If a customer account has at least one due document that meets the specified criteria, you can prepare and send a dunning letter. Note that you need to configure a corresponding mailing to be able to prepare and send dunning letters. For details, see [To Set Up a Dunning Letter Mailing](../UserGuide/AR__HOW_Configure_DunningLetter_Mailing.md).

To inform your customers of new invoices, their balance, and the expiration of a credit card, you can configure multiple mailings. The list of predefined mailings is available on the **Mailing Settings** tab of the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) form. On this tab, you can modify the list of mailings as it to be copied to a new customer class and configure the basic settings of each mailing. Also, if the Sales Orders module is activated, the mailings listed on the **Mailing Settings** tab of the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form are also copied to a new customer class.

For details on configuring mailings, see [Mailings for Customers: General Information](../UserGuide/Finance_PredefinedMailings_Customers_GeneralInfo.md).

**Parent topic:**[Accounts Receivable](../ImplementationGuide/config_AR_Mapref.md)

