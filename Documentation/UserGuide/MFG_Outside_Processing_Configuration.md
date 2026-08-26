# Outside Processing: Configuration {#_534cebcd-130a-4e82-b7a2-4b4e80f19b7b .concept}

Acumatica ERP Manufacturing Edition provides you with the ability to configure and use outside processing within the production process. This topic describes the configuration of outside processing in the system.

## Configuration of Outside Processing { .section}

To configure outside processing, you perform the following general steps:

1.  On the [Numbering Sequences](CS_20_10_10.md) \(CS201010\) form, you create the numbering sequence for vendor shipments.
2.  On the [Production Preferences](AM_10_20_00.md) \(AM102000\) form, you specify the numbering sequence in the **Vendor Shipment Numbering Sequence** box in the **Numbering Settings** section of the **General** tab.
3.  On the [Vendors](AP_30_30_00.md) \(AP303000\) form, you create the needed vendors who will represent subcontractors.
4.  On the [Overhead](AM_20_25_00.md) \(AM202500\) form, you create any needed records for additional costs to be applied to the outside operation. For details, see [Configuring Production Cost Drivers: Implementation Activity](../ImplementationGuide/config_MFG_Production_Cost_Drivers_Implem_Activity.md).
5.  On the [Work Centers](AM_20_70_00.md) \(AM207000\) form, you create at least one work center for outside processing. The work center must have the **Outside Process** check box selected in the Summary area. For more information, see the *Work Centers for Outside Processing* section below.
6.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) or [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form, you create the needed stock items or non-stock items that you will use to pay the subcontractor for their services. For details, see [Outside Processing: Charges for Subcontractor Services](MFG_Outside_Processing_Subcontractor_Charges.md).
7.  On the [Bill of Material](AM_20_80_00.md) \(AM208000\) form, you create the needed bills of material that you will use for production orders with outside processing operations. For more information, see the *Bills of Material with Outside Operations* section below.
8.  On the [Warehouses](IN_20_40_00.md) \(IN204000\) form, you create the warehouses or warehouse locations to be involved in outside processing if any materials for the outside operations will be stored by the subcontractor and if you would like to track the availability and movement of the materials. For more information, see [Outside Processing: Subcontractor's Storage of Materials](MFG_Outside_Processing_Material_Delivery.md).

## Work Centers for Outside Processing {#section_pbm_2xs_vrb .section}

When you create a work center for subcontractors, you specify the settings on the [Work Centers](AM_20_70_00.md) \(AM207000\) form as follows:

-   In the Summary area, you select the **Outside Process** check box.
-   In the **Standard Cost** box, you type `0`. With this setting, the system will not add labor costs when a production manager records the completion of the outside operation.
-   We recommend that you select the **Backflush Materials** check box. Because the work is performed outside your organization, recording issued materials may not be feasible. On release of the move transaction for the outside operation, the system will also issue materials to the production record.
-   On the **Shifts** tab, you specify the following settings for the automatically added shift:

    -   **Crew Size**: *0*
    -   **Efficiency**: *1*
    -   **Calendar**: Your standard calendar
    You leave the default values for the other settings.

-   On the **Overhead** tab, you specify any additional costs to be applied to the outside processing.

For details on creating work centers, see [Configuring Work Centers: Implementation Activity](../ImplementationGuide/config_MFG_Work_Centers_Implem_Activity.md).

## Bills of Material with Outside Operations { .section}

If you are tracking outside operations within the production process, we recommend that you create production orders that include outside operations. You need to create bills of material on which the production orders will be based. If you produce an item either by using subcontractor services or by involving the production facilities of your organization, you can create two bills of material for the same item: one with the outside operation and one without it. For more information about creating bills of material, see [Bills of Material: Implementation Activity](BOM_Implem_Activity.md).

To add an outside operation to the bill of material \(which must be on hold\), you do the following on the [Bill of Material](AM_20_80_00.md) \(AM208000\) form:

1.  In the Operations table, you add a row for the outside operation.
2.  In the **Work Center** column, you select a work center for which the **Outside Process** check box is selected on the [Work Centers](AM_20_70_00.md) \(AM207000\) form.
3.  You specify the time for the operation as follows:
    -   If the time required for the outside operation is fixed, you specify the time in the **Queue Time** column.
    -   If the time varies, you specify the run time and the run units in the corresponding columns.
4.  On the **Materials** tab, you add rows for the materials, specify the *Subcontract* material type. You select the subcontract source as follows, depending on the nature of the materials:
    -   *Ship to Vendor*: Materials that are stored at your facility and will be shipped to the subcontractor. You record the shipping of the materials by creating vendor shipments related to production orders on the [Vendor Shipments](AM_31_00_00.md) \(AM310000\) form.
    -   *Purchase*: The material lines represent subcontractor charges you will pay by using purchase orders. You create purchase orders for these lines on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form. To indicate that the subcontractor completed the operation, you create a move transaction for the outside operation by using the [Move](AM_30_20_00.md) \(AM302000\) form. If the item is not backflushed, you must create and release a material transaction before the move transaction to apply the subcontracting costs.
    -   *Purchase and Move*: The material line represents subcontractor charges you will pay by using purchase orders. You create purchase orders for this line on the [Purchase Orders](PO_30_10_00.md) form. For the *Purchase and Move* subcontract source, the system automatically generates and releases a move transaction when you release the related purchase receipt. If the item is not backflushed, you must create and release a material transaction to apply the subcontracting costs. For details, see [Outside Processing: Automatic Move Transaction](MFG_Outside_Processing_Purchase_and_Move.md).
    -   *Vendor Supplied*: Materials that the subcontractor will purchase on its own \(optional\). The system does not include the cost of these materials in the cost of the produced item. You can add rows for these materials for informational purposes.
    -   *Drop Ship*: Materials that are sent to the subcontractor directly from a vendor \(optional\). The system does not include the cost of these materials in the cost of the produced item. You can add rows for these materials for informational purposes.
5.  On the **Outside Process** tab, you make sure that the **Outside Process** check box is selected and specify the subcontractor in the **Vendor** box.

**Parent topic:**[Producing Items with Outside Processing](../UserGuide/MFG_Outside_Processing_Mapref.md)

