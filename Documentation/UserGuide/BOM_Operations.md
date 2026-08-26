# Bills of Material: Operations {#_c992fa9a-a252-46b7-9af9-e146e8d1b324 .concept}

Operations are an essential part of a bill of material \(BOM\). When you create a bill of material or change an existing BOM on the [Bill of Material](AM_20_80_00.md) \(AM208000\) form, you must add at least one operation to the Operations table.

In this topic, you will read about operations for bills of material.

## Operations in Bills of Material {#_95324c9c-e48c-424c-aa20-0dd805b11e1b .section}

Each operation is assigned to a work center and represents the activities performed in this work center. In the Operations table of the [Bill of Material](AM_20_80_00.md) \(AM208000\) form, you list the included operations in the order in which they will be performed during production.

In this table, you specify the following for each operation:

-   Operation identifier, which you specify manually in the **Operation ID** column. For details, see [Operation Identifiers](#_5b2c04dc-4ca2-4573-9054-063b6c5a3dcb).
-   The work center where the operation will be performed, which you specify in the **Work Center** column. The work center provides the standard labor cost per working hour.
-   The time for preparing to start the operation, which you specify in the **Setup Time** column.
-   The quantity of item units produced and the particular time in which the units are produced; you specify the quantity of item units in the **Run Units** column and the time in the **Run Time** column. For example, suppose that an operation requires 1 hour and 20 minutes to produce 1000 gallons of a liquid; the run units would be *1000* and the run time would be *01:20*.
-   If a machine is involved in the operation, the quantity of item units produced by using the machine and the particular time; you specify the quantity of item units in the **Machine Units** column and the time in the **Machine Time** column.
-   The time a semi-finished item has to wait in the work center before workers can start processing the item; you specify this time in the **Queue Time** column.
-   The time for a semi-finished item to be moved from the work center where the current operation is performed to the work center where the next operation will be performed. You specify this time in the **Move Time** column.
-   The time required for the semi-finished item to be prepared for the next operation when the current operation has been finished; you specify this time in the **Finish Time** column.
-   The labor backflushing setting, which is represented by the **Backflush Labor** check box, that indicates whether labor should be backflushed. For more information, see [Production with Backflushing: General Information](MFG_Backflushing_GeneralInfo.md).
-   The default scrap action for the operation that will be copied to the new production order, which you specify in the **Scrap Action** column. For more details about scrap, see [Configuration of Scrap, Waste, and By-Products in Production: General Information](../ImplementationGuide/config_MFG_Scrap_GeneralInfo.md).
-   The control point state, which is represented by the **Control Point** check box. This state indicates whether workers must record the quantity of completed items for the operation. For details, see [Production Processing: Control Point Operations](MFG_Production_Order_Processing_Control_Points.md).

    **Attention:** The last routing operation is always a control point because before the production order can be completed, workers must report the labor hours spent and the completed quantity. So you do not need to select the **Control Point** check box for the last operation in a bill of material.


For each operation in the Operations table, you can specify the materials, steps, tools, overhead, and outside process settings included in the selected operation. To do this, you click the operation in the table and then you specify the settings on the dedicated tabs below the table.

For each operation, you specify the following:

-   Materials, which are the stock or non-stock items that will be used in the operation. For more information, see [Materials Used in Operations](#_6994e377-ed89-4834-a26f-c23534453878).
-   Steps into which the operation is divided. The steps are used only by workers to understand the sequence of actions within the operation.

    Steps can be printed by using the [Production Ticket](AM_62_50_00.md) \(AM625000\) report.

-   Tools that are involved in the operation and whose cost you would like to include in the production cost. For details, see [Configuring Production Cost Drivers: General Information](../ImplementationGuide/config_MFG_Production_Cost_Drivers_GeneralInfo.md).
-   Product-specific overhead costs that must be considered when the system calculates costs for the operation. Overhead costs are usually specified for a work center instead of for a bill of material. For more information, see [Configuring Production Cost Drivers: General Information](../ImplementationGuide/config_MFG_Production_Cost_Drivers_GeneralInfo.md).
-   Outside process settings, if the operation is involved in an outside process. For details, see [Outside Processing: General Information](MFG_Outside_Processing_GeneralInfo.md).

## Operation Identifiers {#_5b2c04dc-4ca2-4573-9054-063b6c5a3dcb .section}

We recommend that you consider the following points regarding the operation identifiers, which are specified in the **Operation ID** column of the Operations table:

-   You should assign operation IDs to provide the ability to add new operations between the two existing operations; that is, do not assign operations contiguous numbers as IDs, because this would not give you the ability to use an ID between those IDs. For example, suppose that initially a bill of material includes three operations. You specify the operation identifiers as *010*, *020*, and *030*. Further suppose that a new operation must be performed between the first and second operations. You can use the *015* ID for this operation.
-   You should not use leading spaces.
-   If you use preceding zeros, you should keep in mind that operations are sorted as text when you order operations in the list.
-   You can change the operation identifiers at any time.
-   Some common examples of identifiers for operations are the following:
    -   010, 020, 030, and so on
    -   100, 110, 120, and so on
    -   0010, 0020, 0030, and so on

**Attention:** When a user creates a production order, the system generates operation identifiers, which may differ from those in the bill of material on which the order is based. During the generation of operation IDs for the production order, the system maintains the order of operations specified in the bill of material. In the production order, the system assigns *0010* as the identifier of the first operation and then increases the identifier of each new operation by 10. Thus, the second operation ID will be *0020* and the third operation ID will be *0030*.

## Materials Used in Operations {#_6994e377-ed89-4834-a26f-c23534453878 .section}

Materials are the stock or non-stock items used to produce one base unit of an item. On the **Materials** tab of the [Bill of Material](AM_20_80_00.md) \(AM208000\) form, you add the materials that are used when a worker performs the particular operation selected in the Operations table.

Two system settings for bills of material, which are specified on the **General** tab \(**Data Entry Settings** section\) of the [BOM Preferences](AM_10_10_00.md) form \(AM101000\) affect the entry of items that are used more than once in an operation and are used multiple times in different operations of the bill of material. If in the production process, the same items can be used in the same operation multiple times \(and you need to add a separate line for each of the items\), you select the *Allow* option in the **Duplicates on Operation** box on this form. If the same items can be added to different operations of the same bill of material, you select the *Allow* option in the **Duplicates on BOM** box.

For each item added to the **Materials** tab on the [Bill of Material](AM_20_80_00.md) form, you specify the identifier of a stock or non-stock item that represents the material and the quantity of the item required for the operation. The quantity is defined by values of the **Qty. Required**, **Batch Size**, and **UOM** columns, as described in the following section.

## Calculation of the Quantity of Material Required for Production {#_7fd4bf64-a7e1-450b-a861-df53aae8281f .section}

When a user creates a production order for a bill of material, the system calculates the quantities of the materials required for production. The required quantity of each item listed on the **Materials** tab of the [Bill of Material](AM_20_80_00.md) \(AM208000\) form is based on the combination of the **Qty. Required** and **Batch Size** settings as follows:

-   If the required quantity does not depend on the quantity of the items being produced, you specify `0` in the **Batch Size** column and the needed quantity in the **Qty. Required** column.
-   If the required quantity is calculated based on the quantity of the items being produced, you specify `1` in the **Batch Size** column and the quantity required to produce one unit of the item in the **Qty. Required** column.
-   If the material is supplied in units of measure other than the base unit of measure \(such as boxes with 10 units\), you specify the multiplier for the base unit of measure in the **Batch Size** column and the needed quantity in the **Qty. Required** column. In this case, the system will divide the value specified in the **Qty. Required** column by the batch size.

**Attention:** The **Batch Size** column is hidden from the **Materials** tab by default. The default value of the batch size is *1*.

For the item being produced, if the lot size specified in the **Lot Size** box on the **Manufacturing** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form is more than 1, the system multiplies the required quantity specified in the **Qty. Required** column on the **Materials** tab of the [Bill of Material](AM_20_80_00.md) form by the lot size in production orders and planned orders.

Suppose that 2 pounds of apples and 1 pound of sugar are required for the production of one 32-ounce jar of apple jam. Sugar is supplied in packages that contain 5 bags with 1 pound in each. Also, workers use 0.8 liquid ounces of dish-washing liquid for washing a pan after each brewing cycle. Further suppose that a production order is created for producing 10 jars of apple jam. In the following table, you can find an example of how the system calculates the required material quantity for the production order depending on the BOM settings.

|Material|Required Quantity|Batch Size|Total Quantity|
|--------|-----------------|----------|--------------|
|Apples|2 pounds|1|20 pounds|
|Sugar|5 pounds|5|10 pounds|
|Dish-washing liquid|0.8 liquid ounces|0|0.8 liquid ounces|

## Reference Designators { .section}

A reference designator identifies a component on drawings or work instructions. The designator may also be used as a reference to a list of components used multiple times on a drawing like a fastener. In electronics manufacturing, the designators are often used to indicate the position of a component on a circuit board.

To add a reference designator to a material, you do the following on the [Bill of Material](AM_20_80_00.md) \(AM208000\) form:

1.  In the **BOM ID** box of the Summary area, select the needed bill of material.
2.  In the Operations table, click the operation that contains the material.
3.  On the **Materials** tab, click the material row.
4.  On the table toolbar, click **Reference Designators**.
5.  In the **Reference Designators** dialog box that opens, click **Add New Line**.
6.  Enter the identifier and the description of the reference designator to the appropriate columns.
7.  Click **OK** to save your changes and close the dialog box.
8.  On the form toolbar, click **Save**.

**Parent topic:**[Managing Bills of Material](../UserGuide/BOM_Mapref.md)

