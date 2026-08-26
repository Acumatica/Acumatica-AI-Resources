# Rounding of AP Document Amounts: Process Activity {#_663ac217-c0b0-444a-848d-dbf97bfb20ce .task}

The following activity will walk you through the process of setting up and using the rounding of document amounts in AP documents.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the management of SweetLife Fruits &amp; Jams has decided to change the company's policy in settlements with vendors and start rounding the amounts of AP documents. Total document amounts should be rounded up to the next multiple of the smallest unit. The rounding precision should be *0.50*.

Acting as an accountant of SweetLife Fruits &amp; Jams, you need to enable the *Invoice Rounding* feature, set up the functionality, and test how it works by creating and releasing an AP bill and reviewing the generated GL transaction.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant
-   On the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form, the **Hold Documents on Entry** check box has been selected in the **Data Entry Settings** section.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the *83100 \(Rounding Gain/Loss\)* account has been created.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *ALLFRUITS \(All Fruits Mall\)* vendor has been created.

## Process Overview { .section}

In this activity, you will enable the *Invoice Rounding* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and set up the rounding functionality on the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) and [Currencies](CM_20_20_00.md) \(CM202000\) forms. On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, you will create and release a bill in which the system will round the total amount. Finally, on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form, you will review the GL transaction generated on release of the bill.

## System Preparation { .section}

Before you begin performing the steps of this activity, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Anna Johnson by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Head Office and Wholesale Center* branch.

## Step 1: Enabling the Needed Feature { .section}

To enable the *Invoice Rounding* feature, do the following:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  Select the **Invoice Rounding** check box in the **Standard Financials** group of features.
4.  On the form toolbar, click **Enable** to enable the feature.

## Step 2: Updating the Accounts Payable Preferences { .section}

To specify the rounding rules and precision for AP documents, do the following:

1.  Open the [Accounts Payable Preferences](AP_10_10_00.md) \(AP101000\) form.
2.  On the **General** tab \(**Data Entry Settings** section\), specify the following settings:
    -   **Rounding Rule for Bills**: *Up*
    -   **Rounding Precision**: *0.50*
3.  On the form toolbar, click **Save** to save your changes.

## Step 3: Specifying the Rounding Gain and Loss Accounts { .section}

To specify the rounding gain account and rounding loss account for the base currency \(in US dollars\), do the following:

1.  On the [Currencies](CM_20_20_00.md) \(CM202000\) form, open the *USD* currency.

    Notice that the **Active** check box for this currency is selected and unavailable, which means that this is the base currency.

2.  On the **GL Accounts** tab, specify the following settings:
    -   **Rounding Gain Account**: *83100 - Rounding Gain/Loss*
    -   **Rounding Loss Account**: *83100 - Rounding Gain/Loss*
3.  On the form toolbar, click **Save** to save your changes.

## Step 4: Creating an AP Bill with Amount Rounding { .section}

To create and release an AP bill in which amounts will be rounded, do the following:

1.  On the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Bill*
    -   **Date**: *1/30/2026* \(inserted automatically\)
    -   **Vendor**: *ALLFRUITS*
    -   **Description**: `Purchase of services`
3.  On the **Details** tab, click **Add Row** and specify the following settings in the added row:
    -   **Branch**: *HEADOFFICE*
    -   **Ext. Cost**: `435.79`
4.  On the form toolbar click **Save** to save your changes.

    In the Summary area, notice that the **Detail Total** of the document is the same as in the document line \(*435.79*\). The **Balance** box shows a rounded amount \(*436.00*\) and the **Rounding Diff.** box shows the rounding gain of *0.21*.

5.  On the form toolbar, click **Remove Hold** and then click **Release** to release the document.
6.  On the **Financial** tab, click the link in the **Batch Nbr.** box and review the generated GL transaction on the [Journal Transactions](GL_30_10_00.md) \(GL301000\) form.

    The *20000 \(Accounts Payable\)* account has been credited with $436 \(the total amount of the bill\), the *81000 \(Other Expenses\)* account has been debited in $435.79 \(the amount of the document line\), and the *83100 \(Rounding Gain/Loss\)* account has been debited with $0.21 \(the rounding difference\).


**Parent topic:**[Rounding of AP Document Amounts](../UserGuide/Finance_Rounding_of_AP_Doc_Amounts_Mapref.md)

