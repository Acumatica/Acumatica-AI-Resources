# Import of Taxes: Substitution Lists {#_8c798a29-5d31-42db-9c0c-d70e8910b588 .concept}

When you set up the synchronization of taxes between Acumatica ERP and the BigCommerce store, you specify the substitution lists in the **Substitution Lists** section of the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form. The following sections describe how substitution lists specified in these boxes are used during the synchronization of orders and stock and non-stock items.

## Substitution List for Taxes { .section}

If you use Acumatica ERP for tax reporting \(without an external tax provider\), when you configure tax synchronization, you need to make sure that all taxes that might be applied in the BigCommerce store have also been set up on the [Taxes](TX_20_50_00.md) \(TX205000\) form. Taxes whose IDs do not match the IDs of taxes in the BigCommerce store should be mapped with external tax IDs in a substitution list as follows:

-   On the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form, you specify tax IDs from the external system in the **Original Value** column. For each external tax ID, you add a corresponding tax ID from Acumatica ERP in the **Substitution Value** column.
-   On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form \(**Orders** tab\), you specify the substitution list in the **Taxes** box.

When an order containing taxes is being imported to Acumatica ERP, for each tax that has been added to the order in the store, the system searches for a matching tax in Acumatica ERP as follows:

1.  Searches for the tax on the [Taxes](TX_20_50_00.md) form.
2.  Searches for the tax in the substitution list, and then searches for its substitution value on the [Taxes](TX_20_50_00.md) form.

If the tax has been found, the system adds it to the imported order. Otherwise, the synchronization of the order fails and an error is displayed for the order's synchronization record on the [Sync History](BC_30_10_00.md) \(BC301000\) form.

## Substitution List for Tax Categories { .section}

In Acumatica ERP, you can assign tax categories to stock and non-stock items. To make sure taxes are calculated correctly when an item is ordered in a BigCommerce store, you need to map the tax categories in Acumatica ERP to the tax classes in the BigCommerce store by using a substitution list as follows:

1.  On the [Substitution Lists](SM_20_60_26.md) \(SM206026\) form, you create a substitution list. In the **Original Value** column, you add Acumatica ERP tax categories, and in the **Substitution Value** column, you add a tax class from the BigCommerce store for each of the tax categories.
2.  On the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form \(**Orders** tab\), you select the substitution list in the **Tax Categories** box.

When a stock or non-stock item is synchronized with the BigCommerce store, a tax class is assigned to the item in the BigCommerce store based on the tax category assigned to the item on the [Non-Stock Items](IN_20_20_00.md) \(IN202000\) or [Stock Items](IN_20_25_00.md) \(IN202500\) form, and the substitution value specified for the tax category in the substitution list on the [Substitution Lists](SM_20_60_26.md) form.

**Important:**

The substitution list specified in the **Tax Categories** box is used only for the export of items. The tax category that is shown for an item in an imported order is copied from the item's settings on the [Non-Stock Items](IN_20_20_00.md) or [Stock Items](IN_20_25_00.md) form and is not imported from the BigCommerce store. To avoid discrepancies between the tax amount calculated in the BigCommerce store when an order is placed and the tax amount calculated in Acumatica ERP when an invoice is generated for the imported order, make sure that the item's tax category is in sync between the two systems before the order is created.

**Parent topic:**[Importing Orders with Taxes](../UserGuide/Commerce_BC_Orders_with_Taxes_Mapref.md)

