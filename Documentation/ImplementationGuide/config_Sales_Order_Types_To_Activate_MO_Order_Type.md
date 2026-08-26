# Sales Order Types: To Activate the MO Order Type {#_017d8f84-4930-46c0-a563-bbef580e1902 .task}

In this implementation activity, you will learn how to prepare and activate the *MO* order type for processing orders with the *Mixed Order* automation behavior.

**Attention:**

The following activity is based on the *U100 Basic Company* dataset. If you are using another dataset, or if any system settings have been changed in *U100 Basic Company*, these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the *U100 Basic Company* dataset to its initial state.

If you want to perform this activity in an out-of-the-box company instead of creating a tenant with the dataset, you need to prepare a company with the basic settings, as described in [Company Without Branches: General Information](../Shared/../ImplementationGuide/config_Basic_Company_GeneralInfo.md).

## Story { .section}

Suppose that you are an implementation manager for the SweetLife Fruits &amp; Jams company, and you need to prepare the sales orders for processing the sales of items with a return in the same order. You need to prepare and activate the *MO* order type in the system.

## Process Overview { .section}

In this activity, you will prepare and activate the *MO* order type on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.

## System Preparation { .section}

Before you start preparing and activating the order type, you should do the following:

1.  Launch the Acumatica ERP website with the *U100 Basic Company* dataset preloaded, and sign in to the system as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure that the *Inventory and Order Management* and *Inventory* features are enabled.

## Step: Activating an Order Type { .section}

To prepare and activate the *MO* order type, do the following:

1.  Open the *MO* order type on the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.
2.  On the **General** tab \(**Posting Settings** section\), in the **Freight Account** box, specify *40010 \(Sales – Freight\)*.
3.  In the Summary area, select the **Active** check box.
4.  On the form toolbar, click **Save**.

**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

