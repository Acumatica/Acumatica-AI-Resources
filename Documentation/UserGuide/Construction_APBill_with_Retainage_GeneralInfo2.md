# AP Bills with Retainage: Configuration of the Default Retainage Settings {#_1b108584-3861-4b2f-a1f3-5cc3dd47be54 .concept}

In this topic, you will read about how to specify the accounts payable settings related to retainage, set up classes for vendors that retain amounts on bills, and configure particular vendors \(and vendor locations\) that retain amounts on bills.

## General AP Retainage Settings { .section}

In the **Retainage Settings** section on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, you select the **Automatically Release Retainage Documents** check box to direct the system to automatically release the retainage documents created on the [Release AP Retainage](AP_51_00_00.md) \(AP510000\) form.

To affect the generation of retainage documents on the [Release AP Retainage](AP_51_00_00.md) form, in the **Data Entry Settings** section on the **General** tab of the [Accounts Payable Preferences](AP_10_10_00.md) form, you can specify the state of the **Hold Documents on Entry** check box as follows:

-   Clear this check box to direct the system to automatically remove retainage bills from hold as soon as they are created. With this check box cleared, retainage bills will be assigned the *Pending Approval* status if approvals are set up in your system for the *Bill* document type, or the *Balanced* status if approvals are not used.
-   Select this check box to direct the system to generate retainage bills with the *On Hold* status, whether or not approvals are set up.

## Retainage Settings of Customers { .section}

For each vendor for which your company needs to retain a certain amount of each bill's total, you can specify default settings as follows on the **Financial** tab \(**Retainage Settings** section\) of the [Vendors](AP_30_30_00.md) \(AP303000\) form:

-   If your company usually retains an amount on the bills of the selected vendor, you select the **Apply Retainage** check box. If this check box is selected, the **Apply Retainage** check box is selected by default for each bill of the vendor in the Summary area of the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.
-   If the **Apply Retainage** check box is selected for the vendor, to specify the default percent to be retained from the amount of the bill document lines of the vendor, you specify the percent in the **Retainage Percent** box. For a bill of the vendor, the system enters this percent in the **Default Retainage Percent** box on the **Retainage** tab on the [Bills and Adjustments](AP_30_10_00.md) form, and this percent is applied by default to all lines on the **Details** tab.
-   If you want to apply payments to individual lines of AP bills with retainage for the selected vendor, you can select the **Pay by Line** check box ion the **Payment** tab \(**Default Payment Settings** section\) of the [Vendors](AP_30_30_00.md) form. The state of the check box for the vendor is copied to the bills of the vendor but can be overridden.

You can specify the default retainage receivable account and subaccount \(if applicable\) for a vendor in the **Retainage Receivable Account** and **Retainage Receivable Sub.** boxes on the **GL Accounts** tab of the [Vendors](AP_30_30_00.md) form. The account and subaccount you specify will be used to record the amount that your company retains from the vendor bills.

## Retainage of Taxes {#_9d3bd148-1ffb-4ced-aa86-4aaeb89e9162 .section}

To retain the taxes calculated on retained amounts, you select the **Retain Taxes** check box on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form. With this check box selected, the system calculates and reports the taxes of the bills with retainage and the retainage bills separately. Then you need to specify the account and subaccount to be used for posting retainage tax amounts in the **Retainage Tax Claimable Account** and **Retainage Tax Claimable Subaccount** boxes on the **GL Accounts** tab of the [Taxes](TX_20_50_00.md) \(TX205000\) form for each applicable tax code.

**Parent topic:**[Processing AP Bills with Retainage](../UserGuide/Construction_APBill_with_Retainage_Mapref.md)

