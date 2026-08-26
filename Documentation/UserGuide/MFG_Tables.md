# Using Manufacturing Data in Inquiries and Reports {#_1ce567e9-7d64-4f0d-aa14-d894a35a8fc3 .concept}

This is not a complete list of all of the data access classes \(DACs\) used by the manufacturing forms for Acumatica ERP. All DAC and the underlying database tables start with *AM*; for example, `JAMS.AM.AMBatch` is the DAC and `AMBatch` is the table.

All columns added to Acumatica ERP forms as a customization are stored in extension tables. The name of an extension table is `<base table>AMExtension`, such as `InventoryItemAMExtension`. Each added column has *AM* as the prefix, such as `AMBOMID`. For example, if you wanted to get a list of the bills of material by a warehouse, you would access the `PX.Objects.IN.INItemSite` DAC and use the `AMBOMID` column.

## Production Transactions { .section}

The following tables contain all of the production transactions. You should always have the `AMBatch` table in generic inquiries if you wish to open the original document. A batch consists only of transactions of the same document type.

|DAC|Description|Columns to Use for Joins|
|---|-----------|------------------------|
|`AMBatch`|Transaction Batch Header|BatNbr, DocType|
|`AMMTran`|Transaction Details|BatNbr, DocType, LineNbr, OrderType, ProdOrdId|
|`AMMTranSplit`|Contains the lot or serial numbers issued or received.|BatNbr, DocType, LineNbr, SplitLineNbr|
|`AMMTranAttribute`|Attributes collected for transactions|BatNbr, DocType, LineNbr, TranLineNbr, OrderType, ProdOrdId, OperNbr|

|Code|Label|
|----|-----|
|`M`|*Material:* Inventory issue and return issue transactions. If the transaction was created by a move to backflush materials, the table has references to the original batch number and document type.|
|`O`|*Move:* Operation completions and receipts to inventory. A move will create inventory receipts and cost transactions when required.|
|`L`|*Labor*: Operation completions, receipts to inventory, labor hours. A move will create inventory receipts and cost transactions when required|
|`C`|*Cost:* Labor, overhead, machine, and tooling costs. Cost transactions create GL transactions|
|`W`|*WIP Adjustment:* These are created when the production order WIP totals are adjusted by reversal of a production receipt, a scrap write-off, or a cancellation or closing of a production order. A GL transaction is created by the adjustment.|
|`D`|*Disassembly:* These are used for disassembly production orders to issue the item and adjust or receive the components.|
|`V`|*Vendor Shipment:* This is only used as the original document type for materials transactions created by a vendor shipment.|

|TranType|Description|Used by DocType|
|--------|-----------|---------------|
|ADJ|Adjustment|D, L, O|
|DSY|Disassembly|D|
|FGR|Return FG|L, O|
|III|Issue|M|
|OWC|Oper. Mfg to Inventory|C|
|RCP|Receipt|D, l, M|
|RET|Return Matl|M|
|XBL|Backflush Labor|C|
|XFO|Fixed Overhead|C|
|XIL|Indirect Labor|C|
|XLA|Labor|C|
|XMC|Machine|C|
|XSQ|Scrap Quarantine|W|
|XSW|Scrap Write-Off|W|
|XTL|Tool|C|
|XVO|Variable Overhead|C|
|XVV|WIP Variance|W|
|XXX|WIP Adjustment|W|

## Production Management { .section}

In the following table, you can find the key tables used for production orders.

|DAC|Description|Columns to Use for Joins|
|---|-----------|------------------------|
|`AMOrderType`|Production Order Type|OrderType|
|`AMProdItem`|Production Order Header; contains the balance \(WIPTotal\), completed amounts \(WIPComp\), and status \(StatusID\)|OrderType, ProdOrdId, InventoryID|
|`AMProdTotal`|Plan and Actual totals by cost element|OrderType, ProdOrdId|
|Prior to Manufactuting Edition 2018R2 `OperNbr` was part of the key for the following columns.|
|`AMProdOper`|Operations|OrderType, ProdOrdId, OperNbr|
|`AMProdMatl`|Materials for Operation|OrderType, ProdOrdId, OperNbr, InventoryID|
|`AMProdAttribute`|Attributes|OrderType, ProdOrdId, AttributeId, \(OperNbr\)|
|`AMProdOvhd`|Overhead|OrderType, ProdOrdId, OperNbr, OvhdID|
|`AMProdStep`|Steps|OrderType, ProdOrdId, OperNbr, StepID|
|`AMProdTool`|Tools|OrderType, ProdOrdId, OperNbr, ToolID|
|For Manufacturing Edition 2018R2 and above, `OperNbr` has been replaced with `OperationID`.|
|`AMProdOper`|Operations|OrderType, ProdOrdId, OperationID|
|`AMProdMatl`|Materials for Operation|OrderType, ProdOrdId, OperationID, InventoryID|
|`AMProdAttribute`|Attributes|OrderType, ProdOrdId, AttributeId, \(OperationID\)|
|`AMProdOvhd`|Overhead|OrderType, ProdOrdId, OperationID, OvhdID|
|`AMProdStep`|Steps|OrderType, ProdOrdId, OperationID, StepID|
|`AMProdTool`|Tools|OrderType, ProdOrdId, OperationID, ToolID|
|For Manufacturing Edition 2019R2, the following tables have been added.|
|`AMVendorShipment`|Vendor Shipment Header|ShipmentNbr|
|`AMVendorShipmentAddress`|The address of the vendor location from the header ShipAdressID.|AddressID|
|`AMVendorShipmentContact`|The vendor contact from the header ShipContactID|ContactID|
|`AMVendorShipLine`|Vendor Shipment Lines|ShipmentNbr, LineNbr|
|`AMVendorShipLineSplit`|The lot or serial number for the shipment line|ShipmentNbr, LineNbr, SplitLineNbr|
|`AMClockItem`|A single record for each production employee showing if they are clocked in and what production order they are or were working on|EmployeeID|
|`AMClockTran`|Listing of all clocked-out transactions|EmployeeID|

## Production Configurator Master Files { .section}

|DAC|Description|Columns to Use for Joins|
|---|-----------|------------------------|
|`AMFeature`|Feature header|FeatureID|
|`AMFeatureOption`|Options for a feature|FeatureID, LineNbr, InventoryID|
|`AMFeatureAttribute`|Attributes for a feature|FeatureID, LineNbr, AttributeID|
|`AMConfiguration`|Configuration definition|ConfigurationID, Revision|
|`AMConfigurationFeature`|Features for configuration|ConfigurationID, Revision, LineNbr, FeatureID|
|`AMConfigurationOption`|Options for a feature for a configuration|ConfigurationID, Revision, ConfigFeatureLineNbr, LineNbr, InventoryID, OperNbr|
|`AMConfigurationAttribute`|Attributes for a configuration|ConfigurationID, Revision, LineNbr, AttributeID|
|`AMConfigurationDefault`|*Reserved for future use*|ConfigurationID, Revision, DefaultID|

## Product Configurator Results { .section}

|**DAC**|**Description**|**Columns to Use for Joins**|
|-------|---------------|----------------------------|
|`AMConfigurationResults`|Configuration Results Header with references to the sales order line and production order if applicable.|ConfigResultsId, ConfigurationID, Revision, CustomerID, OrdTypeRef, OrdNbrRef, OrdLineRef , ProdOrderType, ProdOrdNBr|
|`AMConfigResultsFeature`|Features for a configuration result.|ConfigResultsId, ConfigurationID, Revision, FeatureLineNbr|
|`AMConfigResultsOption`|Options selected for each feature for a configuration result.|ConfigResultsId, ConfigurationID, Revision, FeatureLineNbr, InventoryID|
|`AMConfigResultsAttribute`|Attributes and their values for a configuration result. These are copied to the production order.|ConfigResultsId, ConfigurationID, Revision, LineNbr, AttributeLineNbr, AttributeID|

**Using Configuration Results in a Report**

For example, to produce a query of all sales order lines with a configured item, you can use `AMConfigurationResults` and link it to `SOLine` by using the following: `OrdTypeRef = OrderType`, `OrdNbrRef = OrderNbr`, and `OrdLineRef = LineNbr`.

Getting a list of the options selected for a configuration result is a bit more complex. Link the data as follows:

-   `AMConfigResultsOption` to `AMConfigurationResults` by using `ConfigResultsId`
-   `AMConfigResultsOption` to `AMConfigResultsFeature` by using `ConfigResultsId`, `FeatureLineNbr`. Use the Included flag to get only the options that were selected.
-   `AMConfigResultsFeature` to `AMConfigurationFeature` by using `ConfigurationID`, `Revision`, and `AMConfigResultsFeature` `FeatureLineNbr = AMConfigurationFeature.LineNbr` to get the `FeatureID`.

**Joining Configuration Results to Sales and CRM Documents**

For sales orders, you use the following:

-   `AMConfigurationResults` to `SOLine`
    -   `ordTypeRef` to `orderType`
    -   `ordNbrRef` to `orderNbr`
    -   `ordLineRef` to `LineNbr`

For CRM opportunities or CRM quotes, you use the following:

**Attention:** The products table is linked to the `CRQuote` by the `QuoteID` because the details are contained in the opportunity.

-   `AMConfigurationResults` to `CROpportunityProducts`
    -   `OpportunityQuoteID` to `QuoteID`
    -   `OpportunityLineNbr` to `LineNbr`

## Bill of Material { .section}

In the following table, the primary tables for the bill of material master data are listed. The bill of material table structure was redesigned in 2018R2 Manufacturing Edition.

|DAC|Description|Columns to Use for Joins|
|---|-----------|------------------------|
|Prior to Manufactuting Edition 2018R2, `EffStartDate` was part of the key for the following columns.|
|`AMBomItem`|Bill of material header|BOMID, EffStartDate, InventoryID|
|`AMBomOper`|Operations|BOMID, EffStartDate, OperNbr, WCID|
|`AMBOMMatl`|Materials for an operation|BOMID, EffStartDate, OperNbr InventoryID|
|`AMBomOvhd`|Overheads for an operation|BOMID, EffStartDate, OperNbr OvhdID|
|`AMBomRef`|Reference Designators for a material of the operations|BOMID, EffStartDate, OperNbr. MatlLineID|
|`AMBomStep`|Steps|BOMID, EffStartDate, OperNbr|
|`AMBomTool`|Tools for an operation|BOMID, EffStartDate, OperNbr, ToolID|
|`AMBomAttribute`|Attributes for a bill of material|BOMID, AttributeID, \(OperNbr\)|
|For Manufacturing Edition 2018R2 and above, `RevisionID` is now part of the key for the following columns. `OperNbr` has been replaced with `OperationID`.|
|`AMBomItem`|Bill of material header|BOMID, RevisionID, InventoryID|
|`AMBomOper`|Operations|BOMID, RevisionID, OperationID, WCID|
|`AMBOMMatl`|Materials for an operation|BOMID, RevisionID, OperationID, InventoryID|
|`AMBomOvhd`|Overheads for an operation|BOMID, RevisionID, OperationID, OvhdID|
|`AMBomRef`|Reference designators for a material of the operations|BOMID, RevisionID, OperationID. MatlLineID|
|`AMBomStep`|Steps|BOMID, RevisionID, OperationID|
|`AMBomTool`|Tools for an operation|BOMID, RevisionID, OperationID, ToolID|
|`AMBomAttribute`|Attributes for a bill of material|BOMID, RevisionID, \(OperationID\)|
|`AMBOMCostHistory`|Bill of Material Cost Roll History|BOMID, RevisionID, StartDate|
|The following tables are not linked to the bill of material tables.|
|`AMLaborCode`|Labor Codes|LaborCodeID|
|`AMMach`|Machines|MachID|
|`AMOverhead`|Overheads|OvhdID|
|`AMShift`|Shifts for a work center|WCID, ShiftID|
|`AMShiftMst`|Shift Master|ShiftID|
|`AMToolMst`|Tool Master|ToolID|
|`AMWC`|Work Centers|WCID|
|`AMWCMach`|Machines for a work center|WCID, MachID|
|`AMWCOvhd`|Overheads for a work center|WCID, OvhdID|

## Engineering Change Control { .section}

The Engineering Change Requests \(ECR\) and Engineering Change Orders \(ECO\) can be found in a single DAC, `AMECOItem`.

The pending bills of material are in the bill of material tables with the `BOMID` equal to the ECR or ECO number. The `RevisionID` will be *-ECR* or *-ECO*.

**Parent topic:**[Other Manufacturing Functionality](../UserGuide/MFG_Other_Functionality.md)

