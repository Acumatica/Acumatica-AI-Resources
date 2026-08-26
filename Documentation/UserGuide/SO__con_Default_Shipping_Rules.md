# Shipping Rule Settings {#_8417895d-76aa-4d98-a80c-4f27f57cea59 .concept}

The shipping rules specified for a particular sales order define whether the goods for the sales order should be shipped only in full or partial shipments for the available quantities are allowed. This topic explains how you can set up the shipping rules to be used in sales orders by default.

## Shipping Settings of a Customer { .section}

You can specify the shipping rule for each customer class in the **Default Delivery Settings** section on the **General Settings** tab of the [Customer Classes](AR_20_10_00.md) \(AR201000\) form. Then when you create a new customer and select this class on the [Customers](AR_30_30_00.md) \(AR303000\) form, the shipping rule specified in the customer class will be copied to the **Shipping Rule** box on the **Delivery Settings** tab. If needed, for the selected customer, you can override the default shipping rule copied from the customer class.

When you create a new sales order on the [Sales Orders](SO_30_10_00.md) \(SO301000\) form and select the customer, the system inserts the default shipping rule of the selected customer as the document-level shipping rule for this sales order in the **Shipping Rule** box on the **Shipping** tab. Then when you add lines to the sales order, the system specifies the document-level shipping rule to each added line by default.

**Note:** You can override the document-level shipping rule so that all new lines in this sales order will be added with this new rule \(which differs from the customer's default shipping rule\). Also, you can change the shipping rule manually in any sales order line.

## Shipping Settings of Customer Locations { .section}

If the *Business Account Locations* feature is enabled in your system on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the system copies the default shipping rule values from the customer to the customer locations. If needed, you can specify different default shipping rules for different customer locations on the [Customer Locations](AR_30_30_20.md) \(AR303020\) form.

## Shipping Settings for Transfer Orders { .section}

Because transfer orders are created to account for transfers of items between warehouses, and warehouses are assigned to particular branches, default shipping rules can be specified for branches on the **Delivery Settings** tab of the [Branches](CS_10_20_00.md) \(CS102000\) form.

**Parent topic:**[Processing Partial Shipments](../UserGuide/SO__con_Shipments.md)

