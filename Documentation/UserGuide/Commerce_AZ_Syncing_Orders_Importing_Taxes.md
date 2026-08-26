# Order Synchronization: Import of Taxes {#_6c32f706-ec19-4849-9684-d087d1a49fae .concept}

Amazon handles tax calculation and reporting on behalf of merchants. However, you can import the total order tax amount from the Amazon seller account to Acumatica ERP along with each order.

## Setting Up the Tax Synchronization { .section}

To synchronize taxes, on the **Orders** tab \(the **Taxes** section\) of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form, you select the **Tax Synchronization** check. In the table that appears, you add tax zones and taxes for synchronization by specifying the following settings:

-   **Tax Zone**: A tax zone that has been defined on the [Tax Zones](TX_20_60_00.md) \(TX206000\) form and is inserted into imported documents.
-   **Tax ID**: A tax that has been defined on the [Taxes](TX_20_50_00.md) \(TX205000\) form and is inserted into imported documents for the order tax amount charged in the Amazon seller account. You can select only a tax ID that is specified for the selected tax on the **Applicable Taxes** tab of the [Tax Zones](TX_20_60_00.md) form.
-   **Default**: The default tax zone. You must select this check box for one of the active tax zones added to the table.

The tax zones and taxes you specify in the table are not used for calculating taxes in imported orders. To avoid discrepancies in tax amounts, disable tax recalculation for the order types that are used for importing marketplace-fulfilled and seller-fulfilled orders as well as marketplace-fulfilled and seller-fulfilled returns. You do this by selecting the **Disable Automatic Tax Calculation** check box on the **General** tab of the [Order Types](SO_20_10_00.md) \(SO201000\) form.

For information about disabling tax recalculation, see [Tax Application in Sales Documents](SO__con_Sales_Taxes_on_Sales_Orders.md).

## Importing Taxes { .section}

Taxes are imported during the synchronization of seller-fulfilled and marketplace-fulfilled orders \(that is, during the synchronization of the *Sales Order* and *Marketplace-Fulfilled Order* entities\).

To determine which tax zone to apply to an imported order, the system uses the shipping address from Amazon. It checks the list of active tax zones in the **Taxes** section on the **Orders** tab of the [Amazon Stores](BC_20_10_20.md) \(BC201020\) form as follows until it finds a matching tax zone:

1.  It looks for a tax zone that matches the postal code.
2.  It checks for one that matches the state.
3.  It looks for a match by country.
4.  It uses the default tax zone.

**Tip:** Only the total tax amount is imported; tax names and rates are not synchronized.

**Parent topic:**[Synchronizing Orders](../UserGuide/Commerce_AZ_Syncing_Orders_Mapref.md)

