# Budget Tree: Configuration Prerequisites {#_c341a7ef-0b1a-4f86-be47-9e8cb01f18df .concept}

Before you start to configure a budget tree, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, the minimum set of features has to be enabled.

Also, if subaccounts are used in your system, make sure the *Subaccounts* feature has been enabled.

## Configuring the System { .section}

You need to make sure that the following implementation tasks have been performed in Acumatica ERP before you begin configuring a budget tree:

-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the companies of the organization have been configured, and the appropriate actual ledger has been assigned to each company. For details, see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md).
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the accounts to be used with the accounts receivable functionality have been defined. For more information, see [General Ledger: To Create a Chart of Accounts](config_Basic_Company_Implem_Activity_COA.md).
-   On the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form, the preference settings for the general ledger functionality have been specified. For details, see [General Ledger: To Specify General Ledger Preferences](config_Basic_Company_Implem_Activity_GL_Preferences.md).

If subaccounts are used in your system, make sure that the following implementation has been performed:

-   On the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) and the [Segment Values](../UserGuide/CS_20_30_00.md) \(CS203000\) forms, the structure of the *SUBACCOUNT* segmented key has been defined and the list of possible segment values have been specified. For more information, see [Subaccounts: Implementation Activity](config_Subaccounts_Implem_Activity.md).
-   On the [Subaccounts](../UserGuide/GL_20_30_00.md) \(GL203000\) form, the subaccounts you are going to use in the budget have been added.

**Parent topic:**[Budget Tree](../ImplementationGuide/config_Budget_Tree_Mapref.md)

