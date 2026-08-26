# Payments for a Shared Vendor: Process Activity {#_6e895c92-7322-447e-86bc-f56efc64089f .task}

In this activity, you will learn how to process payments for a vendor that is shared by different companies of your organization.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_a3n_njv_vxb .section}

Suppose that the head office of the SweetLife Fruits &amp; Jams company has received a $2,000 bill from the Blueline Advertisement vendor on January 30, 2026. The head office of the Muffins &amp; Cakes company has also received a bill from this vendor for $1,500 on the same day. The SweetLife Fruits &amp; Jams company and the Muffins &amp; Cakes company use different cash accounts to pay the bills.

Acting as an accountant, you need to create and release the bills in the system, prepare payments for these bills, and process the payments through their release.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, the SweetLife and *MUFFINS* companies have been defined.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *MHEAD* branch of the *MUFFINS* company has been created.
-   On the [Branches](CS_10_20_00.md) \(CS102000\) form, the *HEADOFFICE* branch of the SweetLife company has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, multiple accounts have been created.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *BLUELINE* vendor has been created.
-   On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, the *CHECK* payment method has been created.

## Process Overview {#section_e3n_njv_vxb .section}

In this activity, you will first review the settings of the shared vendor on the [Vendors](AP_30_30_00.md) \(AP303000\) form and the settings of the vendor's payment method on the [Payment Methods](CA_20_40_00.md) \(CA204000\) form. To process bills from a shared vendor of two related companies, you will create and release the bills on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form. You will then prepare payments for the created bills on the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form. From there, you will open the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form and process the payments through the review of the printable payments. You will then release the payments on the [Release Payments](AP_50_52_00.md) \(AP505200\) form.

## System Preparation {#section_g3n_njv_vxb .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as an accountant Nenad Pasic by using the *pasic* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, click the Business Date menu button and select *1/30/2026*.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, make sure that the *SweetLife Head Office and Wholesale Center* branch is selected. If it is not selected, click the Company and Branch Selection menu to view the list of companies and branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.

## Step 1: Reviewing the Settings of the Vendor and the Payment Method {#section_i3n_njv_vxb .section}

To review the settings of the *BLUELINE* vendor and its payment method, do the following:

1.  Open the [Vendors](AP_30_30_00.md) \(AP303000\) form.
2.  In the **Vendor ID** box, select *BLUELINE*.
3.  On the **Payment** tab, review the settings in the **Default Payment Settings** section.

    The default payment method of this vendor is *CHECK*. The **Cash Account** box is empty, which means that no cash account is associated with the vendor and payments to the vendor can be created from cash accounts of different companies.

4.  Open the [Payment Methods](CA_20_40_00.md) \(CA204000\) form.
5.  In the **Payment Method ID** box, select *CHECK*.
6.  On the **Allowed Cash Accounts** tab, review the cash accounts associated with this payment method.

    Notice that the *10200WH \(Wholesale Checking\)* account related to the *HEADOFFICE* branch of SweetLife and the *10200MF \(Muffins Checking\)* account related to the *MHEAD* branch of Muffins &amp; Cakes are both listed. The **AP Default** check box is selected for the cash accounts. It means that in the *HEADOFFICE* branch, the *10200WH* account will be used by default in the AP payments having the *CHECK* payment method, and in the *MHEAD* branch, the *10200MF* account will be used in the AP payments with the *CHECK* payment method.


## Step 2: Creating and Processing a Bill for the SweetLife Company {#section_m3n_njv_vxb .section}

To create and process an AP bill for the SweetLife company, do the following:

1.  Open the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form.

    **Tip:** To open the form for creating a new record, type the form ID in the Search box, and on the Search form, point at the form title and click **New** right of the title.

2.  Click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:
    -   **Type**: *Bill*
    -   **Vendor**: *BLUELINE*
    -   **Date**: *1/30/2026* \(inserted by default\)
    -   **Description**: `Advertising services`
3.  On the **Details** tab, click **Add Row**, and specify the following settings in the new row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Descr.**: `Advertising services`
    -   **Ext. Cost**: `2000`
4.  On the form toolbar, click **Save** to save the bill.
5.  On the form toolbar, click **Remove Hold** and then click **Release** to release the bill.
6.  In the **Default Payment Info** section of the **Financial** tab, notice that the payment method is set to *CHECK* and the cash account is set to *10200WH*. The system has inserted these settings because the bill has been created for the *HEADOFFICE* branch and the *BLUELINE* vendor.

You have created the bill for the SweetLife company and processed it through its release. You will now perform the same instructions for the bill for the Muffins &amp; Cakes company.

## Step 3: Creating and Processing a Bill for the Muffins &amp; Cakes Company {#section_q3n_njv_vxb .section}

To create and process an AP bill for the Muffins &amp; Cakes company, do the following:

1.  On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, click the selection menu to view the list of branches that you have access to, and then click *Muffins Head Office &amp; Wholesale Center*.
2.  While you are still on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, click **Add New Record** on the form toolbar, and specify the following settings in the Summary area:
    -   **Type**: *Bill*
    -   **Vendor**: *BLUELINE*
    -   **Date**: *1/30/2026* \(inserted by default\)
    -   **Description**: `Advertising services`
3.  On the **Details** tab, click **Add Row**, and specify the following settings in the new row:
    -   **Branch**: *MHEAD*
    -   **Transaction Descr.**: `Advertising services`
    -   **Ext. Cost**: `1500`
4.  On the form toolbar, click **Save** to save the bill.
5.  On the form toolbar, click **Remove Hold** and then click **Release** to release the bill.
6.  In the **Default Payment Info** section of the **Financial** tab, notice that the payment method is set to *CHECK* and the cash account is set to *10200MF*. The system has inserted these settings because the bill has been created for the *MHEAD* branch and the *BLUELINE* vendor.

Now that you have processed both bills of the companies who share the vendor, you will prepare the payments for these bills and process them.

## Step 4: Preparing the Payments for the Bills {#section_t3n_njv_vxb .section}

To prepare the payments for these bills and process these payments through their release, do the following:

1.  Open the [Prepare Payments](AP_50_30_00.md) \(AP503000\) form.
2.  In the **Branch** box, make sure that *MHEAD* is selected.
3.  In the **Payment Method** box of the Summary area, select *CHECK*.
4.  In the **Cash Account** box, make sure *10200MF* is selected.
5.  In the **Vendor** box, select *BLUELINE*.
6.  Clear the **Pay Date Within x Days** check box.
7.  On the **Documents to Pay** tab, select the unlabeled check box in the row of the bill you created in Step 3.
8.  On the form toolbar, click **Process**.

    The system has opened the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form with the payment created for the bill.

9.  On the form toolbar, click **Process**.

    The system opens a separate browser tab showing the printable version of the payment.

10. Review the printable version of the payment, and close the browser tab. \(For the purposes of this activity, you do not need to actually print the check. In a production setting, you would click **Print** on the form toolbar to print the check before closing the browser tab.\)
11. On the [Release Payments](AP_50_52_00.md) \(AP505200\) form, which the system has opened, notice that the system has added a row with the payment and selected the unlabeled check box for it. On the form toolbar, click **Process**.
12. On the Company and Branch Selection menu, on the top pane of the Acumatica ERP screen, click the selection menu to view the list of branches that you have access to, and then click *SweetLife Head Office and Wholesale Center*.
13. Open the [Prepare Payments](AP_50_30_00.md) form again.
14. In the Summary area, specify the following settings:
    -   **Branch**: *HEADOFFICE*
    -   **Payment Method**: *CHECK*
    -   **Cash Account**: *10200WH*
    -   **Vendor**: *BLUELINE*
    -   **Pay Date Within x Days**: Cleared
15. On the **Documents to Pay** tab, select the unlabeled check box in the row of the bill you created in Step 2 \(the bill dated 1/30/2026 for the amount of $2,000\).
16. On the form toolbar, click **Process**.

    The system has opened the [Process Payments / Print Checks](AP_50_50_00.md) \(AP505000\) form with the payment created for the bill.

17. On the form toolbar, click **Process**.

    The system opens a separate browser tab showing the printable version of the payment.

18. Review the printable version of the payment, and close the browser tab.
19. On the [Release Payments](AP_50_52_00.md) form, which the system has opened, notice that the system has added a row with the payment and selected the unlabeled check box for it. On the form toolbar, click **Process**.

You have processed two payments for a vendor that is shared by related companies, from the creation of the bills through the creation and release of the associated payments. The payments have been made from the cash accounts that belong to the originating branches of each bill.

**Parent topic:**[Processing Payments for a Shared Vendor](../UserGuide/Finance_Payment_for_Shared_Vendor_Mapref.md)

