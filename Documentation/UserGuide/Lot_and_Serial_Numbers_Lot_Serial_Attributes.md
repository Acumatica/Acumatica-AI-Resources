# Items with Lot and Serial Numbers: Lot and Serial Attributes {#_602d6356-ac18-42a2-ab32-223e5d2fa975 .concept}

Your company may need to specify and track attributes for individual units of items that are assigned lot or serial numbers. An attribute is a quality or characteristic that provides information that is important to your company. For example, for lot-controlled textiles, you may need attributes such as length, thickness, and style. Similarly, for serial-tracked items, such as digital cameras, you may need attributes such as manufacturer, year, and model.

In Acumatica ERP, you can track additional information about units of stock items by specifying attribute values for a unit with a particular serial number or for units with a particular lot number. You can define attributes for a lot or serial class and manage the set of the attributes for a unit of a stock item with a lot or serial number. Also, you can add the necessary units to a sales order, issue, adjustment, and transfer.

**Attention:** This functionality is available only if the *Lot/Serial Attributes* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Setup of Lot and Serial Attributes { .section}

Before you begin using lot or serial attributes, you need to define each attribute on the [Attributes](CS_20_50_00.md) \(CS205000\) form. Then you define the attributes to be used for the items of a lot or serial class by adding the attributes in the **Attributes** section of the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form.

You can add attributes for an item of a lot or serial class only if the tracking method of the class is either *Track Serial Numbers* or *Track Lot Numbers* and the assignment method is *When Received*. If the class has a different tracking method or assignment method \(or both\), you cannot add attributes in the **Attributes** section.

If you add or delete attributes for a lot or serial class on the [Lot/Serial Classes](IN_20_70_00.md) form, the system adds or deletes them for each existing item of this class. Also, if you change the state of the **Active** or **Required** check box for an attribute in the lot or serial class, the system changes the state of the respective check box for all the items of this class.

On the **Attributes** tab of the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the **Lot/Serial Attributes** table shows the attributes for the selected lot- or serial-tracked item. By default, the table has the lot or serial attributes specified for the lot or serial class assigned to the item. You can add and delete attributes for the item. If the lot or serial class has the *Not Tracked* tracking method or the *When Used* assignment method \(or both\), you cannot add attributes to the table.

**Important:** You cannot delete a lot or serial attribute from the [Stock Items](IN_20_25_00.md) or [Lot/Serial Classes](IN_20_70_00.md) form if at least one unit with a lot or serial number has been added to an unprocessed sales order.

## Specification of Values for Lot and Serial Attributes { .section}

When a unit of a stock item with a lot or serial number has been purchased, you can specify attribute values for this unit in the **General** table of the **Line Details** dialog box on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) or [Receipts](IN_30_10_00.md) \(IN301000\) form. You open this dialog box by clicking the line on the **Details** tab of the form and clicking **Line Details** on the table toolbar. The table contains the attributes and attribute values that are specified for each unit of the stock item selected in the line.

**Attention:** In the **Line Details** dialog box, you must enter the lot or serial number first; then you can specify attributes for the lot or serial number in the **General** table.

For each lot or serial number, you can specify different attribute values. If the values for all listed units are the same, you can assign all the attribute values from the first line to all the units in the table by clicking **Use Attributes from First Line** on the table toolbar. Also, for each lot or serial number, you can specify the manufacturer's lot or serial number in the **Manufacturer Lot/Serial Nbr.** column.

## Viewing and Modification of Lot or Serial Details for a Unit of a Stock Item { .section}

On the [Lot/Serial Details](IN_20_96_00.md) \(IN209600\) form, you can view the settings of a particular unit of a stock item with a lot or serial number, such as the lot or serial class, the expiration date, and the manufacturer's lot or serial number. You can view a unit on this form only if the unit either is in stock or has been issued from the warehouse and has the following settings specified on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form:

-   **Tracking Method**: *Track Lot Numbers* or *Track Serial Numbers*
-   **Assignment Method**: *When Received*

On the **Attributes** tab of the [Lot/Serial Details](IN_20_96_00.md) form, you can view and modify the attribute values of a unit. On the **Description** tab, you can add or update an extended description of the item and upload its image. On the **History** tab, you can review the history of the related inventory documents.

## Specification of a Sales Price and Description for a Unit of a Stock Item { .section}

Different units of a stock item may have different prices depending on each unit's attribute values. If the **Specify Lot/Serial Price and Description** check box is selected for the lot or serial class of an item on the [Lot/Serial Classes](IN_20_70_00.md) \(IN207000\) form, you can define the sales price, MSRP, and description for a particular unit in the Summary area of the [Lot/Serial Details](IN_20_96_00.md) \(IN209600\) form.

**Attention:**

The following apply to each item of the class:

-   The item cannot be added to a sales price list or sales price worksheet.
-   The item must have a lot or serial number specified in a sales order line. The **Mark for PO** check box cannot be selected for this line.
-   Each unit of a stock item with a lot or serial number must be added to a separate sales order line because each unit may have a unique description and price.

When a unit of a stock item with a particular lot or serial number is created, the system copies the default price and MSRP of the item from the **Default Price** and **MSRP** boxes of the [Stock Items](IN_20_25_00.md) \(IN202500\) form to the **Sales Price** and **MSRP** boxes of the [Lot/Serial Details](IN_20_96_00.md) form. In the **Description** box, the system inserts the description from the related purchase receipt on the [Purchase Receipts](PO_30_20_00.md) \(PO302000\) form.

When you add a unit of a stock item to a line on the **Details** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) or [Invoices](SO_30_30_00.md) \(SO303000\) form, the system inserts the sales price of the unit in the **Unit Price** column and the description in the **Line Description** column.

**Attention:** This capability is available for an order on the [Sales Orders](SO_30_10_00.md) form as long as the order type does not have *Blanket Order* or *Quote* specified as its automation behavior on the **Template** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form.

## Selection of a Lot- or Serial-Tracked Item in Documents { .section}

You can select a unit of a stock item with a lot or serial number in the following documents:

-   An order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form
-   An inventory issue on the [Issues](IN_30_20_00.md) \(IN302000\) form
-   An inventory adjustment on the [Adjustments](IN_30_30_00.md) \(IN303000\) form
-   An inventory transfer on the [Transfers](IN_30_40_00.md) \(IN304000\) form

To select the unit, you click **Add Lot/Serial Nbr.** on the table toolbar of the **Details** tab. In the **Add Lot/Serial Nbr.** dialog box, which opens, you can view item availability and select units. The table in the dialog box displays columns with the attribute values of each unit with a particular lot or serial number. In the **Search** box, you can search for units with lot or serial numbers by typing text strings that may be included in attribute values or other columns with information about the item.

When you add a unit with a lot or serial number to a sales order, the system inserts each unit with a lot or serial number in a separate line on the **Details** tab. Also, the system allocates the unit with this lot or serial number for this order.

**Parent topic:**[Managing Items with Lot and Serial Numbers](../UserGuide/Lot_and_Serial_Numbers_Mapref.md)

