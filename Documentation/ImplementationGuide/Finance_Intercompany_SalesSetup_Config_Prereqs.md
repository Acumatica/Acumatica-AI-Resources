# Intercompany Sales Setup: Configuration Prerequisites {#_50f876ff-046a-40a6-91f5-5a914e26d660 .concept}

Before starting to set up the intercompany sales functionality, you should be sure that the needed features have been enabled, settings have been specified, and entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Standard Financials*, *Multibranch Support*, *Multicompany Support*, *Advanced Financials*, and *Inter-Branch Transactions* features must be enabled.

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to set up the intercompany sales functionality:

-   If you are going to extend as a customer or vendor any company that has the *Without Branches* company type, on the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, make sure that the has been configured. For details, see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md).
-   If you are going to extend as a customer or vendor any branches of companies with the *With Branches Not Requiring Balancing* or *With Branches Requiring Balancing* company type, on the [Branches](../UserGuide/CS_10_20_00.md) \(CS102000\) form, make sure that the companies have been configured. For details, see [Company with Branches that Do Not Require Balancing: Implementation Activity](config_Company_with_Branches_No_Balacing_Implem_Activity.md) and [Company with Branches that Require Balancing: Implementation Activity](config_Company_with_Branches_with_Balacing_Implem_Activity.md).
-   On the [Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\) form, make sure that the customer class to be used for a customer extended from a company or branch has been defined. For details, see [Accounts Receivable: To Create a Customer Class](config_Basic_Company_Implem_Activity_Customer_Classes.md).
-   On the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form, make sure that the vendor class to be used for a vendor extended from a company or branch has been defined. For details, see [Accounts Payable: To Create a Vendor Class](config_Basic_Company_Implem_Activity_Vendor_Classes.md).

## Validation of Configuration { .section}

To make sure that all configuration has been performed correctly, we recommend that in your system, you set up the intercompany sales functionality by performing instructions similar to those described in [Intercompany Sales Setup: Implementation Activity](Finance_Intercompany_SalesSetup_Implem_Activity.md).

**Parent topic:**[Intercompany Sales](../ImplementationGuide/Finance_Intercompany_Sales_Setup_Mapref.md)

