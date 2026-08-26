# Inventory Planning with MRP: Process Details {#_df52b3c9-8026-4635-8df6-19de977d8e09 .concept}

When inventory planning is performed, the system analyzes particular data based on inventory planning settings and existing open documents that may influence the planning. In this topic, you will find information about how inventory planning works in Acumatica ERP Manufacturing Edition.

## Data Used in Inventory Planning { .section}

During inventory planning, the system analyzes the following documents:

-   Demand documents \(such as a sales order or forecast\), which generate demand for items or cause items to be issued from one of the company's warehouses
-   Supply documents \(such as a purchase order or transfer order\), which cause receiving items in one of the company's warehouses

The extended list of documents and data used in inventory planning is the following:

-   Forecasts on the [Forecast](AM_20_20_00.md) \(AM202000\) form
-   Sales orders on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form that are not processed to completion, including:
    -   Open transfer orders, with in-transit quantities considered as planned supply if the related shipments have the *Confirmed* status, indicating that goods have been dispatched from the source warehouse
    -   blanket sales orders
-   Shipments on the [Shipments](SO_30_20_00.md) \(SO302000\) form with items that have not been issued
-   Inventory on hand and unreleased inventory transactions, which include documents on the following forms:
    -   Issues on the [Issues](IN_30_20_00.md) \(IN302000\) form
    -   Receipts on the [Receipts](IN_30_10_00.md) \(IN301000\) form
    -   Documents on the [Adjustments](IN_30_30_00.md) \(IN303000\) form
-   MPS orders on the [Master Production Schedule](AM_20_10_00.md) \(AM201000\) form
-   Production orders that are not processed to completion on the [Production Order Details](AM_20_90_00.md) \(AM209000\) form
-   Purchase orders that are not processed to completion on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form
-   Two-step transfers between warehouses on the [Transfers](IN_30_40_00.md) \(IN304000\) form, if the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form
-   Kit assembly orders or kit disassembly orders on the [Kit Assembly](IN_30_70_00.md) \(IN307000\) form, if the *Kit Assembly* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form

You manage the set of entities included in planning at the warehouse level. For details, see [Inventory Planning Configuration: General Information](../ImplementationGuide/config_Inventory_Planning_GeneralInfo.md).

## Components Used for Inventory Planning { .section}

During inventory planning, the system analyzes which components of items to be produced will be needed and suggests creating purchase orders if it discovers any shortage. The system determines the needed components as follows:

-   For production orders, the material details with a quantity remaining are always used.
-   For planned orders, the most recent active revision of the bill of material whose identifier is specified in the **Planning BOM ID** box on the **Manufacturing** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) is used. If this box is empty, the bill of material specified in the **Default BOM ID** box on the same tab is used.
-   For master production schedule \(MPS\) orders, the bill of material specified in the order is used.

Additionally, the system uses the effective start date and effective end date specified for each material line in the bill of material to determine if a component is effective at the time when planned orders are generated.

The system selects the active bill of material based on the effective dates of the BOM revision. For example, if a revision exists for a future start date, it will be used for planned orders with a start date on or after this date.

## Order of Creating Planning Orders { .section}

During inventory planning, the system analyzes the hierarchy of items based on the bills of material assigned to items and starts creating planning orders from the top-level items. It generates low-level codes for each item and component. The top-level items, such as items to be produced, are assigned the zero code. Then the system analyzes the components of the top-level items and assigns them the 1 code. If any of the components is a subassembly, which also should be produced, the system then analyzes its components and assigns them the 2 code. This procedure is repeated until the lowest level of components is reached.

## Dates on Supply and Demand Orders Used in Inventory Planning { .section}

The system uses the following dates specified in supply and demand documents during inventory planning:

-   Sales orders and transfer orders: The **Ship On** date in each document line on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form
-   Purchase orders: The **Promised** date in each document line on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form
-   Production orders: The **Start Date** of each operation on the [Production Order Details](AM_20_90_00.md) \(AM209000\) form
-   MPS orders: The **Start Date** of each operation on the [MPS Listing](AM_00_00_04.md) \(AM000004\) form

## Consolidation of Demand Documents { .section}

If the **Use Days of Supply to Consolidate Orders** check box is selected in the **Consolidation** section of the [Inventory Planning Preferences](AM_10_00_00.md) \(AM100000\) form, the system consolidates items with the same ID from multiple demand documents into a single planning recommendation during inventory planning. \(For more information, see [Inventory Planning Configuration: System-Wide Settings](../ImplementationGuide/config_Inventory_Planning_System_Settings.md).\) The system uses the earliest requested date from the demand documents of the group as the action date of the planning recommendation.

**Parent topic:**[Inventory Planning with MRP](../UserGuide/MFG_MRP_Mapref.md)

