# To Add a Payment Method for the U.S. ACH Plug-In {#_c6f22ff7-effb-48d8-9bde-78d421dd4dec .task}

You use the [Payment Methods](CA_20_40_00.md) \(CA204000\) form to create a payment method to be used for Automated Clearing House \(ACH\) payments through the U.S. ACH plug-in.

## Before You Proceed { .section}

Review the cash accounts you have and decide which ones you are going to use as the source of payments to your vendors. You will specify these in Step 9 below.

## To Add a Payment Method for the U.S. ACH Plug-In { .section}

To add a payment method that uses the U.S. ACH plug-in, do the following:

1.  Open the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.
2.  On the form toolbar, click **Add New Record**.
3.  In the **Payment Method ID** box, type an identifier you want to use for the payment method.
4.  Select the **Active** check box to make the payment method available for use in the system.
5.  In the **Means of Payment** box, select the *Direct Deposit* option.
6.  Select the **Use in AP** check box to make the payment method available to be assigned to vendors.
7.  Select the **Require Remittance Information for Cash Account** check box. The **Remittance Settings** tab appears on the form so you can add elements to fill with the ACH credentials for the cash accounts.
8.  In the **Description** box, type a description for the payment method.
9.  On the **Settings for Use in AP** tab, configure the export of batches to a file to be sent to the ACH operator for processing as follows:
    1.  Select the **Create Batch Payments** option button.
    2.  In the **Export Method** box, select *U.S. ACH Plug-In*.
    3.  Select the **Release Batch Payment Before Export** check box if you want to export ACH payment batches after they are released. If you want to export batches before release, leave this check box cleared.
    4.  In the **Payment Method Details** table, review the elements that have been added automatically, which will appear on the [Vendors](AP_30_30_00.md) \(AP303000\) form so that users can enter the ACH credentials that are specific to the particular vendor.
10. On the **Allowed Cash Accounts** tab, do the following to add the list of cash accounts you are planning to use as a source for payments made to vendors by using the payment method:
    1.  For each cash account you want to link to the payment method, on the table toolbar, click **Add Row**. In the **Cash Account** box, select the cash account.
    2.  Select the **AP/PR Default** check box for the listed cash account that is to be used by default.
    3.  Select the **Quick Batch Generation** check box to quickly prepare batches of AP payments on the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form.
11. On the **Remittance Settings** tab, review the automatically added elements that will appear on the [Cash Accounts](CA_20_20_00.md) \(CA202000\) form so users can enter your company's ACH credentials for each cash account.
12. On the **Plug-In Settings** tab, review the plug-in settings, which were added automatically when you selected the U.S. ACH plug-in. To review all settings, select the **Show All Settings** check box.
13. Optional: Update the values for the needed settings according to the vendor's or bank's requirements.

    For the list of available plug-in settings, see [U.S. ACH Plug-In Settings](CA__CON_Parameters_of_US_ACH_Plug-In.md).

14. On the form toolbar, click **Save**.

After the payment method is configured, you should specify your remittance information for each cash account that you have listed on the **Allowed Cash Accounts** tab \(as described in [To Add Remittance Information to a Cash Account](CA__HOW_Add_RemittanceInfo_to_CashAccount.md)\), and specify ACH credentials for each vendor that agreed to receive your payments through the ACH network.

## To Add Payment Details for a Vendor { .section}

To add payment details for a vendor that will receive your payments, do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select the ID of the vendor whose settings you need to update.
3.  On the **Payment** tab, select the U.S. ACH payment method in the **Payment Method** box.

    The **Payment Instructions** table is displayed.

4.  In the table, fill in the payment details that you have received from the vendor.
5.  In the **Account Type** box, select the type of the recipient's account—*Checking Account* or *Savings Account*.
6.  On the form toolbar, click **Save**.

**Parent topic:**[Setting Up U.S. ACH Payment Processing](../UserGuide/CA__CON_Setup_US_ACH.md)

