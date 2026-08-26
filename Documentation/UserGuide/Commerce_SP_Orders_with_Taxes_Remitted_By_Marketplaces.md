# Import of Taxes: Marketplace-Withheld Taxes {#_a2e917c3-6c2b-a9d2-ed73-e6c7a6ca4321 .concept}

A Shopify store can sell through multiple channels, including online marketplaces such as Amazon, Facebook, Instagram, and the Shop Marketplace. In some regions, tax regulations require these marketplaces to collect and remit taxes on the seller’s behalf for orders placed through their platforms.

Shopify marks these taxes as channel-liable, meaning that the marketplace handles tax remittance instead of the merchant. You can clearly distinguish these marketplace-withheld taxes for orders placed through marketplace channels from taxes on regular orders.

**Attention:** This functionality is available if the new *Tax Withheld by Marketplaces* feature is enabled on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

## Configuring Marketplace-Withheld Taxes { .section}

To set up taxes remitted by marketplaces, you perform the following steps

1.  Configure the tax synchronization for regular Shopify orders, as described in [Importing Orders with Taxes](Commerce_SP_Orders_with_Taxes_Mapref.md).
2.  Assign tax zones and taxes to marketplace channels.

    The system automatically adds sales channels from your Shopify store to the table in the **Taxes** section on the **Orders** tab of on the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. You select the **Active** check box for the marketplaces from which you want to import taxes to specific tax zones and tax IDs, instead of using the settings for regular orders. For each selected marketplace, specify the tax zone and tax ID. Taxes will be imported to the tax-payable account defined for the tax zone.

    **Important:** The connector supports only one tax-payable account per store currency for all marketplace channels.

    If you specify multiple tax zones and tax IDs for a marketplace channel, select the **Default** check box for one of them. The system uses these settings when no matching tax zone is found during order import.

3.  Configure the marketplace sales tax charge for the payment method used by marketplace channels.

    In the **Payment Fees** table on the **Payments** tab of on the [Shopify Stores](BC_20_10_10.md) \(BC201010\), you configure the *MarketplaceSalesTaxAdjustment* charge. For this charge, you select an entry type that is assigned to the cash account of the payment method and also meets the following criteria on the [Entry Types](CA_20_30_00.md) \(CA203000\) form:

    -   Has the *Disbursement* type
    -   Has the **Deduct from Payment** check box cleared
    -   Uses the same **Default Offset Account** as the tax payable account specified for the marketplace channel

## How Marketplace-Remitted Taxes Are Imported { .section}

When you import an order from Shopify, Acumatica ERP brings in taxes along with the order data. If an order is placed through a sales channel with tax mapping configured in Acumatica ERP, the system uses the mapped tax ID to group all channel-liable taxes from Shopify into a single tax line. In the imported sales order, this tax line appears on the **Taxes** tab of the [Sales Orders](SO_30_10_00.md) \(SO301000\) form.

If multiple tax zones are mapped to a marketplace channel, the system uses the shipping address from Shopify to determine which tax zone to apply to the imported order. It checks the list of active tax mappings for the marketplace on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form in the following order until it finds a matching tax zone:

1.  It looks for a tax zone that matches the postal code.
2.  It checks for one that matches the state.
3.  It looks for a match by country.
4.  It uses the default tax zone.

When you import payments and refunds for such an order, Acumatica ERP deducts the total withheld tax from the resulting prepayments and refunds. It does this by adding the *MarketplaceSalesTaxAdjustment* charge on the **Charges** tab of the [Payments and Applications](AR_30_20_00.md) \(AR302000\) form.

## Limitations { .section}

-   The connector supports synchronization only for marketplace orders with tax-exclusive item prices.
-   When the *Tax Withheld by Marketplaces* feature is enabled, orders that include a mix of channel-liable and non-liable taxes can be imported only if all taxes are linked to the Acumatica ERP tax zone mapped to the marketplace channel from which the order originated.
-   The handling of marketplace-withheld taxes is supported only for Shopify sales channels classified as marketplaces.
-   The connector doesn’t add deducted charges to the partial payments of imported marketplace orders. Only the final payment, which reduces the unpaid balance to 0, includes the *MarketplaceSalesTaxAdjustment* charges.
-   When the *Tax Withheld by Marketplaces* feature is enabled and you use an external tax provider for tax reporting, you must connect that tax provider to Shopify if you need to include marketplace-remitted taxes in tax returns. If you instead use Acumatica ERP for tax reporting, you can record marketplace-withheld taxes by creating a manual tax adjustment for the total amount withheld during the reporting period.
-   If a marketplace order that already includes *MarketplaceSalesTaxAdjustment* charges is updated in Shopify in a way that changes the remitted tax amount, the connector doesn’t update the existing payment—even if it hasn’t been released. The connector doesn’t reverse existing adjustment charges. Instead, if a new transaction appears in Shopify, it creates a new payment with adjustment charges to reflect the tax difference.

**Parent topic:**[Importing Orders with Taxes](../UserGuide/Commerce_SP_Orders_with_Taxes_Mapref.md)

