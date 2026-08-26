# Two-Step Transfers: Process Activity {#_cfc0d321-2547-47ff-afc0-fabe37f46596 .task}

In the following activity, you will learn how to move stock items between warehouses by using a two-step transfer.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a purchasing manager in the retail shop of the SweetLife Fruits &amp; Jams company. You have ordered 50 pounds of apples directly from a supplier. When the apples were delivered to the warehouse of the retail shop, you realized that the warehouse has space only for 30 pounds of apples. To address this problem, you have decided to send 20 pounds of these apples to the wholesale warehouse. You will create all required documents in Acumatica ERP to register in the system these transactions.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Inventory and Order Management*, which provides the standard functionality of inventory and order management
    -   *Inventory*, which gives you the ability to maintain stock items by using forms related to the inventory functionality and to create and process sales and purchase documents that include stock items
    -   *Multiple Warehouses*, which gives you the ability to have multiple warehouses in the system
    -   *Multiple Warehouse Locations*, which gives you the ability to configure multiple locations for each warehouse
-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the *WHOLESALE* and *RETAIL* warehouses and the *MAIN* location for each of these warehouses have been created.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *APPLES* stock item has been created.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *GLORYFRUIT* vendor has been created.

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, process a purchase order and purchase receipt for items.
2.  On the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form, make sure that the items are available in the source warehouse.
3.  On the [Transfers](IN_30_40_00.md) \(IN304000\) form, create a transfer of the *2-Step* type.
4.  On the [Receipts](IN_30_10_00.md) \(IN301000\) form, create an inventory receipt.
5.  On the [Inventory Allocation Details](IN_40_20_00.md) form, make sure that the items are available in the destination warehouse.

## System Preparation { .section}

Before you start processing two-step transfers, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as purchasing manager Regina Wiley by using the *wiley* username and the *123* password.
2.  On the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, make sure that the *SweetLife Store* branch is selected.

## Step 1: Ordering and Receiving Items in a Source Warehouse { .section}

Before you can transfer apples from the *RETAIL* warehouse to the *WHOLESALE* warehouse, you need to process the purchasing documents. Do the following:

1.  As a preliminary action, on the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form, do the following:
    1.  In the **Inventory ID** box of the Summary area, select *APPLES*.
    2.  In the **Warehouse** box, select *RETAIL*.
    3.  Make a note of the initial value of the **On Hand** box in the Summary area. You will use it later to make sure that the quantity increases after receiving items in the warehouse.
2.  On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, add a new record.
3.  In the **Vendor** box of the Summary area, select *GLORYFRUIT*.
4.  In the **Description** box, type `Order of 50 pounds of apples from Glory Fruit Case`.
5.  On the **Details** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Branch** column, select *RETAIL*.
    3.  In the **Inventory ID** column, select *APPLES*.
    4.  In the **Warehouse** box, select *RETAIL*.
    5.  In the **Order Qty.** column, type `50`.
6.  On the form toolbar, click **Remove Hold**. The system saves the purchase order with the *Open* status.
7.  On the form toolbar, click **Enter PO Receipt**. The system opens the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form with the new purchase receipt. The purchase receipt has the data copied from the linked purchase order; it also has the *Balanced* status.
8.  In the **Location** column of the **Details** tab, make sure that *MAIN* is selected.
9.  On the form toolbar, click **Release**. Wait for the system to complete the operation. The system creates and releases the inventory receipt. On the **Other** tab, you can view the reference number of the created inventory receipt in the **IN Ref Nbr.** box; you can also click the reference number link to view the inventory receipt on the [Receipts](IN_30_10_00.md) \(IN301000\) form. The system changes the status of the purchase receipt to *Released*.

You have processed the documents for ordering the apples from the vendor and receiving the apples to the retail warehouse.

## Step 2: Reviewing the Availability of Items in the Source Warehouse { .section}

To make sure that the ordered apples have become available in the retail warehouse, do the following:

1.  Open the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form.
2.  In the **Inventory ID** box of the Summary area, select *APPLES*.
3.  In the **Warehouse** box, select *RETAIL*.
4.  Make sure that the value in the **On Hand** box in the Summary area has increased by 50.

## Step 3: Creating a Two-Step Transfer { .section}

Now you need to register the movement of 20 pounds of the purchased apples to the wholesale warehouse. To create a two-step transfer, do the following:

1.  On the [Transfers](IN_30_40_00.md) \(IN304000\) form, add a new record.
2.  In the **Transfer Type** box of the Summary area, select *2-Step*.
3.  In the **Warehouse ID** box, select *RETAIL*.
4.  In the **To Warehouse ID** box, select *WHOLESALE*.
5.  In the **Description** box, type `Transfer of 20 pounds of apples from Retail to Wholesale`.
6.  On the **Details** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Inventory ID** column, select *APPLES*.
    3.  In the **Location** box, select *MAIN*.
    4.  In the **Quantity** column, type `20`.
7.  On the form toolbar, click **Release**. The system releases the transfer and changes its status to *Released*.
8.  On the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form, do the following:
    1.  In the **Inventory ID** box of the Summary area, select *APPLES*.
    2.  In the **Warehouse** box, clear the selected warehouse.
    3.  On the **Item Plans** tab, make sure that a row with the *In-Transit* allocation type is displayed. This means that the apples have been issued from the *RETAIL* warehouse and have not been received in the *WHOLESALE* warehouse.

So far, you have processed the documents for registering movement of 20 pounds of apples from the retail warehouse. Now you will register their receipt in the wholesale warehouse.

## Step 4: Creating an Inventory Receipt { .section}

Suppose that apples have been delivered to the wholesale warehouse. Before processing the document to record this receipt, you need to view the initial on-hand quantity of apples in the *WHOLESALE* warehouse so that you can later make sure that this quantity is increased by the transferred quantity. To review this quantity and create the receipt, do the following:

1.  On the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form, do the following:
    1.  In the **Inventory ID** box of the Summary area, select *APPLES*.
    2.  In the **Warehouse** box, select *WHOLESALE*.
    3.  Make a note of the initial value of the **On Hand** box.
2.  On the [Receipts](IN_30_10_00.md) \(IN301000\) form, add a new record.
3.  In the **Transfer Nbr.** box of the Summary area, select the reference number of the two-step transfer that you created in the previous step. The system copies the line for the *APPLES* item from the selected transfer to the **Details** tab.
4.  On the **Details** tab, in the **Location** box of the only row, make sure that *MAIN* is selected \(which is the location to which you will receive the items in the *WHOLESALE* warehouse\).
5.  On the form toolbar, click **Release**. The system releases the receipt and adds the item quantity from the receipt to the on-hand quantity of the *APPLES* item in the *WHOLESALE* warehouse \(which you will verify in the next step\).

## Step 5: Reviewing Availability of Items in the Destination Warehouse { .section}

To make sure that the moved quantity of apples is now available in the wholesale warehouse, do the following:

1.  Open the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form.
2.  In the **Inventory ID** box of the Summary area, select *APPLES*.
3.  In the **Warehouse** box, select *WHOLESALE*.
4.  Make sure that the value in the **On Hand** box has increased by 20.
5.  In the **Warehouse** box, clear the selected warehouse.
6.  Notice that in the table on the **Item Plans** tab, the row with the *In-Transit* allocation type is no longer displayed. This means that the transfer that included the *APPLES* item has been released.

You have transferred apples from the retail warehouse to the wholesale warehouse.

**Parent topic:**[Processing Two-Step Inventory Transfers](../UserGuide/InvMgmt_2Step_Transfers_Mapref.md)

