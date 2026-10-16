# Working Modes and Supported Commands

This topic lists the commands that can be used to quickly switch to another mode or to perform an action in the current mode.

The listed commands can be used on the following forms:

-   [Scan Warehouse Path](IN_20_40_25.md) \(IN204025\)
-   [Scan and Receive](IN_30_10_20.md) \(IN301020\)
-   [Scan and Transfer](IN_30_40_20.md) \(IN304020\)
-   [Scan and Issue](IN_30_20_20.md) \(IN302020\)
-   [Receive and Put Away](PO_30_20_20.md) \(PO302020\)
-   [Pick, Pack, and Ship](SO_30_20_20.md) \(SO302020\)
-   [Scan and Count](IN_30_50_20.md) \(IN305020\)
-   [Item Lookup](IN_20_25_20.md) \(IN202520\)
-   [Storage Lookup](IN_40_90_20.md) \(IN409020\)
-   [Scan Labor](AM_30_20_20.md) \(AM302020\)
-   [Scan Materials](AM_30_00_30.md) \(AM300030\)
-   [Scan Move](AM_30_20_10.md) \(AM302010\)

Some commands can be used on any form or in any mode, while other commands are restricted to a specific form or mode. The applicable forms are specified in the description of each table.

**Tip:** In any working mode, you enter a command or barcode by typing it in the **Scan** box and pressing Enter. In production systems, you will scan the appropriate barcodes rather than manually entering them.

<table id="_00452089-f3d2-42e7-a0f0-73cb0f4463bc"><thead><tr><th>

Command

</th><th>

Description of Performed Operation

</th><th>

Barcode

</th></tr></thead><tbody><tr><td>

`@count`

</td><td>

Opens the [Scan and Count](IN_30_50_20.md) \(IN305020\) form and switches to Scan and Count mode.

</td><td>


</td></tr><tr><td>

`@inissue`

</td><td>

Opens the [Scan and Issue](IN_30_20_20.md) \(IN302020\) form and switches to Scan and Issue mode.

</td><td>


</td></tr><tr><td>

`@inreceive`

</td><td>

Opens the [Scan and Receive](IN_30_10_20.md) \(IN301020\) form and switches to Scan and Receive mode.

</td><td>


</td></tr><tr><td>

`@intransfer`

</td><td>

Opens the [Scan and Transfer](IN_30_40_20.md) \(IN304020\) form and switches to Scan and Transfer mode.

</td><td>


</td></tr><tr><td>

`@item`

</td><td>

Opens the [Item Lookup](IN_20_25_20.md) \(IN202520\) form and switches to Item Lookup mode.

</td><td>


</td></tr><tr><td>

`@pack`

</td><td>

Opens the [Pick, Pack, and Ship](SO_30_20_20.md) form and switches to Pack mode.

 This command cannot be used if the **Display the Pack Tab** check box is cleared on the **Warehouse Management** tab \(**Fulfillment Workflow** section\) of the [Sales Orders Preferences](SO_10_10_00.md) form.

</td><td>


</td></tr><tr><td>

`@pick`

</td><td>

Opens the [Pick, Pack, and Ship](SO_30_20_20.md) \(PO302020\) form and switches to Pick mode.

 This command cannot be used if the **Display the Pick Tab** check box is cleared on the **Warehouse Management** tab \(**Fulfillment Workflow** section\) of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

</td><td>


</td></tr><tr><td>

`@poreturn`

</td><td>

Opens the [Receive and Put Away](PO_30_20_20.md) \(PO302020\) form and switches to Return mode.

 This command cannot be used if the **Display the Return Tab** check box is cleared on the **Warehouse Management** tab \(**Receiving Workflow** section\) of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

</td><td>


</td></tr><tr><td>

`@potransfer`

</td><td>

Opens the [Receive and Put Away](PO_30_20_20.md) \(PO302020\) form and switches to Receive Transfer mode.

 This command cannot be used if the **Display the Receive Transfer Tab** check box is cleared on the **Warehouse Management** tab \(**Receiving Workflow** section\) of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

</td><td>


</td></tr><tr><td>

`@putaway`

</td><td>

Opens the [Receive and Put Away](PO_30_20_20.md) form and switches to Put Away mode.

 This command cannot be used if the **Display the Put Away Tab** check box is cleared on the **Warehouse Management** tab \(**Receiving Workflow** section\) of the [Purchase Orders Preferences](PO_10_10_00.md) form.

</td><td>


</td></tr><tr><td>

`@receive`

</td><td>

Opens the [Receive and Put Away](PO_30_20_20.md) \(PO302020\) form and switches to Receive mode.

 This command cannot be used if the **Display the Receive Tab** check box is cleared on the **Warehouse Management** tab \(**Receiving Workflow** section\) of the [Purchase Orders Preferences](PO_10_10_00.md) \(PO101000\) form.

</td><td>


</td></tr><tr><td>

`@ship`

</td><td>

Opens the [Pick, Pack, and Ship](SO_30_20_20.md) form and switches to Ship mode. This mode is not available in the Acumatica mobile app.

 This command cannot be used if the **Display the Ship Tab** check box is cleared on the **Warehouse Management** tab \(**Fulfillment Workflow** section\) of the [Sales Orders Preferences](SO_10_10_00.md) form.

</td><td>


</td></tr><tr><td>

`@soreturn`

</td><td>

Opens the [Pick, Pack, and Ship](SO_30_20_20.md) form and switches to Return mode.

 This command cannot be used if the **Display the Return Tab** check box is cleared on the **Warehouse Management** tab \(**Fulfillment Workflow** section\) of the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.

</td><td>


</td></tr><tr><td>

`@storage`

</td><td>

Opens the [Storage Lookup](IN_40_90_20.md) \(IN202520\) form and switches to Storage Lookup mode.

</td><td>


</td></tr></tbody>
</table>

<table id="_27d5df96-b2b6-4c79-a706-62c9b3f3e638"><thead><tr><th>

Command

</th><th>

Description of Performed Operation

</th><th>

Barcode

</th></tr></thead><tbody><tr><td>

`*ok`

</td><td>

Confirms the entered data or the current operation.

</td><td>


</td></tr><tr><td>

`*reset`

</td><td>

Clears the unconfirmed lines and returns to the first step in the mode, keeping the current document selected.

</td><td>


</td></tr><tr><td>

`*cancel`

</td><td>

Clears the unconfirmed lines and returns to the initial step of the mode \(such as scanning a document number or a warehouse\).

</td><td>


</td></tr><tr><td>

`*save`

</td><td>

Saves your progress on the current operation. On most of the forms, either you do not need to save changes or the system saves the changes automatically.

</td><td>


</td></tr><tr><td>

`*qty`

</td><td>

Enables Quantity Editing mode for a confirmed line.

 **Attention:** This command is not available on the following forms:

-   [Scan Warehouse Path](IN_20_40_25.md) \(IN204025\)
-   [Item Lookup](IN_20_25_20.md) \(IN202520\)
-   [Storage Lookup](IN_40_90_20.md) \(IN409020\)

</td><td>


</td></tr><tr><td>

`*remove`

</td><td>

Activates Remove mode, in which the user reduces the scanned quantity of an item.**Attention:** This command is not available on the following forms:

-   [Scan Warehouse Path](IN_20_40_25.md) \(IN204025\)
-   [Item Lookup](IN_20_25_20.md) \(IN202520\)
-   [Storage Lookup](IN_40_90_20.md) \(IN409020\)

</td><td>


</td></tr></tbody>
</table>

<table id="_0b29a8dc-f255-44b4-9fd2-fbc6affe0fe9"><thead><tr><th>

Command

</th><th>

Description of Performed Operation

</th><th>

Barcode

</th></tr></thead><tbody><tr><td>

`*next`

</td><td>

Lets you enter the path value to assign to the next scanned warehouse location.

</td><td>


</td></tr></tbody>
</table>

<table id="_77e8c2d8-be02-446b-be69-920bf38afc32"><thead><tr><th>

Mode

</th><th>

Command and Barcode

</th><th>

Description of Performed Operation

</th></tr></thead><tbody><tr><td>

-   **Receive**
-   **Return**
-   **Receive Transfer**
-   **Putaway**

</td><td>


</td><td>

Releases the following documents and transactions:

 -   Purchase receipt with the *Receipt* type in Receive mode
-   Purchase receipt with the *Transfer Receipt* type in Receive Transfer mode
-   Purchase receipt with the *Return* type in Return mode
-   Inventory transfer related to the currently processed purchase receipt in Putaway mode

</td></tr><tr><td>

-   **Receive**
-   **Receive Transfer**

</td><td>


</td><td>

Changes the status of the purchase receipt to *Received*. If you use this command, you can release the purchase receipt only on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

</td></tr><tr><td>

**Receive**

</td><td>


</td><td>

Releases the purchased receipt and completes all lines of the related purchase order, regardless of whether they were received in full.

</td></tr></tbody>
</table>

<table id="_9e653b09-9e89-46a1-814e-47b005e7a154"><thead><tr><th>

Mode

</th><th>

Command and Barcode

</th><th>

Description of Performed Operation

</th></tr></thead><tbody><tr><td>

**Pick**

 Paper-based: Single shipment

</td><td>


</td><td>

Marks as picked the document which is currently being processed.

</td></tr><tr><td>

**Pick**

 -   Paper-based: Wave and Batch pick lists
-   Paperless: All

</td><td>


</td><td>

Confirms the pick list which is currently being processed.

</td></tr><tr><td>

**Pick** and **Pack**

 -   Paper-based: Single shipments
-   Paperless: *Single-Shipment* pick lists

 **Return** and **Ship**

 Paper-based: Single shipments

</td><td>


</td><td>

Confirms the document which is currently being processed.

</td></tr><tr><td>

**Pick**

 Paperless picking: All

</td><td>


</td><td>

Suggests another pick list.

 The system uses the last scanned location as the current location of the picker to suggest the nearest pick list.

</td></tr><tr><td>

**Pick**

 Paperless picking: All

</td><td>


</td><td>

Confirms the current pick list and suggests another pick list.

 The system uses the last scanned location as the current location of the picker to suggest the nearest pick list.

</td></tr><tr><td>

**Pick**

 Paperless picking: All

</td><td>


</td><td>

The system confirms the line with an incomplete quantity. You can return to this line later to pick the remaining quantity.

</td></tr><tr><td>

**Pick**

 -   Paper-based: Wave pick lists
-   Paperless picking: *Single-Shipment* and *Wave* shipments and pick lists

</td><td>


</td><td>

Adds a tote to a pick list.

</td></tr><tr><td>

**Pack**

 -   Paper-based: Single shipments
-   Paperless: *Single-Shipment* pick lists

</td><td>


</td><td>

Confirms the package.

</td></tr><tr><td>

**Pack**

 -   Paper-based: Single shipments
-   Paperless: *Single-Shipment* pick lists

</td><td>


</td><td>

Moves all items that are not packed yet to the scanned package.

</td></tr><tr><td>

**Pack**-only

 Paperless: *Single-Shipment* pick lists

</td><td>


</td><td>

Confirms the package in the paperless pack-only workflow.

</td></tr><tr><td>

**Pack**-only

 Paperless: *Single-Shipment* pick lists

</td><td>


</td><td>

Confirms the package in the paperless pack-only workflow and suggests the next pick list.

</td></tr><tr><td>

**Ship Mode**

 Paper-based: Single shipments

</td><td>


</td><td>

Gets the return labels.

</td></tr><tr><td>

**Ship Mode**

 Paper-based: Single shipments

</td><td>


</td><td>

Refreshes rates of carriers.

</td></tr></tbody>
</table>

<table id="_0a7de3fb-f9ce-4792-844d-8e834bc31648"><thead><tr><th>

Command

</th><th>

Description of Performed Operation

</th><th>

Barcode

</th></tr></thead><tbody><tr><td>

`*cart*in`

</td><td>

Enables Cart Loading mode.

</td><td>


</td></tr><tr><td>

`*cart*out`

</td><td>

Enables Cart Unloading mode.

</td><td>


</td></tr></tbody>
</table>

<table id="_7ae6797a-7e7b-4360-9f51-3ed44bb17760"><thead><tr><th>

Command

</th><th>

Description of Performed Operation

</th><th>

Barcode

</th></tr></thead><tbody><tr><td>

`*release`

</td><td>

Releases the inventory transaction that is being processed.

</td><td>


</td></tr></tbody>
</table>

<table id="_d1be7fd9-1d86-40de-ad44-5d12e700c720"><thead><tr><th>

Command

</th><th>

Description of Performed Operation

</th><th>

Barcode

</th></tr></thead><tbody><tr><td>

`*release`

</td><td>

Releases the production transaction that is being processed.

</td><td>


</td></tr></tbody>
</table>

<table id="_811193e4-3ea4-4638-92c5-6d344ea8c5f1"><thead><tr><th>

Command

</th><th>

Description of Performed Operation

</th><th>

Barcode

</th></tr></thead><tbody><tr><td>

`*confirm`

</td><td>

Confirms a physical inventory document.

</td><td>


</td></tr></tbody>
</table>

<table id="_4ca0ff85-f121-4173-b652-76b3d3fbc13a"><thead><tr><th>

Command

</th><th>

Description of Performed Operation

</th><th>

Barcode

</th></tr></thead><tbody><tr><td>

`*switch*ls`

</td><td>

Displays or hides the **Lot/Serial Nbr.** and **Expiration Date** columns on the **Storage** tab of the [Storage Lookup](IN_40_90_20.md) \(IN409020\) form. When you enable the display of lot or serial numbers, the system shows each lot or serial number in a separate line.

</td><td>


</td></tr></tbody>
</table>

