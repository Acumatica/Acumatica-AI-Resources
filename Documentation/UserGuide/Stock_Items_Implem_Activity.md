# Stock Items: Implementation Activity {#_9ef80352-3ae1-419d-9f01-33f4885f41ce .task}

In this implementation activity, you will learn how to create stock items.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are an implementation manager. You are configuring inventory for the SweetLife Fruits &amp; Jams company, which produces and sells jam from various fruits.You will create a stock item for banana jam in 32-ounce jar.

## System Preparation { .section}

Before you start creating the stock item, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in to the system as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, make sure that the *Inventory and Order Management* and *Inventory* features are enabled.
3.  On the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, create and save the reason codes that are required for configuring inventory and order management, as described in [Reason Codes: Implementation Activity](Reason_Codes_Implem_Activity.md).
4.  Create the *JAM* item class, as described in [Item Classes for Stock Items: Implementation Activity](Item_Classes_Implem_Activity.md).

## Step: Creating Stock Items { .section}

To create a stock item for banana jam in 32-ounce jars, do the following:

1.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, add a new record.
2.  Do the following to create a stock item for the banana jam in 32-ounce jar:
    1.  In the Summary area, specify the following settings:
        -   **Inventory ID**: `BANJAM32`
        -   **Item Status**: *Active*
        -   **Description**: `Banana jam 32 oz`
    2.  On the **General** tab, do the following:
        1.  In the **Item Class** box, select *JAM*.
        2.  In the **Base Unit** box, select *PIECE*.
        3.  Make sure that the **Divisible Unit** check box right of the **Base Unit** box is selected.
        4.  Make sure that the following settings have been copied from the item class: **Type**, **Valuation Method**, **Tax Category**, and **Posting Class**.
    3.  On the **GL Accounts** tab, make sure that the accounts have been copied from the [Posting Classes](IN_20_60_00.md) \(IN206000\) form for the *FDI* posting class \(**GL Accounts** tab\).
    4.  On the form toolbar, click **Save**.

Now that you have created the stock item for banana jam, you can include the jam jars in documents.

## Activity Recap { .section}

In this activity, we have illustrated how the implementation manager has created a new stock item.

**Parent topic:**[Creating Stock Items](../UserGuide/Stock_Items_Mapref.md)

