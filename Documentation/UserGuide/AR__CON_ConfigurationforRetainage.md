# Configuration of the Default Retainage Settings in the Accounts Receivable Subledger {#_dc7aa4f8-7c64-48c4-a34e-a2c3d851697e .concept}

In this topic, you will read about how to set the preference settings related to retainage, how to configure classes for customers who retain amounts on invoices and credit memos, and how to configure particular customers \(and customer locations\) that retain amounts on documents.

## General Retainage Settings {#section_fgq_4jv_vxb .section}

In the **Retainage Settings** section on the **General** tab of the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, you can do the following:

-   To retain the taxes calculated on the retained amount, you select the **Retain Taxes** check box. The system calculates and reports the taxes of the documents with retainage and retainage documents separately. You then need to specify the tax accounts to be credited by the amounts of retained taxes, as described in the [Configuration of Taxes](#_9d3bd148-1ffb-4ced-aa86-4aaeb89e9162) section.

    If this check box is cleared, the full tax amount is paid on the document with retainage.

-   To direct the system to automatically release retainage documents that you create on the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, you select the **Automatically Release Retainage Documents** check box.

To affect the generation of retainage documents on the [Release AR Retainage](AR_51_00_00.md) \(AR510000\) form, in the **Data Entry Settings** section on the **General** tab, you can specify the following setting:

-   Clear the **Hold Documents on Entry** check box to direct the system to automatically remove retainage documents from hold as soon as they are created. With this check box cleared, retainage documents will get the *Pending Approval* status if approvals are set up in your system for the needed document type, or the *Balanced* status if approvals are not used.
-   Select the **Hold Documents on Entry** check box to direct the system to generate retainage documents with the *On Hold* status, irrespective of whether approvals are set up.

## Configuration of Customer Classes {#section_jgq_4jv_vxb .section}

If your company works with documents with retainage, you can specify for a customer class the default retainage receivable account and subaccount \(if applicable\) to record the money that customers of the class withheld from documents. You specify the account and subaccount in the **Retainage Receivable Account** and **Retainage Receivable Sub.** boxes, respectively, on the **GL Accounts** tab of the [Customer Classes](AR_20_10_00.md) \(AR201000\) form.

If you have specified the default account and subaccount for a customer class, for customers of the class, the system inserts these values into the **Retainage Receivable Account** and **Retainage Receivable Sub.** boxes, respectively, on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form for newly added customers.

## Configuration of Particular Customers {#section_mgq_4jv_vxb .section}

For each particular customer for which your company needs to retain a certain amount of each invoice or credit memo total, you can specify default settings as follows on the **General** tab of the [Customers](AR_30_30_00.md) \(AR303000\) form:

-   To direct the system to apply retainage when you create a document for the customer, you select the **Apply Retainage** check box in the **Retainage Settings** section of the **General** tab. If this check box is selected, the **Apply Retainage** check box is selected by default for each invoice and credit memo of the customer on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form. If this check box is cleared for the customer, the **Apply Retainage** check box is cleared for the invoices and credit memos of the customer on the [Invoices and Memos](AR_30_10_00.md) form by default, and you can select it manually to retain a part of amount of a particular document.
-   If the **Apply Retainage** check box is selected, to specify the default percent to be retained from the line amount of each document of the customer, you specify the percent in the **Retainage Percent** box in the same section. The system enters this percent for each document of the customer in the **Default Retainage Percent** box on the **Retainage** tab on the [Invoices and Memos](AR_30_10_00.md) form, and this percent is applied by default to all lines on the **Details** tab.

If no Retainage Receivable account and subaccount \(if subaccounts are used in your system\) are specified for the class to which the customer is assigned, you can specify the account and subaccount in the **Retainage Receivable Account** and **Retainage Receivable Sub.** boxes, respectively, on the **GL Accounts** tab of the [Customers](AR_30_30_00.md) form. This account and subaccount you specify will be used to record the amount that the customer owes to your company for the invoices.

Also, if the system has inserted the Retainage Receivable account and subaccount \(if applicable\) specified for the customer class to which the customer is assigned, you can override the default account and subaccount of the class in the **Retainage Receivable Account** and **Retainage Receivable Sub.** boxes, respectively.

The default values provided for the customer can be overridden for a particular document.

## Configuration of a Particular Customer Location {#section_rgq_4jv_vxb .section}

**Note:** You can create and configure multiple customer locations only if the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.

For the default location, the Retainage Receivable account and subaccount \(if applicable\) are those you have specified for the customer. If a customer has multiple locations and the **Same As Default Location's** check box is selected on the **GL Accounts** tab of the [Customer Locations](AR_30_30_20.md) \(AR303020\) form for a non-default location, the non-default location has the same the Retainage Receivable account and subaccount that were specified for the default location. You clear the **Same As Default Location's** check box to override the account and subaccount of a non-default location in the **Retainage Receivable Account** and **Retainage Receivable Sub.** boxes, respectively.

The account and subaccount specified for the customer location selected in a document will be used by default to post retainage entries. The default values provided for the customer location can be overridden for a particular document.

## Configuration of Taxes {#_9d3bd148-1ffb-4ced-aa86-4aaeb89e9162 .section}

If the taxes calculated on the retained amount are also retained—that is, if the **Retain Taxes** check box is selected on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form,—you have to specify the accounts for retained taxes. To do so, on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form, you specify the tax payable account and subaccount in the **Retainage Tax Payable Account** and **Retainage Tax Payable Subaccount** boxes, respectively. This account and subaccount will be credited by the tax applied to the retained amount.

**Parent topic:**[Processing AR Documents with Retainage](../UserGuide/AR__MNG_ProcessingInvoices_with_Retainage.md)

