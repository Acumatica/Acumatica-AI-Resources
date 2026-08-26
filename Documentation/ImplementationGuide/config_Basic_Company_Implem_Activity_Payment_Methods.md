# Cash Management: To Modify a Payment Method {#_9f09318a-fc8b-4115-898a-71b037a6f9ac .task}

In this activity, you will learn how to set up a payment method for use in accounts receivable and accounts payable.

## Story { .section}

Suppose the SweetLife company uses checks to pay for its vendor bills and to receive payments for customer invoices. Acting as an administrator, you will modify the *CHECK* payment method \(which is predefined in the system\) so that it can be used in accounts receivable and accounts payable.

## Process Overview { .section}

In this activity, on the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form, you will update the settings of the *CHECK* payment method.

## System Preparation { .section}

Before you start modifying any existing payment method, make sure that the following tasks have been performed in the system:

1.  The company and its actual ledger have been created, as described in [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
2.  The cash management preference settings have been defined, as described in [Cash Management: To Specify Cash Management Preferences](config_Basic_Company_Implem_Activity_CA_Preferences.md).
3.  The cash accounts related to the payment method have been linked \(in the cash account settings\) to the payment method, as described in [Cash Management: To Create Cash Accounts](config_Basic_Company_Implem_Activity_Cash_Accounts.md).

## Step: Setting up the *CHECK* Payment Method for Use in AP and AR { .section}

To make the needed changes to the *CHECK* payment method, which will be used in accounts payable and accounts receivable, do the following:

1.  Sign in to the company you have prepared with the *admin* username.
2.  Open the Payment Methods \(CA2040PL\) list of records, and select the *CHECK* payment method. The system opens the payment method on the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form.
3.  In the Summary area, select the **Use in AR** check box.
4.  Make sure that the **Use in AP** check box is selected.
5.  On the **Allowed Cash Accounts** tab, for the *10200* cash account, select the **AP Default**, **Use in AR**, and **AR Default** check boxes.

    Payment methods are linked to cash accounts, and you have selected the *10200* cash account as the default one for the payment method used in accounts payable and in accounts receivable.

6.  On the form toolbar, click **Save**.

**Parent topic:**[Cash Management](../ImplementationGuide/config_CA_Mapref.md)

