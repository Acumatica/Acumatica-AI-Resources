# Combined Subaccounts: Configuration Prerequisites {#_cee86514-ed7d-4afe-b147-1bff8c86a026 .concept}

Before you start to specify subaccount masks, you must be sure that the system has been configured properly, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, the minimum set of features and the *Subaccounts* feature have to be enabled.

## Configuring the System { .section}

You need to make sure that the following implementation tasks have been performed in Acumatica ERP before you begin specifying subaccount masks:

-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the companies of the organization have been configured, and the appropriate actual ledger has been assigned to each company. For more information on creating companies, see one of the following topics: [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) [Company with Branches that Do Not Require Balancing: Implementation Activity](config_Company_with_Branches_No_Balacing_Implem_Activity.md), or [Company with Branches that Require Balancing: Implementation Activity](config_Company_with_Branches_with_Balacing_Implem_Activity.md). For details on creating an actual ledger, see [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
-   On the [Segmented Keys](../UserGuide/CS_20_20_00.md) \(CS202000\) and [Segment Values](../UserGuide/CS_20_30_00.md) \(CS203000\) forms, the structure of the *SUBACCOUNT* segmented key and the lists of possible segment values, respectively, have been specified. For more information, see [Subaccounts: Implementation Activity](config_Subaccounts_Implem_Activity.md).
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the appropriate accounts need to be specified for all needed system functionality for which combined subaccounts will be configured. For more information, see [General Ledger: To Create a Chart of Accounts](config_Basic_Company_Implem_Activity_COA.md).
-   On the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form, the preference settings for the general ledger functionality have been specified. For details, see [General Ledger: To Specify General Ledger Preferences](config_Basic_Company_Implem_Activity_GL_Preferences.md).
-   If combined subaccounts will be configured for AR documents, on the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form, the preference settings for the accounts receivable functionality have been specified. For details, see [Accounts Receivable: To Specify Accounts Receivable Preferences](config_Basic_Company_Implem_Activity_AR_Preferences.md).
-   If combined subaccounts will be configured for AP documents, on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form, the preference settings for the accounts receivable functionality have been specified. For details, see [Accounts Receivable: To Specify Accounts Receivable Preferences](config_Basic_Company_Implem_Activity_AR_Preferences.md).
-   If combined subaccounts will be configured for AP documents, on the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form, the preference settings for the accounts receivable functionality have been specified. For details, see [Accounts Receivable: To Specify Accounts Receivable Preferences](config_Basic_Company_Implem_Activity_AR_Preferences.md).

**Parent topic:**[Automatically Combined Subaccounts](../ImplementationGuide/config_Combined_Subaccounts_Mapref.md)

