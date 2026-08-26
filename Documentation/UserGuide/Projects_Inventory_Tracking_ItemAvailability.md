# Project Inventory Tracking: Item Availability Tracking {#_663ebfe5-9cfd-4fbb-997e-c6041759d473 .concept}

In Acumatica ERP, you can configure the way item availability data is calculated in accordance with your company's policies. If the *Project-Specific Inventory* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can also configure the way project-specific materials are calculated and track their availability.

The following sections describe how availability configuration works and how you can make sure inventory has enough materials for processing project-related documents.

## Reviewing the Availability Status of Stock Items {#section_m53_mls_rqb .section}

For stock items, the system calculates the availability status based on availability calculation rules, which you define on the [Availability Calculation Rules](IN_20_15_00.md) \(IN201500\) form. To specify how the system calculates availability for particular items of an item class, you assign the availability calculation rules you’ve created to the class on the [Item Classes](IN_20_10_00.md) \(IN201000\) form. By default, each item of this item class is assigned this rule. You can override the default availability calculation rule for each particular stock item on the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

When the documents that record inventory transactions have been released, Acumatica ERP automatically updates the on-hand quantities of items at warehouses. On-hand quantities usually differ from the quantities that are actually available because documents may be processed after the actual operations with items have been performed. For more information about the configuration of availability rules, see [Availability Calculation Rules: General Information](Availability_Calculation_Rules_GeneralInfo.md).

## Reviewing Project-Specific Availability Data { .section}

When a user adds a line with an inventory item to a sales order, shipment, purchase receipt, or inventory transaction, the system calculates and shows the availability quantities for each line in the table footer on the **Details** tab of the following forms:

-   [Adjustments](IN_30_30_00.md) \(IN303000\)
-   [Appointments](FS_30_02_00.md) \(FS300200\)
-   [Disassembly](AM_30_15_00.md) \(AM301500\)
-   [Issues](IN_30_20_00.md) \(IN302000\)
-   [Labor](AM_30_10_00.md) \(AM301000\)
-   [Materials](AM_30_00_00.md) \(AM303000\)
-   [Move](AM_30_20_00.md) \(AM302000\)
-   [Project Materials](PM_30_65_00.md) \(PM306500\)
-   [Purchase Receipts](PO_30_20_00.md) \(PO302000\)
-   [Receipts](IN_30_10_00.md) \(IN301000\)
-   [Sales Orders](SO_30_10_00.md) \(SO301000\)
-   [Service Orders](FS_30_01_00.md) \(FS300100\)
-   [Shipments](SO_30_20_00.md) \(SO302000\)
-   [Transfers](IN_30_40_00.md) \(IN304000\)
-   [Vendor Shipments](AM_31_00_00.md) \(AM310000\)

In the project-related lines of documents and transactions, the way the system shows item availability for each line depends on the **Inventory Tracking** option of the selected project, which is specified on the **Summary** tab of the [Projects](PM_30_10_00.md) form.

For each of the availability buckets, the system shows two values \(separated by a slash\) if the line has a warehouse location that is linked to a project with the *Track by Project Quantity* or *Track by Project Quantity and Cost* inventory tracking mode. The quantities are calculated as follows:

-   The first value shows the available quantity of items in the selected warehouse location related to this project and project task.
-   The second value shows the total quantity of free stock items and project stock items stored in this warehouse location.

For each of the availability buckets, the system shows one value if one of the following is true:

-   The line has a warehouse location that’s linked to a project with the *Track by Location* inventory tracking mode. Each quantity is calculated based on the items received to this location for this project and the items received to this location with a non-project code.
-   The line is not linked to any project—that is, it has the non-project code specified. Each quantity is calculated based on the items received to this location with a non-project code.

**Parent topic:**[Tracking Project Inventory](../UserGuide/Projects_Inventory_Tracking_Mapref.md)

