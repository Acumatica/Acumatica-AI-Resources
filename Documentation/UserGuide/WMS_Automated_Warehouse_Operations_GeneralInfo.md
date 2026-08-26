# Automated Warehouse Operations: General Information {#_d4328fa2-3191-40a5-8f2b-11a3ca38c18d .concept}

Acumatica ERP provides a solution to automate basic warehouse operations, such as the picking, packaging, receiving, putting away, transferring, and counting of items. This functionality and the related forms become available if the *Warehouse Management* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

In this topic, you will read about the automation of warehouse operations in Acumatica ERP and in the Acumatica mobile app.

## Supported Warehouse Operations { .section}

You can automate the following warehouse operations by using a barcode scanner or a mobile device with barcode scanning support:

-   Picking and packing of the items for a particular shipment
-   Processing picking of shipments in a wave
-   Processing picking of shipments in a batch
-   Receiving items based on a purchase receipt defined in the system and putting away the received items to storage locations
-   Issuing items from a warehouse
-   Transferring items within a warehouse
-   Receiving items in a warehouse
-   Counting items within the physical inventory

You can configure the workflow for each group of related operations to correspond to the business processes of your organization. For example, for shipping items, you can configure the workflow so that users can use only Pick mode, Pack mode, or Ship mode, or they can use these modes in any combination. As another example, for receiving items with a purchase order, you can configure the workflow so that users can use either Receive mode or Put Away mode, or they can use both modes in one workflow.

## Special Commands for Scanning { .section}

When you work in any of the modes, you can use special commands to quickly switch to another mode or to perform an action in the current mode. You can scan a barcode of the command or type the command in the **Scan** box of the following forms:

-   [Item Lookup](IN_20_25_20.md) \(IN202520\)
-   [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\)
-   [Receive and Put Away](PO_30_20_20.md) \(PO302020\)
-   [Scan and Count](IN_30_50_20.md) \(IN305020\)
-   [Scan and Issue](IN_30_20_20.md) \(IN302020\)
-   [Scan and Receive](IN_30_10_20.md) \(IN301020\)
-   [Scan and Transfer](IN_30_40_20.md) \(IN304020\)
-   [Storage Lookup](IN_40_90_20.md) \(IN409020\)

For the list of commands, see [Working Modes and Supported Commands](WMS_Commands_List.md).

## Working Modes {#section_fy2_pbm_zgb .section}

The forms you use for automated warehouse operations, and the corresponding screens you use in the Acumatica mobile app, provide both *working modes* and *service modes*. Working modes are modes that correspond to key operations you perform while using the form.

Some forms that support the automation of warehouse operations, such as [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\), have multiple working modes. Each mode of a form, which corresponds to the operation you are currently performing, shows different content and supports a different set of actions. Other forms, such as [Scan and Transfer](IN_30_40_20.md) \(IN304020\), have only one working mode, so that you can perform only a particular operation by using this form.

While you are performing warehouse operations, you can change the working mode on the current form or navigate from the current form to another form by entering special commands \(or by scanning special barcodes\) starting with @. On the forms related to automated warehouse operations, you type the command or barcode into the **Scan** box and press Enter. For example, if you enter `@pack` in the **Scan** box or scan it, the system navigates to the [Pick, Pack, and Ship](SO_30_20_20.md) form \(or the corresponding screen in the mobile app\) in Pack mode. When you change the mode of a form, the system keeps the current document selected. For example, if you have entered the shipment number in Pick mode and have entered the command \(or have scanned the barcode\) to switch to Pack mode, the system keeps the current shipment selected.

## Service Modes { .section}

Service modes are modes that correspond to secondary operations you may perform, such as removing document lines. On each form related to automated warehouse operations, you can activate any of the following service modes:

-   Quantity Editing: In this mode, you can change the quantity of the item in the selected line. You activate the mode by scanning the `*qty` barcode or by clicking **Set Qty** on the form toolbar.
-   Remove: In this mode, you can remove the selected document line or a specific quantity of the inventory item from the current document. You activate the mode by scanning the `*remove` barcode or by clicking **Remove** on the form toolbar.

## Support of Automatic and Manual Packaging { .section}

If the *Automatic Packaging* feature is disabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, while you are performing packing operations on the [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\) form, you specify the packaging details for the shipment manually.

If the *Automatic Packaging* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form, the system automatically selects the optimal set of boxes for each shipment on the **Packages** tab of the [Shipments](SO_30_20_00.md) \(SO302000\) form. For more information about the configuration of automatic packaging, see [To Configure Automatic Packaging](SO__How_Configure_Automatic_Packaging.md).

If a single box is automatically selected for a shipment, in Pack mode of the [Pick, Pack, and Ship](SO_30_20_20.md) form, the system automatically specifies the packaging details. When you confirm the shipment, the system automatically confirms the box.

Shipments for which multiple boxes were selected automatically cannot be packed on the [Pick, Pack, and Ship](SO_30_20_20.md) form.

For a description of the picking and packing processes, see [Picking and Packing Operations: General Information](WMS_Pick_Pack_GeneralInfo.md) and [Packing Operations: General Information](WMS_Pack_GeneralInfo.md).

