# Configuration of the Default Retainage Settings in Accounts Payable {#_f4287dd9-00d1-42cc-8893-3c99b4a9b865 .concept}

In this topic, you will read about how to set the preference settings related to retainage, configure classes for vendors who retain amounts on bills and debit adjustments, and configure particular vendors \(and vendor locations\) that retain amounts on AP documents.

## General Retainage Settings {#section_vvl_njv_vxb .section}

In the **Retainage Settings** section on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, you can do the following:

-   To retain taxes calculated on the retained amount, you select the **Retain Taxes** check box. The system calculates and reports the taxes of the documents with retainage and retainage documents separately. You then need to specify the tax accounts to be debited by the amounts of retained taxes, as described in the [Configuration of Taxes](#_9d3bd148-1ffb-4ced-aa86-4aaeb89e9162) section.

    If this check box is cleared, the full tax amount is paid on the document with retainage.

-   To direct the system to automatically release retainage documents that you create on the [Release AP Retainage](AP_51_00_00.md) \(AP510000\) form, you select the **Automatically Release Retainage Documents** check box.
-   To be able to track retainage by document lines, you enable the *Payment Application by Line* feature on the [Enable/Disable Features](CS_10_00_00.md) form.

To affect the generation of retainage documents on the [Release AP Retainage](AP_51_00_00.md) \(AP510000\) form, in the **Data Entry Settings** section on the **General** tab, you can specify the following setting:

-   Clear the **Hold Documents on Entry** check box to direct the system to automatically remove retainage documents from hold as soon as they are created. With this check box cleared, retainage documents will get the *Pending Approval* status if approvals are set up in your system for the *Bill* or *Debit Adjustment* document type, or the *Balanced* status if approvals are not used.
-   Select the **Hold Documents on Entry** check box to direct the system to generate retainage documents with the *On Hold* status, regardless of whether approvals are set up.

## Configuration of Vendor Classes {#section_awl_njv_vxb .section}

If your company works with documents with retainage, you can specify for a vendor class the default retainage payable account and subaccount \(if applicable\) to record the money that you withheld from the documents associated with the vendors of this class. You specify the account and subaccount in the **Retainage Payable Account** and **Retainage Payable Sub.** boxes, respectively, on the **GL Accounts** tab of the [Vendor Classes](AP_20_10_00.md) \(AP201000\) form.

If you have specified the default account and subaccount for a vendor class, for vendors of the class, the system inserts these values into the **Retainage Payable Account** and **Retainage Payable Sub.** boxes, respectively, on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form for newly added vendors.

To apply retainage to all documents of vendors created and assigned to a particular vendor class, you select the **Apply Retainage** check box in the **Default Financial Settings** section on the **General** tab of the [Vendor Classes](AP_20_10_00.md) form. That is, the **Apply Retainage** check box will be selected for such vendors on the [Vendors](AP_30_30_00.md) \(AP303000\) form.

To apply payments to individual lines of AP bills and debit adjustments with retainage for vendors belonging to a particular vendor class, you can select the **Pay by Line** check box in the **Default Financial Settings** section on the **General** tab of the [Vendor Classes](AP_20_10_00.md) form. If a vendor assigned to this class is selected on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, the **Pay by Line** check box in the **Default Payment Info** section on the **Financial** tab of this form is selected by default.

## Configuration of Particular Vendors {#section_fwl_njv_vxb .section}

For each particular vendor for which your company needs to retain a certain amount of each document total, you can specify default settings as follows on the **General** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form:

-   If your company usually retains an amount on documents, you select the **Apply Retainage** check box in the **Retainage Settings** section of the **Financial** tab. If this check box is selected, the **Apply Retainage** check box is selected by default for the documents of the vendor on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. If this check box is cleared for the vendor, the **Apply Retainage** check box is cleared for the documents of the vendor on the [Bills and Adjustments](AP_30_10_00.md) form.
-   If the **Apply Retainage** check box is selected, to specify the default percent to be retained from the amount of the document lines, you specify the percent in the **Retainage Percent** box in the same section. The system enters this percent for documents of the vendor in the **Default Retainage Percent** box on the **Retainage** tab on the [Bills and Adjustments](AP_30_10_00.md) form, and this percent is automatically applied to all lines on the **Details** tab.
-   If you want to apply payments to individual lines of AP documents with retainage for a particular vendor, you can select the **Pay by Line** check box in the **Default Payment Settings** section on the **Payment** tab of the [Vendors](AP_30_30_00.md) form. If the vendor is selected on the [Bills and Adjustments](AP_30_10_00.md) form, the **Pay by Line** check box in the **Default Payment Info** section on the **Financial** tab of this form is selected by default.

If no Retainage Payable account and subaccount \(if subaccounts are used in your system\) are specified for the class to which the vendor is assigned, you can specify the account and subaccount in the **Retainage Payable Account** and **Retainage Payable Sub.** boxes, respectively, on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) form. This account and subaccount you specify will be used to record the amount that your company retains from the vendor documents.

If the system has inserted the Retainage Payable account and subaccount \(if applicable\) specified for the vendor class to which the vendor is assigned, you can override the default account and subaccount of the class in the **Retainage Payable Account** and **Retainage Payable Sub.** boxes, respectively.

The default values provided for the vendor can be overridden for a particular document.

## Configuration of a Particular Vendor Location {#section_kwl_njv_vxb .section}

**Attention:** You can create and configure multiple vendor locations only if the *Business Account Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md#) \(CS100000\) form.

For the default location, the Retainage Payable account and subaccount \(if applicable\) are those you have specified for the vendor. If a vendor has multiple locations, each non-default location has the same the Retainage Payable account and subaccount that were specified for the default location if the **Same As Default Location's** check box is selected on the **GL Accounts** tab of the [Vendor Locations](AP_30_30_10.md) \(AP303020\) form. If you need to override the account and subaccount of a particular non-default location, clear the **Same As Default Location's** check box.

The accounts specified for the vendor location selected in a document will be used by default to post retainage entries. The default values provided for the vendor location can be overridden for a particular document.

## Configuration of Taxes {#_9d3bd148-1ffb-4ced-aa86-4aaeb89e9162 .section}

If the taxes calculated on the retained amount are also retained—that is, if the **Retain Taxes** check box is selected on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form,—you have to specify the accounts for retained taxes. To do so, on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form, you specify the tax claimable account and subaccount in the **Retainage Tax Claimable Account** and **Retainage Tax Claimable Subaccount** boxes, respectively. This account and subaccount will be debited by the tax applied to the retained amount.

The taxes from retainage documents are posted to tax accounts under the non-project code \(*X* by default\).

**Posting of Retained Sales Taxes**

When a sales tax is applied to an AP document with retainage and tax retainage is set up, on release of original and retainage documents, sales tax amounts are posted to the general ledger accounts as follows:

On release of the original bill:

-   The total sales tax amount for a bill line is debited to the tax expense account \(specified for the tax in the **Tax Expense Account** box of the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form\).
-   The retained tax amount is credited to the retainage payable account \(specified for the vendor in the **Retainage Payable Account** box on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form\).

On release of the retainage bill: The retained sales tax amount is debited to the retainage payable account and credited to the accounts payable account \(specified in the **AP Account** box on the **Financial** tab on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form\).

On release of the original debit adjustment:

-   The total sales tax amount for a debit adjustment line is credited to the tax expense account \(specified for the tax in the **Tax Expense Account** box of the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) form\).
-   The retained tax amount is debited to the retainage payable account \(specified for the vendor in the **Retainage Payable Account** box on the **GL Accounts** tab on the [Vendors](AP_30_30_00.md) form\).

On release of the retainage debit adjustment: The retained sales tax amount is credited to the retainage payable account and debited to the accounts payable account \(specified in the **AP Account** box on the **Financial** tab on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form\).

**Posting of Retained Use Taxes**

When a use tax is applied to an accounts payable document with retainage and tax retainage is set up, on release of original and retainage documents, use tax amounts are posted to the general ledger accounts as follows:

On release of the original bill:

-   The total use tax amount for a line is debited to the tax expense account \(specified for the tax in the **Tax Expense Account** box on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form\).
-   The use tax amount that is not retained is credited to the tax payable account \(specified for the tax in the **Tax Payable Account** box on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) form\).
-   The retained use tax amount is credited to the retainage tax payable account \(specified for the tax in the **Retainage Tax Payable Account** box on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) form\).

On release of the retainage bill: The retained use tax amount is debited to the retainage tax payable account and credited to the tax payable account.

On release of the original debit adjustment:

-   The total use tax amount for a line is credited to the tax expense account \(specified for the tax in the **Tax Expense Account** box on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) form\).
-   The use tax amount that is not retained is debited to the tax payable account \(specified for the tax in the **Tax Payable Account** box on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) form\).
-   The retained use tax amount is debited to the retainage tax payable account \(specified for the tax in the **Retainage Tax Payable Account** box on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) form\).

On release of the retainage debit adjustment: The retained use tax amount is credited to the retainage tax payable account and debited to the tax payable account.

**Parent topic:**[Processing AP Documents with Retainage](../UserGuide/AP__MNG_Managing_Bills_with_Retainage.md)

