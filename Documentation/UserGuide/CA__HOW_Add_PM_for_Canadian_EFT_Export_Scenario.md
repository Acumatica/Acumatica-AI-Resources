# To Add a Payment Method for the Canadian EFT Export Scenario {#_71849e2c-09c4-4e13-8fbc-a0d055b027b5 .task}

You use the [Payment Methods](CA_20_40_00.md) \(CA204000\) form to create a payment method to be used for electronic funds transfer \(EFT\) payments through the Canadian EFT export scenario.

**Tip:** As an alternative to adding a payment method, you can use the predefined *Direct Deposit* payment method that is provided in an out-of-the-box instance of Acumatica ERP.

## Before You Proceed {#section_jp4_njv_vxb .section}

Make sure that the *Canadian Localization* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## To Add a Payment Method for the Canadian EFT Export Scenario { .section}

To add a payment method that uses the Canadian EFT export scenario, do the following:

1.  On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, add a new record.
2.  In the **Payment Method ID** box, type the identifier you want to use for the payment method \(such as `EFT`\).
3.  Make sure that the **Active** check box is selected, which makes the payment method available for use in the system.
4.  In the **Means of Payment** box, select the *Direct Deposit* option.
5.  In the **Direct Deposit File Format** box, select *CPA005*.
6.  Select the **Use in AP** check box to make the payment method available to be assigned to vendors.
7.  In the **Description** box, type a description for the payment method.
8.  On the **Settings for Use in AP** tab, configure the export of batches to an EFT file for processing as follows:
    1.  In the **Additional Processing** section, select the **Create Batch Payments** option button to indicate that the payment method involves creating payment batches.
    2.  In the **Export Method** box, select *Export Scenario*.
    3.  In the **Export Scenario** box, make sure that *Export AP Payment to Payments \(Canadian Localization\)* is selected.
    4.  Select the **Release Batch Payment Before Export** check box if you want to export EFT payment batches after they are released. If you want to export batches before release, leave this check box cleared.
    5.  In the **Payment Method Details** table, review the elements that have been added automatically. These elements will appear on the [Vendors](AP_30_30_00.md) \(AP303000\) form so that users can enter the EFT credentials that are specific to the particular vendor.
9.  On the **Allowed Cash Accounts** tab, do the following to add each cash account you are planning to use as a source for payments made to vendors by using the payment method:
    1.  On the table toolbar, click **Add Row**. In the **Cash Account** column, select the cash account.
    2.  Select the **AP Default** check box if this cash account is to be used by default.
    3.  Optional: Select the **Quick Batch Generation** check box to make it possible to quickly prepare batches of AP payments for this cash account and payment method on the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form.
    4.  If you selected the **Quick Batch Generation** check box, specify the number used for the last payment associated with this cash account in accounts payable in the **AP Last Reference Number** column.
10. On the **Remittance Settings** tab, review the automatically added elements that will appear on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form so that users can enter your company's EFT credentials for each cash account.

    **Note:** Although the table on the **Remittance Settings tab** is filled in automatically for the Canadian EFT export scenario, you can remove the existing settings or add new ones.

11. On the form toolbar, click **Save**.

Next, you will specify the remittance details for the cash account that uses this payment method.

## To Add Remittance Details to the Cash Account { .section}

To add remittance details to each cash account that is linked to the EFT payment method, do the following:

1.  On the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form, open the cash account.
2.  Go to the **Remittance Settings** tab.
3.  In the left pane, select the EFT payment method.
4.  In the **Remittance Details** table in the right pane, review the remittance settings that appear in the table.

    The settings in the **Description** column are copied from the **Remittance Settings** tab of the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.

5.  In the **Value** column, enter the needed value for each setting.
6.  On the form toolbar, click **Save**.

Now you will specify EFT credentials for each vendor that agreed to receive your payments through EFT.

## To Add Payment Details for a Vendor { .section}

To add payment details for a vendor that will receive your payments, do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select the ID of the vendor whose settings you need to update.
3.  On the **Payment** tab, select the Canadian EFT payment method in the **Payment Method** box.

    The **Payment Instructions** table is displayed.

4.  In the table, fill in the payment details that you have received from the vendor.
5.  On the form toolbar, click **Save**.

**Parent topic:**[Setup of Canadian EFT](../UserGuide/CA__CON_Setup_Canadian_EFT.md)

