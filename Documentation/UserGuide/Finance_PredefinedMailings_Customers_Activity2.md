# Mailings for Customers: To Set Up a Mailing for a Customer {#_b4889d5b-e896-4357-abb7-f9337ff46764 .task}

The following activity will walk you through the process of setting up a mailing for a particular customer.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the Cakeado Cafe customer needs to receive electronic AR invoices in Excel from SweetLife Fruits &amp; Jams. Anna Johnson, the chief accountant at SweetLife, must also receive these documents by email.

Acting as an implementation consultant, you need set up a predefined mailing of AR invoices for this customer.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Standard Financials* group of features has been enabled.
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *CAKEADO* customer has been created.

## Process Overview { .section}

In this activity, on the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, you will review the settings on the **Mailing &amp; Printing** tab. On the [Customers](AR_30_30_00.md) \(AR303000\) form, you will set up a mailing for a particular customer. On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, you will create an invoice for the customer and generate an email. Finally, on the [Email Activity](CR_30_60_15.md) \(CR306016\) form, you will review the generated email.

## System Preparation { .section}

Before you begin setting up a mailing, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Verifying the Accounts Receivable Preferences { .section}

To make sure that the needed mailing has been activated, do the following:

1.  Open the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form.
2.  On the **Mailing &amp; Printing** tab, make sure that the **Active** check box is selected for the *INVOICE* mailing ID. This indicates that emails can be sent for the mailing.

## Step 2: Setting Up a Mailing for a Customer { .section}

To set up a mailing for the *CAKEADO* customer, do the following:

1.  Open the [Customers](AR_30_30_00.md) \(AR303000\) form.
2.  In the **Customer ID** box, select *CAKEADO*.
3.  On the **Billing** tab, select the **Send Invoices by Email** check box.
4.  Go to the **Mailing &amp; Printing** tab.
5.  In the **Mailings** table, specify the following settings for in the row with the *INVOICE* mailing:
    -   **Active**: Selected.
    -   **Branch**: Empty.

        This means that the mailing will be used for all branches.

    -   **Report**: *AR.64.10.00* \(inserted by default\).

        In this column, you can also select a custom report.

    -   **Format**: *Excel*.
6.  In the **Recipients** table, click **Add Row** on the table toolbar and specify the following settings for the added row:
    -   **Active**: Selected
    -   **Contact Type**: *Account Email*
    -   **Format**: *Excel*
    -   **Add To**: *To*
7.  Click **Add Row** again and specify the following settings for the added row:
    -   **Active**: Selected
    -   **Contact Type**: *Employee*
    -   **Contact ID**: *Anna Johnson*
    -   **Format**: *Excel*
    -   **Add To**: *To*
8.  On the form toolbar, click **Save**.

## Step 3: Creating an AR Invoice { .section}

To create and email an AR invoice, do the following:

1.  On the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Invoice*
    -   **Customer**: *CAKEADO*
    -   **Date**: Today's date \(inserted automatically\)
    -   **Description**: `Services`
3.  On the **Details** tab, click **Add Row** and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE* \(inserted by default\)
    -   **Transaction Descr.**: `Services`
    -   **Ext. Price**: `189`
4.  On the form toolbar, click **Save** to save your changes.
5.  On the form toolbar, click **Remove Hold** and then click **Release** to release the invoice.
6.  On the More menu \(under **Printing and Emailing**\), click **Email**.

## Step 4: Reviewing the Email Generated by the System { .section}

To review the email that has been generated by the system for the AR invoice, do the following:

1.  While you are still on the [Invoices and Memos](AR_30_10_00.md) \(AR301000\) form with the invoice opened, click **Activities** on the form title bar.
2.  In the **Tasks &amp; Activities** dialog box, which is opened, click the email link in the only row. The email is opened on the [Email Activity](CR_30_60_15.md) \(CR306016\) form.
3.  Review the email that has been generated based on the mailing ID that you set up in Step 2.

    **Tip:** In a production environment, to process the email, you would select **Process** on the More menu of the [Email Activity](CR_30_60_15.md) form and then click **Send**.


**Parent topic:**[Configuring Predefined Mailings for Customers](../UserGuide/Finance_PredefinedMailings_for_Customers_Mapref.md)

