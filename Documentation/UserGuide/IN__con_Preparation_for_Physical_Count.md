# Preparation for Physical Count {#_bfd7b444-5ab9-4879-8e5e-2e9a4d8bfcca .concept}

When you decide to perform a physical inventory, you must prepare for this process appropriately. As a result of the preparation, you generate a physical inventory document \(count sheet\) and distribute it among the employees who will perform the inventory.

When you are preparing for a physical inventory, you perform the following steps:

1.  At the warehouse, you organize the goods to prepare for counting, and you complete data entry related to normal warehouse activities that are not connected to the physical inventory. For details, see [Organizing Goods in a Warehouse and Preparing Book Quantities](#_9c2ee11b-ce1f-4329-ace5-4f901a0212a4).
2.  You prepare accurate book quantities in the system, as described in [Organizing Goods in a Warehouse and Preparing Book Quantities](#_9c2ee11b-ce1f-4329-ace5-4f901a0212a4).
3.  You create the count review document \(count sheet\) of the needed physical inventory type. For details, see [Creating and Distributing a Count Sheet](#_42a06e26-3687-4016-898e-5ad02423a992).
4.  Optional: You add new lines to a prepared count sheet if you realize that the quantity of some stock items became nonzero after completing data entry related to normal warehouse activities. For more information, see [Adding New Lines to a Prepared Count Review Document](#_051f8e6c-64e4-4a24-9f4c-d19658c93384).
5.  Optional: You prepare tag sheets. For details, [Using Tags in Counting](#_4a03ef61-09ba-41f9-9a9a-5503a08660f7).

In this topic, you will find detailed information about the preparation process.

## Organizing Goods in a Warehouse and Preparing Book Quantities {#_9c2ee11b-ce1f-4329-ace5-4f901a0212a4 .section}

When you prepare for a physical inventory in your warehouse, you do the following:

-   You oversee the employees in organizing the goods at the warehouse to be able to count accurate physical quantities that match the book quantities. All goods should be placed in appropriate locations.
-   You enter and release all inventory transactions that have been physically performed at the warehouse and have already affected the physical quantity.
-   You process or delete any unreleased documents in the system, which you can find by clicking **Unreleased Documents** on the toolbar of the [Close Financial Periods](IN_50_90_00.md) \(IN509000\) form after you select financial periods.

The system produces the book quantity for physical counts as follows:

```
(Book Qty) = (Qty on Hand) – (Qty on SO Shipped)
```

The formula elements mean the following:

`Book Qty`: The physical count book quantity

`Qty on Hand`: The quantity of items on hand

`Qty on SO Shipped`: The quantity of items on sales orders that have been shipped

You have to exclude some items from the physical count because they are not reflected in the book quantity that is printed in the count review document \(and used for comparison with the physical quantity\). For example, you can place those items in a certain location in the warehouse, label the location to be certain the items will not be counted inadvertently, and skip the counting of this location. You have to make sure those items won't be mistakenly counted; otherwise, there could be an incorrect difference between the book quantity and physical quantity in the count review document.

You have to exclude the following items from the physical count:

-   Items that have been received to the warehouse if the receipts cannot be released in the system at the moment
-   Items on unreleased inventory issues and not-yet-issued shipments if these items haven't been removed from the warehouse yet

## Creating and Distributing a Count Sheet {#_42a06e26-3687-4016-898e-5ad02423a992 .section}

For every physical count that is performed at the warehouse, you have to create the count review document that is used for processing the count result. On the [Prepare Physical Count](IN_50_40_00.md) \(IN504000\) form, you can review the count lines that will be included in the count review document and initiate the process of creating the document. For details, see [To Prepare a Physical Inventory Count](IN__How_Prepare_PI_Count.md).

After you select the physical count type on the [Prepare Physical Count](IN_50_40_00.md) form, a preview of the count lines with the tag numbers \(if you use tags\) is displayed that will be generated for the physical count iteration. Before you start the counting process, you can review the count lines to make sure the needed items are selected for counting and the order of count lines is as expected.

After you have verified the count lines, on the form toolbar, you click **Generate PI** to prepare the count review document and start the counting process in the system. Starting at this moment, transactional activities should be frozen at the warehouse and the processing of inventory transactions must be paused in the system until the physical count is complete.

When you click **Generate PI**, the system performs the following actions:

-   Generates the count review document that consists of the count lines, which should be populated with physical quantities. The system opens the count review document on the [Physical Inventory Review](IN_30_50_00.md) \(IN305000\) form with the *Counting in Progress* status.

    **Note:** You can create the count review document directly on the [Physical Inventory Review](IN_30_50_00.md) form by clicking **Add New Record** on the form toolbar without first previewing the count on the [Prepare Physical Count](IN_50_40_00.md) form.

    Regardless of how you generated the count review document, if you notice that it is wrong, you can click **Cancel PI** on the [Physical Inventory Review](IN_30_50_00.md) form, make the necessary changes, and create the count review document again.

-   Generates the count sheets, which can be printed by using the [Physical Count Sheets](IN_62_05_00.md) \(IN620500\) report, as described in [To Print Count Sheets](IN__how_Print_Count_Sheets.md).

    Alternatively, you can export the count review document to a Microsoft Excel spreadsheet \(see [To Export a Count Sheet to an Excel Spreadsheet](IN__how_Export_Count_Sheet_to_Excel.md)\) if your organization uses non-paper processesfor counting.

-   Generates the count tags, which can be printed by using the [Physical Count Tags](IN_62_10_00.md) \(IN621000\) report. The tags will be generated if the **Use Tags** check box is selected on the [Inventory Preferences](IN_10_10_00.md) form at the moment. For details about how to print tag sheets, see [To Print Tags](IN__how_Print_Tags.md).
-   Freezes the release of inventory transactions for the warehouse being counted. Under the *Full Physical Inventory* method, the system doesn't allow the release of any inventory transactions for the warehouse. For other physical count methods, the system doesn't release inventory transactions if they include items that are currently being counted at the warehouse. The system continues to freeze inventory transactions while the count review document has the *Counting in Progress* status.

In a count sheet, the items are arranged according to the settings on the **Assignment Order** tab of the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form. For each inventory item included in the count, the document may have one line or multiple lines, depending on how many locations are used to store the item and whether the item has subitems or lot or serial numbers. For items with serial numbers assigned, a separate line is generated for each serial number.

If the **Use Tags** option is selected on the [Inventory Preferences](IN_10_10_00.md) form, the count sheet includes tag numbers for each line generated.

## Adding New Lines to a Prepared Count Review Document {#_051f8e6c-64e4-4a24-9f4c-d19658c93384 .section}

When the count review document is prepared, the system adds to the count review document \(count sheet\) only those inventory items that have a nonzero booked quantity. Thus, if you have prepared the count sheet and then the quantity of some inventory items that are not in the sheet has changed from zero to a nonzero value \(because items have been found or received\), you may need to add new count lines to the count sheet. On the [Physical Inventory Review](IN_30_50_00.md) \(IN305000\) form, you can add a new line to a prepared count sheet as long as you adhere to the following rules:

-   The location and warehouse that you specify in this line must match the location and warehouse selection criteria of the count sheet to which you are adding a line.
-   You cannot add a line if the specified combination of inventory ID, location, and warehouse is already included in this physical inventory count.
-   You cannot add a line if the specified combination of inventory ID, location, and warehouse is included in any other physical inventory count that currently is in progress.
-   The item that you specify in this line must correspond to criteria of the physical inventory type which this physical inventory count is prepared. For example, if you count physical inventory by ABC code, the item should be assigned the ABC code selected in the settings of the physical inventory type on the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form. \(This restriction applies to all physical inventory types except for those that have the *Full Physical Inventory* generation method.\)

After you have added any new lines and saved your changes, no inventory transactions \(issues, receipts, or transfers\) are allowed for the added inventory items in the specified location and warehouse.

## Using Tags in Counting {#_4a03ef61-09ba-41f9-9a9a-5503a08660f7 .section}

Tags may or may not be used in the counting process, depending on your organization's policies for physical inventory counts. A tag count is useful for a full-scale end-of-year physical inventory.

You can use tags in counts if the **Use Tags** check box is selected on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form. With this check box selected, the system assigns a tag number to each line of the count sheets when you prepare the physical inventory count. Depending on the features enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS101000\) form, each tag can contain the following information:

-   Tag number
-   Inventory ID
-   Subitem \(if the *Inventory Subitems* feature is enabled\)
-   Lot or serial number \(if the *Lot and Serial Tracking* feature is enabled\)
-   Warehouse location \(if the *Multiple Warehouse Locations* feature is enabled\)
-   The book quantity of the item with these properties

You can print tags by using the [Physical Count Tags](IN_62_10_00.md) \(IN621000\) report, as described in [To Print Tags](IN__how_Print_Tags.md). The tags can be distributed \(in accordance with the count sheets\) among employees who are participating in the count. Tags can be used for recording the results of the actual counting and for entering the count results when the counting stage is completed.

-   **[To Prepare a Physical Inventory Count](../UserGuide/IN__How_Prepare_PI_Count.md)**  

-   **[To Export a Count Sheet to an Excel Spreadsheet](../UserGuide/IN__how_Export_Count_Sheet_to_Excel.md)**  

-   **[To Print Count Sheets](../UserGuide/IN__how_Print_Count_Sheets.md)**  

-   **[To Print Tags](../UserGuide/IN__how_Print_Tags.md)**  


**Parent topic:**[Counting Physical Inventory](../UserGuide/IN__MNG_PI.md)

