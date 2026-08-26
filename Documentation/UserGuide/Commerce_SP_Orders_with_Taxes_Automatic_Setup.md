# Import of Taxes: External Tax Provider {#_e8ce3a66-c4b1-4b1e-bdf4-aaa63f28121e .concept}

You can set up the synchronization of taxes if you use an external tax provider for automatic tax calculation and for tax reporting.

## Configuration of Tax Synchronization for the External Tax Service { .section}

To set up the synchronization of taxes for an external tax provider, you need to perform the following general steps:

1.  Configure automatic tax calculation in the Shopify store. For information, see [Tax services with Avalara AvaTax](https://help.shopify.com/en/manual/taxes/tax-services) in the Shopify documentation.
2.  Configure the integration of Acumatica ERP with the external tax provider by using the same account as was used in the previous step. For instructions on how to integrate Acumatica ERP with Avalara AvaTax, see [Setup of Online Integration with Avalara AvaTax](TX__con_Integrating_with_AvaTax.md).
3.  Configure the synchronization of taxes with the Shopify store as described in the following section.

## Tax Synchronization Settings { .section}

To set up the tax synchronization with the Shopify store, you specify the following settings on the **Orders** tab of the [Shopify Stores](BC_20_10_10.md) \(BC201010\) form as follows:

1.  In the **Order** section, in the **Order Type for Import** box, select an order type for which the calculation of taxes has been enables on the [Order Types](SO_20_10_00.md) \(SO201000\) form—that is, the **Disable Automatic Tax Calculation** check box is cleared on the **General** tab.

    For information on enabling and disabling tax calculation, see [Tax Application in Sales Documents](SO__con_Sales_Taxes_on_Sales_Orders.md).

    **Attention:** Selecting an order type that allows tax recalculation may lead to amount inconsistencies.

2.  In the **Taxes** section, specify the following settings:

    -   Select the **Tax Synchronization** check box.
    -   In the **Default Tax Zone**, select the tax zone that you have configured for the external tax provider.
    -   Select the **Use as Primary Tax Zone** check box.
    With these settings, the tax zone specified in the **Default Tax Zone** will always be used for tax calculation, which means that the taxes calculated by the external tax provider will be imported with the order. If the taxes in the imported order do not yet exist in Acumatica ERP, the system creates them on the [Taxes](TX_20_50_00.md) \(TX205000\) form.

3.  In the **Substitution Lists** section, specify the substitution list that contains the mapping of tax categories in Acumatica ERP with the tax categories in the Shopify store in the **Tax Categories** box.

    For information about the use of substitution lists for the synchronization of taxes, see [Import of Taxes: Substitution Lists](Commerce_BC_Syncing_Taxes_Substitution_Lists.md).


## Handling of Long Tax Names { .section}

If an external tax provider is used for tax calculation, sometimes tax names returned by the external tax provider can exceed the maximum allowed length of tax IDs supported by Acumatica ERP, \(which is currently 60 characters\). Long tax IDs are processed as follows:

-   If there is no hyphen in the tax ID, any characters that exceed the maximum length are truncated.
-   If there is a hyphen in the tax ID, the tax ID is processed as follows:
    -   If the tax ID contains the word *SPECIAL*, the part of the ID to the right of the hyphen is used. Any characters that still exceed the maximum length are truncated.
    -   If the tax ID does not contain the word *SPECIAL*, the part of the ID to the left of the hyphen is used. Any characters that still exceed the maximum length are truncated.

**Parent topic:**[Importing Orders with Taxes](../UserGuide/Commerce_SP_Orders_with_Taxes_Mapref.md)

