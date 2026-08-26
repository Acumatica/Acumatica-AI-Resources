# Posting Classes: Implementation Activity {#_b93c743c-462b-48e4-b35f-ee34b97e7ce1 .task}

In this implementation activity, you will learn how to create a posting class.

**Attention:**

The following activity is based on the *U100 Basic Company* dataset. If you are using another dataset, or if any system settings have been changed in *U100 Basic Company*, these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the *U100 Basic Company* dataset to its initial state.

If you want to perform this activity in an out-of-the-box company instead of creating a tenant with the dataset, you need to prepare a company with the basic settings, as described in [Company Without Branches: General Information](../Shared/../ImplementationGuide/config_Basic_Company_GeneralInfo.md).

## Story { .section}

Suppose that you are an implementation manager for the SweetLife Fruits &amp; Jams company, which produces and sells bottled juice. You are configuring inventory for the company. Before you can start creating stock items for juice in the system, you need to create a posting class that will provide default posting settings for juice items.

## Process Overview { .section}

In this activity, you will create a posting class on the [Posting Classes](IN_20_60_00.md) \(IN206000\) form.

## System Preparation { .section}

Before you start creating a posting class, you should do the following:

1.  Launch the Acumatica ERP website with the *U100 Basic Company* dataset preloaded, and sign in to the system as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, make sure that the *Inventory and Order Management* and *Inventory* features are enabled.
3.  On the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, create and save the reason codes that are required for configuring inventory and order management, as described in [Reason Codes: Implementation Activity](Reason_Codes_Implem_Activity.md).
4.  On the [Order Types](SO_20_10_00.md) \(SO201000\) form, configure and activate at least the *SO* order type, as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md).
5.  Specify the appropriate inventory settings, as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md).

**Tip:** If you have not configured a company with basic settings and you want to practice creating a posting class, you can perform the activity in this topic by using the *U100* dataset.

## Step: Creating a Posting Class {#_380514f6-2ca4-4e1b-aeb3-8d62648613b6 .section}

To create a posting class for jams, do the following:

1.  On the [Posting Classes](IN_20_60_00.md) \(IN206000\) form, add a new record.
2.  In the Summary area, specify the following settings:
    -   **Class ID**: `JUICE`
    -   **Description**: `Juice`
3.  In the **Posting Settings** section, specify the following settings:
    -   **Use Inventory/Accrual Account from**: *Posting Class*
    -   **Use Sales Account from**: *Posting Class*
    -   **Use COGS/Expense Account from**: *Posting Class*
    -   **Use Std. Cost Variance Account from**: *Posting Class*
    -   **Use Std. Cost Revaluation Account from**: *Posting Class*
    -   **Use PO Accrual Account from**: *Posting Class*
    -   **Use Purchase Price Variance Account from**: *Posting Class*
    -   **Use Landed Cost Variance Account from**: *Posting Class*
4.  In the **Default GL Accounts** section, specify the following settings:
    -   **Inventory/Accrual Account**: *12100 - Inventory Asset*
    -   **Sales Account**: *40000 - Sales Revenue*
    -   **COGS/Expense Account**: *50000 - COGS - Inventory*
    -   **Standard Cost Variance Account**: *52100 - Standard Cost Adjustments*
    -   **Standard Cost Revaluation Account**: *52110 - Standard Cost Revaluation Account*
    -   **PO Accrual Account**: *20100 - Inventory Purchase Accrual*
    -   **Purchase Price Variance Account**: *52300 - Purchase Price Variance*
    -   **Landed Cost Variance Account**: *52400 - Landed Cost Variance*
5.  On the form toolbar, click **Save**.

Now that you have created the posting class, you can create units of measure, as described in [Units of Measure: Implementation Activity](UOMs_Implem_Activity.md). For the full list of inventory entities to be created, see [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).

## Activity Recap { .section}

In this activity, we have illustrated how the implementation manager has done the following:

1.  Created a new posting class for juice items
2.  Specified the sources of GL accounts for the items with this posting class
3.  Specified the GL accounts to be used in inventory and order management operations for the items that have this posting class

**Parent topic:**[Creating Posting Classes](../UserGuide/Posting_Classes_Mapref.md)

