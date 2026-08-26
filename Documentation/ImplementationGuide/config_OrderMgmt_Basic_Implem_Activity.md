# Order Management Basic Configuration: Implementation Activity {#_e151bbec-f091-4d9b-9868-f05c25b87696 .task}

You perform the following implementation activity to prepare the system to support the processing of sales and purchase orders with non-stock items.

## Story { .section}

Suppose that you, as an implementation manager, need to configure system for processing sales and purchases of non-stock items through orders.

## System Preparation { .section}

Before you start configuring the basic order management functionality, you perform the following instructions:

1.  In a new tenant, prepare the company with the basic settings, as described in the [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, enable the *Inventory and Order Management* feature.
3.  On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, activate at least the *IN* order type, as described in [Sales Order Types: To Activate the IN Order Type](config_Sales_Order_Types_To_Activate_IN_Order_Type.md).

## Basic Order Management Configuration { .section}

To perform the basic configuration of purchase order and sales order functionality, proceed as follows:

1.  Open the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO100000\) form.
2.  Make sure that *IN* is selected in the **Default Sales Order Type** box. This is the predefined order type that is used for processing sales of non-stock items.
3.  In the **Invoice Settings** section, clear the **Hold Invoices on Failed Credit Check** check box.
4.  Save your changes on the form.
5.  Open the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form.
6.  In the **Validate Total on Entry** section, make sure that the **For Normal and Standard Orders** check box is cleared.
7.  Save your changes on the form.

You have configured basic order management functionality. Now you can proceed with processing sales and purchase orders with non-stock items.

**Parent topic:**[Basic Order Management](../ImplementationGuide/config_OrderMgmt_Basic_Mapref.md)

