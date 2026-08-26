# Item and Storage Lookup: Process Activity \(Mobile\) {#_c6d2cd1f-15ec-4e4f-9f1f-15a0e3866550 .task}

In the following activity, by using the Acumatica mobile app, you will learn how to search for information about stock items on the Item Lookup screen, which corresponds to the [Item Lookup](IN_20_25_20.md) \(IN202520\) form of Acumatica ERP, and for information about items stored in a particular location on the Storage Lookup screen, which corresponds to the [Storage Lookup](IN_40_90_20.md) \(IN409020\) form of Acumatica ERP.

In this activity, we use the Acumatica mobile app for Android devices. The appearance and functionality of the mobile app for iOS devices may differ somewhat.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are a warehouse worker in the wholesale warehouse of the SweetLife Fruits &amp; Jams company. When you walk around the warehouse you find items and boxes that have been inappropriately placed on the floor or on tables. One of your work tasks is to find out what are these items and where they should be stored in the Acumatica mobile app, so that you can move the items to the appropriate storage.

## Configuration Overview { .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled in the *Inventory and Order Management* group of features:
    -   *Multiple Warehouse Locations*
    -   *Warehouse Management*
    -   *Inventory Operations*
-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the *WHOLESALE* warehouse has been created. For this warehouse, on the **Locations** tab, the following warehouse locations have been added: *MAIN*, *L1R3S2*, *L2R3S2*, and *L3R3S2*.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *APJAM32* stock item has been created. For this stock item, barcodes have been specified on the **Cross-Reference** tab of the form.

## Process Overview { .section}

In this activity, you will look up an item by scanning the item barcode on the Item Lookup screen of the Acumatica mobile app. You will scan the item barcode and view information about the item, such as the location and availability.

You will also search for a list of the items stored in a particular location by using the Storage Lookup screen, where you will scan the location barcode and view the list of items, with the on-hand quantity for each item.

**Tip:** In any working mode, you enter a command or barcode by typing it in the Scan box and tapping Enter. In production systems, you will scan the appropriate barcodes rather than manually entering them.

## System Preparation { .section}

Before you start looking up items, do the following:

1.  Make sure that you have installed the Acumatica mobile app on your mobile device.
2.  Launch the app.
3.  Enter the URL and optional name of the Acumatica ERP instance with the *U100* dataset preloaded \(for example, *https://your.acumatica.site.com*\), and tap **Next**.
4.  Enter the credentials of the user account you will use in this activity: the *perkins* username and the *123* password.
5.  Tap **Sign In** to enter the site.

    **Attention:** The instructions in the activity steps below may slightly differ in the Acumatica mobile app depending on whether the device is running iOS or Android.


## Step 1: Looking Up an Item by Scanning the Item Barcode { .section}

Suppose that as you are walking through the warehouse, you notice a box standing on the floor near some racks; the box has 10 apple jars, each 32 ounces. You do not see other warehouse workers nearby, so you decide to find out what this box contains and where it should be placed. In the Acumatica mobile app on your mobile device, do the following:

1.  On the main menu of the mobile app, tap the **Warehouse Management** &gt; **Item Lookup** tile to view the Item Lookup screen.
2.  Scan the `AJ32B` item barcode \(which is the barcode affixed to the box\).
3.  At the bottom of the screen, tap **Review**. The Inventory Summary screen is opened. \(This screen corresponds to the [Inventory Summary](IN_40_10_00.md) \(IN401000\) form in Acumatica ERP.\)

On this screen, you can see that the item is stored in the following locations: *MAIN*, *L1R3S2*, *L2R3S2*, and *L3R3S2*.

-   *L1R3S2*: Line 1, rack 3, shelf 2
-   *L2R3S2*: Line 2, rack 3, shelf 2
-   *L3R3S2*: Line 3, rack 3, shelf 2
-   *MAIN*: Main \(receiving\) location

The *MAIN* location is the receiving location far from the place where you found the box. Most likely, the box was taken from the racks with sorted items. You know that the box contains 10 jars, so this box can be stored in either the *L1R3S2* location or the *L3R3S2* location. As you can see on the screen, the *L2R3S2* location contains only 8 jars of this item, so the box definitely is not from this location.

Now you need to find out which of the locations \(*L1R3S2* or *L3R3S2*\) contains less jam than the quantity that is recorded in the system.

## Step 2: Looking Up Items Stored in a Location { .section}

Suppose that you have counted the quantities of boxes and jars of the *APJAM32* item in the *L1R3S2* and *L3R3S2* locations and found out that the *L1R3S2* shelf contains one box of 10 jars and 3 single jars; the *L3R3S2* contains one box of 10 jars and 6 single jars. To find out if the *L1R3S2* or *L3R3S2* location contains less jam than the quantity that is recorded in the system, do the following in the Acumatica mobile app:

1.  On the main screen of the mobile app, tap the **Storage Lookup** workspace.
2.  Tap the **Receive and Put Away** tile to view the Storage Lookup screen.
3.  Scan the `L1R3S2` location barcode.
4.  At the bottom of the screen, tap **Review**. The Storage Summary screen is opened, where you can see that the on-hand quantity of the *APJAM32* item is *13*, which corresponds to one box of 10 jars and 3 separate jars. So the box you have found is not from this location.
5.  Go back to the previous screen.
6.  Scan the `L3R3S2` location barcode.
7.  At the bottom of the screen, tap **Review**.

    On the Storage Summary screen, you can see that the on-hand quantity of the *APJAM32* item is 26, which corresponds to two boxes of 10 jars each and 6 separate jars. You see only one box in this location, so the box you have found should be placed in this location.


**Parent topic:**[Automated Item and Storage Lookup](../UserGuide/WMS_Item_and_Storage_Lookup_Mapref.md)

