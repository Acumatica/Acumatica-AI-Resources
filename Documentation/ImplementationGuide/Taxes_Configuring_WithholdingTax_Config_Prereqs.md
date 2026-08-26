# Withholding Taxes: Configuration Prerequisites {#_de386c1c-6f54-40ed-8e8e-a90983e76df4 .concept}

Before starting to create a withholding tax, you should be sure that the settings have been specified and entities have been created, as described in the following sections.

## Enabling the Needed Feature { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature must be enabled.

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to create a withholding tax:

-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, all GL accounts that you will use for tax reporting purposes have been added.
-   On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, a vendor set up as a tax agency has been configured. For details, see [Tax Agency: To Set Up a Tax Agency for VAT](TaxAgency_VAT_Implem_Activity.md).
-   On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the needed tax category has been created.
-   On the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form, the needed tax zone has been created.
-   On the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form, a tax report has been configured as described in [Tax Report Configuration: To Create a Tax Report for VAT](TaxReport_VAT_Implem_Activity.md).

**Parent topic:**[Withholding Taxes](../ImplementationGuide/Taxes_Configuring_Withholding_Mapref.md)

