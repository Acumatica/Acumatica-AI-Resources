# Accounts Payable: Configuration Prerequisites {#_1cda5f18-a45e-40d6-bc31-ff223018590a .concept}

Before you start to implement accounts payable, you must be sure that the system has been configured properly and that all required entities have been created, as described in the following sections.

## Enabling the Needed Features { .section}

On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md#) \(CS100000\) form, the minimum set of features has to be enabled. For details, see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md).

## Configuring the System { .section}

You need to make sure the following implementation tasks have been performed in Acumatica ERP before you begin implementing accounts payable:

-   On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, the companies of the organization have been configured, and the appropriate actual ledger has been assigned to each company. For details, see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
-   On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, the accounts to be used with the accounts payable functionality have been defined. For details, see [General Ledger: To Create a Chart of Accounts](config_Basic_Company_Implem_Activity_COA.md).
-   On the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form, the preference settings for the general ledger functionality have been specified. For more information, see [General Ledger: To Specify General Ledger Preferences](config_Basic_Company_Implem_Activity_GL_Preferences.md).
-   On the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form, the cash accounts to be used for recording payments to vendors have been created. For details, see [Cash Management: To Create Cash Accounts](config_Basic_Company_Implem_Activity_Cash_Accounts.md).
-   On the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form, the payment methods to be used in accounts payable have been properly configured. For more information, see [Cash Management: To Modify a Payment Method](config_Basic_Company_Implem_Activity_Payment_Methods.md).
-   On the [Credit Terms](../UserGuide/CS_20_65_00.md) \(CS206500\) form, the credit terms to be used by vendors in their relations with the company have been configured. For details, see [Credit Terms: To Define Single-Installment Credit Terms](config_Basic_Company_Implem_Activity_Credit_Terms.md).

**Parent topic:**[Accounts Payable](../ImplementationGuide/config_AP_Mapref.md)

