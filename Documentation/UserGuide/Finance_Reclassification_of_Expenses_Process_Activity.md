# Reclassification of Expenses: Process Activity {#_2acb525a-cae9-43f9-8140-258360e25dc5 .task}

This activity will walk you through the process of reclassifying expenses.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife Fruits &amp; Jams has decided to start using the expense reclassification functionality. On January 30, 2026, Pat Farrell \(an AP clerk at SweetLife\) entered a $135 cash purchase of a bouquet of flowers in the system. On the same day, Anna Johnson \(the chief accountant\) reviewed this cash purchase and updated the default expense account to accurately reflect this purchase as related to advertising expenses.

Acting as Pat Farrell, you will enable the *Expense Reclassification* feature in the system, update the vendor's settings, create a cash purchase with the default expense account, and pre-release it. \(Normally, a system administrator would enable all needed features, and an AP clerk would not be able to do this. For simplicity, you will do this while signed in as Pat Farrell.\) Acting as Anna Johnson, you will reclassify the expense account in the pre-released cash purchase and release the document.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant.
-   On the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, the **Hold Documents on Entry** check box has been selected in the **Data Entry Settings** section.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *GLORYFRUIT \(Glory Fruit Case\)* vendor has been defined.

## Process Overview { .section}

In this activity, you will first enable the *Expense Reclassification* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. On the [Vendors](AP_30_30_00.md) \(AP303000\) form, you will update the settings of the needed vendor to specify its reclassification account. On the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form, you will create a cash purchase and pre-release it. You will then review the generated GL batch on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

Finally, on the [Cash Purchases](AP_30_40_00.md) form, you will update the expense account in the document and release the cash purchase. You will again review the generated GL batch on the [Journal Transactions](GL_30_10_00.md) form.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Pat Farrell by using the *farrell* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Enabling the Needed Feature { .section}

In a production system, an administrator would have enabled the needed feature in advance of its use. To simplify the activity, you will do this while signed in as the AP clerk. To enable the *Expense Reclassification* feature, do the following:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  Select the **Expense Reclassification** check box under the *Standard Financials* group of features.
4.  On the form toolbar, click **Enable** to enable the feature.

## Step 2: Updating the Vendor's Settings { .section}

Typically, an accountant would update the vendor's settings to specify the reclassification account. To streamline the activity, this step, too, is being performed by the AP clerk. To specify the reclassification account for the vendor, do the following:

1.  On the [Vendors](AP_30_30_00.md) \(AP303000\) form, open the *GLORYFRUIT* vendor record.
2.  Go to the **GL Accounts** tab.
3.  In the **Reclassification Account** box, select *81020 - Reclassification Account*.
4.  On the form toolbar, click **Save** to save your changes.

## Step 3: Creating a Cash Purchase { .section}

To create a cash purchase, do the following:

1.  On the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Cash Purchase*
    -   **Date**: *1/30/2026*
    -   **Vendor**: *GLORYFRUIT*
    -   **Payment Method**: *WIRE*
    -   **Cash Account**: *10200WH*
    -   **Description**: `Purchase of flowers`
3.  On the **Details** tab, click **Add Row** on the table toolbar and specify the following settings for the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Transaction Description**: `Flowers`
    -   **Ext. Cost**: `135`
    -   **Account**: *81000 - Other Expenses* \(inserted by default\)
4.  On the **Financial** tab, make sure that *81020* is specified in the **Reclassification Account** box.
5.  On the form toolbar, click **Remove Hold** to assign the purchase the *Balanced* status.
6.  On the form toolbar, click **Pre-Release**. The cash purchase is assigned the *Pre-Released* status.
7.  On the **Financial** tab, click the link in the **Pre-releasing Batch Nbr.** box.
8.  On the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, review the generated transaction.

    When you released the cash purchase, the system generated and released this batch in the general ledger. The reclassification account has been debited in the amount of the cash purchase. Notice that the transaction description for this entry is marked as *Preliminary AP Expense Booking*. The company checking account has been credited in the same amount.


## Step 4: Reclassifying Expenses in the Cash Purchase { .section}

To reclassify the expenses in the cash purchase, do the following:

1.  Sign in as Anna Johnson by using the *johnson* username and the *123* password.
2.  On the [Cash Purchases](AP_30_40_00.md) \(AP304000\) form, open the cash purchase that you created in Step 3.
3.  On the **Details** tab, in the **Account** column of the document line, select *61000 - Advertising Expense*.
4.  On the form toolbar, click **Save**.
5.  On the form toolbar, click **Release** to release the cash purchase.
6.  Go to the **Financial** tab. Notice that the **GL Link** section now includes two links: in the **Batch Nbr.** box, a link to the released batch; and in the **Pre-releasing Batch Nbr.** box, a link to the pre-released batch.
7.  Click the link in the **Batch Nbr.** box.
8.  Review the GL transaction that is opened on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    The expense account updated in the cash purchase is now debited in the purchase amount and the reclassification account is credited in the same amount.


**Parent topic:**[Configuring Reclassification of Expenses](../UserGuide/Finance_Reclassification_of_Expenses_Mapref.md)

