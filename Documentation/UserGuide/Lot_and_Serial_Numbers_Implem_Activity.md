# Items with Lot and Serial Numbers: Implementation Activity {#_fb0cdd09-286f-49b4-a22c-663fcf053335 .task}

In the following implementation activity, you will learn how to create a serial class, review the settings of existing lot and serial classes, and specify lot and serial classes for item classes and stock items.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that managers in the Service and Equipment Sales Center branch of the SweetLife Fruits &amp; Jams company have decided to track the parts for juicers that the branch purchases from the Squeezo Inc. vendor by the parts’ serial numbers in the warehouse used for equipment storage. These parts are used internally by service engineers for repairing juicers.

Further suppose that you are an implementation manager. To prepare the system for the tracking of these parts by serial numbers, you will create a serial class for tracking juicer parts, specify this class in the appropriate item class and stock item settings, and test the processing of documents with these stock items. You will also review the settings of a predefined serial class for tracking juicers, a lot class for fruits, and a lot class for jams.

## Configuration Overview { .section}

In the *U100* dataset, for the purposes of this activity, the following tasks have been performed:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Inventory and Order Management*, which provides the standard functionality of inventory and order management
    -   *Inventory*, which gives you the ability to maintain stock items using forms related to the inventory functionality and to create and process sales and purchase documents that include stock items
-   On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, the *EQUIPHOUSE* warehouse has been created.
-   On the [Item Classes](IN_20_10_00.md) \(IN201000\), the *OTHERPARTS* \(an item class for juicer spare parts\) item class has been created.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *EJECTOR05* stock item \(a peel ejector kit for a juicer\) has been created.
-   On the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, the following lot and serial classes have been created:
    -   *SRNJCR* \(a class for tracking juicers by serial numbers\)
    -   *LTFRT* \(a class for tracking fruits by lot number and expiration date\)
    -   *LTJAM* \(a class for tracking jams by lot number on sale\)

## Process Overview { .section}

In this activity, you will do the following:

1.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enable the *Lot and Serial Tracking* feature.
2.  On the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, create a serial class to be used for the *EJECTOR05* stock item.
3.  On the [Item Classes](IN_20_10_00.md) \(IN201000\) form, select the created serial class for the *OTHERPARTS* item class.
4.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, select the serial class that you have created for the *EJECTOR05* stock item.
5.  On the [Receipts](IN_30_10_00.md) \(IN301000\) form, test the creation of an inventory receipt with the serialized items to make sure that the serial class has been defined correctly.
6.  On the [Issues](IN_30_20_00.md) \(IN302000\) form, test the creation of an inventory issue with the serialized item to make sure that the serial class has been defined correctly.
7.  On the [Lot/Serial Classes](IN_20_70_00.md) form, review the settings of the *SRNJCR* serial class.
8.  On the [Lot/Serial Classes](IN_20_70_00.md) form, review the settings of the *LTFRT* lot class.
9.  On the [Lot/Serial Classes](IN_20_70_00.md) form, review the settings of the *LTJAM* lot class.

## System Preparation { .section}

Before you start working with lot and serial classes, you should launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.

## Step 1: Enabling the Feature { .section}

To be able to configure tracking of items by lot or serial classes, you enable the *Lot and Serial Tracking* feature as follows:

1.  Open the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
2.  On the form toolbar, click **Modify**.
3.  In the *Inventory and Order Management* group of features, select **Lot and Serial Tracking**.
4.  On the form toolbar, click **Enable**.

## Step 2: Creating a Serial Class { .section}

The serial class you are creating will be used for tracking juicer parts by serial numbers from the time they are received in the warehouse. The serial numbers are provided by the vendors that supply the parts; therefore, purchasing managers will enter the numbers manually in the inventory receipt. These parts do not have an expiration date, and staff members who will use and issue the parts must select the exact part manually in documents. To create this serial class, you do the following:

1.  On the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Class ID**: `SRNPARTS`
    -   **Description**: `Class for tracking juicer parts by serial numbers`
    -   **Tracking Method**: *Track Serial Numbers*
    -   **Track Expiration Date**: Cleared
    -   **Required for Drop-Ship**: Cleared
    -   **Assignment Method**: *When Received*
    -   **Issue Method**: *User-Enterable*
    -   **Share Auto-Incremental Value Between All Class Items**: Cleared
    -   **Auto-Generate Next Number**: Cleared
3.  On the form toolbar, click **Save**.

You have created the serial class for tracking juicer parts. Now you can specify this serial class in the settings of the item class that provides default settings for stock items that are juicer parts.

## Step 3: Specifying the Serial Class in the Item Class Settings { .section}

To specify the created serial class in the settings of the *OTHERPARTS* item class so that all new juicer part items have this setting by default, perform the following instructions:

1.  Open the [Item Classes](IN_20_10_00.md) \(IN201000\) form.
2.  In the **Class ID** box, select *OTHERPARTS - Juicer Spare Parts*.
3.  In the **General Settings** section of the **General** tab, select *SRNPARTS* in the **Lot/Serial Class** box.
4.  On the form toolbar, click **Save**.

You have specified the new serial class in the settings of the item class.

## Step 4: Specifying the Serial Class in the Item Settings { .section}

Although specifying the *SRNPARTS* serial class in the item class settings will cause the system to insert the serial class for all new juicer part items of the *OTHERPARTS* item class, the serial class must be specified in the settings of all existing items that must be tracked according to the settings of this serial class. For simplicity, you will specify the serial class in the settings of only the *EJECTOR05* item; all other items can be modified similarly. Do the following:

1.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, open the *EJECTOR05* stock item.
2.  In the **Lot/Serial Class** box on the **General** tab, select *SRNPARTS*.
3.  On the form toolbar, click **Save**.

## Step 5: Creating an Inventory Receipt with the Serialized Item { .section}

Now you need to make sure that users are able to add an item of the serial class you defined to an inventory receipt and that serial numbers can be added for each unit of the item. To create an inventory receipt with the serialized item, do the following:

1.  On the Company and Branch Selection menu, in the top pane of the Acumatica ERP screen, select the *Service and Equipment Sales Center* branch.
2.  On the [Receipts](IN_30_10_00.md) \(IN301000\) form, add a new record.
3.  In the **Description** box of the Summary area, type `Receipt of serialized parts`.
4.  On the **Details** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Branch** column, select *SWEETEQUIP*.
    3.  In the **Inventory ID** box, select *EJECTOR05*.
    4.  In the **Quantity** box, type `2` and press Ctrl+Enter to confirm the row. The system displays a warning message.
    5.  On the table toolbar, click **Line Details**.
    6.  In the **Line Details** dialog box, which opens, do the following:
        1.  On the table toolbar, click **Add Row**.
        2.  In the **Lot/Serial Nbr.** column, type `EJ0000327`.
        3.  Press Ctrl+Enter to confirm the line.
        4.  On the table toolbar, click **Add Row**.
        5.  In the **Lot/Serial Nbr.** column, type `EJ0000330`.
        6.  Press Ctrl+Enter to confirm the line.
        7.  In the **Unassigned Qty.** box of the Summary area, make sure that the value is *0.00*. This means that you have entered serial numbers for all units of the line being allocated.
        8.  Click **OK** to save your changes and close the dialog box.
5.  On the form toolbar, click **Release** to release the inventory receipt you have created.

You have tested the creation of an inventory receipt that includes the item with a serial number. In the next step, you will test the creation of an inventory issue that includes this item.

## Step 6: Creating an Inventory Issue with the Serialized Item { .section}

To test whether users will be able to manually add to an inventory issue an item of the *SRNPARTS* serial class and that you can select its serial number from the list of previously entered numbers, do the following:

1.  On the [Issues](IN_30_20_00.md) \(IN302000\) form, add a new record.
2.  In the **Description** box of the Summary area, type `Issue of an ejector`.
3.  On the **Details** tab, do the following:
    1.  On the table toolbar, click **Add Row**.
    2.  In the **Branch** column, select *SWEETEQUIP*.
    3.  In the **Tran. Type** column, make sure that *Issue* is selected.
    4.  In the **Inventory ID** box, select *EJECTOR05*.
    5.  In the **Quantity** box, type `1`.
    6.  In the **Lot/Serial Nbr.** column, select `EJ0000330`.
4.  On the form toolbar, click **Release**.

You have successfully issued the ejector with the *EJ0000330* serial number.

**Tip:** In a production system, an inventory issue is created automatically when a user releases a shipment.

## Step 7: Reviewing the Settings of the SRNJCR Serial Class { .section}

The *SRNJCR* serial class has been predefined in the dataset to be used for juicers. Serial numbers for juicers are entered in a shipment because you do not need to track juicers by serial numbers in your warehouse. However, you need to record that a juicer with the particular serial number has been issued from the warehouse. The serial numbers for juicers are provided by the vendor, so sales managers enter the numbers manually.

To review the settings of the serial class, do the following:

1.  On the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, open the *SRNJCR* class.
2.  Review the following settings of the serial class:
    -   **Tracking Method**: *Track Serial Numbers*

        This means that this class is used for items that are tracked by serial numbers in the system.

    -   **Track Expiration Date**: Cleared

        Serialized items usually are not tracked by their expiration dates.

    -   **Required for Drop-Ship**: Cleared

        The Service and Equipment Sales Center sells only juicers stored in the warehouse; these items are not drop-shipped from the vendor to the customer.

    -   **Assignment Method**: *When Used*

        With this setting, the system requires the user to enter the serial number of each unit of an item of the class, when it is used. In this case, the user will enter the number when creating shipments that include the item.

    -   **Share Auto-Incremental Value Between All Class Items** and **Auto-Generate Next Number**: Cleared

        Users enter serial numbers manually for units of each item of the class.


## Step 8: Reviewing the Settings of the LTFRT Lot Class { .section}

The *LTFRT* lot class has been predefined in the dataset to be used for fruits. The fruit vendors provide fruits in lots, each of which has an expiration date. When selling fruits, the sales managers of the SweetLife company want to ship fruits with the earliest expiration date first. Also, within the warehouse, warehouse managers need to track the movements and locations of fruits by lots.

To review the settings of the lot class, do the following:

1.  On the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, open the *LTFRT* class.
2.  Review the following settings of the lot class:
    -   **Tracking Method**: *Track Lot Numbers*

        This indicates that the class is used for tracking items by lot numbers.

    -   **Track Expiration Date**: Selected

        This indicates that fruits are issued by their expiration dates.

    -   **Required for Drop-Ship**: Cleared

        With this setting, fruits are not drop-shipped from the vendor to the customer.

    -   **Assignment Method**: *When Received*

        With this setting, the system requires users to specify lot numbers and expiration dates when they enter purchase receipts.

    -   **Issue Method**: *Expiration*

        When items assigned to this class are sold, the system will select the units of items with the earliest expiration date first.

    -   **Share Auto-Incremental Value Between All Class Items** and **Auto-Generate Next Number**: Cleared

        Users will enter lot numbers manually for units of items of the class.


## Step 9: Reviewing the Settings of the LTJAM Lot Class { .section}

The *LTJAM* lot class has been predefined in the *U100* dataset to be used for jams produced by the SweetLife company. These jams are sold in lots. The lot number of an item of the class is generated automatically when a sales manager creates shipments.

To review the settings of the lot class, do the following:

1.  On the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, open the *LTJAM* class.
2.  Review the following settings of the lot class:
    -   **Tracking Method**: *Track Lot Numbers*

        This indicates that the class is used for tracking items by lot numbers.

    -   **Track Expiration Date**: Cleared

        With this setting, lot numbers are generated only when jams are sold.

        **Tip:** The expiration date is used only with lot numbers entered when items are received.

    -   **Required for Drop-Ship**: Cleared

        These jams are not drop-shipped from the vendor to the customer.

    -   **Assignment Method**: *When Used*

        With this setting, the system generates lot numbers when a user creates shipments.

    -   **Share Auto-Incremental Value Between All Class Items**: Selected

        This indicates that lot numbers should be unique within all items assigned to this class.

    -   **Auto-Incremental Value**: *0001*

        This means that the first lot number to be used in the segment is *0001* and that the system can generate 9999 auto-incremental values in the lot number.

    -   **Auto-Generate Next Number**: Selected

        This indicates that the system generates lot numbers automatically.

    -   In the table, the following segments of a lot number for an item of the class have been added:
        -   A segment of the *Constant* type with the *JM* value. This segment is included in all lot numbers and does not change.
        -   Segments of the *Year*, *Month*, and *Day* types: The values of these segments indicate the date when the items have been sold.
        -   The segment of the *Auto-Incremental Value* type: The system increases the value of this numeric segment for each new lot.

You have created the *SRNPARTS* serial class for tracking juicer parts by serial numbers, made sure the class settings work as intended, and reviewed the settings of the predefined lot and serial classes.

**Parent topic:**[Managing Items with Lot and Serial Numbers](../UserGuide/Lot_and_Serial_Numbers_Mapref.md)

