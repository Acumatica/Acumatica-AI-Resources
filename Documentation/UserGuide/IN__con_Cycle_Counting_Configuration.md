# Cycle Counting Configuration {#_4e964fef-0663-4e04-a270-4cc232607276 .concept}

Any retail business must periodically perform full inventory counts. To minimize the planned closings of the business that are required for full inventory counts, you can use a combination of full physical inventory counting and cycle counting.

**Note:** The functionality that supports cycle counting is available only if the *Advanced Physical Count* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

For cycle counting, all items are assigned to specific cycles, and separate physical counts are performed for each cycle’s items at the appropriate frequency. Because cycle counts can be conducted more quickly, they are less disruptive to daily operations; they also can be tailored to business processes of your organization. For more information, see [Configuration of Physical Inventory](IN__con_Planning_for_Physical_Inventory.md).

We recommend that you set up physical inventory counts by cycles during the initial configuration of the Inventory module. However, you can configure cycle counting later as well.

In this topic, you will read about the configuration of physical inventory counting by cycle.

## Configuration of Cycle Counting { .section}

The configuration of cycle counting includes the following stages:

1.  Creating physical inventory cycles.

    You should decide how often you want to perform full counts and which items you want to count more frequently \(and how often\). Thus, items of all cycles will be counted during the full inventory count, which is performed least frequently, and some of the other counts will include items of more than one cycle.

    You create physical inventory cycles \(physical inventory cycles\) by using the [Physical Inventory Cycles](IN_20_87_00.md) \(IN208700\) form. For the full count and for each cycle, you specify how many times in a year the items should be counted \(that is, the count-per-year value\). For details, see [To Create Physical Inventory Cycles](IN__How_to_Setup_PI_by_Cycles.md).

2.  Assigning stock items to the appropriate cycles.

    If you configure cycle counting during the implementation stage, you can assign stock items to physical inventory cycles when you import the stock items from your legacy system. Otherwise, you need to assign each item to an appropriate cycle manually. For more information, see [To Assign a Stock Item to a Physical Inventory Cycle](IN__how_Assign_Stock_Items_to_PI_Cycles.md).

3.  Creating physical inventory types. Before you create these types, you should plan the convention for the identifiers of physical inventory types and decide how to organize data on count sheets for each type of count. You will need to create a type for a full count \(see [To Create a PI Type for a Full Count](IN__How_Create_Full_Count_PI_Type.md)\) and one type for counting by frequency \(see [To Create a Physical Inventory Type for Cycle Counts by Frequency](IN__how_Create_PI_Types_for_Counts_by_Frequency.md)\). Optionally, you can create a physical inventory type for each cycle \(see [To Create a Physical Inventory Type for Counts by Cycles](IN__how_Create_PI_Types_for_Cycles.md)\).

After you have configured the cycle counting, you can perform the physical inventory counts in the following order:

1.  Conducting an initial full physical inventory.
2.  Conducting other counts with the frequency determined by the largest \(among all cycles\) number of counts per year and by using the physical inventory type that selects items by their count frequency. For each count, only items that are due for counting by their cycle frequency will be included. Some counts will include the only the items with the largest frequency, while other counts will be joint counts—for items from two or more cycles.

    **Note:** If some warehouses have items of only specific cycles, you can perform counts by cycles in those warehouses.


-   **[To Create Physical Inventory Cycles](../UserGuide/IN__How_to_Setup_PI_by_Cycles.md)**  

-   **[To Assign a Stock Item to a Physical Inventory Cycle](../UserGuide/IN__how_Assign_Stock_Items_to_PI_Cycles.md)**  

-   **[To Create a Physical Inventory Type for Counts by Cycles](../UserGuide/IN__how_Create_PI_Types_for_Cycles.md)**  

-   **[To Create a Physical Inventory Type for Cycle Counts by Frequency](../UserGuide/IN__how_Create_PI_Types_for_Counts_by_Frequency.md)**  


**Parent topic:**[Configuring Advanced Physical Inventory](../UserGuide/IN__mng_Configuring_Advanced_Physical_Inventory.md)

