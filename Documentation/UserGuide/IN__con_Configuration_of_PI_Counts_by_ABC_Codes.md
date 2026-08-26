# Configuration of Physical Inventory Counts by ABC Codes {#_7905ea88-acb3-402d-8d64-99d9daad7210 .concept}

If your company uses ABC codes to identify items that are critical to your business, you can set up physical inventory counts based on the ABC codes assigned to stock items. Counting by ABC codes may be the best method for maintaining accurate inventory counts if in your business, a small number of items accounts for the largest value of stock; with this method, you count the high-value items most frequently. For more information on using ABC codes in Acumatica ERP, see [Inventory Ranking Methods](IN__con_Inventory_Ranking_Methods.md).

**Note:** The functionality that supports counts by ABC codes is available only if the *Advanced Physical Counts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

If you plan to use counting by ABC codes, we recommend that you set up physical inventory counts by ABC codes during the initial configuration of the Inventory module. However, you can configure ABC counting later as well.

In this topic, you will find information about configuration of physical inventory by ABC codes.

## Configuration of PI Counts by ABC Codes { .section}

The configuration of counting based on ABC codes includes the following stages:

1.  Creating ABC codes and specifying counting frequencies for the ABC codes.

    When you plan count frequencies, you should make sure that the count-per-year values for different codes are factors of the largest count-per-year value \(that is, the largest value can be divided by the smaller ones with no remainder\). For details, see [To Create ABC Codes](IN__how_Create_ABC_Code.md).

2.  Assigning stock items to the appropriate ABC codes.

    If you configure counting by ABC codes during the implementation stage, you can assign the initial ABC codes to items when you import the stock items from your legacy system. Otherwise, you assign the codes to items manually. Later, as the statistical data on sales is collected, you can update ABC codes for items automatically, as described in [To Assign an ABC Code to a Stock Item](IN__how_Assign_ABC_Codes_to_Stock_Items.md).

3.  Creating physical inventory types.

    You create a type for a full count \(see [To Create a PI Type for a Full Count](IN__How_Create_Full_Count_PI_Type.md)\) and a type for counting by frequency \(see [To Create a Physical Inventory Type for Counts by ABC Code and Frequency](IN__how_Create_PI_Type_for_Counts_by_ABC_Codes_Frequency.md)\). Then when you are preparing the physical inventory document, the system will include only the items that are due for counting based on their code frequency. Also, you can create PI types for particular codes \(see [To Create a Physical Inventory Type for an ABC Code](IN__How_Set_up_PI_by_ABCcodes.md)\). You should plan the convention for the identifiers of PI types and decide how to organize data on count sheets for each type of count.


After you have configured counting by ABC codes, you can perform physical inventory in the following order:

1.  Performing an initial full physical inventory.
2.  Conducting counts based on ABC codes by frequency.
3.  Optional: Conducting counts by particular ABC codes.

-   **[To Create ABC Codes](../UserGuide/IN__how_Create_ABC_Code.md)**  

-   **[To Assign an ABC Code to a Stock Item](../UserGuide/IN__how_Assign_ABC_Codes_to_Stock_Items.md)**  

-   **[To Create a Physical Inventory Type for an ABC Code](../UserGuide/IN__How_Set_up_PI_by_ABCcodes.md)**  

-   **[To Create a Physical Inventory Type for Counts by ABC Code and Frequency](../UserGuide/IN__how_Create_PI_Type_for_Counts_by_ABC_Codes_Frequency.md)**  


**Parent topic:**[Configuring Advanced Physical Inventory](../UserGuide/IN__mng_Configuring_Advanced_Physical_Inventory.md)

