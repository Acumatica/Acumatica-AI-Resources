# Using Attributes in Manufacturing {#_e47c1d4e-e382-49c1-8dfb-d578cc75b3df .concept}

Attributes created on the [Attributes](CS_20_50_00.md) \(CS205000\) form are used for multiple purposes in Acumatica ERP. In many cases they eliminate for customizing forms and when attached to a record, for example, a stock item record, they are automatically available for use in inquiries. You can use attributes in manufacturing forms as well.

## Using Attributes in Bills of Material and Production Orders { .section}

Attributes can be attached to bills of material header and/or operations and are copied onto the production order when the order is created. Attributes can be specified for each production order type on the [Production Order Types](AM_20_11_00.md) \(AM201100\) form. Attributes can also be added to a production order manually by using the [Production Order Maintenance](AM_20_15_00.md) \(AM201500\) form.

Attributes created at the BOM level become order level attributes for the production order. If an order level attribute is enabled for data entry it is available when reporting all operations of the production order. For example, you could create a required attribute for a quality control check for all operations or to record a process value.

A user can enter attribute values for a production order and operation when creating a labor transaction on the [Labor](AM_30_10_00.md) \(AM301000\) form or a move transaction on the [Move](AM_30_20_00.md) \(AM302000\) form. If an attribute is marked as *Transaction Required*, it must be entered. The attribute values entered in these transaction are specific to the transaction.

## Using Attributes in Product Configurator { .section}

Attributes have the following purposes in the product configurator:

-   They can be used to collect data used in formulas to calculate the quantity required for an option. For example, calculating the quantity required based on an attribute value for length.
-   They can be used to capture a value used in production. For example, the text for printing or engraving on a custom piece.
-   They can be used to with rules to include or exclude features and options.

Attributes and their values used on the [Configuration Entry](AM_30_60_00.md) \(AM306000\) form are copied to the production order created as view only.

**Parent topic:**[Other Manufacturing Functionality](../UserGuide/MFG_Other_Functionality.md)

