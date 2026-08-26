# Related Items in Sales Orders: Implementation Activity {#_c1958ce0-506b-4281-980d-4ba96f002726 .task}

In the following implementation activity, you will learn how to specify related items for existing stock items.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that the sales department of SweetLife Fruits &amp; Jams has decided to implement the related items functionality to increase the value of sales.

Acting as the implementation manager, you need to specify related items with the *Cross-Sell*, *Up-Sell*, and *Substitute* relation types for existing stock items.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you will enable the needed feature.
2.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, you will open an existing stock item and specify a cross-sell item on the **Related Items** tab.
3.  On the [Stock Items](IN_20_25_00.md) form, you will open an existing stock item and specify an up-sell item on the **Related Items** tab.
4.  On the [Stock Items](IN_20_25_00.md) form, you will open an existing stock item and specify a substitute item on the **Related Items** tab.

## System Preparation { .section}

Before you start specifying related items for existing stock items, launch the Acumatica ERP website, and sign in to a company with the *U100* dataset preloaded. You should sign in as Kimberly Gibbs, the implementation manager, by using the *gibbs* username and the *123* password.

## Step 1: Enabling the Needed Feature {#section_o5k_yhh_wvb .section}

To enable the *Related Items* feature, which is required for sales of related items via sales orders in Acumatica ERP, do the following:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**, and select the **Related Items** check box under the **Inventory and Order Management** group of features.
3.  On the form toolbar, click **Enable**.

## Step 2: Specifying a Related Item with the Cross-Sell Relation Type { .section}

First, you will specify an item with the *Cross-Sell* relation type for fresh apples \(*APPLES*\). The related item is a 96-ounce jar of apple jam \(*APJAM96*\), which is an existing stock item. Do the following:

1.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, select *APPLES* in the **Inventory ID** box.
2.  Open the **Related Items** tab.
3.  On the table toolbar, click **Add Row**.
4.  In the row that you have added, specify the following settings \(leaving the default values in the remaining columns\):
    -   **Relation**: *Cross-Sell*
    -   **Inventory ID**: *APJAM96*
5.  On the form toolbar, click **Save**.

You have specified a related item with the *Cross-Sell* relation type for the *APPLES* stock item.

## Step 3: Specifying a Related Item with the Up-Sell Relation Type { .section}

You need to specify an item with the *Up-Sell* relation type for an existing stock item, a 32-ounce jar of cherries \(*CHERJAM32*\). The related item is a 96-ounce jar of cherry jam \(*CHERJAM96*\). Do the following:

1.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, select *CHERJAM32* in the **Inventory ID** box.
2.  Open the **Related Items** tab.
3.  On the table toolbar, click **Add Row**.
4.  In the row that you have added, specify the following settings \(leaving the default values in the remaining columns\):
    -   **Relation**: *Up-Sell*
    -   **Inventory** ID: *CHERJAM96*
5.  On the form toolbar, click **Save**.

You have specified a related item with the *Up-Sell* relation type for the *CHERJAM32* stock item.

## Step 4: Adding a Related Item with the Substitute Relation Type { .section}

Now you will specify an item with the *Substitute* relation type for a 96-ounce jar of orange jam \(*ORJAM96*\), which is an existing stock item. Three 32-ounce jars of orange jam \(*ORJAM32*\) can be substituted for the 96-ounce jar. Do the following:

1.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, select *ORJAM96* in the **Inventory ID** box.
2.  Open the **Related Items** tab.
3.  On the table toolbar, click **Add Row**.
4.  In the row that you have added, specify the following settings \(leaving the default values in the remaining columns\):
    -   **Relation**: *Substitute*
    -   **Inventory** ID: *ORJAM32*
    -   **Quantity**: *3*
5.  On the form toolbar, click **Save**.

You have specified a related item with the *Substitute* relation type for the *ORJAM96* stock item.

**Parent topic:**[Processing Sales of Related Items](../UserGuide/OrderMgmt_Sales_of_Related_Items_Mapref.md)

