# Mailings for Vendors: To Set Up a Mailing for a Vendor {#_9c9e59cd-43d2-42e3-92b2-f26fc0ea91ca .task}

The following activity will walk you through the process of setting up a mailing for a particular vendor.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the Compulink and Co. vendor needs to receive electronic purchase requisitions in Excel from SweetLife Fruits &amp; Jams. Anna Johnson, the chief accountant at SweetLife, must also receive these purchase requisitions by email.

Acting as an implementation consultant, you need set up a predefined mailing of purchase requisitions for this vendor.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *Inventory and Order Management* and *Purchase Requisitions* features have been enabled.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *COMPULINK* vendor has been created.

## Process Overview { .section}

In this activity, on the [Purchase Requisitions Preferences](RQ_10_10_00.md) \(RQ101000\) form, you will review the settings on the **Mailing &amp; Printing** tab. On the [Vendors](AP_30_30_00.md) \(AP303000\) form, you will set up a mailing for a particular vendor.

## System Preparation { .section}

Before you begin setting up a mailing, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to today’s date. For simplicity, in this activity, you will create and process all documents in the system on this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Verifying the Purchase Requisition Preferences { .section}

To make sure that the needed mailing has been activated, do the following:

1.  Open the [Purchase Requisitions Preferences](RQ_10_10_00.md) \(RQ101000\) form.
2.  On the **Mailing &amp; Printing** tab, make sure that the **Active** check box is selected for the *RQPROPOSAL* mailing ID. This indicates that emails can be sent for the mailing.

## Step 2: Setting Up a Mailing for a Vendor { .section}

To set up a mailing for the *COMPULINK* vendor, do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *COMPULINK*.
3.  On the **Purchase Settings** tab, select the **Email Order** check box.
4.  Go to the **Mailing &amp; Printing** tab.
5.  In the **Mailings** table, specify the following settings in the row with the *RQPROPOSAL* mailing:
    -   **Active**: Selected.
    -   **Branch**: Empty.

        This means that the mailing will be used for all branches.

    -   **Report**: *RQ.61.10.00* \(inserted by default\).

        In this column, you can also select a custom report.

    -   **Format**: *Excel*.
6.  In the **Recipients** table, click **Add Row** on the table toolbar and specify the following settings for the added row:
    -   **Active**: Selected
    -   **Contact Type**: *Employee*
    -   **Contact ID**: *Anna Johnson*
    -   **Format**: *Excel*
    -   **Add To**: *To*
7.  On the form toolbar, click **Save**.

**Parent topic:**[Configuring Predefined Mailings for Vendors](../UserGuide/Finance_PredefinedMailings_for_Vendors_Mapref.md)

