# Physical Inventory Counts {#_6bbf61ce-f4f3-4b4e-ac0f-d4ba7486dc5e .concept}

The physical inventory process in a particular warehouse includes the following stages:

-   Physical inventory preparation
-   Counting of items
-   Entry of counting data
-   Adjustment generation

These stages are described in detail in the following sections, along with other key information about physical inventory counts.

## Physical Inventory Preparation {#_c47e0a7e-5101-46fd-a6bb-073831910ec7 .section}

**Note:** Before you prepare any physical counts, make sure that all inventory documents have been released.

You generate a physical inventory document by using the [Prepare Physical Count](IN_50_40_00.md) \(IN504000\) form. On this form, you select the appropriate physical inventory type for the count.

For the physical inventory, you can select a particular warehouse and locations on the [Prepare Physical Count](IN_50_40_00.md) form only if the warehouse is not associated with the physical inventory type. Once you are done making selections on the selection tabs of this form, you click **Generate PI** on the form toolbar. The system generates a physical inventory document, which you can view on the [Physical Inventory Review](IN_30_50_00.md) \(IN305000\) form, with the *Counting in Progress* status. The system assigns the document a reference number in accordance with the numbering sequence assigned to physical inventories on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form.

**Note:** Starting at the moment when the physical inventory document is generated, no inventory transactions \(issues, receipts, or transfers\) are allowed that involve items included in the list, meaning that this inventory is in a frozen state. You can view the list of items involved in counting by using the [Physical Inventory Locked Items](IN_40_90_00.md) \(IN409000\) form.

The generated physical inventory document contains the list of items for counting, arranged to the specifications on the **Assignment Order** tab of the [Physical Inventory Types](IN_20_89_00.md) form. For each stock item included in the count, the document may have one line or multiple lines, depending on how many warehouse locations are used to store the item and whether the item has subitems or lot or serial numbers. In the simplest case—when such features as *Inventory Subitems*, *Lot or Serial Tracking*, and *Multiple Warehouse Locations* are not enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form—a line identifies an item available in the warehouse with its book quantity.

**Important:** The **Inventory Subitems** check box has been removed from the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form because the functionality associated with the *Inventory Subitems* feature will be phased out. If you have this feature enabled in your system, the associated functionality remains available. To disable the feature, contact your Acumatica support provider.

You can export the list of items for counting to an Excel file by using the [Physical Inventory Review](IN_30_50_00.md) form. Alternatively, you can use the [Physical Count Sheets](IN_62_05_00.md) \(IN620500\) report to print item lists \(count sheets\) for distribution to all employees involved in counting. If you want to prevent employees from reusing the book quantity of items as the physical quantity instead of actually counting the items, you can hide the **Book Qty.** column from the printed count sheets by selecting the **Hide Book Qty.** check box in the report parameters.

For more information, see [Preparation for Physical Count](IN__con_Preparation_for_Physical_Count.md).

## Counting of Items {#_a9ad80d3-f72e-4341-9263-333405393080 .section}

Employees involved in physical inventory can start counting items after you distribute count sheets and count tags \(if you use tags in physical counting\) to the employees. The counting process includes the following steps:

1.  Employees count the actual quantity of an item with the properties specified in the line \(the specific inventory ID, lot or serial number, and warehouse location\).
2.  Employees specify the quantity in the appropriate line of the count sheet.
3.  You indicate to the system that the counting process is finished by clicking **Finish Counting** on the [Physical Inventory Review](IN_30_50_00.md) \(IN305000\) form for the current count. On this form, you can see that the system has changed the status of the physical inventory document to *Data Entering*.

After the counting process is finished,you can start entering counting data into the system.

Acumatica ERP provides you with ability to automate counting by using barcode scanners or mobile devices with barcode scanning support. For details, see [Counting in Physical Inventory: General Information](WMS_Scan_and_Count_GeneralInfo.md).

## Entry of Counting Data {#_992b7a9a-11c3-45fd-b593-9cc681a1bbb5 .section}

The process of entering counting data includes the following steps:

1.  Employees enter the counting data into the system manually or you import data from Excel spreadsheets, depending on the type of count sheets the employees used for counting.
2.  You review the data entered into the system after all lines have been entered.
3.  You complete the physical inventory process or cancel the process, depending on the entered data.

**Tip:** No movement of goods is allowed and no inventory transactions are released during the entry of the counting data if the **Unfreeze Stock When Counting Is Finished** check box is cleared for the physical inventory type on the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form. In this case, the inventory is frozen until data entry is completed.

Manual data entry can be performed as follows. Multiple employees participating in counting can enter count data line by line simultaneously from different locations by using the [Physical Inventory Count](IN_30_50_10.md) \(IN305010\) form. Each line of the physical inventory document has its own status, and as count data is entered, the status of the line changes from *Not Entered* to *Entered*. Once an employee enters the actual quantity in a line on this form, this data is committed to the database so the data can be visible to other users who are entering the data and to you if you are viewing the count data on the [Physical Inventory Review](IN_30_50_00.md) \(IN305000\) form. For details about the entry process, see [To Enter the Count Data](IN__How_Enter_Count_Data.md).

Employees can simultaneously enter their count data from their computers by using the [Physical Inventory Count](IN_30_50_10.md) form. Once the user finishes the row on this form, the system commits the data to the database—all the quantities entered by multiple users will be summed up for each combination of inventory ID, subitem, warehouse location, and lot or serial number. This makes the most recently entered data immediately visible to all users who may be simultaneously using this form for data entry.

If employees find items that are not listed in the count sheets, and the count sheets contain empty lines, these items must be entered into the system, as described in [To Enter the Count Data for New Items](IN__how_Enter_Count_Data_for_New_Items.md).

To import the count data from an Excel spreadsheet, you can use the [Physical Inventory Review](IN_30_50_00.md) form. For a physical count with the *Data Entering* status on this form, you can upload the file to the system, review the data on the form, and save the results to the database. For details, see [To Import the Count Data From an Excel Spreadsheet](IN__How_Import_Count_Data.md).

If all the lines of the document have the *Entered* status, you can complete the counting. You can cancel the physical inventory if you cannot complete it for some reason. If there is no valid data for some of the lines, you can set the count values to 0 or change the line status from *Not Entered* to *Skipped* and complete counting. For details, see [To Enter the Count Data](IN__How_Enter_Count_Data.md).

Once the entered data is verified, you can indicate to the system that the data entry phase is completed by clicking **Complete PI** on the form toolbar of the [Physical Inventory Review](IN_30_50_00.md). This changes the status of the physical inventory document to *Completed*. For details, see [To Complete the Physical Inventory Count](IN__How_Complete_PI_Count.md).

Completing or canceling the physical inventory unfreezes the inventory items involved in the count.

## Adjustment Generation {#_987bcfbe-1bd7-4335-b7c7-07665f779acf .section}

If the **Release PI Adjustment Automatically** check box is selected on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form, when you complete the physical inventory, the system changes the status of the physical inventory document to *Completed* and generates the inventory adjustments to correct the on-hand quantities. An adjustment is generated for each item with a nonzero quantity variance, including the items with no associated transactions. The system uses the current costs of the items to calculate the cost variance. The reference numbers of these documents are displayed on the **Adjustment Info** tab of the [Physical Inventory Review](IN_30_50_00.md) \(IN305000\) form; the status of these documents is *Balanced*. You can review the generated adjustments on the **Adjustments** tab of this form.

If the **Release PI Adjustment Automatically** check box is cleared, the system works as follows:

-   When you click **Complete PI** on the form toolbar of the [Physical Inventory Review](IN_30_50_00.md) form, the physical inventory document has the *In Review* status and an adjustment is created with the *Balanced* status on the [Adjustments](IN_30_30_00.md) \(IN303000\) form.
-   In the adjustment on the [Adjustments](IN_30_30_00.md) form, you can edit the value of the **Unit Cost** column for particular items if the value of the **Quantity** column is positive for the item. When you manually change the unit cost and save the edited adjustment, the system changes the value of the **Final Ext. Variance Cost** column in the item line of the physical inventory document on the [Physical Inventory Review](IN_30_50_00.md) form.
-   You can delete an adjustment before the adjustment is released. After the adjustment is deleted, the status of the physical inventory document changes to *Data Entering* on the [Physical Inventory Review](IN_30_50_00.md) form. You can edit the physical inventory document and then create a new adjustment.
-   When you successfully release an adjustment on the [Adjustments](IN_30_30_00.md) form, the system updates the values of the **Final Ext. Variance Cost** column in the item line of the physical inventory document and changes the status of the physical inventory document to *Completed* on the [Physical Inventory Review](IN_30_50_00.md) form.

## Cost Calculation After Counting { .section}

The system specifies values in the **Unit Cost** and **Estimated Ext. Variance Cost** columns on the [Physical Inventory Review](IN_30_50_00.md) \(IN305000\) form when you click **Finish Counting** on the form toolbar. The system also updates these columns when users change the physical quantity while entering data.

For lines with a positive variance quantity, the system calculates the values of the **Unit Cost** and **Estimated Ext. Variance Cost** columns based on the rules of the valuation methods specified for items as follows:

-   For the *FIFO* and *Average* valuation methods:
    -   The unit cost is calculated based on the values of the **FIFO Default Cost** box \(for the*FIFO* valuation method\) or the **Average Default Cost** box \(for the *Average* valuation method\) specified on the [Warehouses](IN_20_40_00.md) \(IN204000\) form.
    -   If the average cost of the item is zero on the **Price/Cost** tab of the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) form, the system uses the value of the **Last Cost** box on this form as the unit cost.
    -   If both the average cost and the last cost are zero on the **Price/Cost** tab of the [Item Warehouse Details](IN_20_45_00.md) form, the system uses the average cost on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form as the unit cost. If the average cost is zero, the system uses the last cost on the same tab as the unit cost.
-   For the *Specific* valuation method:
    -   The system uses the cost layer that corresponds to the item as the unit cost. If multiple cost layers exist for the item, the system uses the last created cost layer as the unit cost.
    -   If no cost layers exist for an item with a specific lot or serial number, the system uses the last cost specified on the **Price/Cost** tab of the [Item Warehouse Details](IN_20_45_00.md) form as the unit cost.
-   For the *Standard* valuation method:
    -   The system uses the current standard cost specified in the **Standard Cost** section of the **Price/Cost** tab of the [Item Warehouse Details](IN_20_45_00.md) form as the unit cost.
    -   If the current standard cost is zero, the system uses the current standard cost on the **Price/Cost** tab of the [Stock Items](IN_20_25_00.md) form as the unit cost.

For lines with a negative variance quantity, the calculation of the **Unit Cost** and **Estimated Ext. Variance Cost** values is performed according to the item's valuation method in the same way the unit cost is calculated when the item is issued from the warehouse.

For more information about valuation methods, see [Item Costs and Valuation Methods: General Information](Item_Costs_Valuation_Methods_GeneralInfo.md).

The **Update Actual Cost** action recalculates the values of the **Unit Cost**, **Estimated Ext. Variance Cost**, and **Total Variance Cost** columns for lines with a negative variance quantity based on the calculation rule of the PI adjustment, and the system uses the data of the current cost layer. For lines with a positive variance quantity, this action recalculates the costs if the default costs were changed on the [Item Warehouse Details](IN_20_45_00.md) form.

**Parent topic:**[Counting Physical Inventory](../UserGuide/IN__MNG_PI.md)

