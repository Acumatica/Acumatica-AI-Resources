# Import of Taxes: Substitution Lists {#_c3958f2a-1324-48e1-bc3f-89550d870c5c .concept}

When you set up the synchronization of taxes between Acumatica ERP and the Shopify store, you specify the substitution lists in the **Substitution Lists** section of the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. The following sections describe how substitution lists specified in these boxes are used during the synchronization of orders and stock and non-stock items.

## Substitution List for Taxes { .section}

If you use Acumatica ERP for tax reporting \(without an external tax provider\), when you configure tax synchronization, you need to make sure that all taxes that might be applied in the Shopify store have also been set up on the [Taxes](TX_20_50_00.md) \(TX205000\) form. Taxes whose IDs do not match the IDs of taxes in the Shopify store should be mapped with external tax IDs in a substitution list as follows: Taxes whose IDs in the Shopify store do not match the IDs of taxes in Acumatica ERP or taxes with the same ID but different rates in the Shopify store should be mapped with tax IDs in Acumatica ERP in a substitution list as follows:

1.  On the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form, you specify taxes from the external system in the **Original Value** column. For each external tax, you add a corresponding tax ID from Acumatica ERP in the **Substitution Value** column.

    You specify a tax from the Shopify store in the **Original Value** column in either of the following ways:

    -   *&lt;Tax ID&gt;*: The tax ID if the ID is unique in the Shopify store \(for example, *Arkansas State Tax*\).
    -   *&lt;Tax ID&gt; &lt;Tax Rate&gt;*: The tax ID followed by the space character and the tax rate if there are multiple taxes with the same ID but different rates \(for example, *Arkansas State Tax 6.5%*\).

        You specify the tax rate as a decimal followed by the *%* character, as it is represented in the Shopify store. For example, the tax rate of 6.5% is specified as *6.5%* and the tax rate of 0.125% is specified as *0.125%*.

    **Tip:** If you specify the tax ID along with the tax rate for a tax with a unique ID in the Shopify store, the system still correctly processes this mapping.

2.  On the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form \(**Orders** tab\), you specify the substitution list in the **Taxes** box.

When an order containing taxes is being imported to Acumatica ERP, for each tax that has been added to the order in the store, the system searches for a matching tax in Acumatica ERP as follows:

1.  Searches for the tax on the [Taxes](TX_20_50_00.md) form.
2.  Searches for the tax in the substitution list, and then searches for its substitution value on the [Taxes](TX_20_50_00.md) form.

If the tax has been found, the system adds it to the imported order. Otherwise, the synchronization of the order fails and an error is displayed for the order's synchronization record on the [Sync History](BC_30_10_00.md) \(BC301000\) form.

## Substitution List for Tax Categories { .section}

In Acumatica ERP, you can assign tax categories to stock and non-stock items. To make sure taxes are calculated correctly when an item is ordered in a Shopify store, you need to map the tax categories in Acumatica ERP to the tax categories in the Shopify store by using a substitution list as follows:

1.  On the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form, you create a substitution list. In the **Original Value** column, you add Acumatica ERP tax categories, and in the **Substitution Value** column, you add a tax category from the Shopify store for each of the tax categories.
2.  On the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form \(**Orders** tab\), you select the substitution list in the **Tax Categories** box.

When a stock or non-stock item is synchronized with the Shopify store, a tax category is assigned to the item in the Shopify store based on the tax category assigned to the item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or [Stock Items](IN_20_25_00.md) \(IN202500\) form, and the substitution value specified for the tax category in the substitution list on the [Substitution Lists](SM_20_60_26.md) form.

**Important:**

The substitution list specified in the **Tax Categories** box is used only for the export of items. The tax category that is shown for an item in an imported order is copied from the item's settings on the [Non-Stock Items](IN_20_20_00.md) or [Stock Items](IN_20_25_00.md) form and is not imported from the Shopify store. To avoid discrepancies between the tax amount calculated in the Shopify store when an order is placed and the tax amount calculated in Acumatica ERP when an invoice is generated for the imported order, make sure that the item's tax category is in sync between the two systems before the order is created.

**Parent topic:**[Importing Orders with Taxes](../UserGuide/Commerce_SP_Orders_with_Taxes_Mapref.md)

