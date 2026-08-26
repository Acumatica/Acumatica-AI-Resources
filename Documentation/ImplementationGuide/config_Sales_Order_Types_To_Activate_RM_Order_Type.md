# Sales Order Types: To Activate the RM Order Type {#_d51c94e7-6242-4d6b-b54f-849fb177ac0b .task}

In this implementation activity, you will learn how to activate the *RM* order type for processing RMA orders with the *RMA Order* automation behavior.

**Attention:**

The following activity is based on the *U100 Basic Company* dataset. If you are using another dataset, or if any system settings have been changed in *U100 Basic Company*, these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the *U100 Basic Company* dataset to its initial state.

If you want to perform this activity in an out-of-the-box company instead of creating a tenant with the dataset, you need to prepare a company with the basic settings, as described in [Company Without Branches: General Information](../Shared/../ImplementationGuide/config_Basic_Company_GeneralInfo.md).

## Story { .section}

Suppose that you are an implementation manager for the SweetLife Fruits &amp; Jams company, and you need to prepare the sales orders for processing sales of items with a return for replacement at another price. You need to activate the *RM* order type in the system.

## Process Overview { .section}

In this activity, you will activate the *RM* order type on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.

## System Preparation { .section}

Before you start activating the order type, you should do the following:

1.  Launch the Acumatica ERP website with the *U100 Basic Company* dataset preloaded, and sign in to the system as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure that the *Inventory and Order Management* and *Inventory* features are enabled.

## Step: Activating the RM Order Type { .section}

To activate the *RM* order type, do the following:

1.  Open the *RM* order type on the [Order Types](../UserGuide/SO_20_10_00.md)\(SO201000\) form.
2.  On the **General** tab, in the **Posting Settings** section, in the **Freight Account** box, specify *40010 \(Sales – Freight\)*.
3.  In the Summary area, select the **Active** check box.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

