# Service Order Types: Quick Processing Settings {#_8b255b1d-0ff8-4f0b-8c17-24b1a2d70668 .concept}

In Acumatica ERP, you can streamline the standard multistep processing of service orders and appointments by configuring quick processing. This setup is done for a specific service order type. With this order type, a user can perform actions such as closing a service document, preparing and releasing billing documents, and emailing those documents to the customer—all with a single click.

**Important:** Quick processing can be configured for service order types that are set to generate sales orders or sales invoices when billing service documents. That is, the *Sales Orders* or *SO Invoice* option is selected in the **Generated Billing Documents** box of the **General** tab \(**Billing Settings** section\) of the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form.

## Configuration of Quick Processing for a Service Order Type { .section}

For quick processing to be used for service orders and appointments of a particular service order type, you must allow quick processing for this service order type and specify the actions to be performed during quick processing. To allow quick processing for the service order type, you select the **Allow Quick Process** check box on the **General** tab \(**Billing Settings** section\) of the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form. This causes the **Quick Processing** tab to appear on the form. On this tab, you specify the settings that determine how the system should process the service orders and appointments of this type.

For each particular service order or appointment of the type being processed on the [Service Orders](../UserGuide/FS_30_01_00.md) \(FS300100\) or [Appointments](../UserGuide/FS_30_02_00.md) \(FS300200\) form, the user can change the list of actions to be performed before initiating processing.

**Parent topic:**[Service Order Types for Inventory Sales](../ImplementationGuide/config_Service_Order_Types_Inventory_Mapref.md)

