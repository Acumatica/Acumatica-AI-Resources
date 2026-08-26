# Configuration of Order Management: Implementation Checklist {#_97d35fe1-9214-424d-8e83-ff536beb1d0f .concept}

The following sections provide details you can use to ensure that the system is configured properly for the order fulfillment and inventory management processes, and to specify settings that affect the processing workflow.

## Prerequisites { .section}

Before you start configuring order and inventory management, you should make sure that the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|Make sure that the minimum company settings are configured, as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form|Make sure that the *Inventory and Order Management* and *Inventory* features are enabled.|
|[Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\)|Make sure that at least one order type \(*SO*\) is configured and activated, as described in [Sales Order Types: General Information](config_Sales_Order_Types_GeneralInfo.md) .|
|[Reason Codes](../UserGuide/CS_21_10_00.md) \(CS211000\)|Make sure that the reason codes to be used for processing inventory transactions and vendor returns have been defined in the system as described in [Reason Codes: Implementation Activity](../UserGuide/Reason_Codes_Implem_Activity.md).|

## Minimum Required Settings { .section}

|Form|Settings to Specify|
|----|-------------------|
|[Inventory Preferences](../UserGuide/IN_10_10_00.md) \(IN101000\)|Specify the **Receipt Reason Code**, **Issue/Return Reason Code**, **Adjustment Reason Code**, and **Phys. Inventory Reason Code**; save these settings.|
|[Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form|Specify *SO* as the **Default Sales Order Type**, and save your change to this form.|
|[Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\)|Specify the **PO Return Reason Code**, and save your change to this form.|

## Recommended Settings { .section}

|Form|Settings to Specify|
|----|-------------------|
|[Inventory Preferences](../UserGuide/IN_10_10_00.md) \(IN101000\)|-   **Update GL**: Selected
-   **Automatically Post on Release**: Selected

|
|[Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form|-   **Hold Shipments on Entry**: Cleared
-   **Validate Shipment Total on Confirmation**: Cleared
-   **Use Shipment Date for Invoice Date**: Selected
-   **Automatically Release IN Documents**: Selected

|
|[Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\)|-   **Release IN Documents Automatically**: Selected

|

## Other Settings That Affect the Workflow { .section}

When you are configuring inventory and order management, you can specify additional settings to configure the company to fit your business requirements:

-   To configure the system to post inventory transactions to the general ledger, select the **Update GL** check box on the [Inventory Preferences](../UserGuide/IN_10_10_00.md) \(IN101000\) form.
-   To cause the system to post the generated general ledger transactions automatically, select the **Automatically Post on Release** check box on the [Inventory Preferences](../UserGuide/IN_10_10_00.md) form.
-   To cause the system to assign the group of prepared documents the *On Hold* status by default, select the following check boxes:
    -   **Hold Documents On Entry** check box on the [Inventory Preferences](../UserGuide/IN_10_10_00.md) form \(for inventory transactions\)
    -   **Hold Shipments on Entry** check box on the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form \(for shipment documents\)
    -   **Hold Receipts on Entry** check box on the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form \(for purchase receipt documents\)
-   To set up the system so that users need to enter control amounts before it processes documents, select the following check boxes:
    -   **Validate Document Totals on Entry** on the [Inventory Preferences](../UserGuide/IN_10_10_00.md) form \(for inventory transactions\)
    -   **Validate Shipment Total on Confirmation** on the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) form \(for shipments\)
    -   **For Normal and Standard Orders** on the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) form \(for purchase orders\)
    -   **For Receipts** on the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) form \(for purchase receipts\)
-   To configure the system to automatically release documents that are generated, select the following check boxes:
    -   **Automatically Release IN Documents** check box on the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) form \(to release inventory transactions generated during the processing of sales orders\)
    -   **Release IN Documents Automatically** check box on the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) form \(to release inventory documents generated during the processing of purchase orders\)
    -   **Release AP Documents Automatically** check box on the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) form \(to release accounts payable documents generated during the processing of purchase orders\)
-   To cause the system to automatically create accounts payable documents on release of purchase documents, select the **Create Bill** check box on the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form. By default, the state of this check box is copied to each purchase order or purchase return that is created. If the check box is cleared in a purchase order or purchase return, you can select this check box before releasing the document.

**Parent topic:**[Order Management with Inventory](../ImplementationGuide/config_InvMgmt_Basic_Mapref.md)

