# Configuration of Rate Types and Rates: Configuration Prerequisites {#_cf16ad8b-c8e5-40e1-9667-c2eac4aeca87 .concept}

Before starting to configure rates and current rates, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, the *Multicurrency Accounting* feature must be enabled.

## Configuring the System { .section}

Before you create rates in Acumatica ERP, you need to make sure that the following settings have been made in the system:

-   Rounding gain and loss accounts must be set up on the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form.
-   Realized gains and loss settings must be set up on the [Currency Management Preferences](../UserGuide/CM_10_10_00.md) \(CM101000\) form.
-   On the [Currencies](../UserGuide/CM_20_20_00.md) \(CM202000\) form, the *CAD* \(Canadian dollars\) and *EUR* \(the euro\) currencies must be configured for use in accounting.

For details, see [Multicurrency Functionality: Implementation Activity](config_Multicurrency_Basic_Implem_Activity.md).

**Parent topic:**[Currency Rate Types and Current Rates](../ImplementationGuide/config_Multicurrency_Configuring_Rates_Mapref.md)

