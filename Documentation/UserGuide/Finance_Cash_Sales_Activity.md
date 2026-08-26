# Cash Sales and Cash Returns: Process Activity {#_053ee98d-1b18-4fcb-ad25-aea1f7d7226d .task}

The following activity will walk you through the process of recording a cash sale and a cash return.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that on 1/30/2026, Allen's Bakery decided to buy $100 gift certificates for its employees from SweetLife Fruits &amp; Jams. The company's representative bought the certificates at the SweetLife store and paid $ 1,200 by cash. Further suppose that on 2/3/2026, Allen's Bakery returned one gift certificate.

Acting as SweetLife's accountant, you need to record the cash sale in the system, and then record a cash return for one certificate.

## Configuration Overview {#section_tz4_djx_cnb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Standard Financials*, which provides the standard financial functionality
    -   *Multibranch Support*, which supports multiple branches in your instance of Acumatica ERP
    -   *Multicompany Support*, which supports multiple companies within one tenant
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the *ABAKERY \(Allen's Bakery\)* customer has been configured.

-   On the [Payment Methods](CA_20_40_00.md) \(CA204000\) form, the *CASH* payment method has been configured.
-   On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the *GIFTCERT* non-stock item has been configured.
-   On the [Accounts Receivable Preferences](AR_10_10_00.md) \(AR101000\) form, the **Hold Documents on Entry** check box has been selected in the **Data Entry Settings** section.


## Process Overview { .section}

In this activity, you will create a cash sale on the [Cash Sales](AR_30_40_00.md) \(AR304000\) form. On the same form, you will create a cash return for the same customer.

## System Preparation { .section}

Before you begin processing a cash sale and a cash return, do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as Ann Johnson by using the *johnson* username and the *123* password.
2.  In the info area at the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date is set to *1/30/2026*. If a different date is displayed, click the Business Date menu button and select *1/30/2026* from the calendar. For simplicity, you'll create and process all documents in this activity using this business date.
3.  On the Company and Branch Selection menu on the top pane of the Acumatica ERP screen, select the *SweetLife Store* branch.

## Step 1: Creating a Cash Sale { .section}

To create a cash sale, do the following:

1.  On the [Cash Sales](AR_30_40_00.md) \(AR304000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Cash Sale*
    -   **Date**: *1/30/2026* \(inserted automatically\)
    -   **Customer**: *ABAKERY*
    -   **Payment Method**: *CASH*
    -   **Cash Account**: *10100ST - SweetStore Petty Cash*
    -   **Description**: `Gift certificates`
3.  On the table toolbar, click **Add Row**.
4.  On the **Details** tab, specify the following settings for the row:
    -   **Branch**: *RETAIL* \(inserted automatically\)
    -   **Inventory ID**: *GIFTCERT*
    -   **Quantity**: `12`
    -   **Unit Price**: `100`
    -   **Ext. Price**: *1,200* \(calculated automatically\)
    -   **Account**: *40000 - Sales Revenue*
5.  On the form toolbar, click **Save**.
6.  On the form toolbar, click **Remove Hold** and then click **Release** to release the cash sale.

## Step 2: Creating a Cash Return { .section}

To create a cash return for $100, do the following:

1.  While you are still on the [Cash Sales](AR_30_40_00.md) \(AR304000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Cash Return*
    -   **Date**: *2/3/2026*
    -   **Customer**: *ABAKERY*
    -   **Payment Method**: *CASH*
    -   **Cash Account**: *10100ST - SweetStore Petty Cash*
    -   **Description**: `Returned one certificate`
3.  On the table toolbar, click **Add Row**.
4.  On the **Details** tab, specify the following settings for the row:
    -   **Branch**: *RETAIL* \(inserted automatically\)
    -   **Inventory ID**: *GIFTCERT*
    -   **Quantity**: `1`
    -   **Unit Price**: `100`
    -   **Ext. Price**: *100* \(calculated automatically\)
    -   **Account**: *40000 - Sales Revenue*
5.  On the form toolbar, click **Save**.
6.  On the form toolbar, click **Remove Hold** and then click **Release** to release the cash return.

**Parent topic:**[Processing Cash Sales and Cash Returns](../UserGuide/Finance_Processing_Cash_Sales_Mapref.md)

