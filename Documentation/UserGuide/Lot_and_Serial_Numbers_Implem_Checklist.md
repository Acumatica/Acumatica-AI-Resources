# Items with Lot and Serial Numbers: Implementation Checklist {#_90b9130e-1467-41e5-a874-db01d70702c1 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing items with lot and serial numbers.

## Implementation Checklist { .section}

Before you begin processing purchase and sales documents that include stock items with lot and serial numbers, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Lot and Serial Tracking* feature is enabled.|
|[Inventory Preferences](IN_10_10_00.md) \(IN101000\)|Make sure that all necessary settings related to inventory and order management have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Lot/Serial Classes](IN_20_70_00.md) \(IN207000\)|Make sure that lot and serial classes with the needed settings have been created, as you will learn to do in [Items with Lot and Serial Numbers: Implementation Activity](Lot_and_Serial_Numbers_Implem_Activity.md).|
|[Item Classes](IN_20_10_00.md) \(IN201000\)|Make sure that the needed lot or serial classes are specified in settings of item classes, as you will learn to do in [Items with Lot and Serial Numbers: Implementation Activity](Lot_and_Serial_Numbers_Implem_Activity.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that the needed lot or serial classes are specified in settings of stock items, as you will learn to do in [Items with Lot and Serial Numbers: Implementation Activity](Lot_and_Serial_Numbers_Implem_Activity.md).|

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a purchase and a sale of stock items with lot or serial numbers by performing instructions similar to those described in the following activities:

-   [Items with Lot and Serial Numbers: To Purchase and Sell Serialized Items](Lot_and_Serial_Numbers_Process_Activity.md)
-   [Items with Lot and Serial Numbers: To Sell Items in Lots](Lot_and_Serial_Numbers_Process_Activity2.md)
-   [Items with Lot and Serial Numbers: To Purchase and Sell Lot-Numbered Items that Expire](Lot_and_Serial_Numbers_Process_Activity3.md)

## Known Process Limitations { .section}

The following limitations apply to the processing of sales that include items with lot or serial numbers:

-   If a full or partial quantity of the item in a sales order line on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form is allocated by lot or serial number, only the full item quantity can be deallocated on the [Manage Sales Allocations](SO_50_10_10.md) \(SO501010\) form. If you manually change the **Qty. to Deallocate** in the line on the [Manage Sales Allocations](SO_50_10_10.md) form, you cannot select this line for processing, and the system shows an error message.
-   If the *Lot/Serial Attributes* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and the **Specify Lot/Serial Price and Description** check box is selected for the lot or serial class on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, the following apply to each item of the class:
    -   The item cannot be added to a sales price list or sales price worksheet.
    -   The item must have a lot or serial number specified in a sales order line. The **Mark for PO** check box cannot be selected for this line.
    -   Each unit of a stock item with a lot or serial number must be added to a separate sales order line because each unit may have a unique description and price.

**Parent topic:**[Managing Items with Lot and Serial Numbers](../UserGuide/Lot_and_Serial_Numbers_Mapref.md)

