# Inventory Planning with DRP: Processing of Documents {#_cc8b8412-ca52-4f8e-b8ba-25e82637a574 .concept}

When inventory planning is performed, the system analyzes particular data based on the inventory planning settings and the existing open documents that may influence the planning. In this topic, you will find information about how documents are processed in inventory planning in Acumatica ERP when you are using distribution requirements planning \(DRP\)—that is, inventory planning that does not include production orders.

## Documents Used in Inventory Planning { .section}

During inventory planning, the system analyzes the following documents:

-   Demand documents \(such as sales orders or forecasts\), which generate demand for items or cause items to be issued from one of the company's warehouses
-   Supply documents \(such as purchase orders or transfer orders\), which cause items to be received in one of the company's warehouses

All of the following documents and data may be used in inventory planning:

-   Forecasts on the [Forecast](AM_20_20_00.md) \(AM202000\) form
-   Sales orders on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form that have not been processed to completion, including open transfer orders and blanket sales orders
-   Shipments on the [Shipments](SO_30_20_00.md) \(SO302000\) form with items that have not been issued
-   Inventory on hand and unreleased inventory transactions, which include documents on the following forms:
    -   Issues on the [Issues](IN_30_20_00.md) \(IN302000\) form
    -   Receipts on the [Receipts](IN_30_10_00.md) \(IN301000\) form
    -   Documents on the [Adjustments](IN_30_30_00.md) \(IN303000\) form
-   Two-step transfers of items between warehouses on the [Transfers](IN_30_40_00.md) \(IN304000\) form if the *Multiple Warehouses* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form
-   Purchase orders on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form that have not been processed to completion
-   Kit assembly orders or kit disassembly orders on the [Kit Assembly](IN_30_70_00.md) \(IN307000\) form if the *Kit Assembly* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form

You manage the set of entities included in inventory planning at the warehouse level. For details, see [Inventory Planning Configuration: General Information](../ImplementationGuide/config_Inventory_Planning_GeneralInfo.md).

## Order Dates Used in Inventory Planning { .section}

The system uses the following dates, which are specified in supply and demand documents, during inventory planning:

-   In sales orders and transfer orders, the **Ship On** date in each document line on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form
-   In purchase orders, the **Promised** date in each document line on the [Purchase Orders](PO_30_10_00.md) \(PO301000\) form

## Consolidation of Demand Documents { .section}

If the **Use Days of Supply to Consolidate Orders** check box is selected in the **Consolidation** section of the [Inventory Planning Preferences](AM_10_00_00.md) \(AM100000\) form, the system consolidates items with the same ID from multiple demand documents into a single planning recommendation during inventory planning. \(For more information, see [Inventory Planning Configuration: System-Wide Settings](../ImplementationGuide/config_Inventory_Planning_System_Settings.md).\) The system uses the earliest requested date from the demand documents of the group as the action date of the planning recommendation.

**Parent topic:**[Performing Inventory Planning with DRP](../UserGuide/OrderMgmt_Inventory_Planning_DRP_Mapref.md)

