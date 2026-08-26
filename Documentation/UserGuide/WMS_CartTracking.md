# Cart Tracking in Warehouse Operations {#_bc2b59d8-89d7-463f-aaa4-bd626f99ca61 .concept}

If the *Cart Tracking* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can configure cart entities, which represent the physical carts used for moving inventory items within a warehouse, and track item movements between warehouse locations.

## Configuring Carts { .section}

When the *Cart Tracking* feature is enabled, you can configure carts on the **Carts** tab of the [Warehouses](IN_20_40_00.md) \(IN204000\) form. For a warehouse, you can create any number of carts. For each cart, you specify the ID and a short description, and you select the **Active** check box to indicate that the cart can be used for moving items.

## Viewing Items in Carts { .section}

When you use carts in automated warehouse operations, you can quickly view the list of items in a particular cart by using the [Storage Lookup](IN_40_90_20.md) \(IN409020\) form or the corresponding screen in the Acumatica mobile app. You scan the barcode of a cart in a particular warehouse, and the system displays the list of items in the cart and their quantities.

## Tracking Carts in Picking Operations { .section}

If the **Use Carts for Picking** check box is selected on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form, the specification of a cart is a required step of the workflow of picking items. This configuration is used to track item movements when a warehouse worker first places the items in a cart, and then picks them from the cart and packs them for shipping. Thus, a cart represents a temporary location from which the items are picked for processing.

When you are using the [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\) form or the corresponding screen in the Acumatica mobile app, before scanning a shipment number in Pick mode, you scan the barcode of the cart that you are going to use for picking items. The system shows the ID of the currently selected cart in the **Cart ID** box. Then you scan the location barcode and the item barcode and specify the quantity of items that you are placing in the cart; the system shows this quantity in the **Cart Qty.** column for each line, thus indicating the items that have been placed in the currently selected cart. To indicate the picking of items from the cart, you use the `*cart*out` command to enter Cart Unloading mode, and you scan the item barcode and quantity; the system reduces the **Cart Qty.** and adds this quantity to the **Picked Quantity**. After the items are picked from the cart, you pack and ship the items, or you confirm the shipment without packing, depending on the workflow set up in your company. For more information about picking and packing workflows, see [Cart Tracking in Warehouse Operations](WMS_CartTracking.md).

## Tracking Carts in Wave Picking Operations { .section}

If the *Advanced Picking* check box is selected on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can assign totes to carts on the [Warehouses](IN_20_40_00.md) \(IN204000\) form. With this configuration, when a picker starts to pick a wave, instead of scanning totes one by one, the picker can scan the barcode of a cart. In this case, the system will automatically assign the totes of this cart to the shipments being picked.

## Tracking Carts in Putting Away Operations { .section}

If the **Use Carts for Putting Away** check box is selected on the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form, the specification of a cart is a required step of the workflow of putting away items. This configuration is used to track item movements when a warehouse worker first places items in the cart from the receiving location, and then puts them away \(moves them from the cart to the place of storage\). Thus, a cart represents a temporary location from which the items are taken for processing.

When you are using the [Receive and Put Away](PO_30_20_20.md) \(PO302020\) form, before scanning a receipt number in Put Away mode, you scan the barcode of the cart that you are going to use for putting away items. The system shows the ID of the currently selected cart in the **Cart ID** box. Then you scan the item barcode and specify the quantity of items that you are placing in the cart; the system shows this quantity in the **Cart Qty.** column for each line, thus indicating items that have been placed in the currently selected cart. To indicate the putting away of each item from the cart, you use the `*cart*out` command to enter Cart Unloading mode, and scan the item barcode, the location barcode, and the quantity; the system reduces the **Cart Qty.** to indicate the quantity of the item being put away. After all the items for the current document are put away from the cart, you release the transfer document, and the processing is completed. For more information about the workflows associated with receiving items and putting them away, see [Automated Receiving and Putting Away Operations](WMS_Receive_Put_Away_Mapref.md).

