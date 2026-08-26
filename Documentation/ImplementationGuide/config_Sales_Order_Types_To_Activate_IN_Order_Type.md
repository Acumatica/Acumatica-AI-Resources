# Sales Order Types: To Activate the IN Order Type {#_87c1f7f1-949d-44e7-bcc1-79b4df2d1c35 .task}

In this implementation activity, you will learn how to set up and activate the *IN* order type.

## Story { .section}

Suppose that you, as implementation manager, need to prepare the sales orders for processing sales of items without shipping. You need to set up and activate the *IN* order type in the system.

## System Preparation { .section}

Before you set up and activate order types, perform the following instructions:

1.  In a new tenant, prepare the company with basic settings as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
2.  Enable the *Inventory and Order Management* feature on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Step: Setting Up and Activating an Order Type { .section}

To set up the *IN* order type and activate this type, do the following:

1.  Open the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.
2.  Open the *IN* order type.
3.  On the **General** tab, clear the following check boxes:
    -   **Bill Separately**
    -   **Calculate Freight**
4.  In the **Freight Account**, specify *51300 \(COGS – Freight\)*.
5.  In the Summary area, select the **Active** check box.
6.  Save your changes to the order type.

**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

