# Project Material Management: Transferring Materials Between Warehouses or Locations

Project materials may be stored far from the project site. You can create material transfers from the [Project Materials](PM_30_65_00.md) \(PM306500\) form to move the materials to the right warehouse or location before the work begins.

A *material transfer* is a document of the *Material Transfer* type on the [Shipments](SO_30_20_00.md) \(SO302000\) form. Like other shipments, a material transfer tracks goods moving where they need to be.

**Attention:** You can perform a material transfer if the project has the *In Planning* or *Active* status on the [Projects](PM_30_10_00.md) \(PM301000\) form.

## Moving Free Stock Between Warehouses: Transfer Creation

Suppose that you need to move project materials to a different warehouse and these materials aren't allocated to any project—that is, the inventory source is *Free Stock* in the lines on the [Project Materials](PM_30_65_00.md) \(PM306500\) form. You do the following for each needed material line on the **Details** tab:

1.  Select the unlabeled check box. \(You can select a line with the *None* or *Purchase to Order* provisioning source and the *Pending Procurement* or *Ready for Dispatch* status.\)
2.  Select the source warehouse in the **Warehouse** column.
3.  Select the destination warehouse in the **To Warehouse** column.
4.  Select the destination location in the **To Location** column.
5.  Fill in the **Project Task** and **Cost Code** columns.
6.  Click **Create Material Transfer** on the table toolbar.
7.  In the **Create Material Transfer** dialog box, which opens, review the settings and click **OK**.

    If the material lines you select have different source warehouses or different destination warehouses, you must select them in the dialog box.


The system creates the material transfer **only** for the selected combination of the source and destination warehouses. That is, if you're transferring materials between multiple warehouse combinations, repeat the process for each combination.

## Moving Materials Between Warehouses: Transfer Confirmation

When you complete the creation of the material transfer, it opens on the [Shipments](SO_30_20_00.md) \(SO302000\) form. In this document:

-   The shipment type is *Material Transfer*.
-   The destination warehouse and location have been copied from the [Project Materials](PM_30_65_00.md) \(PM306500\) form.
-   The **Project Task** and **Cost Code** columns are empty because the materials are being transferred to free stock, where they aren't related to any project.
-   The **Transferred Qty.** column shows material quantity to be moved.

When you're ready to confirm the movement of the project materials to the destination warehouse, you click **Confirm** on the form toolbar of the [Shipments](SO_30_20_00.md) form.

After the system generates and releases a single-step inventory transfer on the [Transfers](IN_30_40_00.md) \(IN301000\) form, the inventory transfer's link is inserted in the **Inventory Ref. Nbr.** box on the [Shipments](SO_30_20_00.md) form. The material transfer's status changes to *Completed*.

If you need to provide warehouse personnel with the list of transferred project materials, you click the **Print Material Transfer Confirmation** command on the More menu of the [Shipments](SO_30_20_00.md) form.

You can find the address and the contact of the destination warehouse on the **Addresses** tab of the [Shipments](SO_30_20_00.md) form. The address and contact are copied from the **Address** tab of the [Warehouses](IN_20_40_00.md) \(IN204000\) form; you can override them if the material transfer isn't completed.

## Viewing the Updated Material List

When the material transfer has been completed, you can review the updated project material list on the [Project Materials](PM_30_65_00.md) \(PM306500\) form:

-   **Warehouse**: The destination warehouse where the item is now available
-   **Qty. Procured**: The available quantity of the item
-   **Status**: *Ready for Dispatch*, meaning that the quantity has been received and is allocated for the line now

In the **Line Details** dialog box, you can view the location in which the item is allocated. To do this, add the **Alloc. Location** column to the visible columns. The column appears if the *Multiple Warehouse Locations* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Moving Project Stock Between Locations of a Warehouse

Suppose that you need to move a project's materials between locations of the same warehouse and these materials are allocated for this project—that is, the inventory source is *Project Stock* on the [Project Materials](PM_30_65_00.md) \(PM306500\) form. To create a material transfer, do the following for each needed material line on the **Details** tab:

1.  Select the unlabeled check box.
2.  Specify the same warehouse in both the **Warehouse** column and the **To Warehouse** column.
3.  Specify the destination location in the **To Location** column.
4.  Fill in the **Project Task** and **Cost Code** columns.
5.  Click **Create Material Transfer** on the table toolbar.
6.  In the dialog box, ensure that the source and destination warehouses are the same and click **OK**.

The material transfer opens on the [Shipments](SO_30_20_00.md) \(SO302000\) form with the same source and destination warehouses. The **Details** tab shows the project, project task, cost code, inventory source, and location copied from the [Project Materials](PM_30_65_00.md) form. While the material transfer is open but not yet confirmed, the material line's status is *In Transfer*.

When you confirm the material transfer, and a single-step inventory transfer is generated and released on the [Transfers](IN_30_40_00.md) \(IN301000\) form, the inventory transfer's link is inserted in the **Inventory Ref. Nbr.** box on the [Shipments](SO_30_20_00.md) form. The material transfer's status changes to *Completed*.

## Limitations

-   You can't create a material transfer directly from the [Shipments](SO_30_20_00.md) \(SO302000\) form; you must use the [Project Materials](PM_30_65_00.md) \(PM306500\) form as a starting point.
-   You can't process a material transfer for non-stock items on the [Project Materials](PM_30_65_00.md) form.
-   You can't process a partial material transfer, only full material transfers are supported.
-   You can't mass-process a material transfer on the following forms:
    -   [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\)
    -   [Picking Worksheets](SO_30_25_00.md) \(SO302500\)
    -   [Create Pick Lists](SO_50_30_50.md) \(SO503050\)

**Parent topic:**[Managing Project Materials](../UserGuide/Construction_Project_Materials_Mgmt_Mapref.md)

