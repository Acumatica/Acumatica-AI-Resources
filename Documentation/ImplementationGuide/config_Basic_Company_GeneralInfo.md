# Company Without Branches: General Information {#_5bc4e520-2681-45af-8767-e22b3f80df94 .concept}

When you initially implement Acumatica ERP, you perform the company configuration that makes it possible for system implementation to proceed. This configuration includes enabling the default set of features and configuring the company in the system. You can proceed to further Acumatica ERP implementation, which includes specifying the basic settings related to the general ledger and to cash management, accounts payable, and accounts receivable.

When you configure a company in Acumatica ERP, it can be defined as being without branches, as consisting of branches that require balancing entries \(if transactions involve multiple branches\), or as having branches that do not require balancing entries. The topics of this chapter describe the configuration of a company without branches.

## Learning Objectives { .section}

In this chapter, you will learn how to do the following:

-   Enable the default set of features before you start the configuration of a company
-   Perform the configuration of a company without branches

## Applicable Scenarios { .section}

You configure a company without branches if the company has only one business location. You perform this company configuration as a first phase of the implementation of Acumatica ERP, before the entities needed for business processes are created. You can also add a new company without branches to the existing companies in an existing tenant at any time.

## Workflow of the Configuration of a Company Without Branches { .section}

To implement the basic configuration of a company without branches in Acumatica ERP, you perform the following general steps:

1.  On the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form, you enable the default set of features. For details, see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md).

    **Attention:** In a production environment, after the features are enabled, you have to activate the Acumatica ERP license by using the [Activate License](../UserGuide/SM_20_15_10.md) \(SM201510\) form. Each particular feature may be subject to additional licensing; please consult the Acumatica ERP sales policy for details.

2.  On the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form, you create the company entity in the system; you also create its actual ledger. For details, see [Company Without Branches: To Configure a Company Without Branches](config_Basic_Company_Implem_Activity_Enabling_Features.md) and [General Ledger: To Create an Actual Ledger](config_Basic_Company_Implem_Activity_Actual_Ledger.md).
3.  On the [Chart of Accounts](../UserGuide/GL_20_25_00.md) \(GL202500\) form, you add the accounts that are necessary for performing the financial operations of the company, as described in [General Ledger: To Create a Chart of Accounts](config_Basic_Company_Implem_Activity_COA.md).
4.  On the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form, you specify the settings for processing transactions in the general ledger. For details, see [General Ledger: To Specify General Ledger Preferences](config_Basic_Company_Implem_Activity_GL_Preferences.md).
5.  On the [Financial Year](../UserGuide/GL_10_10_00.md) \(GL101000\) form, you set up the first financial year when the company starts processing its operations in Acumatica ERP. You then generate periods on the [Master Financial Calendar](../UserGuide/GL_20_10_00.md) \(GL201000\) form and open them on the [Manage Financial Periods](../UserGuide/GL_50_30_00.md) \(GL503000\) form. For more information, see [General Ledger: To Define a Financial Year](config_Basic_Company_Implem_Activity_Fin_Years.md).
6.  On the [Cash Management Preferences](../UserGuide/CA_10_10_00.md) \(CA102000\) form, you specify the settings to be used in the system for processing cash transactions. For details, see [Cash Management: To Specify Cash Management Preferences](config_Basic_Company_Implem_Activity_CA_Preferences.md).
7.  On the [Entry Types](../UserGuide/CA_20_30_00.md) \(CA203000\) form, you add the necessary entry types for processing cash payments. For details, see [Cash Management: To Create an Entry Type](config_Basic_Company_Implem_Activity_Entry_Types.md).
8.  On the [Cash Accounts](../UserGuide/CA_20_20_00.md) \(CA202000\) form, you define the cash accounts to be used to record cash entries and funds transfers. For more information, see [Cash Management: To Create Cash Accounts](config_Basic_Company_Implem_Activity_Cash_Accounts.md).
9.  On the [Payment Methods](../UserGuide/CA_20_40_00.md) \(CA204000\) form, you define the payment methods that the company uses to pay its vendors, as well as the payment methods that are used by customers to pay the company. For more information, see [Cash Management: To Modify a Payment Method](config_Basic_Company_Implem_Activity_Payment_Methods.md).
10. On the [Credit Terms](../UserGuide/CS_20_65_00.md) \(CS206500\) form, you create the sets of credit terms that are commonly used by vendors in their relations with the company and by the company in its relations with customers. These will be assigned to particular vendors and customers and specified in their bills and invoices, respectively. For more information, see [Credit Terms: To Define Single-Installment Credit Terms](config_Basic_Company_Implem_Activity_Credit_Terms.md) and [Credit Terms: To Define Credit Terms with a Cash Discount](config_Basic_Company_Implem_Activity_Credit_Terms_w_CashDiscount.md).
11. On the [Vendor Classes](../UserGuide/AP_20_10_00.md) \(AP201000\) form, you create the default vendor class, which will provide default values for vendor accounts of the class and for other vendor classes you create later. For details, see [Accounts Payable: To Create a Vendor Class](config_Basic_Company_Implem_Activity_Vendor_Classes.md).
12. On the [Accounts Payable Preferences](../UserGuide/AP_10_10_00.md) \(AP101000\) form, you specify the settings to be used in accounts payable. See [Accounts Payable: To Specify Accounts Payable Preferences](config_Basic_Company_Implem_Activity_AP_Preferences.md) for more information.
13. On the [Statement Cycles](../UserGuide/AR_20_28_00.md) \(AR202800\) form, you define the necessary statement cycles to track customers' outstanding balances, as described in [Accounts Receivable: To Create a Statement Cycle](config_Basic_Company_Implem_Activity_Statement_Cycles.md). These cycles will be used later, when you are sending electronic or printed statements to the customers.
14. On the [Customer Classes](../UserGuide/AR_20_10_00.md) \(AR201000\) form, you create the default customer class, which will provide default values for customer accounts and for other customer classes you create later. For details, see [Accounts Receivable: To Create a Customer Class](config_Basic_Company_Implem_Activity_Customer_Classes.md).
15. On the [Accounts Receivable Preferences](../UserGuide/AR_10_10_00.md) \(AR101000\) form, you specify the settings to be used in accounts receivable. See [Accounts Receivable: To Specify Accounts Receivable Preferences](config_Basic_Company_Implem_Activity_AR_Preferences.md) for more information.
16. On the [Tax Categories](../UserGuide/TX_20_55_00.md) \(TX205500\) form, you create the tax categories that will be used for calculating tax amounts in the documents that include stock or non-stock items for which these tax categories are specified.

## Company Settings { .section}

In Acumatica ERP, you can create new companies or maintain existing companies by using the [Companies](../UserGuide/CS_10_15_00.md) \(CS101500\) form. A company may have no branches, or it may consist of multiple branches, with each being a separate office or point of sale.

To configure the company without branches, you have to specify the company's identifier, name, address, units of measure, and ensure that the *Without Branches* type is selected on the [Companies](../UserGuide/CS_10_15_00.md) form. You have to specify the company's identifier, name, address, and units of measure. You also specify the base currency of the company, which you cannot change after you save the newly created company for the first time and save the GL preferences on the [General Ledger Preferences](../UserGuide/GL_10_20_00.md) \(GL102000\) form. If you create multiple companies in the tenant, this base currency will be used automatically for all companies and cannot be changed.

**Attention:** You can implement multiple base currencies in one tenant if the *Multiple Base Currencies* feature is enabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form. For details, see [Multiple Base Currencies: General Information](config_Multicurrency_MultipleBaseCurrencies_GeneralInfo.md). This functionality is out of scope for the current chapter.

After the company has been configured, the *Without Branches* company type can still be changed to *With Branches Not Requiring Balancing* and *With Branches Requiring Balancing* at any time if the *Multibranch Support* feature is selected on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) form.

**Parent topic:**[Company Without Branches](../ImplementationGuide/config_Basic_Company_Mapref.md)

