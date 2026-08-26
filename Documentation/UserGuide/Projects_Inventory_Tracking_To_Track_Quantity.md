# Project Inventory Tracking: To Track Project Inventory by Quantity {#_b6879344-4591-4907-9b2c-5daaaf07285e .task}

The following activity will walk you through the process of managing project inventory with tracking of quantities of the items being purchased or sold for a project.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_lrl_4n2_yrb .section}

Suppose that the Thai Food Restaurant customer has ordered juicer installation from the SweetLife Fruits &amp; Jams company for the newly opened restaurant: two juicers will be installed this month, and three more next month. As has been agreed upon with the customer, the customer will pay $2,900 for the installation of each juicer, which includes the cost of the juicer and the cost of installation services with a 20% markup.

On January 30, 2026, the SweetLife project accountant created a project to handle the tracking and billing of the juicer and the provided services. Then the project accountant ordered five juicers to be installed, costing $2,000 each, from the Squeezo Inc. vendor. The juicers have been delivered to SweetLife’s warehouse to be stored until the work is started. The project accountant needs to be sure that the juicers will be reserved for the project and will not be sold or used for any other project. Further suppose that on February 15, 2026, the first stage of work has been completed: two juicers have been delivered and installed at the customer’s place.

Acting as the project accountant, you will purchase the project-specific items. Then you will issue the items from inventory for the project and record expenses to the project.

## Configuration Overview {#section_rjp_wkc_vrb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Projects*, which provides the project management functionality
    -   *Project-Specific Inventory*, which provides enhanced capabilities for tracking project inventory
    -   *Inventory and Order Management*, which provides the sales order and purchase order functionality
    -   *Inventory*, which provides the stock item functionality
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *SQUEEZO* vendor has been created.
-   On the [Customers](AR_30_30_00.md) \(AP303000\) form, the *TOMYUM* customer has been created.
-   On the [Projects](PM_30_10_00.md) \(PM301000\) form, the *TOMYUM14* project has been created and activated. In the project, *Track by Project Quantity* is selected as the inventory tracking mode.

## Process Overview {#section_pfw_xf2_xrb .section}

On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, you will create a purchase order with the lines related to the project. You will receive the purchased items to a company's warehouse by processing a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form. Then you will process an inventory issue transaction on the [Issues](IN_30_20_00.md) \(IN302000\) form to record that two juicers have been used for the first phase of the project.

## System Preparation {#section_z5s_cf2_xrb .section}

Before you start creating a project and processing a purchase, do the following:

1.  Launch the Acumatica ERP website, and sign in as a project manager. You should sign in by using the *brawner* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to 1/30/2026. If a different date is displayed, click the Business Date menu button, and select 1/30/2026 on the calendar. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Purchasing Project Inventory { .section}

To process a purchase order for the project, do the following:

1.  On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Normal*
    -   **Vendor**: *SQUEEZO*
    -   **Project**: *TOMYUM14*
    -   **Description**: `Purchase of juicers for the project`
    -   **Date**: *1/30/2026*
3.  On the **Details** tab, add a purchase order line, and specify the following settings in the added line:
    -   **Inventory ID**: *JUICER15*
    -   **Warehouse**: *EQUIPHOUSE* \(specified automatically\)
    -   **Order Qty.**: `2`
    -   **Unit Cost**: `2,000` \(specified automatically\)
    -   **Project**: *TOMYUM14* \(inserted automatically\)
    -   **Project Task**: *PHASE1*
    -   **Cost Code**: `00-000`
4.  Add one more purchase order line, and specify the following settings in the added line:
    -   **Inventory ID**: *JUICER15*
    -   **Warehouse**: *EQUIPHOUSE* \(specified automatically\)
    -   **Order Qty.**: `3`
    -   **Unit Cost**: `2,000` \(specified automatically\)
    -   **Project**: *TOMYUM14* \(inserted automatically\)
    -   **Project Task**: *PHASE2*
    -   **Cost Code**: `00-000`
5.  On the form toolbar, click **Remove Hold**. Then click **Enter PO Receipt** to create a purchase receipt for the purchase order.
6.  On the form toolbar of the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form, which opens with the created purchase receipt, click **Release**.

## Step 2: Issuing a Stock Item for the Project {#section_ycp_pj2_xrb .section}

To directly issue stock items for the project \(to record that two juicers have been delivered to the customer\) and capture the issued cost to the project, do the following:

1.  Open the [Issues](IN_30_20_00.md) \(IN302000\) form.
2.  On the form toolbar, click **Add New Record**, and in the Summary area, type `Two juicers sent to project site` in the **Description** box.
3.  In the **Date** box, select 2/15/2026.
4.  On the table toolbar of the **Details** tab, click **Add Row**, and in the row, specify the following settings:
    -   **Tran. Type**: *Issue*
    -   **Inventory ID**: *JUICER15*
    -   **Warehouse**: *EQUIPHOUSE* \(specified automatically\)
    -   **Quantity**: `2`
    -   **Unit Price**: `2,500` \(specified automatically\)
    -   **Reason Code**: *INISSUEPROJ*
    -   **Inventory Source**: *Project Stock*
    -   **Project**: *TOMYUM14*
    -   **Project Task**: *PHASE1*
    -   **Cost Code**: *00-000*
5.  Save the inventory issue transaction, and release it.
6.  Open the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form.
7.  In the Summary area, specify *TOMYUM14* as the **Project**, and make sure the other boxes are cleared. Review the only line in the table, which is the project transaction that has been generated on release of the inventory issue. The amount of the transaction in the **Amount** column is $4,000. This is the total cost of the items, which is recorded as project expenses when material is issued from the inventory. The generated project transaction has debited the *MATERIAL* account group, to which the expense account of the stock item is mapped.
8.  On the [Projects](PM_30_10_00.md) \(PM301000\) form, open the *TOMYUM14* project.
9.  On the **Cost Budget** tab, make sure that the line with the *PHASE1* project task and the *JUICER15* inventory item was created based on the inventory issue you have released. The actual amount of the line is *4,000*, which is the amount of the related project transaction, and the actual quantity is *2*.

You have recorded expenses to the project.

**Parent topic:**[Tracking Project Inventory](../UserGuide/Projects_Inventory_Tracking_Mapref.md)

