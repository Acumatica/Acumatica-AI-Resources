# Integration with Carriers: Pacejet Implementation Checklist {#_7df5668b-c497-453c-9bf9-34c6c77f2476 .concept}

Before you configure integration with the Pacejet carrier service, your organization should have an account with the carrier and a signed license agreement. The settings for the plug-in are specified in accordance with the information available in the agreement and the settings of your Pacejet account.

The following sections provide details you can use to ensure that the system is configured properly for processing shipments with the Pacejet carrier service, and to understand \(and change, if needed\) the settings that affect the processing workflow.

## Implementation Checklist { .section}

We recommend that before you initially process shipments with the Pacejet carrier service, you make sure the needed features have been enabled, settings have been specified, and entities have been created, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form|Make sure that the *Inventory* and *Pacejet* features are enabled.|
|[Units of Measure](CS_20_35_00.md) \(CS203500\) form|Make sure that units of measure that will be used for measuring the dimensions and weight of shipments delivered by the Pacejet carrier service are configured.|
|[Companies](CS_10_15_00.md) \(CS101500\) form|Make sure that the linear and weight UOM have been specified for the company in the **Weight UOM** and**Linear UOM** boxes.|
|[Ship via Codes](CS_20_75_00.md) \(CS207500\)|Make sure that the identifier used by the carrier is specified in the **Carrier's Package** column for each box on the **Packages** tab.|
|[Sales Orders Preferences](SO_10_10_00.md) \(SO101000\) form, [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form|Make sure that all necessary settings related to sales orders and inventory have been specified, as described in [Configuration of Order Management: General Information](../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md).|
|[Order Types](SO_20_10_00.md) \(SO201000\) form|Make sure that the *SO* order types are active and have been configured, as described in [Sales Order Types: To Activate the SO Order Type](../ImplementationGuide/config_Sales_Order_Types_To_Activate_SO_Order_Type.md).|
|[Customers](AR_30_30_00.md) \(AR303000\) form|Make sure that all needed customers have been defined in the system, as described in [Customers: Implementation Activity](Customer_Implem_Activity.md) .|
|[Stock Items](IN_20_25_00.md) \(IN202500\) form|Make sure that all stock items have been defined in the system, as described in [Stock Items: Implementation Activity](Stock_Items_Implem_Activity.md).|
|[Carriers](CS_20_77_00.md) \(CS207700\) form|Make sure that a carrier with the *PX.PacejetCarrier.PacejetCarrier* plug-in has been configured in the system.|
|[Ship via Codes](CS_20_75_00.md) \(CS20750\) form|Make sure that a Ship Via code for each service method of the carrier service that you are going to use to deliver shipments has been configured in the system.|

## Other Settings That Affect the Workflow { .section}

You can affect the processing of shipments delivered the Pacejet carrier service by specifying additional settings as follows:

-   To make the system automatically send the ID of the workstation used to print shipping documents to Pacejet, specify this ID in the **Pacejet Workstation ID** box on the **Personal Settings** tab of the [Users](SM_20_10_10.md) \(SM201010\) form or in the **Personal Settings** section on the [User Profile](SM_20_30_10.md) \(SM203010\) forms.
-   To map Acumatica ERP shipping terms to the Pacejet freight terms, select an option in the **Pacejet Freight Terms** on the [Shipping Terms](CS_20_80_00.md) \(CS208000\) form.

**Parent topic:**[Integration with Carriers](../UserGuide/CS__con_Integration_with_Carriers.md)

