# Service Order Types: General Settings {#_3b4b74c7-7afe-4e5e-8a70-0cd0e288d99c .concept}

This topic explains the settings you need to specify when creating a service order type on the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form.

## Behavior of the Service Order Type { .section}

Each service order type has a behavior that defines the purpose of its service documents and determines which system settings apply to them.

Depending on the behavior you select for a service order type in the **Behavior** box on the **General** tab of the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form, the system makes certain UI elements and tabs available or unavailable on that form, and on the following forms:

-   The [Service Orders](../UserGuide/FS_30_01_00.md) \(FS300100\) form: For service orders of the type
-   The [Appointments](../UserGuide/FS_30_02_00.md) \(FS300200\) form: For appointments of the type

You can select one of the following behaviors for a service order type:

-   *Regular*: Used for standard service orders and appointments that include services such as repair, maintenance, installation, and training. For this behavior, you can specify all settings except route-related ones.
-   *Internal*: Used for service orders within your own company, with appointments performed internally. Since no customer is involved, the posting, customer, and route settings are not available.
-   *Quote*: Used for service quotes, which can be converted into service orders if the customer accepts the quote. For this behavior, billing settings are not available on the form.
-   *Route*: Used for service orders that include route settings between the locations where services are performed. For details on routes, see the Route Management guide.

## Default Contact Information Settings { .section}

For service orders and appointments of a service order type, you can define the default source of address and contact information. On the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form, in the **Default Settings** section of the **General** tab, you select one of the following options in the **Take Address and Contact Information From** box:

-   *Business Account*: The system copies the address and contact information from the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form. To do this, you must first select a customer in the **Customer** box of the Summary area on the [Appointments](../UserGuide/FS_30_02_00.md) \(FS300200\) or [Service Orders](../UserGuide/FS_30_01_00.md) \(FS300100\) form.
-   *Contact*: The system copies the address and contact information from the **Contact** section of the [Contacts](../UserGuide/CR_30_20_00.md) \(CR302000\) form. To do this, you must first select a contact person in the **Contact** box on the **Settings** tab of the [Appointments](../UserGuide/FS_30_02_00.md) or [Service Orders](../UserGuide/FS_30_01_00.md) form.
-   *Branch Location*: The system copies the address and contact information from the **Main Contact** and **Main Address** section of the **General** tab on the [Branch Locations](../UserGuide/FS_20_25_00.md) \(FS202500\) form. Use this option when appointments for the service order usually take place at the branch location’s address.

## Billing Settings { .section}

The billing settings determine the type of a document or record generated for appointments or service orders of a specific service order type during billing. You specify these settings in the **Billing Settings** section of the **General** tab of the [Service Order Types](../UserGuide/FS_20_23_00.md) \(FS202300\) form. In the **Generated Billing Documents** box of this section, you select one of the following options:

-   *AR Documents*. The system generates an accounts receivable invoice when billing is run for a service order or appointment of this type. The invoice can include only services and non-stock items, which can then be processed and paid.

    If this option is selected, the **Create AP Bills for Negative Balances** becomes available. If you select this check box, the system creates an accounts payable bill instead of an AR invoice for any service order or appointment with a negative balance.

-   *Sales Orders*. The system generates a sales order when billing is run for a service order or appointment of this type. You can create shipments and add freight costs to the sales order before generating the sales invoice.

    If quick processing is set up for the service order type, the system can generate the invoice automatically together with the sales order.

    **Important:** To generate sales orders from field service forms, the *Inventory and Order Management* feature must be included in your license and enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. In addition, field service integration must be activated for the sales order type. That is, the **Enable Field Services Integration** check box must be selected for the relevant order type on the **General** tab of the [Order Types](../UserGuide/SO_20_10_00.md) \(SO201000\) form.

-   *SO Invoices*. The system generates a sales invoice when billing is run for a service order or appointment of this type. The invoice can include both services and stock items \(that do not require shipping\) sold to customers along with the services.

    If quick processing is set up for the service order type, the system can process the invoice automatically.

-   *Project Transactions*. The system generates a project transaction when billing is run for a service order or appointment. If the document includes stock items, the system also generates an issue. Service order types with this option are used for service documents linked to projects. The resulting project transactions are tracked and allocated to the associated project.
-   *None*. The system does not generate billing documents for service orders or appointments of this type.

After you select an option in the **Generated Billing Documents** box, you specify the remaining settings in the section. The option you select determines which elements are available, and the values you enter for these elements define how the billing documents are generated.

**Parent topic:**[Service Order Types](../ImplementationGuide/config_Service_Order_Types_Mapref.md)

