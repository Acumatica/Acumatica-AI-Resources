# Sales Order Types: To Activate the TR Order Type {#_92df640d-ee61-43fa-a312-54164a515cc5 .task}

In the following implementation activity, you will learn how to activate the *TR* order type.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story { .section}

Suppose that you are an implementation manager of the SweetLife Fruits &amp; Jams company. You need to prepare the *TR* order type for processing sales with items transferred from at least one other warehouse.

## System Preparation { .section}

Before you start activating the *TR* order type, you should do the following:

1.  Launch the Acumatica ERP website with the *U100* dataset preloaded, and sign in as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  Make sure that the *Inventory and Order Management*, *Inventory*, and *Multiple Warehouses* features are enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Step: Activating an Order Type { .section}

To activate the *TR* order type, do the following:

1.  Open the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.
2.  Select the *TR* order type.
3.  In the **Freight Account** box, specify *40010 \(Sales – Freight\)*.
4.  In the Summary area, make sure that the **Active** check box is selected.
5.  On the form toolbar, click **Save**.
6.  On the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form, make sure that *TR* is available for selection in the **Order Type** box. This indicates that the order type has been activated.

For a description of the settings that affect the processing workflow for orders of the *TR* type, see [Sales Order Types: Implementation Checklist](config_Sales_Order_Types_Implem_Checklist.md).

**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

