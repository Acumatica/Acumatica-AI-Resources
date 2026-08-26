# Receiving and Putting Away Operations: Implementation Checklist {#_bb865a83-cd02-4f49-afb1-892eb95f410f .concept}

This topic provides details you can use to ensure that the system is configured properly for the automated receiving and putting away of items.

## Prerequisites { .section}

Before you start configuring automated warehouse operations, you should make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\)

 [Inventory Preferences](IN_10_10_00.md) \(IN101000\)

|Make sure that all necessary settings related to inventory and order management have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Warehouses](IN_20_40_00.md) \(IN204000\)|Make sure that the following entities have been created:-   The required warehouses, as described in [Warehouses: Implementation Activity](Warehouses_Implem_Activity.md).
-   The required locations, as described in [Warehouse Locations and Single-Step Transfers: Implementation Activity](Warehouse_Locations_Implem_Activity.md).

|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|Make sure that the required stock items have been created, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|

## Minimum Workflow Settings { .section}

Before you start receiving and putting away items for shipments by using a barcode scanner or other device, you should make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following table.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the following features are enabled:-   *Multiple Warehouse Locations*
-   *Warehouse Management*
-   *Receiving*

|
|The **Warehouse Management** tab of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form|Make sure that the **Display the Receive Tab** check box is selected in the **Receiving Workflow** section.With this check box selected, the receiving workflow is configured so that a user processes the receipt of the items to the receiving location in Receive mode.

|
|The **Cross-Reference** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form|Make sure that the barcodes have been specified for each item.|

## Recommended Workflow Settings { .section}

We recommend that you configure the workflow for the automated receiving and putting away items by specifying the following settings on the **Warehouse Management** tab of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Display the Put Away Tab**|Selected|With this check box selected, the user processes the putting away of items from the receiving location to the locations where the items will be stored in Put Away mode.|
|**Display the Return Tab**|Selected|With this check box selected, the user processes the returning of items from the receiving location to the vendor when they are working in Return mode.|
|**Display the Receive Transfer Tab**|Selected|With this check box selected, the user processes in the receiving of items to the receiving location when they are working in Receive Transfer mode.|
|**Display the Scan Log Tab**|Selected|With this check box selected, the system will display the **Scan Log** tab on the [Receive and Put Away](PO_30_20_20.md) \(PO302020\) form; on this tab, a user can review the list of operations that have been performed during the past two weeks.|
|**Use Explicit Line Confirmation**|Cleared|With this check box cleared, the system does not request user confirmation for each line when the user is performing automated operations in Receive mode and Put Away mode.|
|**Use Single Receiving Location**|Selected|With this check box selected, the system asks for the receiving location only once for each purchase receipt being processed; all items of this purchase receipt are received to this location.|

## Printing Settings { .section}

If the *DeviceHub* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can configure the printing of documents by using the following settings on the **Warehouse Management** tab of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

|Element|State|Description|
|-------|-----|-----------|
|**Print Inventory Labels Automatically**|Selected|With this check box selected, the system automatically prints the inventory label for the purchase receipt being processed.|
|**Print Purchase Receipts Automatically**|Selected|With this check box selected, the system automatically prints the processed purchase receipts.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow for the automated receiving and putting away of items by specifying additional settings on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form:

-   To speed up the entry of quantities in the lines being processed, select the **Use Default Quantity** check box. When this check box is selected, the **Set Qty** button on the form toolbar of the [Receive and Put Away](PO_30_20_20.md) \(PO302020\) form becomes available before you scan the barcode of an item. You click this button to specify the default quantity of the item. After the default quantity is specified, the system inserts it in the **Received Qty.** or **Put Away Qty.** column each time you scan the barcode of the item.
-   To make the system automatically specify the default receiving location of a warehouse for all receipt documents being processed, select the **Use Default Receiving Location** check box.
-   To make the system request the receiving location for each item being processed in Receive mode, clear the **Use Single Receiving Location** check box, and select the **Request Location for Each Item on Receiving** check box.

    If you have specified the default putaway location for the item, the system suggests this location in the prompt in Receive mode on the [Receive and Put Away](PO_30_20_20.md) \(PO302020\) form. You can specify it on the following forms:

    -   For a stock item: In the **Default Putaway To** box on the [Item Warehouse Details](IN_20_45_00.md) \(IN204500\) or [Stock Items](IN_20_25_00.md) \(IN202500\) form
    -   For a non-stock item: In the **Non-Stock Item Location** box on the [Warehouses](IN_20_40_00.md) \(IN204000\) form.
    To make the system request the location to which each item must be put away in Put Away mode, clear the **Use Single Receiving Location** check box, and select the **Request Location for Each Item on Putting Away** check box. If you have specified the default putaway location for the item, the system suggests this location in the prompt in Putaway mode on the [Receive and Put Away](PO_30_20_20.md) form.

-   To give users the ability to perform additional verification of a purchase receipt to ensure the correctness of its item quantities, select the **Verify Receipts Before Release** check box. When this check box is selected, a user can confirm a purchase receipt on the [Receive and Put Away](PO_30_20_20.md) form but cannot release it. A user can release the receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

    When the **Verify Receipts Before Release** check box is selected, the **Keep Zero Lines on Receipt Confirmation** check box becomes available for selection. With this check box selected, the system will keep lines with a receipt quantity of 0 in a purchase receipt on the [Purchase Receipts](PO_30_20_00.md) form after a user has confirmed the receipt of items.


## Known Process Limitations { .section}

Multiple users cannot simultaneously process unreleased transfer receipts with partial item quantities on the [Receive and Put Away](PO_30_20_20.md) form. However, if you have created and released a transfer receipt with a partial item quantity, the remaining quantity can be received in another transfer receipt.

**Parent topic:**[Automated Receiving and Putting Away Operations](../UserGuide/WMS_Receive_Put_Away_Mapref.md)

