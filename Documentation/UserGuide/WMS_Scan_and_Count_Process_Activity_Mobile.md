# Counting in Physical Inventory: Process Activity \(Mobile\) {#_00ac8200-dc5d-46b5-9a13-f28e8a566572 .task}

In this activity, you will learn how to perform automated counting during physical inventory on the Scan and Count screen of the Acumatica mobile app, which corresponds to the [Scan and Count](IN_30_50_20.md) \(IN305020\) form in Acumatica ERP, by using your mobile device.

In this activity, we use the Acumatica mobile app for Android devices. The appearance and functionality of the mobile app for iOS devices may differ somewhat.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a warehouse worker in the SweetLife Fruits &amp; Jams company, and you are assigned to perform a physical inventory count by scanning the barcodes of stock items and locations with your mobile device, by using the Acumatica mobile app. You will count the quantities of orange jam in particular warehouse locations added to the physical inventory document, which your manager has provided to you.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled in the *Inventory and Order Management* group of features:
    -   *Multiple Warehouse Locations*
    -   *Advanced Physical Count*
    -   *Warehouse Management*
    -   *Inventory Operations*
-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the *WHOLESALE* warehouse has been created. For this warehouse, on the **Locations** tab, the *L2R2S1* and *L2R2S2* warehouse locations have been added.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *ORJAM08* and *ORJAM96* stock items have been created. For each stock item, barcodes have been specified on the **Cross-Reference** tab of the form.
-   On the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form, the *ORJCNT2* physical inventory type has been created.
-   On the [Prepare Physical Count](IN_50_40_00.md) \(IN504000\) form, the physical inventory document that has the *ORJAM08* and *ORJAM96* items and the *Counting in Progress* status has been created.

## Process Overview { .section}

In this activity, as you count stock items within physical inventory by using the Scan and Count screen of the Acumatica mobile app, you will scan the barcode of the physical inventory document and then scan the location barcode and the barcodes of each item you find in this location. You will correct the quantities of items and add extra lines for items that you find in a location. When you have counted all items in all locations added to the physical inventory document, you will confirm the document.

**Tip:** In any working mode, you enter a command or barcode by typing it in the Scan box and tapping Enter. In production systems, you will scan the appropriate barcodes rather than manually entering them.

## System Preparation { .section}

Before you start counting stock items, you need to perform the following instructions:

1.  Make sure that you have installed the Acumatica mobile app on your mobile device.
2.  Launch the app.
3.  Enter the URL and optional name of the Acumatica ERP instance with the *U100* dataset preloaded \(for example, *https://your.acumatica.site.com*\), and tap **Next**.
4.  Enter the credentials of the user account you will use in this activity: the *perkins* username and the *123* password.
5.  Tap **Sign In** to enter the site.

**Attention:** The instructions in the activity steps below may slightly differ in the Acumatica mobile app depending on whether the device is running iOS or Android.

## Step 1: Entering the Counted Quantities of Items { .section}

Suppose that you are starting to count orange jam in the locations listed in the physical inventory document. In the Acumatica mobile app on your mobile device, do the following to enter the counted quantities in the system:

1.  On the main screen of the mobile app, tap the **Warehouse Management** workspace.
2.  Tap the **Scan and Count** tile to view the Scan and Count screen.
3.  Scan the `000003` barcode \(which is the reference number of the physical inventory document\). Notice that the number is displayed in the **Reference Nbr.** box on the top pane of the screen.
4.  At the bottom of the screen, tap **Review** to view the list of items that you should count: They are orange jam in 8-ounce jars \(*ORJAM08*\) and orange jam in 96-ounce jars \(*ORJAM96*\).
5.  Go back to the previous screen.
6.  Scan the `L2R2S1` location barcode.

    Suppose that in this physical location, you find three boxes of orange jam in 8-ounce jars.

7.  Scan the `OJ08B` item barcode.
8.  Set the quantity of the item to `3` as follows:

    1.  At the bottom of the screen, tap **Set Qty** to change the quantity of the current line.
    2.  Enter `3`. The system adds three boxes of the *ORJAM08* item to the document.
    You have completed the entry of item quantities in the *L2R2S1* location and can start entering quantities in the next location.

9.  Scan the `L2R2S2` location barcode.

    Suppose that in this location, you find one box of orange jam in 96-ounce jars.

10. Scan the `OJ96B` item barcode to add one box of the *ORJAM96* item to the document.

    You have finished entering item quantities in the *L2R2S2* location, which was the last location in your physical inventory document.


## Step 2: Correcting the Quantities in the Physical Inventory Document { .section}

Suppose that you have realized that you scanned one box of the *ORJAM08* item in the *L2R2S1* location three times by mistake, because in fact you have two boxes. Now you need to correct the quantity in the document. Do the following in the mobile app:

1.  While you are still viewing the Scan and Count screen with the *000003* physical inventory document opened, scan the `L2R2S1` location barcode.
2.  At the bottom of the screen, tap **Remove** to switch to Remove mode.
3.  Scan the `OJ08B` item barcode. The system removes one box of the *ORJAM08* item from the document.

You have corrected the quantity of the *ORJAM08* item in the *L2R2S1* location.

## Step 3: Adding an Extra Line to the Physical Inventory Document { .section}

Suppose that in the *L2R2S2* location, you have found one jar of the *ORJAM08* item, which is not in the physical inventory document. To add this item to the document, do the following in the Acumatica mobile app:

1.  While you are still viewing the Scan and Count screen with the *000003* physical inventory document opened, scan the `L2R2S2` location barcode.
2.  Scan the `OJ08` item barcode. The system shows the warning, asking you to confirm the addition of the new row to the document.
3.  In the Scan box, enter `*ok`. The system adds a new row for the *L2R2S2* location and the *ORJAM08* item to the document.

You have added the extra item to the physical inventory document.

## Step 4: Reviewing the Quantities and Confirming the Entered Data { .section}

Now that you have entered the quantities of the counted items in the physical inventory document, you will review the quantities and confirm the entered data. Do the following in the Acumatica mobile app:

1.  While you are still viewing the *000003* physical inventory document on the Scan and Count screen, tap **Review**, and make sure that the settings shown on the screen correspond to the settings in the following table.

    |Location|Inventory ID|Physical Quantity|
    |--------|------------|-----------------|
    |Line 2, Rack 2, Shelf 1 \(*L2R2S1*\)|*ORJAM08*|*20*|
    |Line 2, Rack 2, Shelf 2 \(*L2R2S2*\)|*ORJAM96*|*10*|
    |Line 2, Rack 2, Shelf 2 \(*L2R2S2*\)|*ORJAM08*|*1*|

2.  Go back to the previous screen.
3.  In the top right corner of the screen, tap **More** &gt; **Confirm** to confirm the entered data. The system confirms the data and clears the physical inventory document number. The form is ready for a new count.

You have successfully counted orange jam in the warehouse locations and entered data in the system.

**Parent topic:**[Automated Processing of Physical Inventory](../UserGuide/WMS_Scan_and_Count_Mapref.md)

