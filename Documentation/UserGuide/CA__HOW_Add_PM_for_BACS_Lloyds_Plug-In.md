# To Add a Payment Method for BACS Lloyds Plug-In {#_df5ef450-4a4d-4f13-8c19-c4636e68499e .task}

You use the [Payment Methods](CA_20_40_00.md) \(CA204000\) form to create a payment method to be used for export of a BACS Lloyds file through the BACS Lloyds plug-in.

**Tip:** As an alternative to adding a payment method, you can use the predefined *Direct Deposit* payment method that is provided in an out-of-the-box instance of Acumatica ERP.

## Before You Proceed {#section_jp4_njv_vxb .section}

Make sure that the *UK Localization* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Add a Payment Method for the BACS Lloyds Plug-In { .section}

To add a payment method that uses the BACS Lloyds plug-in, do the following:

1.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, add a new record.
2.  In the **Payment Method ID** box, type the identifier you want to use for the payment method \(such as `BACS_LLOYDS`\).
3.  Make sure that the **Active** check box is selected, which makes the payment method available for use in the system.
4.  In the **Means of Payment** box, select the *Direct Deposit* option.
5.  In the **Direct Deposit File Format** box, select *BACS Lloyds Payment*.
6.  Make sure that the **Use in AP** check box is selected to make the payment method available to be assigned to vendors.
7.  In the **Description** box, type a description for the payment method.
8.  On the **Settings for Use in AP** tab, configure the export of batches to a BACS Lloyds file for processing as follows:
    1.  In the **Additional Processing** section, make sure that the **Create Batch Payments** option button is selected. It indicates that the payment method involves creating payment batches.
    2.  In the **Export Method** box, select *BACS Lloyds Plug-In*.
    3.  Select the **Release Batch Payment Before Export** check box if you want to export BACS payment batches after they are released. If you want to export batches before release, leave this check box cleared.
    4.  In the **Payment Method Details** table, review the elements that have been added automatically. These elements will appear on the [Vendors](AP_30_30_00.md) \(AP303000\) form so that users can enter the credentials that are specific to the particular vendor.
9.  On the **Allowed Cash Accounts** tab, do the following to add each cash account you are planning to use as a source for payments made to vendors by using the payment method:
    1.  On the table toolbar, click **Add Row**. In the **Cash Account** column, select the cash account.
    2.  Select the **AP Default** check box if this cash account is to be used by default.
    3.  Optional: Select the **Quick Batch Generation** check box to make it possible to quickly prepare batches of AP payments for this cash account and payment method on the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form.
    4.  If you selected the **Quick Batch Generation** check box, specify the number used for the last payment associated with this cash account in accounts payable in the **AP Last Reference Number** column.
10. On the **Remittance Settings** tab, review the automatically added elements that will appear on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form so that users can enter your company's BACS credentials for each cash account.

    **Note:** Although the table on the **Remittance Settings** tab is filled in automatically for the BACS Lloyds plug-in, you can remove the existing settings or add new ones.

11. On the **Plug-In Settings** tab, review the plug-in settings, which were added automatically when you selected the BACS Lloyds plug-in.
12. Optional: Update the values for the needed settings according to the vendor's or bank's requirements.

    For the list of available plug-in settings, see [Settings of the BACS Lloyds File](CA__CON_Settings_of_BACS_Lloyds_Plug-In.md).

13. On the form toolbar, click **Save**.

Next, you will specify the remittance details for the cash account that uses this payment method.

## To Add Remittance Details to the Cash Account { .section}

To add remittance details to each cash account that is linked to the BACS payment method, do the following:

1.  On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, open the cash account.
2.  Go to the **Remittance Settings** tab.
3.  In the left pane, select the BACS payment method.
4.  In the **Remittance Details** table in the right pane, review the remittance settings that appear in the table.

    The settings in the **Description** column are copied from the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

    For a full description of the BACS Lloyds plug-in settings, see [Settings of the BACS Lloyds File](CA__CON_Settings_of_BACS_Lloyds_Plug-In.md).

5.  In the **Value** column, enter the needed value for each setting.
6.  On the form toolbar, click **Save**.

Now you will specify BACS credentials for each vendor that agreed to receive your payments through BACS.

## To Add Payment Details for a Vendor { .section}

To add payment details for a vendor that will receive your payments, do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select the ID of the vendor whose settings you need to update.
3.  On the **Payment** tab, select the BACS Lloyds method in the **Payment Method** box.

    The **Payment Instructions** table is displayed.

4.  In the table, fill in the payment details that you have received from the vendor.
5.  On the form toolbar, click **Save**.

**Parent topic:**[Setup of BACS HSBC Payment Processing](../UserGuide/CA__CON_Setup_of_BACS_HSBC.md)

