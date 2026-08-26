# Multiple Base Currencies: Configuration Prerequisites {#_43d11a97-2e8a-4e3c-8ebc-4430a1b48adb .concept}

Before starting to configure multiple base currencies, you should be sure that the needed features have been enabled and entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Multibranch Support*, *Multicompany Support*, *Multicurrency Accounting*, and *Customer and Vendor Visibility Restriction* features must be enabled.

The following features that are not supported if the *Multiple Base Currencies* feature is enabled and must be disabled:

-   *Lot/Serial Attributes*
-   *Payroll*
-   *Procore Integration*
-   *Projects* if the *Multicurrency Projects* feature is disabled
-   *Service Management*

## Configuring the System { .section}

You need to make sure the following tasks have been performed in Acumatica ERP before you begin to configure multiple base currencies:

-   On the [User Roles](../UserGuide/SM_20_10_05.md) \(SM201005\) form, the *Branch SLCanada* role has been defined and the *gibbs*, *pasic* and *johnson* users have been added to the role on the **Membership** tab.
-   On the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form, the *CAD* currency has been defined.

**Parent topic:**[Multiple Base Currencies](../ImplementationGuide/config_Multicurrency_MultipleBaseCurrencies_Mapref.md)

