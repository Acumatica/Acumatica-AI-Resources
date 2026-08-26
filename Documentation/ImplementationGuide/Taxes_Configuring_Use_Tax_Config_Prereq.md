# Use Taxes: Configuration Prerequisites {#_0ad1f031-b7fc-4fef-88e6-cc6e0a9b5be4 .concept}

Before starting the configuration of a use tax, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Configuring the System { .section}

Before you configure a use tax, you need to make sure that the following configuration tasks have been performed in the system:

-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the GL account that you will use for tax reporting purposes have been added. The following table shows the account that should be configured in the *U100* dataset.

    |Account|Account Class|Type|Description|Control Account Module|
    |-------|-------------|----|-----------|----------------------|
    |`65200`|*EXTAX*|*Expense*|`Use Tax`| |

-   On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, a vendor set up as a tax agency has been configured. For details, see [Tax Agency: To Set Up a Tax Agency for Sales Taxes](TaxAgency_SalesTaxes_Implem_Activity.md).
-   On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, the *TAXABLE* category has been created.

**Parent topic:**[Use Tax](../ImplementationGuide/Taxes_Configuring_Use_Tax_Mapref.md)

