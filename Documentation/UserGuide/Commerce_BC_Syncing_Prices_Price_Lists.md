# Price Synchronization: Prices for Customer Groups {#_a8978de3-efda-475f-8c87-bba33794f75a .concept}

Prices that are effective for a particular group of customers—that is, prices that have the *Customer Price Class* type—are defined on the [Sales Prices](AR_20_20_00.md) \(AR202000\) form or the [Sales Price Worksheets](AR_20_20_10.md) \(AR202010\) form and are exported to the BigCommerce store as a separate entity, *Price List*.

You can export price lists to the BigCommerce store if the *Customer Price Class* and *Price List* entities are activated for the store on the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form.

## Synchronization of Customer Price Classes and Price Lists { .section}

*Customer Price Classes* maintained in Acumatica ERP correspond to customer groups on the **Customer Groups** page, which you open by clicking **Customers** &gt; **Customer Groups** in the left pane. Prices of the *Customer Price Class* type defined for a particular price class imported from Acumatica ERP are saved in the BigCommerce store as a price list for the corresponding customer group on the **View Price Lists** page.

Prices in a price list are similar to sales prices but are created to be specific to a customer group in BigCommerce. The price of a product defined in a price list for a customer group has a higher priority than the default price or the sales price of the product specified on the product page. The price specific to a customer group is displayed to a customer on the storefront if the customer belongs to the customer group and is signed in.

Before you can export the list of prices specific to a customer price class \(that is, to synchronize the *Price List* entity\) from Acumatica ERP, you must first synchronize the *Customer Price Class* entity. For the price list specific to a customer group to be functional in BigCommerce, you must export customers \(that is, synchronize the *Customer* entity\) assigned to the corresponding customer price class in Acumatica ERP.

**Important:** You can export price lists from Acumatica ERP only to BigCommerce stores on the *Enterprise* subscription plan. For information about BigCommerce subscription plans and available features, see the [Pricing](https://www.bigcommerce.com/essentials/pricing/) page.

**Parent topic:**[Synchronizing Sales Prices](../UserGuide/Commerce_BC_Syncing_Prices_Mapref.md)

