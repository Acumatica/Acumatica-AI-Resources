# Sales Order Types: To Activate the RC Order Type {#_034b102a-09be-4c75-acbf-e4993ffd4ed5 .task}

In this implementation activity, you will learn how to activate the *RC* order type.

**Attention:**

The following activity is based on the *U100 Basic Company* dataset. If you are using another dataset, or if any system settings have been changed in *U100 Basic Company*, these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the *U100 Basic Company* dataset to its initial state.

If you want to perform this activity in an out-of-the-box company instead of creating a tenant with the dataset, you need to prepare a company with the basic settings, as described in [Company Without Branches: General Information](../Shared/../ImplementationGuide/config_Basic_Company_GeneralInfo.md).

## Story { .section}

Suppose that you, as the implementation manager, need to configure the processing of customer returns for credit. Thus, you need to activate the *RC* order type in the system.

## System Preparation { .section}

1.  In a new tenant, prepare the company with basic settings as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).
2.  Launch the Acumatica ERP website, and sign in to the prepared company as *admin*.

## Step: Activating an Order Type { .section}

1.  Open the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.
2.  Open the *RC* order type.
3.  In the **Freight Account** box of the **General Settings** tab \(**Posting Settings** section\), specify *51300 \(COGS – Freight\)*.
4.  In the Summary area, select the **Active** check box.
5.  On the form toolbar, click **Save**.
6.  Open the [Sales Orders](../UserGuide/SO_30_10_00.md) \(SO301000\) form. In the Summary area, make sure that *RC* is available for selection in the **Order Type** box.

**Parent topic:**[Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md)

