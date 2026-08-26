# Project Material Management: Creation of a Material List {#_8a57f47e-f13e-4907-9dbc-564468862008 .concept}

You use the [Project Materials](PM_30_65_00.md) \(PM306500\) form to create the material list for a specific project. It serves as a centralized location for managing and tracking all the materials in one place—as well as for monitoring fulfillment as related documents are processed. From the form, you can also create a purchase order or material issue for a line.

## Creating a Project's Material List { .section}

To get started, you select a project on the [Project Materials](PM_30_65_00.md) \(PM306500\) form. The system shows the project’s basic information along with the budgeted quantities and costs of the materials. This information helps you connect material planning to the cost budget. Then on the **Details** tab, you populate the project's material lines by adding any of the following:

-   The project's cost budget lines
-   The associated project quote's estimation lines
-   Stock items that have been created on the [Stock Items](IN_20_25_00.md) \(IN202500\) form
-   Non-stock items that have been created on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form with the **Require Receipt** and **Require Shipment** check boxes selected on the **General** tab

The following sections describe each of these options, as well as the selection of provisioning sources for project materials.

## Adding Materials from Cost Budget Lines { .section}

If the project status is *In Planning* or *Active*, you can create or expand the project's material list based on cost budget lines.

To add the project's cost budget lines to the material list on the [Project Materials](PM_30_65_00.md) \(PM306500\) form:

1.  Click **Add Budget Lines**.
2.  In the dialog box that opens, select the needed cost budget lines.
3.  Click **Add Lines &amp; Close**.

If project costs aren’t budgeted at the item level—that is, the **Inventory ID** column has *N/A* on the **Cost Budget** tab of the [Projects](PM_30_10_00.md) \(PM301000\) form—this column remains empty in the added material lines on the [Project Materials](PM_30_65_00.md) form. In this case, you must add items directly to the material list.

## Adding Materials from Quote Estimation Lines { .section}

A project quote on the [Project Quotes](PM_30_45_00.md) \(PM304500\) form may have more detailed material requirements than the project budget. In this case, you can create the project's material list from the project quote's estimation lines; the system inserts the quote’s number in the **Quote Ref. Nbr.** box. If the project status is *In Planning* or *Active*, you can add items from the estimation lines to the [Project Materials](PM_30_65_00.md) \(PM306500\) form as follows:

1.  Click **Add Quote Lines** on the table toolbar.
2.  In the dialog box, select the unlabeled check boxes in the needed lines.
3.  Click **Add Lines &amp; Close**.

**Tip:** This dialog box shows only estimation lines with an expense account group assigned.

## Adding Stock or Non-Stock Items to the Project's Material List Directly { .section}

On the [Project Materials](PM_30_65_00.md) \(PM306500\) form, you can create or expand a project's material list by using the **Inventory Lookup** dialog box. This dialog box shows item availability across warehouses and locations and lets you add multiple stock and non-stock items at a time to the project materials. To add items in this way:

1.  Click the needed material line.
2.  Click **Add Items** on the table toolbar.
3.  In the **Inventory Lookup** dialog box, which opens, select items and specify their quantities.
4.  Click **Add &amp; Close**.
5.  Save your changes.

You can also add items manually by selecting them in the **Inventory ID** column.

## Selecting Provisioning Sources for Project Materials { .section}

Once material lines have been added on the [Project Materials](PM_30_65_00.md) \(PM306500\) form, you can specify how each item will be supplied:

-   Through material allocation from the available inventory in company warehouses
-   By purchasing materials and having them delivered to a company warehouse
-   By drop-shipping materials directly to the project site

You review the available item quantity in the **Qty. Available for Dispatch** column and select the needed option in the **Provisioning Source** column:

-   *None* \(default\): You leave this option if the item quantity is available in the warehouse; you can allocate the needed quantity for the project.
-   *Purchase to Order*: You need to purchase the item—that is, create a purchase order—and have the item delivered to a warehouse.
-   *Project Drop-Ship*: You need to drop-ship the item directly from the vendor to the project site—that is, create a project drop-ship order.

**Parent topic:**[Managing Project Materials](../UserGuide/Construction_Project_Materials_Mgmt_Mapref.md)

