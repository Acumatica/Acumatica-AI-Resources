# Credit Verification Rules: Configuration Prerequisites {#_a04b9947-7bf5-47f7-9f22-c050c0448330 .concept}

Before starting to set up credit verification rules, you should be sure that the needed features have been enabled, settings have been specified, and entities have been created, as described in the following sections.

## Enabling the Needed Features {#section_fnc_hjv_vxb .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the minimum set of features has to be enabled. For details, see [Company Without Branches: To Configure a Company Without Branches](../ImplementationGuide/config_Basic_Company_Implem_Activity_Enabling_Features.md).

## Configuring the System {#section_hnc_hjv_vxb .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to set up credit verification rules:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, you need to make sure that the companies of the organization have been configured and that the appropriate actual ledger has been assigned to each of them. For more information, see [Company Without Branches: To Configure a Company Without Branches](../ImplementationGuide/config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](../ImplementationGuide/config_Basic_Company_Implem_Activity_Actual_Ledger.md).
-   On multiple forms, you need to make sure that the accounts receivable subledger has been configured as described in [Accounts Receivable: To Create a Statement Cycle](../ImplementationGuide/config_Basic_Company_Implem_Activity_Statement_Cycles.md), [Accounts Receivable: To Create a Customer Class](../ImplementationGuide/config_Basic_Company_Implem_Activity_Customer_Classes.md), and [Accounts Receivable: To Specify Accounts Receivable Preferences](../ImplementationGuide/config_Basic_Company_Implem_Activity_AR_Preferences.md).
-   On the [Customers](AR_30_30_00.md) \(AR303000\) form, the needed customer records have been created and set up. For more information, see [Customers: Implementation Activity](Customer_Implem_Activity.md).

**Parent topic:**[Configuring Credit Verification Rules](../UserGuide/CreditPolicy_Credit_Verification_Rules_Mapref.md)

