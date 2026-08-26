# Cash Management: Configuration Prerequisites {#_6fad0c26-6e1e-4a80-b42a-3af479b40107 .concept}

Before you start to implement cash management, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, the minimum set of features has to be enabled. For details, see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md).

## Configuring the System { .section}

You need to make sure that the following implementation tasks have been performed in Acumatica ERP before you begin implementing cash management:

-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the companies of the organization have been configured, and the appropriate actual ledger has been assigned to each company. For more information , see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the accounts to be used with the cash management functionality have been defined, as described in [General Ledger: To Create a Chart of Accounts](config_Basic_Company_Implem_Activity_COA.md).
-   On the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form, the preference settings for the general ledger functionality have been specified. For details, see [General Ledger: To Specify General Ledger Preferences](config_Basic_Company_Implem_Activity_GL_Preferences.md).

**Parent topic:**[Cash Management](../ImplementationGuide/config_CA_Mapref.md)

