# Import of Taxes: Manual Tax Setup {#_1c04a334-c975-4470-9b46-e10c7a91718d .concept}

If you plan to use only Acumatica ERP \(without a dedicated tax calculation provider\) for tax calculation and reporting, you perform the following general steps:

1.  Configure manual tax calculation rules in the Shopify store. For information, see [General set-up steps and tax reports](https://help.shopify.com/en/manual/taxes/general-steps) in the Shopify documentation.
2.  Implement the tax functionality by configuring a tax agency, tax zones, tax categories, and sales taxes.

    For detailed information about configuring sales taxes in Acumatica ERP, see [Implementing Taxes](../ImplementationGuide/config_Mapref_TX.md).

    **Important:**

    The manual tax configuration should match in the Shopify store and in Acumatica ERP, otherwise issues might occur during the synchronization of entities. Tax categories and taxes in Acumatica ERP should be configured in the same way as tax rates and exemptions in Shopify. If you use different names for a tax or an exemption in both systems, you should map tax IDs in the substitution list specified in the **Taxes** box and tax categories in the substitution list specified in the **Tax Categories** box on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form. If during the import of a sales order, the system cannot find the tax ID or tax category specified in the order, it will check to see if there is a mapping defined for the tax ID or tax category in these substitution lists.

    Taxes that have the same name in the Shopify store and Acumatica ERP \(or that have been mapped via the substitution list\) should be defined with exactly the same rates. Although an order for which the taxes have different rates will be imported successfully, when an invoice is prepared for this imported sales order, the taxes are recalculated based on the tax settings configured in Acumatica ERP. If the tax rates differ, there will be a discrepancy between the amount of the invoice created in Acumatica ERP and the amount of the order created in the Shopify store.

3.  Specify the tax synchronization settings on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form as follows:
    -   **Tax Synchronization**: Selected
    -   **Default Tax Zone**: The tax zone that the system will assign to the order if no tax zone has been identified during the order import.
    -   **Use as Primary Tax Zone**: Cleared

## Determination of the Tax Zone { .section}

During the import of an order, the system searches for the tax zone that should be used for tax calculation as follows, stopping the search when it finds a qualifying tax zone:

1.  The system searches for the primary tax zone.
2.  The system searches for the tax zone of the customer location.
3.  The system tries to determine the tax zone based on the zip code of the shipping address.
4.  The system searches for the default tax zone.

This process is illustrated in the following diagram.

![](Images/diag_COM_Determining_Tax_Zone.png "Determining the tax zone for tax calculation")

**Parent topic:**[Importing Orders with Taxes](../UserGuide/Commerce_SP_Orders_with_Taxes_Mapref.md)

