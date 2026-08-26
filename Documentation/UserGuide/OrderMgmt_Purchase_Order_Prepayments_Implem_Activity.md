# Prepayments for Purchase Orders: Implementation Activity {#_0f911c82-4139-4761-9d27-8711f3fe0550 .task}

In the following implementation activity, you will learn how to specify a default prepayment percentage for a particular vendor and stock item.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that SweetLife buys eco-friendly reusable bags with personalized logos from the Ginkgo Tree Printing Company vendor. The vendor notifies the SweetLife company that future orders will need to be partially paid in advance before the vendor starts to manufacture the goods for the order. The vendor requests that your company pay 15% of any order in advance, and for ecobags, the vendor instead requests a prepayment of 25%. Acting as implementation manager Kimberly Gibbs, you need to specify the vendor settings so that the prepayment amount will be automatically filled in for each newly created prepayment.

## System Preparation { .section}

Before you start making changes to the settings of the vendor and stock item, you should launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.

## Step 1: Editing the Vendor Settings { .section}

To update the vendor account with the prepayment percent, do the following:

1.  On the [Vendors](AP_30_30_00.md) \(AP303000\) form, open the *GINKGO* vendor.
2.  On the **Payment** tab, specify `15` in the **Prepayment Percent** box.
3.  On the **GL Accounts** tab, make sure that *13200 - Deposit to Vendor* is selected in the **Prepayment Account** box.
4.  On the form toolbar, click **Save**.

## Step 2: Editing the Stock Item Settings { .section}

To specify the prepayment percent of the *ECOBAG* stock item when it is included in a purchase order for the *GINKGO* vendor, do the following:

1.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, open the *ECOBAG* item.
2.  On the **Vendors** tab, click **Add Row**.
3.  Specify the following settings in the added row:
    -   **Active**: Selected
    -   **Vendor ID**: *GINKGO*
    -   **Prepayment Percent**: `25`.
4.  On the form toolbar, click **Save**.

You have specified the default prepayment settings for the *GINKGO* vendor and item-specific prepayment settings for the *ECOBAG* stock item.

**Parent topic:**[Processing Prepayments for Purchase Orders](../UserGuide/OrderMgmt_Purchase_Order_Prepayments_Mapref.md)

