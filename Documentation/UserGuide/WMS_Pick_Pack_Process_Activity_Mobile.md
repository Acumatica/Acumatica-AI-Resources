# Picking and Packing Operations: Process Activity \(Mobile\) {#_993b612d-7030-4c5b-95a7-0d5487a00e27 .task}

In the following activity, you will learn how to perform the picking and packing of items for a shipment by using the Pick, Pack, and Ship screen of the Acumatica mobile app, which corresponds to the [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\) form of Acumatica ERP.

In this activity, we use the Acumatica mobile app for Android devices. The appearance and functionality of the mobile app for iOS devices may differ somewhat.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a warehouse worker of the wholesale warehouse of the SweetLife Fruits &amp; Jams company. Your warehouse manager gives you a task to prepare a shipment with the help of the Acumatica mobile app. In your organization, the pick and pack workflow is used, which means that you go through the warehouse locations and pick the items listed in the shipment pick list. Then you go to the packing line and pack the picked items into boxes.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled in the *Inventory and Order Management* group of features:
    -   *Multiple Warehouse Locations*
    -   *Warehouse Management*
    -   *Fulfillment*
-   On the **Warehouse Management** tab of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form, the **Display the Pick Tab** and the **Display the Pack Tab** check boxes are selected.
-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the *WHOLESALE* warehouse has been created. On the **Locations** tab of the form, multiple warehouse locations are configured.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the following stock items have been created: *APJAM96*, *ORJAM96*, and *LEMJAM96*. For each stock item, barcodes have been specified on the **Cross-Reference** tab of the form.
-   On the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, a sales order for the *COFFEESHOP* customer has been created.
-   On the [Shipments](SO_30_20_00.md) \(SO302000\) form, a shipment has been prepared for this sales order.

## Process Overview { .section}

In this activity, in the Acumatica mobile app, you will open the Pick, Pack, and Ship screen \(which corresponds to the [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\) form in Acumatica ERP\), switch to Pick mode and scan the number of the shipment from the pick list. Then you will pick the items and scan their barcodes and quantities. After you finish picking items, you will switch to Pack mode on the same screen and scan the barcode of the box to which you pack the items. Then you will scan the item barcode and quantity of the items being packed into the box. After you finish packing the items, you will confirm the shipment.

**Tip:** In any working mode, you enter a command or barcode by typing it in the Scan box and tapping Enter. In production systems, you will scan the appropriate barcodes rather than manually entering them.

## System Preparation { .section}

Before you start performing the automated picking and packing operations, do the following:

1.  Make sure that you have installed the Acumatica mobile app on your mobile device.
2.  Launch the app.
3.  Enter the URL and optional name of the Acumatica ERP instance with the *U100* dataset preloaded \(for example, *https://your.acumatica.site.com*\), and tap **Next**.
4.  Enter the credentials of the user account you will use in this activity: the *perkins* username and the *123* password.
5.  Tap **Sign In** to enter the site.

**Attention:** The instructions in the activity steps below may slightly differ in the Acumatica mobile app depending on whether the device is running iOS or Android.

## Step 1: Picking Items for Shipping { .section}

To pick items for shipping, do the following in the Acumatica mobile app on your mobile device:

1.  On the main screen of the mobile app, tap the **Warehouse Management** workspace.
2.  Tap the **Pick, Pack, and Ship** tile to view the Pick, Pack, and Ship screen.
3.  In the top pane, make sure that Pick mode is in use.
4.  Scan the `000030` barcode, which is the reference number of the shipment for which you are picking items. The system loads the shipment lines and shows the reference number of the shipment in the top pane of the screen.
5.  At the bottom of the screen, tap **Review** to review the shipment lines.
6.  Go back to the previous screen.
7.  Scan the `L3R2S2` barcode to select the location from which the item is picked.
8.  Scan the `AJ08` barcode to select the item being picked.
9.  Set the quantity of the item to `12` as follows:

    1.  At the bottom of the screen, tap **Set Qty** to change the quantity of the current line.
    2.  Enter `12`. The system specifies *12* as the **Picked Quantity**.
    **Tip:** In this activity, you are specifying the quantity in Quantity Editing mode to save time. In a production environment, warehouse workers would instead scan the barcode of each item included in the document.

10. To review the entered quantity, do the following:
    1.  Tap **Review**. The system opens a screen with all lines of the shipment. The picked quantity is displayed on the left side of the line.
    2.  Tap the line with the *Apple jam 8 oz.* item. The system opens a dialog box with detailed information about the line.
11. Go back to the Pick, Pack, and Ship screen.
12. Scan the `L2R1S3` barcode to select the location from which the item is picked.
13. Scan the `OJ32` barcode to select the item being picked.
14. Set the quantity of the item to `6`. The system specifies *6* as the **Picked Quantity** and displays a message in the notification area indicating that the shipment has been picked.

You have picked the items for the shipment, and now you can proceed with packing the items.

## Step 2: Packing Items for Shipping { .section}

To pack items, do the following in the Acumatica mobile app:

1.  While the Pick, Pack, and Ship screen is still opened on your mobile device, at the bottom of the screen, tap **Change Mode** &gt; **Pack** to switch to Pack mode. Notice that the shipment is still selected and its reference number is shown in the top pane.
2.  Scan the `MEDIUM` barcode to select the box for packaging the shipment.
3.  Scan the `AJ08` barcode to select the item being packed.
4.  Set the quantity of the item to `12` as follows:
    1.  At the bottom of the screen, tap **Set Qty** to change the quantity of the current line.
    2.  Enter `12`. The system specifies *12* as the **Picked Quantity**.
5.  Scan the `OJ32` barcode to select the item being picked.
6.  Set the quantity of the item to `6`. The system specifies *6* as the **Packed Quantity** and displays a message in the notification area indicating that the shipment is packed in full.
7.  To review the packed quantities of items, do the following:
    1.  Tap **Review**.
    2.  On the **Packages** tab, tap *MEDIUM*.
    3.  Tap the line with the *Orange jam 32 oz.* item. The system opens a dialog box with detailed information about the line.
8.  Go back to the Pick, Pack, and Ship screen.
9.  In the top right corner of the screen, tap **More** &gt; **Confirm Package** to confirm the package.
10. In the top right corner of the screen, tap **More** &gt; **Confirm Shipment** to confirm the shipment.

You have successfully picked and packed the items of the shipment.

**Parent topic:**[Automated Picking and Packing Operations](../UserGuide/WMS_Pick_Pack_Mapref.md)

