# Project Inventory Tracking: To Track Project Inventory by Quantity and Cost {#_cc1deed0-28f4-42ad-a99d-1a3768b903cd .task}

The following activity will walk you through the process of tracking the costs and quantities of the items being used for a project.

**Attention:** This activity is based on the *U100* dataset. If you are using another dataset or if any system settings have been changed in *U100*, these changes can affect the workflow of the activity and the results of the processing. To avoid issues, restore the *U100* dataset to its initial state.

## Story {#section_o3z_pn2_yrb .section}

Suppose that the ToadGreen Building Group company is building a hotel for the Equity Group Investors customer. A ToadGreen project manager has created a project to track the progress of work, expenses, and revenues. The project work began in mid-February, 2026. To plan the purchases of items and be sure that there will be enough materials to proceed, the project manager needs to reserve stock items for this particular project. Also, because of regulatory requirements, the materials used for work must be issued at the exact cost at which they have been purchased.

On January 30, 2026, the project manager purchased 360 pallets of bricks and 480 concrete blocks and requested that the items be delivered to the company's warehouse. Later, a project architect revised the blueprints and found out that the initial estimation of materials was insufficient. As a result, the project manager decided to buy 120 pallets of bricks and 80 concrete blocks in addition to the previous purchase. To speed up the process, the construction project manager decided to purchase the materials from another vendor, who agreed to deliver the materials in two days but at a higher price. Then some of the purchased materials were shipped to the project site.

Acting as a construction project manager, you will process a purchase of items for the project. Then you will issue the quantity of the purchased items that were shipped to the project site, and review the cost of the project items.

## Configuration Overview {#section_rjp_wkc_vrb .section}

In the *U100* dataset, the following tasks have been performed to support this activity:

-   On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the following features have been enabled:
    -   *Projects* and *Construction*, which provide support for construction projects
    -   *Inventory and Order Management*, which provides the sales order and purchase order functionality
    -   *Inventory*, which provides the stock item functionality
    -   *Project-Specific Inventory*, which provides enhanced capabilities for tracking project inventory
-   On the [Customers](AR_30_30_00.md) \(AP303000\) form, the *EQUGRP* customer has been created.
-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the *CONCRBK8* and *REDBRICK* stock items have been defined.
-   On the [Vendors](AP_30_30_00.md) \(AP303000\) form, the *CONCRESUP* and *STONEC* vendors have been created.
-   On the [Projects](PM_30_10_00.md) \(PM301000\) form, the *HOTELR* project has been created and activated. In the project, *Track by Project Quantity and Cost* is selected as the inventory tracking mode.

## Process Overview { .section}

On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, you will create two purchase orders with lines related to the project. You will receive the purchased items to a company's warehouse by processing purchase receipts on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form. Then you will process an inventory issue transaction on the [Issues](IN_30_20_00.md) \(IN302000\) form to record that a partial quantity of the materials has been used for the project.

## System Preparation {#section_vvm_zp2_xrb .section}

Before you start creating a project and processing a purchase, do the following:

1.  Launch the Acumatica ERP website, and sign in as a construction project manager. You should sign in by using the *ewatson* username and the *123* password.
2.  In the info area, in the upper-right corner of the top pane of the Acumatica ERP screen, make sure that the business date in your system is set to 1/30/2026. If a different date is displayed, click the Business Date menu button, and select 1/30/2026 on the calendar. For simplicity, in this activity, you will create and process all documents in the system on this business date.

## Step 1: Purchasing Project Inventory {#section_kgb_bq2_xrb .section}

To create and process purchase orders for the project, do the following:

1.  On the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form, create a new record.
2.  In the Summary area, specify the following settings:
    -   **Type**: *Normal*
    -   **Vendor**: *CONCRESUP*
    -   **Project**: *HOTELR*
    -   **Description**: `Purchase of project materials (masonry)`
    -   **Date**: *1/30/2026*
3.  On the **Details** tab, add a purchase order line, and specify the following settings in the added line:
    -   **Inventory ID**: *REDBRICK*
    -   **Warehouse**: *TGCONSTR* \(inserted automatically\)
    -   **Order Qty.**: `360`
    -   **Unit Cost**: `75`
    -   **Project**: *HOTELR* \(inserted automatically\)
    -   **Project Task**: *04*
    -   **Cost Code**: `04-210`
4.  Add one more purchase order line, and specify the following settings in the added line:
    -   **Inventory ID**: *CONCRBK8*
    -   **Warehouse**: *TGCONSTR* \(inserted automatically\)
    -   **Order Qty.**: `480`
    -   **Unit Cost**: `180`
    -   **Project**: *HOTELR* \(inserted automatically\)
    -   **Project Task**: *04*
    -   **Cost Code**: `04-220`
5.  On the form toolbar, click **Remove Hold**. Then click **Enter PO Receipt**. The [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form opens with the purchase receipt.
6.  On the form toolbar of the [Purchase Receipts](PO_30_20_00.md) form, click **Release**.
7.  Set the business date to 2/15/2026.
8.  On the [Purchase Orders](PO_30_10_00.md) form, create one more purchase order, and specify the following settings in the Summary area:
    -   **Vendor**: *STONEC*
    -   **Description**: `Purchase of project materials (masonry)`
    -   **Project**: *HOTELR*
    -   **Date**: 2/15/2026
9.  On the **Details** tab, add a purchase order line, and specify the following settings in the added line:
    -   **Inventory ID**: *REDBRICK*
    -   **Warehouse**: *TGCONSTR* \(inserted automatically\)
    -   **Order Qty.**: `120`
    -   **Unit Cost**: `85`
    -   **Project**: *HOTELR* \(inserted automatically\)
    -   **Project Task**: *04*
    -   **Cost Code**: `04-210`
10. Add one more purchase order line, and specify the following settings in the added line:
    -   **Inventory ID**: *CONCRBK8*
    -   **Warehouse**: *TGCONSTR* \(inserted automatically\)
    -   **Order Qty.**: `80`
    -   **Unit Cost**: `195`
    -   **Project**: *HOTELR* \(inserted automatically\)
    -   **Project Task**: *04*
    -   **Cost Code**: `04-220`
11. On the form toolbar, click **Remove Hold**. Then click **Enter PO Receipt**. The [Purchase Receipts](PO_30_20_00.md) form opens with the purchase receipt.
12. On the form toolbar of the [Purchase Receipts](PO_30_20_00.md) form, click **Release**.

## Step 2: Issuing Stock Items for the Project {#section_ycp_pj2_xrb .section}

To directly issue stock items for the project \(to record that some of the materials have been delivered to the project site\) and capture the issued cost to the project, do the following:

1.  On the [Issues](IN_30_20_00.md) \(IN302000\) form, add a new record.
2.  In the Summary area, type `Materials issued at project site` in the **Description** box.
3.  On the table toolbar of the **Details** tab, click **Add Row**, and in the row, specify the following settings:
    -   **Tran. Type**: *Issue*
    -   **Inventory ID**: *REDBRICK*
    -   **Warehouse**: *TGCONSTR* \(inserted automatically\)
    -   **Location**: *R01*
    -   **Quantity**: `160`
    -   **Unit Price**: `75`
    -   **Reason Code**: *INISSUEPROJ*
    -   **Inventory Source**: *Project Stock*
    -   **Project**: *HOTELR*
    -   **Project Task**: *04*
    -   **Cost Code**: *04-210*
4.  On the table toolbar of the **Details** tab, click **Add Row**, and in the row, specify the following settings:
    -   **Tran. Type**: *Issue*
    -   **Inventory ID**: *CONCRBK8*
    -   **Warehouse**: *TGCONSTR* \(inserted automatically\)
    -   **Location**: *R01*
    -   **Quantity**: `200`
    -   **Unit Price**: `180`
    -   **Reason Code**: *INISSUEPROJ*
    -   **Inventory Source**: *Project Stock*
    -   **Project**: *HOTELR*
    -   **Project Task**: *04*
    -   **Cost Code**: *04-220*
5.  Save the inventory issue transaction.

    In the table footer, notice that the system shows the quantities of the items that are currently available for the project.

6.  On the form toolbar, click **Release** to release the inventory issue transaction.
7.  Open the [Project Transaction Details](PM_40_10_00.md) \(PM401000\) form.
8.  In the Summary area, specify *HOTELR* as the **Project** and *04* as the **Project Task**. Review the lines in the table, which are the project transactions that have been generated on release of the inventory issue. The amount of the line with the *REDBRICK* item is $12,400. The amount of the line with the *CONCRBK8* item is $36,428.57. The generated project transactions have debited the *MATERIAL* account group.
9.  On the [Projects](PM_30_10_00.md) \(PM301000\) form, open the *HOTELR* project.
10. On the **Cost Budget** tab, make sure that new lines with the *04-210* and *04-220* cost codes have been added to the cost budget. The actual values in these lines have been specified based on the amounts of the project transaction lines.

You have issued a partial quantity of the stock for a project and recorded expenses.

**Parent topic:**[Tracking Project Inventory](../UserGuide/Projects_Inventory_Tracking_Mapref.md)

