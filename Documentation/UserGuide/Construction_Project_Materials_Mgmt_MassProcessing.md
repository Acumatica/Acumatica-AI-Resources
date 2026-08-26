# Project Material Management: Mass Processing {#_9b0c01be-e70c-463b-860e-487e2f74f5b0 .concept}

The following sections explain how to mass-confirm and print pick lists for multiple material issues—that is, shipments of the *Material Issue* type on the [Shipments](SO_30_20_00.md) \(SO302000\) form—to perform automated shipping operations and to mass-transfer items reserved for the project to free stock.

## Mass-Confirming Material Issues { .section}

Shipments can be confirmed in bulk. To confirm multiple material issues at a time, you open the [Process Shipments](SO_50_30_00.md) \(SO503000\) form and select the *Confirm Shipment* action, as well as any selection criteria for filtering the material issues. Then you select the unlabeled check boxes in the rows of the material issues to be processed and click **Process** on the form toolbar. The system confirms the selected material issues.

## Mass-Creating Pick Lists { .section}

For multiple material issues with the *Open* status, you can mass-create pick lists by using the [Create Pick Lists](SO_50_30_50.md) \(SO503050\) form. On this form, you select the needed action \(to create a single shipment, wave, or batch pick lists\) and click **Process** on the form toolbar.

## Mass-Printing Pick Lists { .section}

For multiple material issues with the *On Hold* and *Open* statuses, you can mass-print pick lists by using the [Process Shipments](SO_50_30_00.md) \(SO503000\) form. On this form, you select the *Print Pick List* action \(and any other needed selection criteria for filtering the material issues\), select the unlabeled check boxes in the rows of the material issues for which you need to print pick lists, and click **Process** on the form toolbar.

## Automated Shipping Operations { .section}

You can process a material issue similarly to processing a shipment on the [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\) and [Picking Worksheets](SO_30_25_00.md) \(SO302500\) forms. For details, see [Automated Shipping Operations: General Information](WMS_Ship_GeneralInfo.md) and [Batch Picking: General Information](WMS_Batch_Picking_GeneralInfo.md).

## Mass-Transferring Project Inventory {#section_nch_lkc_f2c .section}

When a project is finished, some project inventory may still be left unused in the project-specific cost layer. To quickly transfer all the leftover material back to free stock, while viewing the project on the [Projects](../Shared/../UserGuide/PM_30_10_00.md) \(PM301000\) form, you click **Transfer Inventory to Free Stock** on the More menu. The system opens the [Transfer Project Inventory to Free Stock](../Shared/../UserGuide/PM_50_80_00.md) \(PM508000\) mass-processing form. On this form, you select the unlabeled check boxes in the lines with the project-related stock items that you need to move from the project cost layer.

To run processing for only selected items, you select the unlabeled check boxes for the items and then click **Process** on the form toolbar. You can instead click **Process All** to transfer all the items listed in the table from project stock to free stock. The system creates and releases inventory transfer transactions on the [Transfers](../Shared/../UserGuide/IN_30_40_00.md) \(IN304000\) form that will move the stock from the project cost layer to the normal cost layer of the same warehouse and warehouse location.

**Parent topic:**[Managing Project Materials](../UserGuide/Construction_Project_Materials_Mgmt_Mapref.md)

