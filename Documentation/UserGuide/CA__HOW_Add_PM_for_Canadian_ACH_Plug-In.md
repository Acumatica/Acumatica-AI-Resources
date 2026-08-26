# To Add a Payment Method for the RBC ACH094 Plug-In {#_7a814a48-133c-45d5-9f29-e06869c2d65c .concept}

You use the [Payment Methods](CA_20_40_00.md) \(CA204000\) form to create a payment method that uses the RBC ACH094 plug-in.

**Important:** The plug-in is available in the system if the *Canadian Localization* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Before You Proceed {#section_ek4_2n5_k2c .section}

Review your cash accounts and decide which ones will be used as the payment source for your vendors. You will specify these in Step 9 below.

## To Add a Payment Method for the RBC ACH094 Plug-In {#section_fk4_2n5_k2c .section}

To add a payment method that uses the RBC ACH094 plug-in, do the following:

1.  Open the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Payment Method ID** box, type an identifier you want to use for the payment method.
4.  Review the **Active** check box is selected to make the payment method available for use in the system.
5.  In the **Means of Payment** box, select the *Direct Deposit* option.
6.  In the **Direct Deposit File Format** box, select *RBC ACH094*.
7.  Ensure the **Use in AP** check box is selected. It indicates \(if selected\) that the payment method can be assigned to vendors.
8.  Ensure the **Require Remittance Information for Cash Account** check box is selected. With this check box selected, the **Remittance Settings** tab appears on the [Payment Methods](CA_20_40_00.md) form and [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, so you can specify the ACH credentials for the cash accounts.
9.  In the **Description** box, type a description for the payment method.
10. On the **Settings for Use in AP** tab, review the settings automatically specified by the system:
    -   The **Create Batch Payments** option button is selected.
    -   The *RBC ACH094 Plug-In* is selected in the **Export Method** box.
    -   In the **Payment Method Details** table, the parameters have been added automatically, They will appear on the **Payment** tab of the [Vendors](AP_30_30_00.md) \(AP303000\) form when this payment method is specified. You will need to enter the ACH credentials that are specific to the particular vendor for these parameters.
11. On the **Allowed Cash Accounts** tab, do the following for each cash accounts you are planning to use as a source for payments made to vendors by using the payment method:
    1.  On the table toolbar, click **Add Row**. In the **Cash Account** box, select a cash account.
    2.  In the added row, select the **AP/PR Default** check box for a cash account to be used by default.
    3.  \(Optional\) In the added row, select the **Quick Batch Generation** check box to quickly prepare batches of AP payments on the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form.
12. On the **Remittance Settings** tab, review the automatically added parameters. These parameters will appear on the **Remittance Settings** tab of the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form for each cash account specified for the payment method. You will need to enter your company's ACH credentials for each cash account to configure these parameters.
13. On the **Plug-In Settings** tab, review the plug-in settings, which were added automatically when you selected the RBC ACH094 plug-in. To review all settings, select the **Show All Settings** check box.
14. Optional: Update the values for the needed settings according to the vendor's or bank's requirements.

    For the list of available plug-in settings, see [RBC ACH094 Plug-In Settings](CA__CON_Settings_of_Canadian_ACH_Plug-In.md).

15. On the form toolbar, click **Save**.

After the payment method is configured, specify your remittance information for each cash account listed on the **Allowed Cash Accounts** tab, and specify ACH credentials for each vendor who has agreed to receive payments through the ACH network.

## To Add Payment Details for a Vendor {#section_gk4_2n5_k2c .section}

To add a payment method that uses the RBC ACH094 plug-in to a vendor, do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select the ID of the vendor.
3.  On the **Payment** tab, in the **Payment Method** box, select the payment method that uses the RBC ACH094 plug-in.

    The **Payment Instructions** table is displayed.

4.  In the table, specify the ACH parameters that you have received from the vendor.
5.  On the form toolbar, click **Save**.

**Parent topic:**[Setting Up U.S. and Canada ACH Cross-Border Payment Processing](../UserGuide/CA__CON_Setup_Canadian_ACH.md)

