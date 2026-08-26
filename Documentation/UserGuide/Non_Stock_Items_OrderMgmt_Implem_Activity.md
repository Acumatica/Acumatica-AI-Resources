# Non-Stock Items: Implementation Activity {#_d0a61b1a-f146-429c-812b-c5fa2502cd01 .task}

The following implementation activity will walk you through the process of creating a non-stock item.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_vfr_kpy_mlb .section}

Suppose that the SweetLife Fruits &amp; Jams company is holding a promotion in which customers who buy a certain quantity of fruits in the SweetLife Store also receive a teddy bear toy. The company needs to buy a certain number of these toys from a manufacturer. The promotion is temporary, and the SweetLife Store does not need to track the quantity of distributed toys; thus, the teddy bear will be registered in the system as a non-stock item.

Acting as a SweetLife sales and purchasing manager, you need to create the new non-stock item and specify the needed settings for it.

## Process Overview {#section_wfr_kpy_mlb .section}

In this activity, you will create a non-stock item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, specify the needed settings and save the created non-stock item.

## System Preparation {#section_xfr_kpy_mlb .section}

Before you start creating the non-stock item, launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in to the system as a sales and purchasing manager. You should sign in by using the *wiley* username and the *123* password.

## Step: Creating a Non-Stock Item {#section_yfr_kpy_mlb .section}

To create a non-stock item, do the following:

1.  On the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Inventory ID**: `TEDDYBEAR`
    -   **Description**: `Teddy Bear toys`
3.  On the **General** tab, specify the following settings for the item:
    -   **Type**: *Non-Stock Item*
    -   **Posting Class**: *NONSTOCK - Non-Stock Items*
    -   **Tax Category**: *EXEMPT*
    -   **Require Receipt**: Selected

        You select this check box because you want the receipt of this item to be recorded.

    -   **Require Shipment**: Cleared

        You clear this check box because customers will receive the teddy bear promotional item only in the SweetLife Store.

    -   **Close PO Line**: *By Quantity*

        With this option selected, a purchase order line for this item is completed and closed based on the line quantity when the receipt or bill is released. You select this option to make sure that the vendor provides the appropriate quantity of the item.

4.  In the **Unit of Measure** section of the **General** tab, specify the following settings:
    -   **Base Unit**: *EA*
    -   **Sales Unit**: *EA*
    -   **Purchase Unit**: *EA*
5.  On the **GL Accounts** tab, in the **Expense Account** box, select the *60000 - Purchase Expense* account.
6.  On the form toolbar, click **Save**.

You have created the non-stock item for the promotional teddy bear.

**Parent topic:**[Creating Non-Stock Items](../UserGuide/Non_Stock_Items_OrderMgmt_Mapref.md)

