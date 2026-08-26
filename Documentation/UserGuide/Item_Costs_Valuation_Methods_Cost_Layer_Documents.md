# Item Costs and Valuation Methods: Transactions That Record Costs in Layers {#_eaf7a4cd-e4c6-4833-a4cf-723cac3fa672 .concept}

An item’s cost is recorded in a new cost layer or is updated in an existing cost layer when a batch of journal transactions containing this item is generated and posted to the Inventory account. The batch is posted on release of one of the following inventory documents:

-   Inventory receipt
-   Inventory issue
-   Adjustment
-   Transfer
-   Kit assembly or kit disassembly

The release of only inventory documents containing an item can post a batch of transactions to the Inventory account and cause the system to update the item’s cost. Each time you need to record a new or changed item cost from any area other than Inventory, an inventory document is automatically generated on release of a particular area's document \(such as production order, purchase receipt, or sales invoice\).

The following table lists the inventory documents that affect the cost \(in the first column\) and the documents whose release can generate the inventory transactions \(in the second column\).

|Documents That Affect the Cost|Source Documents and Forms|
|------------------------------|--------------------------|
|An inventory receipt on the [Receipts](IN_30_10_00.md) \(IN301000\) form|-   A purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form
-   A transfer receipt on the [Purchase Receipts](PO_30_20_00.md) form
-   An inventory receipt created directly on the [Receipts](IN_30_10_00.md) \(IN301000\) form
-   A labor transaction on the [Labor](AM_30_10_00.md) \(AM301000\) form
-   A move transaction for a production order on the [Move](AM_30_20_00.md) \(AM302000\) form
-   A material transaction for by-products on the [Materials](AM_30_00_00.md) \(AM300000\) form
-   A disassembly transaction on the [Disassembly](AM_30_15_00.md) \(AM301500\) form

|
|An inventory issue on the [Issues](IN_30_20_00.md) \(IN302000\) form|-   A purchase return on the [Purchase Receipts](PO_30_20_00.md) form
-   A document on the [Invoices](SO_30_30_00.md) \(SO303000\) form
-   A shipment entered directly on the [Shipments](SO_30_20_00.md) \(SO302000\) or generated on the [Process Shipments](SO_50_30_00.md) \(SO503000\) form if a user clicks the **Update IN** command
-   A document created directly on the [Invoices](SO_30_30_00.md) form if the *Advanced SO Invoices* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form
-   A material issue transaction on the [Materials](AM_30_00_00.md) form
-   A material return transaction on the [Materials](AM_30_00_00.md) form
-   A move transaction for a production order on the [Move](AM_30_20_00.md) form
-   An inventory issue created directly on the [Issues](IN_30_20_00.md) form
-   A disassembly transaction on the [Disassembly](AM_30_15_00.md) form

|
|An inventory adjustment on the [Adjustments](IN_30_30_00.md) \(IN303000\) form|-   A physical inventory count document on the [Physical Inventory Review](IN_30_50_00.md) \(IN305000\) form
-   A landed cost document on the [Landed Costs](PO_30_30_00.md) \(PO303000\) form
-   An AP bill or debit adjustment on the [Bills and Adjustments](AP_30_10_00.md) \(AP301000\) form
-   A disassembly transaction on the [Disassembly](AM_30_15_00.md) form
-   A labor transaction on the [Labor](AM_30_10_00.md) form.
-   A move transaction for a production order on the [Move](AM_30_20_00.md) form
-   An inventory adjustment created directly on the [Adjustments](IN_30_30_00.md) form
-   An inventory adjustment created after the costs have been updated on the [Update Standard Costs](IN_50_20_00.md) \(IN502000\) form

|
|A transfer on the [Transfers](IN_30_40_00.md) \(IN304000\) form|-   An inventory transfer generated on the [Receive and Put Away](PO_30_20_20.md) \(PO302020\) form
-   A shipment created directly on the [Shipments](SO_30_20_00.md) form or generated on the [Process Shipments](SO_50_30_00.md) form if a user clicks the **Update IN** command
-   A transfer created directly on the [Transfers](IN_30_40_00.md) form

|
|An assembly or disassembly on the [Kit Assembly](IN_30_70_00.md) \(IN307000\) form|An assembly or disassembly on the [Kit Assembly](IN_30_70_00.md) form|

**Parent topic:**[Managing Item Costs and Valuation Methods](../UserGuide/Item_Costs_Valuation_Methods_Mapref.md)

