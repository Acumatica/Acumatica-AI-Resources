# Value-Added Taxes: Configuration Prerequisites {#_d1787262-74e3-4f6e-a068-29030a3b3171 .concept}

Before starting to create a value-added tax, you should be sure that the needed feature has been enabled, settings have been specified, and entities have been created, as described in the following sections.

## Enabling the Needed Feature { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature must be enabled.

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to create a value-added tax:

-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, all GL accounts that you will use for tax reporting purposes have been added.
-   On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, a vendor set up as a tax agency has been configured. For details, see [Tax Agency: To Set Up a Tax Agency for VAT](TaxAgency_VAT_Implem_Activity.md).
-   On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* category has been created.
-   On the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form, the *CANADA* tax zone has been created. For details, see [Tax Zones and Categories: To Create a Tax Category and Tax Zone for VAT](TaxZones_and_Categories_VAT_Implem_Activity.md).
-   On the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form, a reporting group of the *Output* type and a reporting group of the *Input* type have been configured.

**Parent topic:**[Value-Added Taxes](../ImplementationGuide/Taxes_Configuring_VAT_Mapref.md)

