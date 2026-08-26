# Inventory Turnover: General Information {#_f2605956-12bc-40fb-b613-60735212efbe .concept}

In Acumatica ERP, you can calculate the stock item turnover, item average inventory for the selected period, and the average number of days \(DSI\) required to turn the average inventory into sales.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Calculate the inventory turnover
-   Create an automation schedule for calculation of the inventory turnover

## Applicable Scenarios { .section}

You calculate the inventory turnover in the following cases:

-   When you need to understand the number of times a stock item is sold and replaced during a certain period
-   When you need to calculate the number of days a stock item needs to be converted to sales
-   When you need to compare the benchmark ratio by the industry for selected stock items

## Calculation of the Inventory Turnover { .section}

The [Inventory Turnover](IN_40_70_10.md) \(IN407010\) inquiry form is a place where you calculate the inventory turnover for all warehouses of a branch, company, or a group of companies for a selected range of periods. The inquiry form is available in the **Inquiries** category of the **Inventory** workspace.

The inquiry is empty by default. To calculate the inventory turnover, you should specify the values in the required **Company/Branch**, **From Period**, **To Period** boxes in the Selection area of the [Inventory Turnover](IN_40_70_10.md) form. If values are specified in required boxes only, the system will calculate the full turnover for all stock items in all warehouses that are related to the selected branch, company, or group of companies. When such calculation is complete, the system displays the calculation results in the table below the Selection area. You can narrow the results of calculation by specifying values in the additional **Warehouse**, **Item Class**, and **Inventory ID** boxes. The calculation is stored in database, and the system filters existing records to display only relevant results without performing another calculation.

Alternatively, you can specify the values in the **Warehouse**, **Item Class**, and **Inventory ID** boxes before you calculate the turnover. This calculation will include the data about specific warehouse or items, and once you clear the additional boxes or specify another value, you will need to recalculate the turnover again.

## Automation of Turnover Calculation { .section}

You can automate the calculation of the inventory turnover by clicking **Schedules** and then selecting the *Add* option on the form toolbar of the [Manage Turnover History](IN_50_70_00.md) \(IN507000\) form. The system opens the [Automation Schedules](SM_20_50_20.md) \(SM205020\) form as a dialog box. You can schedule calculation of the turnover for the last N periods including the current period by specifying the *Calculate for Last N Period\(s\)* option in the **Field Name** column and the required number of periods in the **Value** column for this row on the **Filter Values** tab of the [Automation Schedules](SM_20_50_20.md) form.

For more information about scheduled automated processing, see [Automated Processing: General Information](SA_Scheduling_Automated_Processing_GeneralInfo.md)

## Calculation Rules { .section}

The turnover ratio is calculated according the following formula: `Turnover = Cost of Goods Sold / Average Inventory`. The `Cost of Goods Sold` value represents the total cost of the sold quantity of the item and is calculated in the base currency, and the `Average Inventory` value represents the average inventory cost of the item within a selected period range and is calculated in the base currency and unit.

Depending on the business needs, you can adjust which documents and lines should be taken into account in the calculation of the `Cost of Goods Sold` value in the **Inventory Turnover Settings** section on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form.

The section contains the following check boxes:

-   **Include Sales**: A check box that indicates that sales of stock items are taken into account in the calculation of the `Cost of Goods Sold` value. This check box is selected and unavailable. Because it is selected, the following lines of inventory transactions increase the `Cost of Goods Sold` value when the inventory transactions are released:

    -   Lines with the *Invoice*, *Debit Memo*, and *Issue* transaction types in inventory issues that are generated for sales-related documents
    -   Lines with the *Invoice* and *Debit Memo* transaction types in inventory issues that are created directly on the [Issues](IN_30_20_00.md) \(IN302000\) form
    The following lines of inventory transactions decrease the `Cost of Goods Sold` value when the inventory transactions are released:

    -   Lines with the *Return* and *Credit Memo* transaction types in inventory issues that are generated for sales-related documents
    -   Lines with the *Credit Memo* transaction type in inventory issues that are created directly on the [Issues](IN_30_20_00.md) form
-   **Include Production Orders**: A check box that indicates \(if selected\) that the lines of inventory transactions from documents related to the manufacturing functionality are taken into account in the calculation of the `Cost of Goods Sold` value. By default, this check box is cleared. When it is selected, the following lines of inventory transactions increase the `Cost of Goods Sold` value when the inventory transactions are released:

    -   Lines with the *Issue* transaction type in inventory issues generated from documents related to the manufacturing functionality
    -   Lines with negative quantities in inventory adjustments generated from documents related to the manufacturing functionality
    Lines of inventory transactions generated for material returns decrease the `Cost of Goods Sold` value when the inventory transactions are released.

-   **Include Assemblies**: A check box that indicates \(if selected\) that the assembly and disassembly operations for kits and their components are taken into account in the calculation of the `Cost of Goods Sold` value. By default, this check box is cleared.
-   **Include Issues and Adjustments**: A check box that indicates \(if selected\) that the following lines of inventory transactions are taken into account in the calculation of the `Cost of Goods Sold` value when the inventory transactions are released:
    -   Lines with the *Issue* transaction type in inventory issues that are created directly on the [Issues](IN_30_20_00.md) form
    -   Lines with a negative quantity in inventory adjustments that are created directly on the [Issues](IN_30_20_00.md) form or generated on release of a PI count
-   **Include Transfers**: A check box that indicates \(if selected\) that lines of outgoing transfers are taken into account in the calculation of the `Cost of Goods Sold` value. This check box is cleared by default.

    **Note:** Transfers between different locations of the same warehouse are not taken in account in the calculation of the `Cost of Goods Sold` value.


**Parent topic:**[Calculating Inventory Turnover](../UserGuide/Inventory_Turnover_Mapref.md)

