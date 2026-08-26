# Sales Order Types: To Activate the BL Order Type {#_a5d01d25-1ae5-4a3e-9c9b-2d33d533b1d0 .task}

In the following implementation activity, you will learn how to activate the *BL* order type, which will be used for blanket sales orders. This type is predefined in the system, so you need only to make the needed modifications to its settings and activate the type.

## Story { .section}

Suppose that you are an implementation manager for the SweetLife Fruits &amp; Jams company, and you need to prepare the system for the processing of sales of items with shipping. You need to prepare and activate the *BL* order type in the system.

## Process Overview { .section}

In this activity, you will activate the *BL* order type on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.

## System Preparation {#section_vlz_yf4_rvb .section}

Before you start preparing and activating the order type, you should do the following:

1.  Sign in as an implementation manager by using the *gibbs* username and the provided password.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure that the *Inventory and Order Management* and *Inventory* features are enabled.

## Step: Activating an Order Type { .section}

To prepare and activate the *BL* order type, do the following:

1.  Open the *BL* order type on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.
2.  On the **General** tab, select *SO* in the **Default Child Order Type** box. This indicates that the system should generate sales order of the *SO* predefined order type when you create child orders for a blanket sales order.
3.  In the Summary area, select the **Active** check box.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

