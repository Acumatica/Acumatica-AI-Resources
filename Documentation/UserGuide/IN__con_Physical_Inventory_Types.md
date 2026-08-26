# Types of Physical Inventory {#_5c9b4cfc-b701-4217-bbd8-4aaad82344b7 .concept}

Most organizations conduct a full physical inventory count for each warehouse at least once a year. A full physical inventory greatly improves the accuracy of availability data, but it disrupts business processes and can be very costly.

Acumatica ERP provides you with the functionality to support physical counts for full inventory, as well as other alternatives. These alternatives includes cycle counting, whereby all items are assigned to specific cycles and separate physical counts are performed for each cycle's items at an appropriate frequency. Because counting by alternate methods can be conducted more quickly, these methods are less disruptive to daily operations.

In this topic, you will read about the types of physical inventory available in Acumatica ERP.

## Types of Physical Inventory { .section}

In Acumatica ERP, you can use basic or advanced types of physical inventory counts, which depend on your license configuration as follows:

-   If the *Advanced Physical Counts* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) CS100000\) form, you can use only the full physical inventory. With this type, you count all inventory items in all warehouses. For details, see [Full Physical Inventory](#_c93b596a-d3a8-407f-abb1-53c390e48871).
-   If the *Advanced Physical Counts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) CS100000\) form, you can use the following advanced types of physical inventory counts:
    -   By item class: With this type, you count only stock items of the item classes you select. For more information, see: [Count by Item Class](#_fb1f9130-8397-410d-b2ea-5cf54a163e7c).
    -   By specific stock stems: With this type, you count only particular stock items. For details, see [Count by Specific Stock Items](#_41f48f72-6e83-4ee1-8530-edb1ed63006d).
    -   By cycle or by cycle count frequency: With this type, you count stock items depending on the specified counting frequency. For more information, see [Count by Cycle and by Cycle Count Frequency](#_c3abacfb-eeb1-47ed-b66b-e7d8e6b40f37).
    -   By movement class or by associated count frequency: With this type, you count stock items depending on their turnover rates. For details, see [Count by Movement Class and by Associated Count Frequency](#_ebde4ea9-921d-43ab-88e9-1b952f73c998)
    -   By ABC code and by code count frequency: With this type, you can count stock items depending on their stock values. For more information, see [Count by ABC Code and by Code Count Frequency](#_2726dde2-8370-48bc-b599-13ffe17f81d3).

## Full Physical Inventory {#_c93b596a-d3a8-407f-abb1-53c390e48871 .section}

If you select the *Full Physical Inventory* generation method on the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form, the resulting physical inventory document includes all stock items available in the specified warehouse, in all locations or only in the selected ones, with all combinations of subitem codes \(if your implementation of Acumatica ERP uses subitems\) and lot or serial numbers \(if you use them in the system\). For details about how to create a type for full physical inventory, see [To Create a PI Type for a Full Count](IN__How_Create_Full_Count_PI_Type.md).

Counting all the items in the warehouse is a time-consuming procedure generally performed before a planned closing of financial period. All movements of inventory involved in counting should be stopped during counting, and no transactions are released during counting.

## Count by Item Class {#_fb1f9130-8397-410d-b2ea-5cf54a163e7c .section}

Depending on how you have defined item classes, you may decide to perform counts by item class. For example, one item class may include your company's most valuable items, which you count more frequently.

If you select the *By Item Class* method on the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form, the **Item Class Selection** tab appears. On this tab, you can add one item class or multiple item classes for which the counting will be performed. If you add an item class that has child item classes, the physical inventory count is performed for the selected item class and all its child item classes as well.

## Count by Specific Stock Items {#_41f48f72-6e83-4ee1-8530-edb1ed63006d .section}

By using the *By Inventory* generation method, you can create physical inventory types that generate count sheets with particular stock items. You select the appropriate method of selecting items on the **Inventory Item Selection** tab of the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form, which appears when you select the *By Inventory* generation method. You can select one of the following item selection methods in the **Select Method** box:

-   *Items Having Negative Book Qty.*: Acumatica ERP can allow a negative inventory balance for items of specific item classes. Negative quantities may be allowed for a warehouse or to a specific location in a warehouse if the aggregated inventory is positive. The physical count may show positive values.

    You can create a physical inventory type based on this selection method, and specify that items should be selected for counting only if they have a negative quantity at one location or multiple locations in the system. With this type, you can check the actual availability of items shown on the books with negative quantities.

-   *Random Items*: To evaluate the accuracy of item availability data, your organization might find it helpful to occasionally count items selected at random. By using this option, you can also check the accuracy of the full physical inventory.

    When you select the *Random Items \(up to\)* selection method, you also specify the number of items for counting. The system generates a count sheet with a randomly selected list of items.

-   *Last Count On Or Before*: You can create a physical inventory type for a particular warehouse or any warehouse that would generate a list of items that were counted a specified number of days ago or earlier.

    When you select the *Last Count On or Before* selection method, in the **Last Count Before \(Days\)**box that appears to the right of the **Selection Method**box, specify the number of days. Items counted the specified number of days ago or sooner are included in this list, regardless of the physical count type in which the item was involved earlier.

-   *List of Items*: In some cases, you may want to perform physical inventory for only particular items. For example, you may want to count the most valuable items stored at a specific location every other day.

    To count only particular items, you specify the *List Of Items* selection method and add the required items to the list.


## Count by Cycle and by Cycle Count Frequency {#_c3abacfb-eeb1-47ed-b66b-e7d8e6b40f37 .section}

You can configure physical counting to be performed with a regular time interval by using cycle counting. You select the *By Cycle* generation method on the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form to create an inventory type by cycle. For details on configuring this type of physical counting, see [Cycle Counting Configuration](IN__con_Cycle_Counting_Configuration.md).

The *By Cycle* generation method has the following variations:

-   Including in the count only the items assigned to a particular cycle: For this variation, you specify the cycle in the **Cycle ID** box and clear the **By Frequency** check box on the **PI Cycle Selection** tab of the [Physical Inventory Types](IN_20_89_00.md) form.
-   Including the items of all cycles for which counting is due based on the frequency associated with their cycles: For this variation, you do not specify a cycle; instead, you select the **By Frequency** check box on the **PI Cycle Selection** tab of the [Physical Inventory Types](IN_20_89_00.md) form.

## Count by Movement Class and by Associated Count Frequency {#_ebde4ea9-921d-43ab-88e9-1b952f73c998 .section}

The more often a product is received or shipped, the less accurate its availability data may become. Thus, you may want to count items with higher turnover rates more frequently. To configure this type of physical inventory in Acumatica ERP, you define movement classes on the [Movement Classes](IN_20_86_00.md) \(IN208600\) form and assign items to classes either on a permanent basis or by using their turnover rates during the specified turnover period. You then create a physical inventory type on the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form with the *By Movement Class* generation method.

The *By Movement Class* generation method has two variations, depending on the settings you specify on the **Movement Class Selection** tab \(which appears when you select this generation method\):

-   Including in a count only the items assigned to a particular movement class: For this variation, specify a movement class in the **Movement Class ID** box and clear the **By Frequency** check box.
-   Including the items of all classes for which counting is due based on the frequency associated with the movement class: For this variation, select the **By Frequency** check box rather than specifying a movement class.

Once items are assigned to movement classes, you can organize counting by movement classes in the following way:

-   Perform an initial full physical inventory
-   Conduct subsequent counts in one of these ways:
    -   By creating a type for each movement class and performing counts of each type at the frequency defined for the movement class.
    -   By creating a type with the **By Frequency** check box selected for the *By Movement Class* generation method. Make sure that the count-per-year values are factors of the largest count-per-year value. A physical inventory document in such a case can include items of multiple movement classes for which count-per-year values are factors of the largest count-per-year value. Conduct counts at a frequency defined by the largest value of counts per year required for movement classes.

## Count by ABC Code and by Code Count Frequency {#_2726dde2-8370-48bc-b599-13ffe17f81d3 .section}

If your company uses ABC codes to identify items critical to your business, select the *By ABC Code* generation method to have counts performed based on the frequencies required for items with different codes assigned. ABC codes, which you create by using the [ABC Codes](IN_20_85_00.md) \(IN208500\) form, group items by their stock value in a specific warehouse in a specific period, based on the period-to-date balances of inventory accounts. ABC codes divide items into groups that require different management and controls; for example, *A* code items, because of their high impact on the business, should be counted more often than items with other codes assigned.

The generation method for counting based on ABC codes has two variations, based on your specifications on the **ABC Code Selection** tab of the [Physical Inventory Types](IN_20_89_00.md) \(IN208900\) form, which appears when you select this generation method:

-   Including in a count only the items assigned to a particular ABC code: For this variation, specify a code in the **ABC Code** box and leave the **By Frequency** check box clear.
-   Including the items with any code for which counting is due based on the frequency associated with the ABC code: For this variation, select the **By Frequency** check box and do not specify an ABC code.

Once ABC codes are assigned to items, you can organize counting by ABC codes in the following way:

-   Perform an initial full physical inventory.
-   Conduct counts in one of these ways:
    -   Create a type for each ABC code defined in the system \(which has a specific frequency specified on the [ABC Codes](IN_20_85_00.md) form\). Conduct counts for items assigned to every code with the appropriate frequencies.
    -   Define one type for counts based on ABC codes with the **By Frequency** check box selected. Make sure that the count-per-year values for different codes are factors of the largest count-per-year value. Then when you're preparing the physical inventory document, only items that are due for counting by their code frequency will be included. A physical inventory document in this case can include items with different codes assigned for which count-per-year values are factors of the largest count-per-year value.

For details on configuration, see [To Create a Physical Inventory Type for an ABC Code](IN__How_Set_up_PI_by_ABCcodes.md).

Counting by ABC codes usually works best for maintaining accurate inventory counts because in most businesses, a small number of items generally accounts for the largest value of stock, and with this method, you count the high-value items most frequently.

**Parent topic:**[Configuring Basic Inventory Processes](../UserGuide/IN__mng_Configuring_Basic_Inventory_Processes.md)

