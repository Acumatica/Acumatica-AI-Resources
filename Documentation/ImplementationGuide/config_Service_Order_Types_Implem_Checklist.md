# Service Order Types: Implementation Checklist {#_feabb9ea-c56e-4e99-8aed-f76c0ed5e220 .concept}

The following sections provide details you can use to ensure that the system is configured properly for the creation of service order types.

## Prerequisites { .section}

Before you create a service order type to be used for service orders and appointments for which sales orders or SO invoices will not be generated, you should make sure the minimum configuration of service management functionality has been performed, as described in [Basic Service Management Configuration: Implementation Activity](config_ServMgmt_with_Inventory_Implem_Activity.md).

## Implementation Checklist { .section}

We recommend that before you start to create service order types, you make sure the needed features have been enabled and entities have been configured, as summarized in the following checklist.

|Form|Criteria to Check|
|----|-----------------|
|[Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form|The *Service Management* feature has been enabled.|
|[Numbering Sequences](../UserGuide/CS_20_10_10.md) \(CS201010\) form|At least one numbering sequence for service orders has been created.|
|[Credit Terms](../UserGuide/CS_20_65_00.md) \(CS206500\) form|At least one set of credit terms has been created.|

## Minimum Required Settings for a Service Order Type { .section}

|Form|Settings to Specify|
|----|-------------------|
|The Summary area of the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form|-   The identifier of the service order type
-   The description of the service order type

|
|The **General** tab of the [Service Order Types](../UserGuide/FS_20_23_00.md) form|-   The **Numbering Sequence** to be used to assign service order reference numbers to service orders of the type
-   The needed **Behavior** of the service order type is selected
-   The *AR Documents* option in the **Generated Billing Documents** box, which indicates that an AR document will be generated to bill the customer for services specified in service orders and appointments of the service order type
-   The needed option in the **Default Terms for AR and SO** box

|

## Other Settings That Affect the Workflow { .section}

For a particular service order type, you can specify additional settings on the **General** tab of the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form that will affect the processing of service orders and appointments of this type:

-   If the **Complete Service Orders When Its Appointments Are Completed** check box \(**General Settings** section\) is selected, the system changes the status of a service order of the type to *Completed* when all appointments of this service order have the *Completed* status. If this check box is cleared, a user has to manually complete the service order.
-   If the **Close Service Orders When Its Appointments Are Closed** check box \(**General Settings** section\) is selected, the system changes the status of a service order of the type to *Closed* when all appointments of this service order have the *Closed* status. If this check box is cleared, a user has to manually close the service order.
-   If the **Require Contact** check box \(**General Settings** section\) is selected, users have to select a contact person in the **Contact** box on the **Settings** tab of the [Service Orders](../UserGuide/FS_30_01_00.md) \(FS300100\) or [Appointments](../UserGuide/FS_30_02_00.md) \(FS300200\) form when they create service orders or appointments of this service order type. If this check box is cleared, the service orders and appointments of the type can be created without the contact person being specified.
-   If the **Require Customer Signature on Mobile App** check box \(**General Settings** section\) is selected, before a user completes an appointment of the type by using a mobile device, the customer's signature has to be obtained and saved in the mobile app. If this check box is cleared, the user can complete an appointment of the type without the customer's signature.
-   If the **Bill Only Closed Appointments** check box \(**Billing Settings** section\) is selected, billing documents can be generated only for closed appointments of the service order type. If this check box is cleared, billing documents an be generated for appointments of the type that are not closed.

To simplify the process of creating service orders and appointments in the system, you can leave the default settings.

**Parent topic:**[Service Order Types](../ImplementationGuide/config_Service_Order_Types_Mapref.md)

