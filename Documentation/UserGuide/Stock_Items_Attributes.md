# Stock Items: Attributes {#_f2ea392e-5710-4e11-8148-902a861f773d .concept}

For each stock item, Acumatica ERP provides a basic set of characteristics or qualities of the item. These characteristics or qualities include the item's identifier, description, price, cost, units of measure, default warehouse, and default vendor information.

Stock items can have additional characteristics, known as *attributes* in Acumatica ERP, that do not affect item processing but may help your organization analyze stock movements or item sales. Attributes may differ for different types of stock items.

## Types of Attributes { .section}

In Acumatica ERP, product attributes are completely customizable. A system administrator can create attributes on the [Attributes](CS_20_50_00.md) \(CS205000\) form. They can decide what attributes are needed, what values are allowed for each, and what type of control \(element\) is used to implement the attribute in the interface. Attributes may have any of the following types of control:

-   *Text*: A text box into which you can type text
-   *Number*: A box into which you can enter a number.
-   *Combo*: A list box that you can use to type or select options
-   *Multi Select Combo*: A list box where you can select multiple options
-   *Checkbox*: A check box you can select or clear
-   *Datetime*: An element for selecting date and time
-   *Selector*: A box with the lookup table in which you can select a record and then set the ID of this record as the value of the box

Also, an administrator can define an attribute as an optional or required. This allows items to have no value for the attribute. Alternatively, they can define a special value such as *None* or *N/A* \(not applicable\) for use with such items. For details, see [Attributes](CS__con_Attributes.md).

## Attribute Assignment { .section}

You assign attributes at the item class level by using the **Attributes** tab of the [Item Classes](IN_20_10_00.md) \(IN201000\) form. The same attribute can be used for one or several item classes. The attributes for a newly created item class are by default those of the parent item class. If the created item class has no parent, the default attributes are those of the class that is specified in the **Default Stock Item Class** box \(if you are creating a stock item class\) or the **Default Non-Stock Item Class** box \(if you are creating a non-stock item class\) on the [Inventory Preferences](IN_10_10_00.md) \(IN101000\) form.

When you create a new stock item and assign it to an item class by using the [Stock Items](IN_20_25_00.md) \(IN202500\) form, the system will display the list of attributes assigned to the item's class. All items of the same item class will have the same set of attributes, although their values may differ for different items. For example, if you define a color attribute for an item class, each item in the class will have this attribute but the items can have different colors \(or this attribute can be optional\).

Because item classes have different lists of attributes, you can have more complete information about each item. A customizer can design custom reports to give you the ability to analyze information provided by item attributes.

If the *Lot/Serial Attributes* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, you can define attributes for a lot or serial class and manage the set of the attributes for a unit of a stock item with a lot or serial number. For details, see [Items with Lot and Serial Numbers: Lot and Serial Attributes](Lot_and_Serial_Numbers_Lot_Serial_Attributes.md).

**Parent topic:**[Creating Stock Items](../UserGuide/Stock_Items_Mapref.md)

