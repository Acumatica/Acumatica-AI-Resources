# Receiving and Putting Away Operations: To Receive and Put Away Items \(Mobile\) {#_00258f48-26b6-458a-935f-a93b59c3e610 .task}

In the following activity, you will learn how to perform the receiving and putting away of items on the Receive and Put Away screen of the Acumatica mobile app, which corresponds to the [Receive and Put Away](PO_30_20_20.md) \(PO302020\) form in Acumatica ERP.

In this activity, we use the Acumatica mobile app for Android devices. The appearance and functionality of the mobile app for iOS devices may differ somewhat.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a warehouse worker in the wholesale warehouse of the SweetLife Fruits &amp; Jams company. Your warehouse manager gives you a task to receive the purchased fruits \(70 pounds of apples and 50 pounds of oranges\) in the warehouse with the help of the Acumatica mobile app. In your organization, the receive and put away workflow is used, which means that you receive the purchased items at a receiving location of the warehouse, and then go through the warehouse locations and put away the items in the locations where the fruits are stored. Also suppose that you put away the apples and part of the oranges in one fruit location, and the rest of the oranges in another fruit location.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled in the *Inventory and Order Management* group of features:
    -   *Multiple Warehouse Locations*
    -   *Warehouse Management*
    -   *Receiving*
-   On the **Warehouse Management** tab of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form, the **Display the Receive Tab** and **Display the Put Away Tab** check boxes have been selected.
-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the *WHOLESALE* warehouse has been created. On the **Locations** tab of the form, multiple warehouse locations reflecting the warehouse structure have been configured.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *APPLES* and *ORANGES* stock items have been created. For each stock item, barcodes have been specified on the **Cross-Reference** tab of the form.
-   On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, a purchase order to the *ALLFRUITS* vendor has been created.
-   On the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, a purchase receipt has been created for this purchase order.

## Process Overview { .section}

In this activity, you will open the Receive and Put Away screen in the Acumatica mobile app, switch to Receive mode, and scan the number of the purchase order. Then you will receive the items and scan their barcodes and quantities. After you finish receiving the items, you will switch to Put Away mode on the same form, scan the barcodes of the warehouse locations to which the items are being put away, scan the item barcodes, and correct the quantities. After you finish putting away items, you will release the transfer receipt.

**Tip:** In any working mode, you enter a command or barcode by typing it in the Scan box and tapping Enter. In production systems, you will scan the appropriate barcodes rather than manually entering them.

## System Preparation { .section}

Before you start performing the automated receiving and putting away operations, do the following:

1.  On the **Warehouse Management** tab of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form, make sure that the **Verify Receipts Before Release** check box is cleared.
2.  Make sure that you have installed the Acumatica mobile app on your mobile device.
3.  Launch the app.
4.  Enter the URL and optional name of the Acumatica ERP instance with the *U100* dataset preloaded \(for example, *https://your.acumatica.site.com*\), and tap **Next**.
5.  Enter the credentials of the user account you will use in this activity: the *perkins* username and the *123* password.
6.  Tap **Sign In** to enter the site.

**Attention:** The instructions in the activity steps below may slightly differ in the Acumatica mobile app depending on whether the device is running iOS or Android.

## Step 1: Receiving Items in the Receiving Location { .section}

To record the receipt of items in the warehouse, do the following in the Acumatica mobile app on your mobile device:

1.  On the main screen of the mobile app, tap the **Warehouse Management** workspace.
2.  Tap the **Receive and Put Away** tile to view the Receive and Put Away screen.
3.  In the top pane, make sure Receive mode is in use.
4.  Scan the `000019` barcode, which is the reference number of the purchase receipt for which you are receiving items. The system loads the purchase receipt lines and shows the reference number of the purchase receipt in the top pane.
5.  Scan the `MAIN` barcode to select the location to which you are receiving the items.
6.  Scan the `AP1LB` barcode to select the item being received.
7.  Set the quantity of the item to `70` as follows:
    1.  At the bottom of the screen, tap **Set Qty** to change the quantity of the current line.
    2.  Enter `70`. The system specifies *70* as the received quantity.
8.  **Tip:** In this activity, you are specifying the quantity in Quantity Editing mode to save time. In a production environment, warehouse workers would instead scan the barcode of each item included in the document.

9.  Scan the `OR1LB` barcode to select the next item being received.
10. Set the quantity of the item to `50`. The system inserts *50* as the received quantity.
11. At the bottom of the screen, tap **Review** to view the items that have been added to the receipt.
12. Go back to the previous screen.
13. In the top right corner of the screen, tap **More** &gt; **Release Receipt**. The system releases the purchase receipt and generates the inventory receipt transaction to record the receipt of items to the *MAIN* location of the warehouse.

You have received the items for the purchase receipt, and now you can proceed with putting away the received items in the storage locations.

## Step 2: Putting Away the Received Items in the Storage Locations { .section}

To record that the received items are being put away in the appropriate locations, do the following in the Acumatica mobile app:

1.  While you are still viewing the Receive and Put Away screen on your mobile device, at the bottom of the screen, tap **Change Mode** &gt; **Put Away** to switch to Put Away mode. Notice that the purchase receipt is still selected and its reference number is shown in the **Receipt Nbr.** box on the top pane.
2.  Scan the `F1S2` barcode to select the location to which the items are being put away.
3.  Scan the `AP1LB` barcode to select the item to be put away in this location. The system specifies *1* as the put away quantity. On the top pane, the **Transfer Nbr.** box shows the reference number of the inventory transfer transaction that the system automatically created to record the movement of items from the receiving location to the storage locations.
4.  Set the quantity of the item to `70` as follows:
    1.  At the bottom of the screen, tap **Set Qty** to change the quantity of the current line.
    2.  Enter `70`. The system specifies *70* as the put away quantity, indicating that 70 pounds of apples have been put away on the second shelf of the first fruit location.
5.  Scan the `OR1LB` barcode to select the item being put away.
6.  Set the quantity of the item to `30`. The system inserts *30* as the put away quantity, indicating that 30 pounds of oranges have been put away on the second shelf of the first fruit location.
7.  Enter `F2S2` to select another location to which the rest of the oranges will be put away.
8.  Enter `OR1LB` to select the item being put away.
9.  Set the quantity of the item to `20`. The system specifies *20* as the put away quantity, indicating that 20 pounds of oranges have been put away on the second shelf of the second fruit location. Now all items from the purchase receipt have been put away in the appropriate storage locations.
10. At the bottom of the screen, tap **Review** to view the list of items in the transfer. For the *ORANGES* item, notice that the system shows *&lt;SPLIT&gt;* as the destination location, indicating that the items have been put away in multiple locations.
11. Go back to the previous screen.
12. In the top right corner of the screen, tap **More** &gt; **Release Transfer** to release the transfer.

You have successfully received the items to the receiving location and put away the items in the appropriate locations.

**Parent topic:**[Automated Receiving and Putting Away Operations](../UserGuide/WMS_Receive_Put_Away_Mapref.md)

