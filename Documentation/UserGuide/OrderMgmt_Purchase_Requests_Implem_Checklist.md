# Purchase Requests and Requisitions: Implementation Checklist {#_12bad69c-26f6-4668-a707-72f5bcfacd1e .concept}

The following sections provide details you can use to ensure that the system is configured properly for processing purchase requests and requisitions, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you start processing purchase requests and requisitions, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\)|The following features have been enabled:

 -   *Inventory and Order Management*: This group of features includes the features associated with the standard functionality of inventory and order management.
-   *Inventory*: Gives you the ability to maintain stock items using forms related to the inventory functionality and use the inventory and order management functionality for creating and processing documents that include stock items.
-   *Purchase Requisitions*: This feature gives users the ability to create purchase requests and requisitions, perform bidding to find the best prices, and control budget compliance.

|
|[Request Classes](RQ_20_10_00.md) \(RQ201000\)|The needed request classes for purchase requests have been created, as shown in the [Purchase Requisition Configuration: To Create Customer Request Class](../ImplementationGuide/config_OrderMgmt_Purchase_Requisitions_To_Create_Request_Class.md) activity.|

## Other Settings That Affect the Workflow { .section}

You can affect the workflow of processing purchase requests by specifying additional settings. When you are preparing to create a purchase requisition from requests, you can select the **Merge Lines** check box in the Selection area of the [Create Requisitions](RQ_50_40_00.md) \(RQ504000\) form. This causes the system to merge the lines of all the requests included in a requisition and containing the same stock item with the same unit cost.

If a purchase requisition has already been created, you can merge lines manually on the **Details** tab of the [Requisitions](RQ_30_20_00.md) \(RQ302000\) form by selecting the Included check box for the lines to be merged and clicking **Merge Lines** on the table toolbar.

**Attention:** With manual merging in this way, the system will merge lines even if they have different unit costs and requesters. For customer requests, we do not recommend that you merge items requested by different customers, because this may cause sales documents to be linked incorrectly to purchase requisitions.

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you process purchase requests and requisitions by performing instructions similar to those described in the following topics:

-   [Purchase Requests and Requisitions: To Process Customer Requests](OrderMgmt_Purchase_Requests_To_Process_Customer_Request.md)
-   [Purchase Requests and Requisitions: To Process Employee Requests](OrderMgmt_Purchase_Requests_To_Process_Employee_Request.md)
-   [Purchase Requests and Requisitions: To Process a Requisition Without Requests](OrderMgmt_Purchase_Requests_To_Process_Requisition.md)

**Parent topic:**[Processing Purchase Requests and Requisitions](../UserGuide/OrderMgmt_Purchase_Requests_Mapref.md)

