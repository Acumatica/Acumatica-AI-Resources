# Setup of Online Integration with Avalara AvaTax {#_8a0eea54-8340-458b-973d-28a29f09b24a .concept}

If your company sells multiple types of products across various tax jurisdictions, it can be time-consuming and complex to configure tax calculation and reporting in Acumatica ERP, along with keeping tax rates up to date. In these cases, you may want to consider integrating with Avalara's AvaTax service to streamline sales and use tax processing online. Because Acumatica ERP includes built-in support for online integration with AvaTax, setting up this integration is quick and straightforward.

The integration involves tasks that should be performed on both sides: in Acumatica ERP and in Avalara AvaTax.

## Account Configuration on the Avalara Website { .section}

You can configure the integration with the AvaTax service as soon as you have the following:

-   A subscription to the AvaTax service \([http://www.avalara.com](http://www.avalara.com/)\)
-   The license key and password to your organization's account in AvaTax
-   The credentials \(username and password\) to the AvaTax admin console

**Tip:** We recommend that you subscribe to the AvaTax Pro service, which has the features to meet most of your tax-related needs. It validates addresses, maintains up-to-date tax rates, stores customer exemption certificates, and files tax returns.

In your AvaTax account, you should configure a company structure that corresponds to the structure of branches in Acumatica ERP. You also need to configure a tax profile for each company in AvaTax \(which corresponds to each Acumatica ERP branch\).

For more information, see [To Configure Your Avalara AvaTax Account](TX__how_Setting_Up_Avalara_Integration.md).

## AvaTax Integration Setup in Acumatica ERP { .section}

**Attention:** Make sure that the *External Tax Calculation Integration* feature is enabled in your system on the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form.

To set up the integration with the AvaTax service in Acumatica ERP, perform these general steps:

1.  Establish the connection between Acumatica ERP and your AvaTax account.
2.  Map each Acumatica ERP branch to its corresponding company in the AvaTax account.
3.  Configure address verification in Avalara AvaTax to ensure accurate tax jurisdiction assignments.
4.  Create a dedicated tax agency account specifically for use with Avalara AvaTax.
5.  Create a tax zone and associate it with the tax agency you have created for use with Avalara AvaTax.
6.  Set up the Avalara AvaTax tax codes. Since AvaTax uses hundreds of tax codes for US products and services, you need to configure these as tax categories in Acumatica ERP as follows:
    -   If your company sells a wide variety of products, create a tax category for each tax code in Acumatica ERP. Consider importing these tax codes by using an import scenario, which you can create on the [Import Scenarios](SM_20_60_25.md) \(SM206025\) form.
    -   If your company's stock list is small, on the [Tax Categories](TX_20_55_00.md) \(TX205500\) form, create only the necessary tax categories corresponding to the tax codes that apply to your company's items.
    -   If a default tax category is sufficient, create one \(for example, *Taxable*\) by using the [Tax Categories](TX_20_55_00.md) \(TX205500\) form. Create the corresponding tax code in your Avalara AvaTax account and link it to the default tax category in Acumatica ERP.
7.  Specify the Avalara tax zone as the default tax zone for each required customer.
8.  Assign a specific tax category to each stock and non-stock item that matches the corresponding AvaTax tax code.

    If you are importing stock item records from another system, include steps for assigning tax categories in your import scenario.

    **Tip:** To simplify tax category assignments for similar items, use item classes defined on the [Item Classes](IN_20_10_00.md) \(IN201000\) form. Once a tax category is assigned to an item class, all items in that class will automatically inherit the tax category and other class settings when they are created.


For instructions on configuring the AvaTax integration, see [To Set Up Integration With AvaTax](TX__how_To_Configure_Integration_with_AvaTax.md).

**Tip:** We recommend either using the AvaTax integration for tax calculation or setting up the tax calculation process within Acumatica ERP. This ensures that you don’t mix two different tax calculation methods in one system.

**Parent topic:**[Integrating Acumatica ERP with Avalara Avatax](../UserGuide/config_Avalara_Integration_Mapref.md)

