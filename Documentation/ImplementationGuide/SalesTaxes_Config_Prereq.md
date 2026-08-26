# Sales Taxes: Configuration Prerequisites {#_7784d085-b0bb-4559-a5c4-8a9cf6de782c .concept}

Before starting the configuration of a sales tax, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Configuring the System { .section}

Before you configure a sales tax, you need to make sure that the following configuration tasks have been performed in the system:

-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, all GL accounts that you will use for tax reporting purposes have been added. The following table lists the accounts that should be configured in the *U100* dataset.

    |Account|Account Class|Type|Description|Control Account Module|
    |-------|-------------|----|-----------|----------------------|
    |`24100`|*OTHCURLIAB*|*Liability*|`Tax Payable`|*TX*|
    |`17000`|*OTHERCURAS*|*Asset*|`Tax Claimable`|*TX*|
    |`65100`|*EXTAX*|*Expense*|`Other Tax Expenses`| |

    The liability account will be used for accumulating the tax amounts to be paid to the tax agency in a tax period. The expense account will be used to record tax adjustments and expenses for the tax agency.

-   On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, a vendor set up as a tax agency has been configured. For details, see [Tax Agency: To Set Up a Tax Agency for Sales Taxes](TaxAgency_SalesTaxes_Implem_Activity.md).
-   On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* category has been created.
-   On the [Tax Zones](../UserGuide/TX_20_60_00.md) \(TX206000\) form, the *DENVER* tax zone has been created.
-   For a sales tax to be used in AR, a reporting group of the *Output* type has been configured on the [Reporting Settings](../UserGuide/TX_20_51_00.md) \(TX205100\) form.
-   For a sales tax to be used in AP, a reporting group of the *Input* type has been configured on the [Reporting Settings](../UserGuide/TX_20_51_00.md) form.

**Parent topic:**[Sales Taxes](../ImplementationGuide/Taxes_SalesTaxes_Mapref.md)

