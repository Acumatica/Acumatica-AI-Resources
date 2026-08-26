# Tax Report Configuration: Configuration Prerequisites {#_9b0c2264-628b-4c84-9d78-5cdb977261a5 .concept}

Before starting the creation of a tax report, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Configuring the System { .section}

Before you configure a tax report, you need to make sure that the following configuration tasks have been performed in the system:

-   If you are configuring a tax report for VAT, on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the GL accounts that should be used for recording tax-related amounts have been created.
-   On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, a vendor set up as a tax agency has been configured. For details, see [Tax Agency: To Set Up a Tax Agency for Sales Taxes](TaxAgency_SalesTaxes_Implem_Activity.md) and [Tax Agency: To Set Up a Tax Agency for VAT](TaxAgency_VAT_Implem_Activity.md).
-   On the **Tax Agency** tab of the [Vendors](../UserGuide/AP_30_30_00.md) form, the **Automatically Generate Tax Bill** check box is selected. This setting means that on release of a tax report, the system will automatically generate the tax bill to the agency and will use the tax amount accumulated in the `Tax Total` line as the document amount.

**Parent topic:**[Tax Report](../ImplementationGuide/Taxes_TaxReport_Mapref.md)

