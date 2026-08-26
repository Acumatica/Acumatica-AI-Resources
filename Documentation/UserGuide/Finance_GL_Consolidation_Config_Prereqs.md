# GL Consolidation Configuration: Prerequisites {#_7d45d504-1b72-42d7-812f-6acd0682014b .concept}

Before starting to configure GL consolidation in the consolidation unit and the parent tenant, you should be sure that the needed feature has been enabled, settings have been specified, and entities have been created, as described in the following sections.

## Enabling the Needed Feature {#section_pvl_mjv_vxb .section}

On the [Enable/Disable Features](CS_10_00_00.md) \(CS100000\) form, the *General Ledger Consolidation* feature must be enabled for both the consolidation unit \(set up in a separate tenant\) and the parent tenant.

## Configuring the System in the Parent Tenant {#section_rvl_mjv_vxb .section}

You need to make sure the following tasks have been performed in Acumatica ERP for the parent tenant before you begin to configure GL consolidation:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, a company with branches or without branches has been created.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the structure of the chart of accounts should the be same or with fewer accounts than in the consolidation unit.
-   If subaccounts are used in the system, on the [Subaccounts](GL_20_30_00.md) \(GL203000\) form, the subaccount structure should be similar to that of the consolidation unit. The parent company may have one additional segment \(compared to the consolidation unit\) with values designating subsidiaries.

## Configuring the System in the Consolidation Unit {#section_tvl_mjv_vxb .section}

You need to make sure the following tasks have been performed in Acumatica ERP for the consolidation unit before you begin to configure GL consolidation:

-   On the [Companies](CS_10_15_00.md) \(CS101500\) form, a company with branches or without branches has been created.
-   On the [Financial Year](GL_10_10_00.md) \(GL101000\) form, the structure of the financial year has been defined, which is the same or similar to the financial year structure of the parent company.
-   On the [Ledgers](GL_20_15_00.md) \(GL201500\) form, a ledger that you will configure as a consolidation source has been defined \(and *Actual* has been specified in the **Type** box\). If the consolidation unit used the base currency different from the base currency of the parent company, the ledger to be used as a consolidation source must be configured with *Reporting* selected in the **Type** box.
-   On the [Chart of Accounts](GL_20_25_00.md) \(GL202500\) form, the structure of the chart of accounts should the be same or with more accounts than in the parent tenant.
-   If subaccounts are used in the system, on the [Subaccounts](GL_20_30_00.md) \(GL203000\) form, the subaccount structure should be similar to that of the parent company.

**Parent topic:**[Configuring GL Consolidation](../UserGuide/Finance_GL_Consolidation_Configuration_Mapref.md)

