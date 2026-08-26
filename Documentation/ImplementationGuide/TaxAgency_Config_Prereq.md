# Tax Agency: Configuration Prerequisites {#_a7e580ee-a5c7-4594-a781-28dd46144399 .concept}

Before starting the creation of a tax agency, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Configuring the System { .section}

Before you configure a tax agency, you need to make sure that the following configuration tasks have been performed in the system:

-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, all GL accounts that you will use for tax reporting purposes have been added. The following table lists the accounts that should be configured in the *U100* dataset.

    |Account|Account Class|Type|Description|Control Account Module|
    |-------|-------------|----|-----------|----------------------|
    |`24100`|*OTHCURLIAB*|*Liability*|`Tax Payable`|*TX*|
    |`17000`|*OTHERCURAS*|*Asset*|`Tax Claimable`|*TX*|
    |`65100`|*EXTAX*|*Expense*|`Other Tax Expenses`| |

    The liability account will be used for accumulating the tax amounts to be paid to the tax agency in a tax period. The expense account will be used to record tax adjustments and expenses for the tax agency.

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *VAT Reporting* feature has been enabled.
-   To ease data entry when a new tax agency is created, you can create a *vendor class* that is designed for tax agency accounts. When you create a new tax agency, you select this class, and the system fills in the settings you have established for it, such as the country, the terms of payment, and the GL accounts. You can overwrite the default values for a particular tax agency, if needed. On the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form, you create the vendor class, which will provide default values for tax agency accounts. For details, see [Accounts Payable: To Create a Vendor Class](config_Basic_Company_Implem_Activity_Vendor_Classes.md).

**Parent topic:**[Tax Agency](../ImplementationGuide/Taxes_TaxAgency_Mapref.md)

