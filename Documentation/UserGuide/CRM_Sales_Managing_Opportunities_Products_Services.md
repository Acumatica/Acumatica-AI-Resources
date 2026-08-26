# Opportunity Management: Products and Services in an Opportunity {#_bd2f29d4-7262-4a15-a557-e15ce142da1a .concept}

On the **Details** tab of the [Opportunities](CR_30_40_00.md) \(CR304000\) form, you can add to the selected opportunity the products or services that you want to sell to the prospect or customer. Based on these products or services, you can create any of the following documents: a sales quote, a sales order, a service order, and an invoice.

You can add stock items or non-stock items to an opportunity by selecting their identifiers in the **Inventory ID** column if the *Inventory* feature has been enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form and inventory item records of the products and services have been created on the [Stock Items](IN_20_25_00.md) \(IN202500\) or the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) form.

For any products or services that are not defined in the system, you can still add lines to the **Details** tab of the [Opportunities](CR_30_40_00.md) form. You can leave the **Inventory ID** column empty, specify the names of the items in the **Description** column, and specify or select manually the rest of the settings—such as quantity, prices, discounts, or warehouse.

The tax details for the products and services \(with an inventory ID or without an inventory ID\) specified for the opportunity are inserted by the system on the **Taxes** tab of the [Opportunities](CR_30_40_00.md) form if taxes have been configured in your system, as described in [Tax Management Overview](TX__MNG_Tax_Module_Overview.md).

You can specify the information about discounts in the opportunity on the **Discounts** tab if the *Customer Discounts* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) form. You can add a discount for a customer or a group of customers \(which the system will automatically apply\), apply a promo code for a discount, or apply a manual discount. The system will apply automatic group and document discounts even if the value in the **Inventory ID** column for a line on the **Details** tab for the opportunity on the [Opportunities](CR_30_40_00.md) form is empty.

**Parent topic:**[Managing Opportunities](../UserGuide/CRM_Sales_Managing_Opportunities_Mapref.md)

