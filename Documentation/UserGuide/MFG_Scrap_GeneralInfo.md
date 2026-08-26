# Scrap and Waste in Production: General Information {#_08603d65-2867-4363-99e6-c89231782bae .concept}

In Acumatica ERP Manufacturing Edition, a produced item is considered to be scrap when it does not meet the item specifications or quality requirements. If the business processes of your organization require that scrap costs affect production costs, shop-floor employees can record the quantities of scrapped items along with the quantities of completed items during their daily routines in the system.

Waste is a loss of materials used in the production process. Shop-floor employees do not need to do specific actions in the system to record waste. The system calculates the cost of waste and applies it to the production order cost if the appropriate settings are specified.

The system must be configured properly for the processing of scrap and waste, as described in [Configuration of Scrap, Waste, and By-Products in Production: General Information](../ImplementationGuide/config_MFG_Scrap_GeneralInfo.md).

In the following sections, you can find information about item production that includes scrapped items.

## Learning Objectives { .section}

In this chapter, you will learn the following:

-   How to enter scrapped item quantities in a labor or move transaction for operations with various scrap actions
-   How the system calculates waste costs
-   How the system selects the default warehouses and warehouse locations for scrap
-   How to enter quantities of scrapped items that are lot- or serial-tracked in a labor or move transaction for operations with various scrap actions

## Applicable Scenarios { .section}

You process production orders and record scrapped items for operations in the following cases:

-   In production operations, scrap is common in the finished product, and shop-floor employees need to record scrapped items during their everyday work.
-   In production operations, scrap is rare, but if scrapped items appear, shop-floor employees must record the quantities of scrapped items in the system.
-   Production managers need to review the costs of production orders that may include scrapped items or material waste.

## Scrap Recording Without Quarantine { .section}

For operations with the *No Action* or *Write-Off* scrap action, you do the following to enter the scrap quantity when you enter the quantity of completed items for a particular operation of a production order on the [Labor](AM_30_10_00.md) \(AM301000\) or [Move](AM_30_20_00.md) \(AM302000\) form:

1.  You add a line for the operation. In this line, you enter both the labor time and the completed quantity \(for a labor transaction\) or only the completed quantity \(for a move transaction\).
2.  In the operation line, you specify the quantity of scrapped items in the **Qty Scrapped** column.
3.  For an operation with the *Write-Off* scrap action, in the **Reason Code** column, you specify a reason code dedicated for scrap.
4.  You release the transaction. For lines with the *Write-Off* scrap action, the system also creates and releases a WIP adjustment transaction on the [WIP Adjustment](AM_30_80_00.md) \(AM308000\) form to post scrap costs to the scrap account. For details, see [Scrap Cost Calculation: Generated Transactions](MFG_Scrap_Costs_Transactions.md).

You can create a separate labor or move transaction to record only scrapped items.

## Scrap Recording with Movement to Quarantine { .section}

For an operation with the *Quarantine* scrap action, you do the following to enter the scrap quantity when you enter the quantity of completed items for a particular production order operation on the [Labor](AM_30_10_00.md) \(AM301000\) or [Move](AM_30_20_00.md) \(AM302000\) form:

1.  You add a line for the operation. In this line, you enter both the labor time and the completed quantity \(for a labor transaction\) or only the completed quantity \(for a move transaction\).
2.  For each scrapped item, you add a new line, and you specify the following in the line:
    1.  A reason code dedicated for scrap in the **Reason Code** column.
    2.  The quantity of scrapped items in the **Quantity** column. The system copies this quantity to the **Qty Scrapped** column and makes this column unavailable.
3.  In the same line, you make sure that the warehouse in the **Warehouse** column and the warehouse location in the **Location** column are correct. The system will record the movement of the scrapped items to this warehouse and this location.
4.  You release the transaction. For scrapped items, the system creates and releases the following transactions:

    -   A WIP adjustment transaction on the [WIP Adjustment](AM_30_80_00.md) \(AM308000\) form to post scrap costs to the scrap account
    -   An inventory receipt on the [Receipts](IN_30_10_00.md) \(IN301000\) form that records the movement of the scrapped items to the scrap warehouse
    For more information about the transactions, see [Scrap Cost Calculation: Generated Transactions](MFG_Scrap_Costs_Transactions.md).


## Inclusion of Scrapped Quantity in the Completed Quantity { .section}

Depending on the state of the **Include Scrap in Completions** check box on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form, the system does not consider the scrapped quantity in the quantity of completed items \(if the check box is cleared\) or includes the scrapped quantity in the quantity of completed items \(if the check box is selected\). With the check box selected, the system will regard an operation as completed when the sum of the completed items and scrapped items entered for a production operation equals the quantity of items to be produced.

## Selection of the Default Values for the Scrap Warehouse and Location { .section}

When the scrap action for an operation of a production order is *Quarantine*, the system may insert the values of the **Scrap Warehouse** and **Scrap Location** boxes of each new production order on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form. The values to be inserted depend on the option selected in the **Scrap Source** box of the **General** tab on the [Production Order Types](AM_20_11_00.md) \(AM201100\) form. For details, see [Configuration of Scrap, Waste, and By-Products in Production: Scrap Quarantine](../ImplementationGuide/config_MFG_Scrap_Storage.md).

You can override the scrap warehouse or warehouse location for each particular production order on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form as follows: On the **General** tab, you select the **Scrap Override** check box, specify the needed warehouse in the **Scrap Warehouse** box, and specify the needed warehouse location in the **Scrap Location** box.

The system copies the warehouse and warehouse location specified in a production order to the lines of a labor or move transaction that contains a scrapped quantity. You can change the values in the transaction line if needed.

The functionality of selecting a warehouse and warehouse location for scrapped items is available only when the *Multiple Warehouses* and *Multiple Warehouse Locations* features are enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form. If the features are disabled, the scrapped items are moved to the only warehouse and warehouse location, which are not displayed in the system.

## Scrap Recording for Lot- or Serial-Tracked Items { .section}

If an item that you record as scrap is lot- or serial-tracked, you may need to assign a lot or serial number to the scrapped item in a labor transaction on the [Labor](AM_30_10_00.md) \(AM301000\) form or a move transaction on the [Move](AM_30_20_00.md) \(AM302000\) form, depending on the scrap action specified for an operation of a production order for which scrapped quantity has been entered as follows:

-   *No Action* or *Write-Off*: The system does not request the assignment of a lot or serial number to the scrapped item.
-   *Quarantine*: You must assign a lot or serial number to the scrapped item by using the **Line Details** dialog box, which you open on the [Labor](AM_30_10_00.md) or [Move](AM_30_20_00.md) form by clicking the line with the scrapped item and then clicking **Line Details** on the table toolbar.

    **Important:** If you preassign lot or serial numbers to production orders and lot- or serial-tracked items can be scrapped, we recommend that you select the **Include Scrap in Completions** check box on the [Production Preferences](AM_10_20_00.md) \(AM102000\) form. Otherwise, if you record extra scrapped items, you will not be able to assign lot or serial numbers to these items because the quantity of items with assigned lot or serial numbers must be equal to the quantity being produced.


## Waste Cost Calculation { .section}

If a nonzero waste percentage is specified in the **Scrap Factor** box of a material row in the **Materials** table for a production order on the [Production Order Details](AM_20_90_00.md) \(AM209000\) form, the system increases the material cost by the specified percentage.

For example, suppose that the production of an item uses wooden boards, which are cut, and 5% waste is expected. Further suppose that 6 meters of wooden boards are needed for producing one finished item and the unit cost of the material is $0.50. You specify *0.05* as the scrap factor, and the system calculates the waste cost as follows: `6 * 0.5 * 0.05`, which is $0.15 per finished item. The total material cost for the cutting operation will be $0.65 per finished item.

**Parent topic:**[Tracking Scrap and Waste in Production](../UserGuide/MFG_Scrap_Mapref.md)

