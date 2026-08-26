# Order Management Basic Configuration: Implementation Checklist {#_1ee89b76-43ce-4c71-8492-2f61895871d7 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the processing of sales and purchases with non-stock items, and to specify settings that affect the processing workflow.

## Prerequisites { .section}

Before you start configuring order management, you should make sure that the needed features have been enabled and settings have been specified, as described in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|Multiple forms|Make sure that the minimum company settings are specified, as described in [Company Without Branches: General Information](config_Basic_Company_GeneralInfo.md).|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form|Make sure that the *Inventory and Order Management* feature is enabled.|
|[Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\)|Make sure that the *IN* order type has been activated, as described in [Sales Order Types: To Activate the IN Order Type](config_Sales_Order_Types_To_Activate_IN_Order_Type.md).|

|Form|Settings to Save|
|----|----------------|
|[Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form|Save the default settings.|
|[Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\)|Save the default settings.|

## Settings That Affect the Workflow { .section}

When you are configuring order management, you can specify additional settings to configure the company to fit your business requirements:

-   To cause the system to verify the customer's credit status and put a sales order on hold if the credit limit has been exceeded, select the **Hold Document on Failed Credit Check** check box on the [Sales Orders Preferences](../UserGuide/SO_10_10_00.md) \(SO101000\) form.
-   To reduce input errors during purchase order entry, set up the validation of order totals by selecting the **For Normal and Standard Orders** check box in the **Validate Total on Entry** section of the [Purchase Orders Preferences](../UserGuide/PO_10_10_00.md) \(PO101000\) form, so that a user will need to enter a control total for each order of this type; the order can be processed further only if the system-calculated total equals the manually entered control total.

**Parent topic:**[Basic Order Management](../ImplementationGuide/config_OrderMgmt_Basic_Mapref.md)

