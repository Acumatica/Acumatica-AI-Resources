# Multiple Base Currencies: General Information {#_29d77e84-6b49-47fe-a206-37e9f1b6be2c .concept}

To be able to set up companies with different base currencies in one tenant of Acumatica ERP, you need to configure the multiple base currency functionality. This chapter describes how to prepare for the configuration and how to configure the functionality to meet your business needs.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Enable the required system features
-   Create a company with a base currency that is different from the base currency of the companies that exist in the tenant

## Applicable Scenarios { .section}

You configure multiple base currencies if you need to have multiple related companies that have different base currencies but share preferences, list of items, and joint projects involving employees of multiple companies.

## Scope of the Multiple Base Currency Functionality in Acumatica ERP { .section}

Multiple base currencies are supported for a limited set of financial areas—general ledger, accounts payable, accounts receivable, cash management, currency management, sales orders, purchase orders, inventory, expense receipts and claims, deferred revenue, fixed assets, and taxes. For the *Multiple Base Currencies* feature to be enabled, the following features need to be enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form:

-   *Multicompany Support*
-   *Multicurrency Accounting*
-   *Customer and Vendor Visibility Restriction*

**Important:** The following features are not supported if the *Multiple Base Currencies* feature has been enabled:

-   *Lot/Serial Attributes*
-   *Payroll*
-   *Procore Integration*
-   *Projects* if the *Multicurrency Projects* feature is disabled
-   *Service Management*

If the *Multiple Base Currencies* feature is enabled and you select a check box corresponding to one of the listed features, the system displays an error message.

If one or all of the listed features are enabled and you select the check box corresponding to the *Multiple Base Currencies* feature, the system displays an error message that the feature cannot be enabled.

## Workflow of the Implementation of Multiple Base Currencies {#section_vv2_1y4_y4b .section}

To implement the support of multiple base currencies in Acumatica ERP, you perform the following general steps:

-   On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you verify that the unsupported features are not in use and enable the needed features: *Multicompany Support*, *Multicurrency Accounting*, and *Customer and Vendor Visibility Restriction*.
-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, you create a company and select a base currency for it. This process is illustrated in [Multiple Base Currencies: Implementation Activity](config_Multicurrency_MultipleBaseCurrencies_Implem_Activity.md).
-   Optional: On the [Company Groups](../UserGuide/CS_10_25_00.md) \(CS102500\) form, you create a company group for companies with the same base currency. This process is illustrated in [Company Groups: Implementation Activity](config_Finance_Company_Group_Implem_Activity.md).
-   On the [Customers](../UserGuide/AR_30_30_00.md) \(AR303000\) form, you limit the visibility of the needed customers to the companies or company groups that work with the customers. This process is illustrated in [Customer Visibility: To Restrict Visibility to a Company](Finance_Restricting_Customer_Visibility_Implem_Activity.md).
-   On the [Vendors](../UserGuide/AP_30_30_00.md) \(AP303000\) form, you limit the visibility of the needed vendors to the companies or company groups that work with the vendors. This process is illustrated in [Vendor Visibility: To Restrict Visibility to a Branch](Finance_Restricting_Vendor_Visibility_Activity.md).

**Parent topic:**[Multiple Base Currencies](../ImplementationGuide/config_Multicurrency_MultipleBaseCurrencies_Mapref.md)

