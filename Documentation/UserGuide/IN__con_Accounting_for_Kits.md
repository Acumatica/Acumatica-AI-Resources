# Inventory Item Kits {#_1ab694a7-e078-4a3c-9a35-18cd3ac26b2a .concept}

A kit is a bundle of stock and non-stock items that increases the value of the kit components. In Acumatica ERP, you can use kits of inventory items if your organization sells multiple inventory items together and wants to track these items as a whole. For example, suppose that an organization sells cheese and wine and also offers nicely packed baskets with a bottle of wine and a set of cheese that pairs well with this wine. To track these baskets in inventory, the organization uses kits, which include a bottle of wine, several cheeses, and a basket as stock items, and the delivery service and packaging as non-stock items.

**Note:** To use the kit functionality, make sure the *Kit Assembly* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

In this topic, you will read about kit types and revisions of kit specifications.

## Kit Types { .section}

You can create stock and non-stock kits. The main difference between these kit types is that the system tracks stock kits in inventory and does not track non-stock kits. The tables below compare stock and non-stock kits.

|**Components**|Stock Kit|Non-Stock Kit|
|--------------|---------|-------------|
|Stock components|Yes|Yes|
|Non-stock components|Yes|Yes|
|Kit specification revisions|Multiple|One|
|Issue of components of a stock kit|When a kit is assembled|When a kit is issued|
|Expense accrual for non-stock components|When a kit is assembled|Not applicable|
|Lot- or serial-numbered components|Serial-numbered components can be used only in serial-numbered kits|Yes, except for components with the *When-Used* assignment method or the *User-Enterable* issue method|

|Kit units \(single entities of a kit\)|Stock Kit|Non-Stock Kit|
|--------------------------------------|---------|-------------|
|Production/disassembly transactions|Required|Not applicable|
|Inventory tracking|Yes, as a regular stock item; stock components do not exist in inventory after the kit is assembled|No; stock components are tracked individually|
|Inventory value|Value of the kit unit received to inventory upon production|Values of its stock components|
|Availability tracking|Yes|No|
|Receipt of a kit unit|On kit production transaction|Not applicable|
|Issue of a kit unit|Inventory issue of the kit unit|Inventory issue of stock component units|
|Lot/serial tracking of kit units|Applicable|Not applicable|
|Disassembly revision|The revision used for assembly of a serial-tracked kit, and any revision of a non-serial-tracked kit|Not applicable|
|Sales return options|A kit unit|A kit unit or any kit components|
|Sales return revision|Not applicable|The current revision of the kit|

For detailed information on kits, see [Stock Kits](IN__con_Stock_Kits.md) and [Non-Stock Kits](IN__con_Non_Stock_Kits.md).

## Kit Specifications and Revisions { .section}

To represent kits in the system, you create specifications, which define the stock and non-stock items included in a kit, by using the [Kit Specifications](IN_20_95_00.md) \(IN209500\) form. Each specification has at least one *revision*, which is automatically created when you create a specification. A revision is a version of the same kit that has minor differences from the previous version.

For example, suppose that your organization sells computers and offers a kit that contains a keyboard, a mouse, a leather case, and software installation service. If you change the vendor of leather cases, you can just change the inventory item for the case in the kit instead of creating a new kit. So the revision of kit can be modified and used for creating new sales, even if the kits with these revision have already been assembled and sales orders with this revisions of the kit have been released.

For stock kits, you can create multiple revisions of the same specification. When you assemble a stock kit, you can use any of the existing revisions of the kit. If you need to disassemble a stock kit, you select the revision that was used for kit assembly.

For non-stock kits, only one revision is created when you create a specification by using the [Kit Specifications](IN_20_95_00.md) form. You cannot add multiple revisions, as for stock kits.

For each stock or non-stock kit revision, you can allow users to add components to the kit during assembly by selecting the **Allow Component Addition** check box on the [Kit Specifications](IN_20_95_00.md) form and to change the quantity of components in the kit by selecting the **Allow Component Qty. Variance** check box for each kit component.

Suppose that you are including in a kit specification stock components with the **Divisible Unit** check box cleared for the base UOMs on the [Stock Items](IN_20_25_00.md) \(IN202500\) form. When you type the quantity in the **Component Qty.** box on the **Stock Components** tab of the [Kit Specifications](IN_20_95_00.md) form, the system validates the quantities of the components included in the kit, making sure they are integers. If they are not, an error message is displayed, and you cannot save the specification until you type an integer quantity.

**Parent topic:**[Managing Inventory Kits](../UserGuide/IN__mng_Managing_Kit_Assemblies.md)

