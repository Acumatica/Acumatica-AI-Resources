# Import of Taxes: External Tax Provider {#_fba9cf1d-68d8-421d-8069-7390ba5194ff .concept}

You can set up the synchronization of taxes if you use an external tax provider for automatic tax calculation and for tax reporting.

## Configuration of Tax Synchronization for the External Tax Service { .section}

To set up the synchronization of taxes for an external tax provider, you need to perform the following general steps:

1.  Configure automatic tax calculation in the BigCommerce store. For information, see [Automatic Tax Setup](https://support.bigcommerce.com/s/article/Automatic-Tax-Setup) in the BigCommerce documentation.
2.  Configure the integration of Acumatica ERP with the external tax provider by using the same account as was used in the previous step. For instructions on how to integrate Acumatica ERP with Avalara AvaTax or Vertex, see [Setup of Online Integration with Avalara AvaTax](TX__con_Integrating_with_AvaTax.md) or [Online Integration with Vertex Tax Calculation](TX__con_Vertex_Integration.md).
3.  Configure the synchronization of taxes with the BigCommerce store as described in the following section.

## Tax Synchronization Settings { .section}

To set up the tax synchronization with the BigCommerce store, you specify the following settings on the **Orders** tab of the [BigCommerce Stores](BC_20_10_00.md) \(BC201000\) form:

1.  In the **Order** section, in the **Order Type for Import** box, select an order type for which the calculation of taxes has been enabled on the [Order Types](SO_20_10_00.md) \(SO201000\) form—that is, the **Disable Automatic Tax Calculation** check box is cleared on the **General** tab.

    For information on disabling tax calculation, see [Tax Application in Sales Documents](SO__con_Sales_Taxes_on_Sales_Orders.md).

    **Attention:** Selecting an order type that allows tax recalculation may lead to amount inconsistencies.

2.  In the **Taxes** section, specify the following settings:

    -   Select the **Tax Synchronization** check box.
    -   In the **Default Tax Zone**, select the tax zone that you have configured for the external tax provider.
    -   Select the **Use as Primary Tax Zone** check box.
    With these settings, the tax zone specified in the **Default Tax Zone** will always be used for tax calculation, which means that the taxes calculated by the external tax provider will be imported with the order. If the taxes in the imported order do not yet exist in Acumatica ERP, the system creates them on the [Taxes](TX_20_50_00.md) \(TX205000\) form.

3.  In the **Substitution Lists** section, specify the substitution list that contains the mapping of tax categories in Acumatica ERP with tax classes in the BigCommerce store in the **Tax Categories** box.

    For information about the use of substitution lists for the synchronization of taxes, see [Import of Taxes: Substitution Lists](Commerce_BC_Syncing_Taxes_Substitution_Lists.md).


**Parent topic:**[Importing Orders with Taxes](../UserGuide/Commerce_BC_Orders_with_Taxes_Mapref.md)

