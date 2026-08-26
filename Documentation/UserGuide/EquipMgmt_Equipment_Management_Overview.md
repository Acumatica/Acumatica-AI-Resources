# Overview of Equipment Types {#_fc612ffc-3070-458e-a440-6ba094413bb3 .concept}

By using the equipment management functionality, you can maintain and track information about the equipment that your company uses to provide services, as well as the equipment for which your company provides services. For equipment that requires regular maintenance, you can create service contracts that include customer visit schedules and specify the billing period for each customer. Additionally, you can manage service orders and appointments associated with equipment maintenance contracts.

## Equipment Categories in Acumatica ERP {#section_oym_gs4_hxb .section}

In Acumatica ERP, equipment is divided into two major categories, based on how the equipment is related to the service:

-   Resource equipment is a resource of your company that is used to perform services. In the system, you can easily track the resource equipment that is used during appointments.
-   Target equipment is serviced by your company. In Acumatica ERP, you can keep information about target equipment and arrange appointments for its maintenance.

In some cases, one piece of equipment can be both target equipment and resource equipment. For example, when you create appointments for a customer, you might include a drill as resource equipment, but if you want to repair your own drill, you could create an internal appointment and select the same drill as target equipment.

The following sections describe both of these types of equipment in greater detail.

## Resource Equipment Creation {#section_v4d_bxs_mdc .section}

In Acumatica ERP, you can enter and keep information about resource equipment. Resource equipment is a physical resource of your company that staff members use to perform services.

You add each specific piece of resource equipment \(for example, a specific screwdriver or drill\) that will be used to perform services as a record on the [Equipment](FS_20_50_00.md) \(FS205000\) form. In the Summary area of the form, you define this record as resource equipment by selecting the **Resource Equipment** check box; you also select the equipment type, and specify that your company owns the equipment by selecting the **Company** option button \(under **Owner**\). To maintain the relevant details of each equipment record that you add to the system, you can enter additional information, such as general, manufacturing, and purchase settings.

## Target Equipment Creation and Tracking {#section_bz4_bxs_mdc .section}

In Acumatica ERP, you can enter and maintain information about target equipment: equipment that needs to be serviced at the customer site or at your company. This equipment can be created in the system in the following ways:

-   On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, you create stock items based on an item class defined for model equipment—equipment that your company expects to sell and later service. This item class is a class with the **Model Equipment** option button selected on the **Service Management** tab of the [Item Classes](IN_20_10_00.md) \(IN201000\) form. When a stock item with an equipment class for model equipment is sold to a customer and the corresponding invoice is released, the system automatically creates an equipment record on the [Equipment](FS_20_50_00.md) form.
-   On the [Equipment](FS_20_50_00.md) \(FS205000\) form, you create a record for each piece of equipment that will be either serviced \(target equipment\) or used to perform a service \(resource equipment\). This may include equipment purchased from a third party.

A piece of target equipment may have components for which stock items with the **Component** equipment class are created on the [Stock Items](IN_20_25_00.md) \(IN202500\) form. A component is a part of a piece of equipment that may have its own warranty and serial number.

In Acumatica ERP, you can track the serial numbers of equipment after it is sold. You can track the warranties, upgrades, and other pertinent information for the equipment. You can also track its service history, including every part that has been added to it. The system also supports the tracking of multiple serial numbers for the same equipment record and the tracking of serial numbers for different components.

**Parent topic:**[Equipment Management](../UserGuide/FS_00_00_02.md)

