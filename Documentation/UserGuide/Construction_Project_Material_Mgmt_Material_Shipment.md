# Project Material Management: Movement of Materials to the Project Site

When you're ready to record the movement of materials from your warehouse to the project site, you create a material issue: a document of the *Material Issue* type on the [Shipments](SO_30_20_00.md) \(SO302000\) form.

## Creation of a Material Issue

To create a material issue, you do the following on the [Project Materials](PM_30_65_00.md) \(PM306500\) form:

1.  Select the unlabeled check box in the needed material lines.
2.  Click **Create Material Issue** on the form toolbar.
3.  In the dialog box that opens, check the date of the material issue and the warehouse.
4.  Click **OK**.

The system opens the material issue on the [Shipments](SO_30_20_00.md) form so that you can review and continue processing it.

**Tip:**

-   You can create multiple material issues for a single material line even if an existing material issue for the line hasn't yet been confirmed.
-   If you need to provide a pick list of the project materials to warehouse personnel, click **Print Pick List** on the More menu.

If the *Project-Specific Inventory* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can view the inventory source in the lines of a material issue on the [Shipments](SO_30_20_00.md) form. The **Inventory Source** column is hidden by default, but you can add it to the visible columns.

## Confirmation of the Material Issue

Once the material issue has been created for the material lines, the **Qty. on Dispatch** column is updated on the [Project Materials](PM_30_65_00.md) \(PM306500\) form. And when you confirm the material issue for the material lines, the following columns are updated:

-   **Qty. Dispatched**: The quantity issued from the warehouse to the project site
-   **Status**: *Completed*

**Tip:** In the **Qty. Used** column, you can enter actual quantity of materials used for the project.

When you confirm a material issue that includes a non-stock item with the **Require Shipment** check box selected on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, the system creates a project transaction on the [Project Transactions](PM_30_40_00.md) \(PM304000\) form. The transaction has the *PM* source and updates the actual cost in the corresponding project's cost budget line.

**Parent topic:**[Managing Project Materials](../UserGuide/Construction_Project_Materials_Mgmt_Mapref.md)

