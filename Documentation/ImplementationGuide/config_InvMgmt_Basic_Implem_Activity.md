# Configuration of Order Management: Implementation Activity {#_00568016-4501-4fbe-8a5b-c368af01e57d .task}

In this implementation activity, you will learn how to prepare the system to support the tracking of inventory and the processing of sales and purchase orders with stock items.

**Attention:**

The following activity is based on the *U100 Basic Company* dataset. If you are using another dataset, or if any system settings have been changed in *U100 Basic Company*, these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the *U100 Basic Company* dataset to its initial state.

If you want to perform this activity in an out-of-the-box company instead of creating a tenant with the dataset, you need to prepare a company with the basic settings, as described in [Company Without Branches: General Information](../Shared/../ImplementationGuide/config_Basic_Company_GeneralInfo.md).

## Story { .section}

Suppose that you are an implementation manager for the SweetLife Fruits &amp; Jams company, and you need to configure the system for the processing of sales and purchases of stock items through orders.

## Process Overview { .section}

In this activity, you will do the following:

1.  Configure inventory preferences on the [Inventory Preferences](../UserGuide/IN_10_10_00.md) \(IN101000\) form
2.  Configure sales order preferences on the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form
3.  Configure purchase order preferences on the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form
4.  Review the company's units of measure on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form
5.  Configure inventory control accounts on the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form

## System Preparation { .section}

Before you start configuring the inventory and order management functionality, you should do the following:

1.  Launch the Acumatica ERP website with the *U100 Basic Company* dataset preloaded, and sign in to the system as implementation manager Kimberly Gibbs by using the *gibbs* username and the *123* password.
2.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, make sure that the *Inventory and Order Management* and *Inventory* features are enabled.
3.  On the [Reason Codes](../UserGuide/CS_21_10_00.md) \(CS211000\) form, create and save the reason codes that are required for configuring inventory and order management, as described in [Reason Codes: Implementation Activity](../UserGuide/Reason_Codes_Implem_Activity.md).
4.  On the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form, activate at least the *SO* order type, as described in [Sales Order Types: To Activate the SO Order Type](config_Sales_Order_Types_To_Activate_SO_Order_Type.md).

## Step 1: Configuring Inventory Preferences { .section}

To configure the inventory functionality, do the following:

1.  Open the [Inventory Preferences](../UserGuide/IN_10_10_00.md) \(IN101000\) form.
2.  In the **Default Reason Codes** section of the **General** tab, specify the following settings:
    -   **Receipt Reason Code**: *INRECEIPT*
    -   **Issue/Return Reason Code**: *INISSUE*
    -   **Adjustment Reason Code**: *INADJUST*
    -   **Phys. Inventory Reason Code**: *PHYINVADJ*
3.  In the **Posting Settings** section, select the **Update GL** check box.
4.  In the **Data Entry Settings** section, clear the **Hold Documents On Entry** and **Validate Document Totals on Entry** check boxes.
5.  On the form toolbar, click **Save**.

## Step 2: Configuring Sales Order Preferences { .section}

To configure the sales order functionality, do the following:

1.  Open the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form.
2.  In the **Data Entry Settings** section of the **General** tab, make sure that *SO* is selected in the **Default Sales Order Type** box. This is the predefined sales order type used for the processing of stock items with shipping.
3.  In the **Shipment Settings** section, clear the **Hold Shipments on Entry** and **Validate Shipment Total on Confirmation** check boxes.
4.  In the **Invoice Settings** section, clear the **Hold Invoices on Failed Credit Check** check box.
5.  In the **Posting Settings** section, select the **Automatically Release IN Documents** check box.
6.  On the form toolbar, click **Save**.

## Step 3: Configuring Purchase Order Preferences { .section}

To configure the purchase order functionality, do the following:

1.  Open the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form.
2.  In the **Validate Total on Entry** section of the **General** tab, make sure that the **For Normal and Standard Orders** and **For Receipts** check boxes are cleared.
3.  In the **Other** section, specify *VENDORRET* as the **PO Return Reason Code**.
4.  Select the **Release IN Documents Automatically** and **Release AP Documents Automatically** check boxes.
5.  Clear the **Hold Receipts on Entry** check box.
6.  On the form toolbar, click **Save**.

## Step 4: Reviewing the Company’s UOMs { .section}

To review the settings of the company’s units of measure \(UOMs\), do the following:

1.  Open the *SWEETLIFE* company on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form.
2.  In the **Miscellaneous Settings \(Shared\)** section of the **Company Details** tab, make sure that *KG* has been specified in the **Weight UOM** box and *LITER* in the **Volume UOM** box.

## Step 5: Reviewing Inventory Control Accounts { .section}

To review the control accounts needed for inventory operations, do the following:

1.  Open the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form.
2.  Search for the *12100* account that has *Inventory Asset* in the **Description** column.

    **Tip:** To search for a record in a list or records, you can enter a text string in the Search box of the filtering area. The system will find all the records that match your search criteria and display these records in the table.

3.  In the **Control Account Module** column for the *12100 - Inventory Asset* account, make sure that *IN* is specified.
4.  Search for the *20100* account that has *Inventory Purchase Accrual* in the **Description** column.
5.  In the **Control Account Module** column for the *20100 - Inventory Purchase Accrual* account, make sure that *PO* is specified.

You have configured the basic inventory and order management functionality. Now you can proceed with configuring inventory entities.

## Activity Recap { .section}

In this activity, we have illustrated how the implementation manager has done the following:

1.  Configured the basic settings of inventory documents, sales orders, and purchase orders
2.  Reviewed the company’s UOMs
3.  Configured control accounts for inventory operations

**Parent topic:**[Order Management with Inventory](../ImplementationGuide/config_InvMgmt_Basic_Mapref.md)

