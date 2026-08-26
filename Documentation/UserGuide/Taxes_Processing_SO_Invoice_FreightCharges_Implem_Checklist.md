# Taxable Sales with Freight Charges: Implementation Checklist {#_efceb8f9-9183-47e0-a4d8-924ada4a8df5 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing a taxable sales order and invoice with freight charges, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist {#section_fyl_fjv_vxb .section}

We recommend that before you initially process a taxable sales order, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The *Standard Inventory*, *Inventory*, and *VAT Reporting* features have been enabled.|
|[Order Types](SO_20_10_00.md) \(SO201000\)|The *SO* order type is active and has been configured, as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md).|
|[Tax Zones](TX_20_60_00.md) \(TX206000\)|The tax zone that will be used for the customer has been created, as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).|
|[Tax Categories](TX_20_55_00.md) \(TX205500\)|The tax category that will be used in sales order lines has been created, as described in [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](../ImplementationGuide/TaxZones_and_Categories_VAT_Implem_Activity.md).|
|[Taxes](TX_20_50_00.md) \(TX205000\)|The value-added tax that will be used in sales order lines and applied to the freight charge has been configured, as described in [Value-Added Taxes: To Create a General VAT and Exempt VAT](../ImplementationGuide/Taxes_Configuring_VAT_Impem_Activity_General_VAT.md).|
|[Stock Items](IN_20_25_00.md) \(IN202500\)|The needed stock items have been configured and the needed tax category has been assigned to each stock item on the **General** tab.|
|[Shipping Zones](CS_20_75_10.md) \(CS207510\)|The needed shipping zone has been created.|
|[Ship via Codes](CS_20_75_00.md) \(CS207500\)|The needed ship via code has been created; on the **Details** tab, the **Base Rate** and **Freight Sales Account** have been specified.|
|[Customers](AR_30_30_00.md) \(AR303000\)|The needed customer account has been configured and the needed tax zone, shipping zone, and ship via code have been assigned to this customer on the **Shipping** tab.|

## Other Settings That Affect the Workflow {#section_hyl_fjv_vxb .section}

You can affect the workflow of processing taxable sales with freight charges by specifying additional settings as follows:

-   To cause shipments to be created with the *On Hold* status \(so that the user can verify them before processing them further\), select the **Hold Shipments on Entry** check box on the [Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form.
-   To cause general ledger batches generated during the processing of sales documents to be posted automatically, select the **Automatically Post on Release** check box on the [General Ledger Preferences](GL_10_20_00.md) \(GL102000\) form. For information on processing general ledger batches, see [GL Transactions: General Information](Finance_Processing_Batch_GeneralInfo.md).

## Validation of Configuration {#section_jyl_fjv_vxb .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process a taxable sale with freight charges by performing instructions similar to those described in [Taxable Sales with Freight Charges: Process Activity](Taxes_Processing_SO_Invoice_FreightCharges_Activity.md).

**Parent topic:**[Processing Taxable Sales with Freight Charges](../UserGuide/Taxes_Processing_SO_Invoice_FreightCharges_Mapref.md)

