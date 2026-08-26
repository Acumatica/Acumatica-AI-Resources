# Reason Codes: Implementation Activity {#_b365ae56-b622-49e0-9527-1eb6c1401c56 .task}

In this implementation activity, you will learn how to create reason codes.

**Attention:**

The following activity is based on the *U100 Basic Company* dataset. If you are using another dataset, or if any system settings have been changed in *U100 Basic Company*, these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the *U100 Basic Company* dataset to its initial state.

If you want to perform this activity in an out-of-the-box company instead of creating a tenant with the dataset, you need to prepare a company with the basic settings, as described in [Company Without Branches: General Information](../Shared/../ImplementationGuide/config_Basic_Company_GeneralInfo.md).

## Story { .section}

Suppose that you are an implementation manager for the SweetLife Fruits &amp; Jams company, and you need to configure inventory and order management. Before you start specifying the inventory and order management preferences on the appropriate Acumatica ERP forms, you must create reason codes for the direct inventory operations of issuing, receiving, adjusting, and counting physical inventory. You also need to create a reason code for vendor returns, which are not inventory operations but do involve the movement of goods in inventory.

## Process Overview { .section}

In this activity, you will create reason codes for direct inventory operations and a reason code for vendor returns on the [Reason Codes](CS_21_10_00.md) \(CS211000\) form.

## System Preparation { .section}

Before you start creating these reason codes, you should do the following:

1.  Launch the Acumatica ERP website with the *U100 Basic Company* dataset preloaded, and sign in to the system as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, enable the *Inventory and Order Management* and *Inventory* features.

## Step 1: Creating Reason Codes for Inventory Operations { .section}

To create reason codes for direct inventory operations, do the following:

1.  Create a reason code for direct inventory receipts as follows:
    1.  On the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, add a new record.
    2.  Specify the following settings:
        -   **Reason Code**: `INRECEIPT`
        -   **Description**: `Direct Receipts`
        -   **Usage**: *Receipt*
        -   **Account**: *20110 - Inventory Purchase Accrual for Direct Receipts*
    3.  On the form toolbar, click **Save**.
2.  Create a reason code for direct inventory issues as follows:
    1.  On the form toolbar, click **Add New Record**.
    2.  Specify the following settings:
        -   **Reason Code**: `INISSUE`
        -   **Description**: `Direct Issues`
        -   **Usage**: *Issue*
        -   **Account**: *11010 - AR Accrual Account*
    3.  On the form toolbar, click **Save**.
3.  Create a reason code for direct inventory adjustments as follows:
    1.  On the form toolbar, click **Add New Record**.
    2.  Specify the following settings:
        -   **Reason Code**: `INADJUST`
        -   **Description**: `Direct Adjustments`
        -   **Usage**: *Adjustment*
        -   **Account**: *52000 - Physical Inventory Adjustments*
    3.  On the form toolbar, click **Save**.
4.  Create a reason code for physical inventory as follows:
    1.  On the form toolbar, click **Add New Record**.
    2.  Specify the following settings:
        -   **Reason Code**: `PHYINVADJ`
        -   **Description**: `Physical Inventory Adjustment`
        -   **Usage**: *Adjustment*
        -   **Account**: *52000 - Physical Inventory Adjustments*
    3.  On the form toolbar, click **Save**.

You have created reason codes for direct inventory operations.

**Tip:** Now you can configure basic inventory preferences, as described in [Configuration of Order Management: Implementation Activity](../ImplementationGuide/config_InvMgmt_Basic_Implem_Activity.md)

## Step 2: Creating a Reason Code for Vendor Returns { .section}

To create a reason code for vendor returns, do the following:

1.  On the form toolbar of the [Reason Codes](CS_21_10_00.md) \(CS211000\) form, click **Add New Record**.
2.  Specify the following settings:
    -   **Reason Code**: `VENDORRET`
    -   **Description**: `Vendor Return`
    -   **Usage**: *Vendor Return*
3.  On the form toolbar, click **Save**.

You have created a reason code for vendor returns.

**Tip:** Now you can configure sales order types as the next stage of preparing the system to configuration of order management. For details, see [Sales Order Types](../ImplementationGuide/config_Sales_Order_Types_Mapref.md).

## Activity Recap { .section}

In this activity, we have illustrated how the implementation manager has done the following:

1.  Created reason codes for direct inventory operations
2.  Created a reason code for vendor returns

**Parent topic:**[Creating Reason Codes for Inventory Transactions](../UserGuide/Reason_Codes_Mapref.md)

