# Configuration of Physical Inventory {#_07846c5c-3f3c-4f53-9d18-29566c9090e9 .concept}

Physical inventory is an important process if your organization that sells items, because it gives you accurate numbers of goods in stock. Acumatica ERP provides you with various methods of physical inventory counts \(such as full physical inventory and cycle counting\). You set up physical inventory during configuration of the Inventory module in the system.

In this topic, you will find basic information about configuring physical inventory in Acumatica ERP.

## Configuration of Physical Inventory { .section}

In Acumatica ERP, you can create as many types of physical inventory counts \(called *physical inventory types*\) as you need by using the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form. The physical inventory type defines the way the system selects inventory items for counting, and the order of count lines in the physical inventory document. For each physical count, you have to prepare the physical inventory document; you can also print the count sheets and count tags. You do the following to configure a physical inventory type:

-   Select the generation method—that is, the method that the system will use to generate the list of inventory items. You can select one of the following methods:

    -   *Full Physical Inventory*
    -   *By Inventory*
    -   *By Item Class*
    -   *By ABC Code*
    -   *By Movement Class*
    -   *By Cycle*
    For a detailed description of these generation methods, see [Types of Physical Inventory](IN__con_Physical_Inventory_Types.md).

-   Decide whether you want to include items with zero book quantity in the physical inventory. This setting is available for all physical inventory types except *Full Physical Inventory* and *By Inventory*.
-   Decide whether you want to display the **Book Qty.** column on the [Physical Inventory Count](IN_30_50_10.md) \(IN305010\) form.
-   Optional: Select a warehouse and warehouse location. If you use multiple warehouses or warehouse locations in the system, you can select a particular warehouse and location to perform the physical inventory. With the warehouse or location selected, the system will add to the list only items stored in this warehouse or location.
-   Specify the assignment order. You define the order in which tag and line numbers are assigned to items on the count sheets prepared for counts of the selected type. These settings specify the sort order of count lines and, correspondingly, the sort order of the count tags that will be generated based on the physical inventory type. You can group items by one of the following entities:
    -   Inventory ID
    -   Inventory description
    -   Subitem \(if you use subitems in the system\)
    -   Lot/serial number \(if you use lot or serial numbers in the system\)
    -   Warehouse location ID \(if you use multiple warehouse locations in the system\)

In the physical inventory process, you can use count tags. Each count tag contains the information of the count line, including the book quantity and inventory ID of the set of units to be counted and recorded to the count tag. If you use tags, the system will assign a tag number to each line during the generation of the count sheet, with tag numbers in ascending order. To indicate that you want to use the tags, you select the **Use Tags** check box on the **General Settings** tab of the[Inventory Preferences](IN_10_10_00.md) \(IN101000\) form \(**Physical Inventory Settings** section\) and specify the last tag number.

**Note:** We recommend that you specify a relatively large last tag number, such as 1000 or 10000, so that the tag number will be easily distinguishable at a glance from the book quantity that is also printed on the tag.

After you have configured the physical inventory, you can start the counting process at any time, as described in [Physical Inventory Counts](IN__con_Physical_Inventory_Counts.md).

**Parent topic:**[Configuring Basic Inventory Processes](../UserGuide/IN__mng_Configuring_Basic_Inventory_Processes.md)

