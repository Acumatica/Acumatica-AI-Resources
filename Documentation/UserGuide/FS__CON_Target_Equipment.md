# Target Equipment {#_48d9bf7a-4946-4ad2-b838-8935c1b84882 .concept}

In Acumatica ERP, you can enter and maintain information about *target equipment*. Target equipment is equipment that needs to be serviced at the customer site or at your company. You can enter this equipment into the system manually, or it can be created automatically when a stock item that is model equipment \(that is, a stock item intended to be tracked by your company after its sale\) is sold by your company.

A piece of target equipment may have components. A component is a part of an equipment entity that can have a warranty and a serial number that are independent of the related equipment entity.

If your company sells equipment that it expects to service later, you should define at least one item class to be assigned to stock items that will become equipment. You should also define any components of the stock item in the item class.

In this topic, you will read about how to add target equipment to the system, how to create target equipment for sold stock items, how to define components and warranties, and how to assign target equipment to services.

## Adding Target Equipment { .section}

You add each specific entity of target equipment to the system to track all the equipment for which your company provides services. You can add it manually in one of the following ways:

-   If the equipment is not already defined in your system, you enter this new equipment on the [Equipment](FS_20_50_00.md) \(FS205000\) form.
-   If the equipment was already defined on the [Equipment](EP_20_80_00.md) \(EP208000\) form, you can click **Extend to SM Equipment** on the form toolbar to add this equipment to the Equipment Management functional area. The system brings up the [Equipment](FS_20_50_00.md) form in the Equipment Management functional area with the relevant information filled in, and you can add or change any information and save your changes.

If your company routinely sells a stock item that your company personnel then service, you can configure the system to automatically create the target equipment entity when an invoice is released for a sales order that includes the stock item.

## Creating Target Equipment for Sold Items { .section}

For target equipment that your company sells as stock items and that you want to track in the system after its sale, you have to define the stock items as model equipment. If a stock item defined as model equipment is added to a sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form, and the *Selling Target Equipment* action is selected in the **Equipment Action** column for this model equipment, when an invoice related to the sales order is released, the system converts the entity of model equipment to an entity of target equipment.

To convert to target equipment a stock item that was not defined as model equipment and was sold, you do the following:

1.  On the [Stock Items](IN_20_25_00.md) \(IN202500\) form, select the stock item and assign a model equipment item class to it in the **Item Classes** box.
2.  On the [Create Equipment for Sold Items](FS_50_09_00.md) \(FS500900\) form, create target equipment entity to be tracked in the Equipment Management functional area for the stock item.

Regardless of when the stock item was converted to target equipment, it may have components; that is, you may have specified components for the item class on the **Service Management** tab of the [Item Classes](IN_20_10_00.md) form. In this case, after you convert the stock items to target equipment, for each piece of equipment created, you should specify the details of its components on the **Component and Warranties** tab of the [Equipment](FS_20_50_00.md) \(FS205000\) form.

## Defining Components and Their Warranties { .section}

You can keep details on the components of each piece of target equipment and their warranties. To add components to a piece of target equipment, in the **Model** box on the **General Info** tab of the [Equipment](FS_20_50_00.md) \(FS205000\) form, select the identifier of the model equipment \(that is, the inventory ID of the stock item that is defined as model equipment\) related to this piece of target equipment. The system adds to the piece of equipment the components that have been assigned to the model equipment on the **Service Management** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

You can view the components that are defined in the system and their warranty information on the [Component Summary](FS_40_07_00.md) \(FS400700\) form.

## Managing Equipment Attributes { .section}

To let users record additional details for a piece of equipment and help your company track that information, you can define attributes for the related equipment type on the [Equipment Types](../Shared/../UserGuide/FS_20_08_00.md) \(FS200800\) form.

When you create a piece of equipment on the [Equipment](../Shared/../UserGuide/FS_20_50_00.md) \(FS205000\) form and select its equipment type, the system populates the **Attributes** tab with the attributes \(and any default values\) defined for that equipment type. You can then enter or update attribute values in the **Value** column. If the **Required** check box is selected for an attribute, you must specify a value before saving the new equipment record.

The **Attributes** tab of the [Equipment](../Shared/../UserGuide/FS_20_50_00.md) form also includes the **Image** area, which you can use to attach an image of the equipment.

## Assigning Target Equipment and Components to Services { .section}

You can assign the necessary target equipment to the services of a service order on the [Service Orders](FS_30_01_00.md) \(FS300100\) form or to the services of an appointment on the [Appointments](FS_30_02_00.md) \(FS300200\) form. On the **Details** tab of either form, in the in the **Target Equipment ID**column of the row for each service that is performed on equipment, you select the identifier of the target equipment entity from the list.

You can also assign target equipment to a schedule of a service contract in the **Equipment ID** column on the **Details** tab of the [Service Contract Schedules](FS_30_51_00.md) \(FS305100\) form. After you have done this, when you generate service orders or appointments for the contract, the service orders will already contain the target equipment assigned to the schedule of the applicable contract. Similarly, you can assign components to schedules.

Also, while viewing a piece of target equipment on the [Equipment](FS_20_50_00.md) \(FS205000\) form, you can schedule an appointment for servicing the equipment by using the **Schedule Appointments** menu.

## Performing Actions on Target Equipment { .section}

After you have created target equipment in the system, while you are working with a sales order, service order, or appointment, you can easily register the following actions if they are performed upon particular target equipment entities:

-   Selling an optional component of target equipment
-   Replacing target equipment
-   Replacing components of target equipment

**Parent topic:**[Managing Equipment](../UserGuide/FS__MNG_Equipment_chapter.md)

