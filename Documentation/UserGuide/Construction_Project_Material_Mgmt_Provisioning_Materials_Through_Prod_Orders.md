# Project Material Management: Provisioning Materials Through Production Orders

If a project requires a stock item that needs to be manufactured, you can use a production order to supply the corresponding project material. You can create a production order from the project material demand or link an existing production order to the project material line.

As production progresses, the quantities on the project material line are updated based on the linked production order. You can use the [Project Materials](PM_30_65_00.md) \(PM306500\) form to monitor the quantity assigned to production, completed quantities, the quantity that remains to be produced, and the quantity available for dispatch to the project.

**Attention:** This functionality is available only if the *Manufacturing* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Selecting Production as the Provisioning Source

On the [Project Materials](PM_30_65_00.md) \(PM306500\) form, you select *Production Order* in the **Provisioning Source** column for a stock item that will be manufactured for the project.

For a stock item for which the **Make to Order** check box is selected on the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the system selects *Production Order* automatically. For other stock items, the default provisioning source is *None*.

You can change the provisioning source while the project material line remains eligible for procurement planning.

If *Production Order* is selected as the provisioning source, you cannot select *Free Stock* as the inventory source for the material line.

## Creating a Production Order for a Project Material

To create a production order for a project material, on the [Project Materials](PM_30_65_00.md) \(PM306500\) form, click **Create Provisioning Doc.** and then click **Create Production Order**. The system opens the [Create Production Orders](AM_51_00_00.md) \(AM510000\) form in a new browser tab.

When you open the [Create Production Orders](AM_51_00_00.md) form in this way, the system uses the originating project to filter the production demand. The form includes project material lines that meet all of the following conditions:

-   The project is active.
-   *Production Order* is selected as the provisioning source.
-   The material line has the *Pending Procurement* status.
-   The material line is not already linked to production supply.

The quantities of project material demand on this form are displayed in the base unit of measure of the inventory item. If a project material line uses a different unit of measure, the system converts its quantity to the base unit.

You can review project material demand together with other supported production demand on the [Create Production Orders](AM_51_00_00.md) form. You can use the **Document Type**, **Order Type**, and **Document ID** boxes to limit the displayed records to a particular demand source or originating document. The **Document Type** and **Document** columns identify the source of each demand record.

To create production orders for selected project material lines, select the lines and click **Process**. To create production orders for all eligible lines, click **Process All**.

The processing dialog box displays the **Document Type** and **Document ID** for each processed record so that you can identify the originating demand.

## Settings of the Created Production Order

When the system creates a production order from project material demand, it copies the following settings to the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form:

-   **Project**
-   **Project Task**
-   **Cost Code**
-   **Due Date**
-   **Update Project**

The **Update Project** check box is read-only. The system selects this check box for project-related demand so that the production costs update the project's work-in-process \(WIP\) cost.

If the project has *Track by Location* selected in the **Inventory Tracking** box on the [Projects](PM_30_10_00.md) \(PM301000\) form, the system uses the warehouse location configured for the matching project and project task. If no matching project location has been configured, the system uses the default warehouse location of the production order.

Before the system can create the production order, the applicable WIP account must be included in an account group on the [Account Groups](PM_20_10_00.md) \(PM201000\) form. If the WIP account is not included in an account group, the system prevents the creation of the production order and identifies the account that needs to be added.

When the production order is created, its reference number is displayed in the **Provisioning Doc. Ref. Nbr.** column of the originating project material line.

## Tracking the Production of Project Materials

After a production order has been linked to a project material line, the [Project Materials](PM_30_65_00.md) \(PM306500\) form reflects changes in the production quantities as manufacturing progresses.

When the production order is created, the project material line reflects the quantity assigned to production. As completed quantities are reported for the final operation of the production order, the system:

-   Updates the procured and available quantities of the project material
-   Reduces the quantity that remains in production
-   Adjusts these quantities if a completed production quantity is reversed

When the required quantity has been produced, the project material line can progress to the *Ready for Dispatch* status. As the manufactured items are issued and shipped to the project, the system updates the dispatched quantities.

If the completed quantity exceeds the planned quantity of the linked production order, the excess quantity is not allocated to the project material line.

## Reviewing Production Details

You can click the production order reference in the **Provisioning Doc. Ref. Nbr.** column to open the linked production order.

You can also review production activity related to a project material line. On the *Linked Documents* side panel of the [Project Materials](PM_30_65_00.md) form, select *Production* in the **Document Type** box to view the move and labor transactions associated with the final operation of the linked production order. Partial production transactions are displayed separately, and reversal transactions remain available for review.

The **Line Details** dialog box displays the linked production order, the completed production quantities, and the remaining quantity that can be allocated from available inventory. For a material line whose provisioning source is *Production Order*, you cannot manually add, delete, or change quantities in this dialog box.

## Reviewing Production Demand and Supply

Production-sourced project materials are reflected in inventory planning as both material demand and production supply.

The system uses the following allocation types for these materials:

|Allocation Type|Description|
|---------------|-----------|
|*Material to Production*|Project material demand that will be fulfilled through a linked production order.|
|*Production for Material Prepared*|Supply from a linked production order that is on hold or planned.|
|*Production for Material*|Supply from a linked production order that has been released or is in process.|

You can review these allocation types on the [Inventory Allocation Details](IN_40_20_00.md) \(IN402000\) form. The allocation quantities are updated as the linked production order progresses, including when production is partially completed or a completed quantity is reversed.

To include the applicable production demand and supply in inventory availability calculations, select the **Include Qty. of Production for Material and Material to Production** check box on the [Availability Calculation Rules](IN_20_15_00.md) \(IN201500\) form.

You can also review the production-related allocation types on the [Inventory Summary](IN_40_10_00.md) \(IN401000\) and [Matrix Inventory Summary](IN_40_15_00.md) \(IN401500\) forms.

The *Material to Production*, *Production for Material Prepared*, and *Production for Material* allocation types are not included in material requirements planning \(MRP\) or distribution requirements planning \(DRP\).

## Changing a Linked Production Order

The system keeps the linked production order and the originating project material line synchronized.

If you change the production quantity on the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form, the system updates the corresponding project material quantities. An increase in the production quantity increases the quantity assigned to production. If production has already started, the additional quantity is reflected in the quantity that remains to be produced.

You can also decrease the production quantity as long as the new quantity is not less than the quantity already completed. The system recalculates the quantity that remains in production while preserving the completed quantity already reported.

You can increase the required quantity directly on the project material line. If the new required quantity exceeds the **Qty. to Produce** of the linked production order, the system prevents the change.

If the new required quantity does not exceed **Qty. to Produce**, you need to confirm the change before saving the project material line. The change updates only the project material line; the system does not automatically change **Qty. to Produce** on the linked production order. If the additional quantity also needs to be produced, you can change the production order quantity separately.

The production order remains linked to the project material line throughout these quantity changes.

## Restrictions on Linked Production Orders

While a project material line is linked to a production order, the following restrictions apply:

-   You cannot change the warehouse or unit of measure on either the project material line or the linked production order.
-   You cannot complete or cancel the project material line while the linked production order is in process.
-   A production order cannot be linked to a project that already has a project material line for the same stock item.
-   A production order that is linked to a project material line cannot also be linked to a sales order.

A production order can no longer be unlinked from its project after the production order reaches an advanced status.

**Parent topic:**[Managing Project Materials](../UserGuide/Construction_Project_Materials_Mgmt_Mapref.md)

