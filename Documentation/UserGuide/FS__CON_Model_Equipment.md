# Model Equipment {#_12e52159-b9bc-431f-871d-9140a7d7fcc7 .concept}

In Acumatica ERP, you can keep track of a stock item after it has been sold to a customer. To do that, you create a piece of *model equipment*—that is, a stock item with the **Model Equipment** equipment class specified.

A piece of model equipment is a stock item that can be sold to a customer and tracked by your company after it is sold. When an invoice is released, the system automatically converts it into target equipment that you can track. You can also keep track of the details of the components of model equipment, such as the serial numbers of these components.

In this topic, you will read about adding a piece of model equipment, defining the components of the model equipment, selling the model equipment, and performing additional actions on the equipment.

## Understanding the Process of Model Equipment Creation { .section}

To create a piece of model equipment in the system, you perform the following steps:

1.  If you want to track the components of a piece of model equipment in the system, you create at least one item class for components on the [Item Classes](IN_20_10_00.md#) \(IN201000\) form.
2.  You create an item class for model equipment on the [Item Classes](IN_20_10_00.md#) form. If the model equipment has components, you have to specify them in the item class and assign them a component item class.
3.  If your company is going to register the selling and replacing of components in the system while employees work with either service orders or sales orders, you create stock items for the components of this model equipment entity on the [Stock Items](IN_20_25_00.md) \(IN202500\) form. For details on selling and replacing components, see the component-related topics in the [Equipment Management Use Cases](FS__MNG_EM_Use_Cases.md) chapter.
4.  You create a piece of model equipment on the [Stock Items](IN_20_25_00.md) form.

## Defining Components and Warranties { .section}

If components are defined for a model equipment item class on the [Item Classes](IN_20_10_00.md#) \(IN201000\) form, the system adds the components with the default settings when you create a model equipment entity on the [Stock Items](IN_20_25_00.md) \(IN202500\) form and select this item class. In the Components table of the **Service Management** tab, you can view the details of the components and change them if necessary.

**Tip:** You can add only components that are defined for the model equipment item class.

If you are going to perform sales or replacement of these components and track them in the system, stock items should be created in the system for them. If stock items have been created for any of the components listed for a model equipment entity, you select the default inventory identifier of each such component in the **Inventory ID** column in the Components table.

On this tab, you can also specify the warranty period provided for the model equipment in the **Equipment General Warranty** section, and for its components in the table. Based on the information provided in this section, the system calculates the warranty period for target equipment that is created for this model equipment. Depending on the setting in the **Equipment Settings** section of the [Equipment Management Preferences](FS_10_03_00.md#) \(FS100300\) form, the system uses an installation date or the sales date to calculate the warranty period.

## Selling Equipment { .section}

When you sell equipment, you create a sales order that includes the equipment being sold for \(with the *Selling Model Equipment* action selected\) on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form. You then process the sales order, as described in [Processing Sales of Stock Items](OrderMgmt_Sale_of_Stock_Items_Mapref.md).

When you release the invoice for the sales order, the system creates a target equipment entity on the [Equipment](FS_20_50_00.md) \(FS205000\) form with the customer location assigned based on the customer location that was assigned to the model equipment on the [Stock Items](IN_20_25_00.md) \(IN202500\) form. For details on target equipment, see [Target Equipment](FS__CON_Target_Equipment.md).

Alternatively, you can reflect a sell of a piece of model equipment in an appointment or service order on the [Appointments](FS_30_02_00.md) \(FS30.02.00\) or [Service Orders](FS_30_01_00.md) \(FS300100\) form, respectively. If you use these forms, you can schedule the installation of the equipment along with the sale.

## Defining Attributes for Model Equipment {#section_okm_bgy_mdc .section}

While you are creating a stock item that is defined as model equipment, you can specify a type related to the equipment in the **Equipment Type** box on the **Service Management**tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form.

When the system converts the model equipment to target equipment from the sale of the stock item, the attributes \(and any values\) that the system copies to the **Attributes** tab of the [Equipment](FS_20_50_00.md) form are determined based on whether the attributes \(and values\) of the equipment and the stock item are the same as follows:

-   If they are the same, the system copies these common attributes and values to the tab.
-   If they are not the same--that is, if attributes or values \(or both\) differ --the system copies the attributes of the selected equipment type and ignores the attributes of the stock item.

## Performing Actions on Equipment { .section}

After you have created target equipment in the system, while you are working with a sales order, service order, or appointment, you can easily register the following actions being performed upon particular target equipment entities:

-   Selling a piece of equipment \(for details, see [Target Equipment: To Sell a Stock Item as Target Equipment](EquipMgmt_Selling_Stock_Item_as_Target_Equipment_Process_Activity.md)\)
-   Selling equipment and optional component for it \(for details, see [Selling a Piece of Equipment and an Optional Component: Process Activity](EquipMgmt_Selling_Piece_of_Equipment_and_Optional_Component_Process_Activity.md)\)
-   Selling an equipment with a replaced default component \(as described in [Upgrading a Default Component of Equipment to Be Sold: Process Activity](EquipMgmt_Upgrading_Default_Component_of_Equipment_to_Be_Sold_Process_Activity.md)\)

**Parent topic:**[Managing Equipment](../UserGuide/FS__MNG_Equipment_chapter.md)

