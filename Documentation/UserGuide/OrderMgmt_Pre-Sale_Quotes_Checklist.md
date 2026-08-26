# Presales Quotes: Implementation Checklist {#_37efd08f-f966-4535-8ec2-b775671c1548 .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing sales orders of the *QT* type \(quotes\), and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially begin processing quotes, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|Make sure that the *Inventory* feature is enabled.|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\), [Inventory Preferences](IN_10_10_00.md) \(IN101000\)|Make sure that all necessary settings related to sales orders and inventory have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\)|Make sure that the *QT* and *SO* order types are active and have been configured, as demonstrated in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md) and [Sales Order Types: To Activate the QT Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_QT_Order_Type.md).|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing quotes by specifying additional settings as follows:

-   To cause the system to automatically calculate discounts, enable the *Customer Discounts* feature on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.
-   To cause the system to automatically calculate freight for the requested quantities of stock items, select the **Calculate Freight** check box on the **General** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form \(**Order Settings** section\).
-   To cause the system to create quotes with the *On Hold* status, select the **Hold Orders on Entry** check box on the **General** tab of the [Order Types](SO_20_10_00.md) form \(**Order Settings** section\).

## Validation of Configuration { .section}

To make sure that all the configuration has been performed correctly, we recommend that in your system, you process a quote by performing instructions similar to those described in [Presales Quotes: Process Activity](OrderMgmt_Pre-Sale_Quotes_Activity.md).

**Parent topic:**[Processing Pre-Sale Quotes](../UserGuide/OrderMgmt_Pre-Sale_Quotes_Mapref.md)

