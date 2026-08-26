# Preparing an Instance: Acumatica ERP Features {#_95c9a43e-fa12-4e79-99b4-6f5b1a688b72 .concept}

Acumatica ERP provides scalable core system functionality and includes a range of add-on features, which can be enabled and disabled on the [Enable/Disable Features](../UserGuide/CS_10_00_00.md) \(CS100000\) form.

## Finance Group of Features {#section_jbf_21s_svb .section}

|Feature|Overview|
|-------|--------|
|**Finance**|A group of features that provides access to financial management that takes managing your business’ assets, income, and expenses from complex to simple with configurable processes, mobile anytime access, and best-in-class accounting applications resting on a single, future-proof platform.|
|**Standard Financials**|A group of features that is available in all editions of Acumatica ERP. You can enable any of the features in this group on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form—they are included in any license.|
|**Multibranch Support**|A feature that provides support for multiple branches within a company. Branches can be configured for company offices to track revenue and expenses by branches and to limit the visibility of branch-related entities. For details, see [Multiple Branch Support](../Shared/../UserGuide/CS__con_Multiple_Branch_Support.md) and [Basic Models for Multibranch Organization](../Shared/../UserGuide/CS__con_Basic_Models_for_Multi-Branch_Organization.md).

 You can enable this feature and start using the related functionality at any time.

 If both this feature and the *Multicompany Support* feature are disabled, only one company without branches can be created. If this feature is disabled and the *Multicompany Support* feature is enabled, users can create any number of companies without branches.

 If you clear this check box to disable the feature and the **Multicompany Support** check box is cleared, the system will clear the **Inter-Branch Transactions** and **Customer and Vendor Visibility Restriction** check boxes.

 **Warning:** We recommend that you not disable this feature if branches have been configured and used in transactions. Disabling this feature may lead to data corruption or unexpected consequences in the system's operation.

|
|**Multicompany Support**|A feature that provides support for multiple companies \(legal entities\) within one tenant. For details, see [Companies and Branches](../Shared/../UserGuide/OS__con_Companies.md).

 You can enable this feature and start using the related functionality at any time.

 If both this feature and the *Multibranch Support* feature are disabled, only one company without branches can be created.

 If this feature is disabled and the *Multibranch Support* and *Inter-Branch Transactions* features are enabled, only one company can be created. This company can have the *Without Branches*, *With Branches Not Requiring Balancing*, or *With Branches Requiring Balancing* type.

 If both this feature and the *Inter-Branch Transactions* feature are disabled and the *Multibranch Support* feature is enabled, only one company can be created. This company can have the *Without Branches* or *With Branches Not Requiring Balancing* type.

 If you clear this check box to disable the feature, the system will clear the **Multiple Base Currencies** check box.

 If you clear this check box to disable the feature and the **Multibranch Support** check box is cleared, the system will clear the **Inter-Branch Transactions** and **Customer and Vendor Visibility Restriction** check boxes.

 **Warning:** We recommend that you not disable this feature if two or more companies exist in the tenant. Disabling this feature may lead to data corruption or unexpected consequences in the system's operation.

|
|**Business Account Locations**|A feature that supports multiple locations for vendor and customer accounts. You may need to enable the feature if some of your organization's customers or vendors have multiple offices \(locations\), and you need to track these locations’ sales and purchases.

 You can enable this feature and start using the related functionality at any time.

 **Warning:** We recommend that you not disable this feature if at least one customer or vendor account has multiple locations configured and used in transactions. Disabling this feature may lead to data corruption or unexpected consequences in the system's operation.

|
|**Multicurrency Accounting**|A feature that adds forms related to the currency management functionality and support of the following: multiple currencies across the system; automatic calculation of the realized gains and losses and rounding amounts on foreign currency transactions; revaluation of foreign currency accounts; and translation of the base currency accounts into any foreign currency for reporting. For more information, see [Currency Management](../Shared/../UserGuide/CM_00_00_00.md).

 You can enable this feature and start using the related functionality at any time.

 **Warning:** We recommend that you not disable this feature if you have processed transactions in foreign currencies. Disabling this feature may lead to data corruption or unexpected consequences in the system's operation.

|
|**Centralized Period Management**|A feature that makes it possible to manage financial periods on the tenant level only; the periods can be opened, closed, or locked in all companies at once, and the status of each financial period is the same in all companies. This feature is enabled by default.

 It is allowed to enable this feature only if the status of each financial period is the same in all companies.

 You can enable this feature if the *Multiple Calendar Support* feature is disabled.

 You can disable the *Centralized Period Management* feature only if the *Multicompany Support* feature is enabled. Disabling the *Centralized Period Management* feature makes it possible to open, close, and lock a particular financial period separately for each company within the tenant. You can disable this feature at any time.

 For more information, see [Generating Financial Calendars](../Shared/../UserGuide/GL__MNG_Financial_Calendars.md).

|
|**Volume Pricing**|A feature that gives you the ability to define price tiers for item quantities.

 You can enable this feature and start using the related functionality at any time. You can disable this feature at any time; however, we recommend deleting price records with a nonzero break quantity before disabling the feature.

|
|**Expense Reclassification**|A feature that supports the two-stage release of AP documents: *pre-release*, when a data entry clerk enters a bill or a cash purchase; and *release*, when an authorized accountant reviews a pre-released document, specifies the correct expense accounts \(and subaccounts\), and releases the document. For details, see [Reclassification of Expenses: General Information](../Shared/../UserGuide/Finance_Reclassification_of_Expenses_General_Info.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time; however, we recommend releasing the pre-released bills before disabling the feature.

|
|**Tax Entry From GL Module**|A feature that gives users the ability to specify tax and taxable amounts for journal entries and include them in the tax reports. For more information, see [Tax Entry from GL: General Information](../Shared/../UserGuide/Taxes_Tax_Entry_from_GL_GeneralInfo.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time; however, before you disable the feature, we recommend releasing or deleting the unreleased journal entries with taxes specified.

|
|**VAT Reporting**|A feature that provides accounting and reporting for any value-added tax \(VAT\) in the system. The feature makes the *VAT* tax type available on the [Taxes](../Shared/../UserGuide/TX_20_50_00.md) \(TX205000\) form, and adds UI elements that can be used for the automatic calculation of tax amounts and for VAT reporting to the [Invoices and Memos](../Shared/../UserGuide/AR_30_10_00.md) \(AR301000\) and [Bills and Adjustments](../Shared/../UserGuide/AP_30_10_00.md) \(AP301000\) forms. For details, see [Value-Added Taxes: General Information](../Shared/../ImplementationGuide/Taxes_Configuring_VAT_GeneralInfo.md).

 You can enable this feature and start using the related functionality at any time.

 **Warning:** We recommend that you not disable this feature if at least one tax of the *VAT* tax type was configured and used in transactions. Disabling this feature may lead to data corruption or unexpected consequences in the system's operation.

|
|**VAT Recognition on Prepayments**|A feature that makes it possible to create prepayment invoices when companies need to report taxes upon receiving prepayments from clients. The system calculates the tax and taxable amounts in the prepayment invoices. Once a customer has paid a prepayment invoice, the company can report the taxes in the tax filings for the period in which the prepayment was received. For details, see [Processing Prepayment Invoices in AR](../Shared/../UserGuide/Finance_Prepayment_Invoices_Mapref.md).

 You can enable this feature and start using the related functionality at any time.

 **Warning:** We recommend that you not disable this feature if at least one document of the *Prepmt. Invoice* type was released in the system. Disabling it may lead to data corruption or unexpected consequences in the system's operation.

|
|**1099 Reporting**|A feature that provides support for configuring 1099 vendors and filing the Form 1099-MISC and Form 1099-NEC. For details, see [Filing Out the 1099 Forms](../Shared/../UserGuide/AP__MNG_1099_Filing.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time; however, before you disable the feature, we recommend making sure that all 1099 years have the *Open* status in all companies.

|
|**Net/Gross Entry Mode**|A feature that gives users the ability to specify the tax calculation mode \(net or gross\), which the system will use for computing a tax amount in a document. Depending on the specified mode, you can enter either tax-inclusive amounts at the line level or the document level, or tax-exclusive amounts at the line level or the document level. You will also be able to activate the tax amount validation functionality in a document that you enter. For details, see [Purchases with Sales Taxes: Tax Amount Validation](../Shared/../UserGuide/TX__con_Tax_Amount_Validation.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time; however, before you disable the feature, we recommend changing the tax calculation mode to *Tax Settings* in the customer and vendor records and in all unreleased documents.

|
|**Invoice Rounding**|A feature that provides automatic rounding of bill and invoice amounts. For details, see [Rounding of AP Document Amounts: General Information](../Shared/../UserGuide/Finance_AP_Doc_Amount_Rounding_GeneralInfo.md) and [Rounding of AR Document Amounts: General Information](../Shared/../UserGuide/Finance_AR_Doc_Amount_Rounding_GeneralInfo.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time.

|
|**Expense Management**|A feature that allows company employees to file their claims for reimbursement of expenses.

 For details, see [Processing Expense Claims](../Shared/../UserGuide/TimeExpenses_Process_Expense_Claims_Mapref.md).

|
|**Advanced Financials**|A group of features that is not available in the standard edition of Acumatica ERP. You can enable any of the features in this group if the group of features is available in your license.|
|**Subaccounts**|A feature that gives you the ability to use subaccounts in addition to accounts. This facilitates more granular financial analysis if you need to track your expenses by departments or cost centers or to attribute your revenue to product categories, customer classes, or geographical locations. For details, see [Subaccounts: General Information](../Shared/../ImplementationGuide/config_Subaccounts_GeneralInfo.md).

 We recommend that you enable this feature before you start configuring your system. If you need to activate it at a later stage, you perform instructions similar to those described in [Subaccounts: Implementation Activity](../Shared/../ImplementationGuide/config_Subaccounts_Implem_Activity.md).

 **Warning:** We recommend that you not disable this feature if you have configured two or more subaccounts and used them in transactions. Disabling this feature may lead to data corruption or unexpected consequences in the system's operation.

|
|**General Ledger Allocation Templates**|A feature that makes it possible to distribute account balances among other accounts based on the rules configured in the system. For more information, see [Allocation Rules: General Information](../Shared/../ImplementationGuide/config_Allocation_Rules_GeneralInfo.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time.

|
|**Inter-Branch Transactions**|A feature that makes it possible to process transactions between different companies or between the branches of the same company that require balancing. You can set up the automatic generation of balancing entries for the transactions. Alternatively, the companies and company branches can be set up for usage in sales and purchase orders and in AP bills and AR invoices. For details, see [Interbranch Account Mapping](../Shared/../ImplementationGuide/config_InterBranch_Mapping_Rules_Mapref.md).

 You can enable this feature if either the *Multicompany Support* or *Multibranch Support* feature is enabled. You can enable this feature and start using the related functionality at any time.

 Also, enabling this feature gives users the ability to process sales transactions between legal entities implemented as companies or branches in the same tenant. For details, see [Intercompany Sales Setup: General Information](../Shared/../ImplementationGuide/Finance_Intercompany_SalesSetup_GeneralInfo.md).

 You can disable this feature after it has been in use; however, we recommend deleting or releasing and posting all unposted inter-branch transactions before disabling the feature.

 If this feature is disabled, users can enter transactions only between branches that belong to one company and do not require balancing.

|
|**Multiple Base Currencies**|A feature that gives users the ability to configure and use companies with different base currencies within one tenant.

 For this feature to be enabled, the following features also need to be enabled:

 -   *Multicompany Support*
-   *Multicurrency Accounting*
-   *Customer and Vendor Visibility Restriction*

 If the *Projects* group of features is enabled, this feature can be enabled only if the *Multicurrency Projects* feature is enabled.

 You can enable this feature if the following features are disabled:

 -   *Lot/Serial Attributes*
-   *Payroll*
-   *Procore Integration*
-   *Projects* if the *Multicurrency Projects* feature is disabled
-   *Service Management*

 **Important:** This feature is currently in managed availability, and some scenarios may not be supported yet. We recommend testing the feature before you enable it on a production instance.

 For details on configuring multiple base currencies, see [Multiple Base Currencies: General Information](../Shared/../ImplementationGuide/config_Multicurrency_MultipleBaseCurrencies_GeneralInfo.md), [Customer Visibility: General Information](../Shared/../ImplementationGuide/Finance_Restricting_Customer_Visibility_GeneralInfo.md), [Vendor Visibility: General Information](../Shared/../ImplementationGuide/Finance_Restricting_Vendor_Visibility_GeneralInfo.md), and [Company Groups: General Information](../Shared/../ImplementationGuide/config_Finance_Company_Group_GeneralInfo.md).

 **Warning:** The system will not allow you to disable the feature if there are companies with different base currencies in the system.

|
|**Customer and Vendor Visibility Restriction**|A feature that gives you the ability to limit access to particular customer and vendor records for employees of a particular branch, company, or company group. For details, see [Customer Visibility: General Information](../Shared/../ImplementationGuide/Finance_Restricting_Customer_Visibility_GeneralInfo.md), [Vendor Visibility: General Information](../Shared/../ImplementationGuide/Finance_Restricting_Vendor_Visibility_GeneralInfo.md), and [Company Groups: General Information](../Shared/../ImplementationGuide/config_Finance_Company_Group_GeneralInfo.md).

 You can enable this feature if either the *Multicompany Support* feature or the *Multibranch Support* feature is enabled. You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time.

|
|**Multiple Calendar Support**|A feature that provides the ability to configure companies having a different end of the financial year within one tenant. For details, see [Multiple Calendar Support](../Shared/../UserGuide/GL__MNG_Multiple_Calendar_Support.md).

 You can enable this feature and start using the related functionality at any time. The *Multiple Calendar Support* feature can be enabled if the *Centralized Period Management* feature \(under **Standard Financials**\) is disabled.

 **Warning:** The system will not allow you to disable the feature if there are companies with different ends of financial years in the system.

|
|**General Ledger Consolidation**|A feature that provides the ability to import account balances of subsidiaries into a parent company tenant for the preparation of consolidated reports. Administrative users can configure which data should be consolidated and how exactly the data should be consolidated. After that, users can consolidate the data as often as they need to within each financial period. For more details, see [GL Consolidation Configuration: General Information](../Shared/../UserGuide/Finance_GL_Consolidation_Config_GeneralInfo.md) and [GL Consolidation: General Information](../Shared/../UserGuide/Finance_GL_Consolidation_GeneralInfo.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time.

|
|**Translation of Financial Statements**|A feature that gives users the ability to translate amounts from one currency to another currency. Translation can be used for reporting purposes in any foreign currency. For details, see [Translation of Financial Statements: General Information](../Shared/../UserGuide/Multicurrency_TranslatingFinStatements_GeneralInfo.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time.

|
|**Customer Discounts**|A feature that gives users the ability to maintain customer discounts in the system and apply them automatically to sales orders and invoices. For more information, see [Customer Discounts: General Information](../Shared/../UserGuide/Prices_Customer_Discounts_GeneralInfo.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time.

 When the feature is disabled, you can enter the discount percent or amount on a line and document level on data entry forms, but the discount amounts are not posted separately to a discount account.

|
|**Vendor Discounts**|A feature that gives users the ability to maintain vendor discounts in your system and apply them automatically to purchase orders and bills. For more information, see [Configuring Vendor Discounts](../Shared/../UserGuide/Prices_Vendor_Discounts.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time.

 When the feature is disabled, you can enter the discount percent or amount on a line and document level on data entry forms, but the discount amounts are not posted separately to a discount account.

|
|**Commissions**|A feature that makes it possible to calculate salespeople's commissions. For details, see [Managing Commissions](../Shared/../UserGuide/Finance_Managing_Commissions_Mapref.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time.

|
|**Overdue Charges**|A feature that gives your company the ability to charge fees on overdue invoices. For details, see [Overdue Charges: General Information](../Shared/../UserGuide/Finance_Overdue_Charges_GeneralInfo.md).

 You can enable this feature and start using the related functionality at any time.

 **Warning:** We recommend that you not disable this feature if at least one document of the *Overdue Charge* type was released in the system. Disabling this feature may lead to data corruption or unexpected consequences in the system's operation.

|
|**Dunning Letter Management**|A feature that provides users with the ability to generate dunning letters to notify customers about their overdue documents. Each level of dunning letters can be managed by customer or by overdue document. For details, see [Preparing Dunning Letters](../Shared/../UserGuide/CreditPolicy_Preparing_Dunning_Letters_Mapref.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time.

|
|**Deferred Revenue Management**|A feature that gives users the ability to recognize deferred revenue and expenses by using automatically generated schedules. For more information, see [Deferred Revenue](../Shared/../UserGuide/DR_00_00_00.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time; however, we recommend that you remove the deferral codes from unreleased AP and AR invoices.

|
|**Revenue Recognition by IFRS 15/ASC 606**|A feature that makes it possible to recognize deferred revenue according to the *IFRS 15* or *ASC 606* standard \(based on the fair value price\). For more information, see [Recognition of Revenue from Customer Contracts](../Shared/../UserGuide/DR__con_Recognition_of_Revenue_from_Customer_Contracts.md).

 You can enable this feature at any time; however, we recommend that you remove the deferral codes from unreleased invoices if you previously recognized revenue according to different standards.

 You can disable this feature at any time; however, we recommend that you remove the deferral codes from unreleased invoices.

|
|**Parent-Child Customer Relationship**|A feature that provides support for parent-child relationships between customers. A parent-child relationship includes the ability for the parent account to pay invoices of the child account, to prepare consolidated statements, to view a consolidated balance, and to share credit policy for a group of related customers. The relationship can be removed at any time. For details, see [Managing Parent-Child Relationships](../Shared/../UserGuide/Finance_Parent-Child_Relationship_Mapref.md).

 You can enable this feature and start using the related functionality at any time.

 **Warning:** We recommend that you not disable this feature if any parent account payments have been applied to child account invoices in the system. Disabling this feature may lead to data corruption or unexpected consequences in the system's operation.

|
|**Retainage Support**|A feature that makes it possible to retain a portion of an invoice amount to ensure that the contracted work is completed. Retainage is used primarily in the construction industry.

 If the *Standard Inventory* feature is enabled in addition to this feature, users can also create purchase orders with retained amounts. For each purchase order, a user then creates an AP bill in which the system specifies the retainage settings based on the purchase order settings.

 If the *Project Accounting* feature is enabled in your system in addition to this feature, users can also create pro forma invoices with retained amounts. For each pro forma invoice, a user then creates an AR invoice in which the system specifies the retainage settings based on the pro forma invoice settings.

 For more information, see [Processing AR Documents with Retainage](../Shared/../UserGuide/AR__MNG_ProcessingInvoices_with_Retainage.md) and [Processing AP Documents with Retainage](../Shared/../UserGuide/AP__MNG_Managing_Bills_with_Retainage.md).

 You can enable this feature and start using the related functionality at any time.

 **Warning:** We recommend that you not disable this feature if at least one document with a retained amount has been released. Disabling this feature may lead to data corruption or unexpected consequences in the system's operation.

|
|**Payment Application by Line**|A feature that makes it possible for users to apply payments to individual lines of AP and AR documents and to track the balances of the document lines. For more information, see [Applying Payments to Particular Lines of AP Documents](../Shared/../UserGuide/Finance_AP_Payments_for_Particular_Lines_Mapref.md) and [Applying Payments to Particular Lines of AR Documents](../Shared/../UserGuide/Finance_AR_Payments_for_Particular_Lines_Mapref.md).

 **Attention:** For documents paid by line, the functionality of the *Invoice Rounding* feature, if it is enabled, is not applied. However, in documents that are not paid by line, invoice amounts are rounded.

 This feature is not supported for taxable AR and AP documents that use an external tax provider, such as Avalara. If a tax zone related to an external tax provider is selected for a document on a data entry form and the document is paid by line, the system will not allow the user to release this document.

 You can enable this feature and start using the related functionality at any time.

 **Warning:** We recommend that you not disable this feature if at least one AP or AR document that is paid by line—that is, the **Pay by Line** check box is selected on the data entry form—has been released in the system. Disabling this feature may lead to data corruption or unexpected consequences in the system's operation.

|
|**Contract Management**|A feature that provides the support of contracts, including case processing and contract billing. It makes available forms related to contract processing and provides integration between accounts receivable and time and expense tracking. For more information, see [Implementing the Contract Functionality](../Shared/../UserGuide/Contracts_Implementing_Contracts_Functionality_Mapref.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time.

|
|**Fixed Asset Management**|A feature that gives users the ability to create, manage, and depreciate fixed assets through their useful life, from acquisition to disposal. The fixed asset functionality integrates with the requisition and purchase order functionality to facilitate converting purchases into fixed assets without users needing to reenter data. For more information, see [Fixed Assets](../Shared/../UserGuide/FA_00_00_00.md).

 You can enable this feature and start using the related functionality at any time. You can also disable this feature at any time.

|

## Inventory and Order Management Group of Features {#section_x5z_qwk_5vb .section}

|Feature|Overview|
|-------|--------|
|**Inventory and Order Management**|A group of features that provides the functionality of inventory and order management. This functionality includes basic sales order management and purchase order management functionality. If you enable this group of features without enabling the *Inventory* feature within it, users can create sales orders and purchase orders that include only non-stock items \(including services\); they can also create and release sales invoices and AP bills for these documents.

 If you enable this group of features along with the *Inventory* feature, users can also use the inventory functionality. That is, they can use stock items, create shipments for sales orders and purchase receipts for purchase orders, and generate inventory transactions.

 **Important:** We recommend that you not disable this group of features after it has been enabled in the system and transactions related to this functionality have been processed. Disabling this group of features after it has been enabled and used in the system could lead to data corruption or unexpected consequences in the system's operation. By disabling it, you assume full responsibility for these potential effects.

If you disable this group of features, the system will automatically disable all other features in the group. Thus, you should first read the description of each currently enabled feature in this group and make sure that all the needed actions have been taken to avoid data corruption or unexpected consequences.

If any features of the *Service Management* group are enabled and you disable the *Inventory and Order Management* group of features, make sure that the correct setting is specified in the **Generated Billing Documents** box on the [Service Order Types](../Shared/../UserGuide/FS_20_23_00.md) \(FS202300\) form for all types, [Equipment Management Preferences](../Shared/../UserGuide/FS_10_03_00.md) \(FS100300\), and [Route Management Preferences](../Shared/../UserGuide/FS_10_04_00.md) \(FS100400\) forms.

 For more information about the implementation of basic inventory and order management, see [Order Management Basic Configuration: General Information](../Shared/../ImplementationGuide/config_OrderMgmt_Basic_GeneralInfo.md).

|
|**Inventory**|A feature that gives your company the ability to maintain stock items and to create and process documents that include stock items. Stock items are physical items that are stored and managed through a warehouse and can be purchased, transferred, sold, or manufactured, and whose quantities and costs are tracked. With the feature enabled, forms related to the inventory functionality become available.

 The ability to track inventory levels can benefit companies across many industries, such as retail, wholesale distribution, manufacturing, ecommerce, and construction. With this feature enabled, users can maintain stock items in the system, process receipts and issues, and prepare and complete full physical counts.

 If your company does not track inventory but you want users to be able to enter purchase receipts for purchase orders with non-stock items, you enable the *Purchase Receipts Without Inventory* feature instead of this feature.

 **Important:**

-   You can enable the *Inventory* feature and start using the related functionality only if the *Purchase Receipts Without Inventory* feature is disabled. The *Inventory* and *Purchase Receipts Without Inventory* features are mutually exclusive—that is, you cannot enable one of these features if the other is enabled.
-   We recommend that you not disable this feature after it has been enabled in the system, the related configuration has been performed, and the related transactions have been processed. Disabling this feature after it has been enabled and used in the system could lead to data corruption or unexpected consequences in the system's operation. By disabling it, you assume full responsibility for these potential effects.

 For more information about the configuration of order management with inventory, see [Configuration of Order Management: General Information](../Shared/../ImplementationGuide/config_InvMgmt_Basic_GeneralInfo.md) and [Configuration of Order Management: Disabling of the Inventory and Order Management Features](../Shared/../ImplementationGuide/config_InvMgmt_Basic_Disabling_IOM_Features.md).

|
|**Multiple Units of Measure**|A feature that gives users the ability to define multiple units of measure \(UOMs\) for each stock item or non-stock item. They can also create rules for conversion between UOMs.

 You may need to enable this feature if your company purchases, tracks, or sells items in different units of measure. For example, you may need this functionality if your company sells items by the piece but purchases and stores these items in storage containers, such as boxes, packages, or crates. With the feature enabled, users can specify prices for each unit of measure of an item.

 With this feature disabled, for each stock item, users can define only the base unit of measure, which is used for purchasing the item, selling it, and calculating its available quantity.

 **Important:**

-   You can enable this feature and start using the related functionality at any time.
-   We recommend that you not disable this feature after it has been enabled in the system and transactions related to this functionality have been processed. Disabling this feature after it has been enabled and used in the system could lead to data corruption or unexpected consequences in the system's operation. By disabling it, you assume full responsibility for these potential effects.

 For more information, see [Units of Measure: General Information](../Shared/../UserGuide/UOMs_GeneralInfo.md) and [Configuration of Order Management: Disabling of the Inventory and Order Management Features](../Shared/../ImplementationGuide/config_InvMgmt_Basic_Disabling_IOM_Features.md).

|
|**Lot and Serial Tracking**|A feature that gives users the ability to track stock items by lot or serial number and by expiration date.

 You may need to enable this feature if your company sells the following:

 -   Products, such as medications, that are tracked by lot or unit because laws require manufacturers to keep accurate records about their distribution
-   Products, such as foods and chemical compounds, that have expiration dates
-   Products—such as electronics, appliances, and cars—that need to be tracked individually for safety and warranty measures
-   Any other products that your company wants to track in groups or individually while using the same inventory ID

 Acumatica ERP provides flexible numbering capabilities for lot and serial numbers and the ability to track different products differently.

 **Important:**

-   You can enable this feature and start using the related functionality only if the *Inventory* feature is enabled and the *Purchase Receipts Without Inventory* feature is disabled. The *Inventory* and *Purchase Receipts Without Inventory* features are mutually exclusive—that is, you cannot enable one of these features if the other is enabled.
-   We recommend that you not disable this feature after it has been enabled in the system and transactions related to this functionality have been processed. Disabling this feature after it has been enabled and used in the system could lead to data corruption or unexpected consequences in the system's operation. By disabling it, you assume full responsibility for these potential effects.

 For more information, see [Items with Lot and Serial Numbers: General Information](../Shared/../UserGuide/Lot_and_Serial_Numbers_GeneralInfo.md) and [Configuration of Order Management: Disabling of the Inventory and Order Management Features](../Shared/../ImplementationGuide/config_InvMgmt_Basic_Disabling_IOM_Features.md).

|
|**Blanket and Standard Purchase Orders**|A feature that makes it possible to process blanket purchase orders. A blanket purchase order is an order representing a long-term agreement between a company and a supplier to deliver goods or services with a defined price over a specific period of time.

 You may need to enable this feature if your company has regular and predictable procurement requirements and long-term relationships with vendors. A blanket purchase order provides a streamlined way to make multiple purchases \(through child orders\) and track large item quantities under a single agreement over an extended period.

 With the feature enabled, you can process standard purchase orders—that is, orders with products that are purchased regularly in the same quantities and that can be processed repeatedly. These standard purchase orders can be used as a template for orders to speed the data entry.

 **Important:**

-   You can enable this feature and start using the related functionality at any time if the *Inventory* feature is enabled.
-   If your users want to create child orders of the *Drop-Ship* type, you need to enable the *Drop Shipments* feature first.
-   We recommend that you not disable this feature after it has been enabled in the system and transactions related to this functionality have been processed. Disabling this feature after it has been enabled and used in the system could lead to data corruption or unexpected consequences in the system's operation. By disabling it, you assume full responsibility for these potential effects.

 For more information, see [Blanket Purchase Orders: General Information](../Shared/../UserGuide/OrderMgmt_Blanket_Purchase_Orders_GeneralInfo.md) and [Configuration of Order Management: Disabling of the Inventory and Order Management Features](../Shared/../ImplementationGuide/config_InvMgmt_Basic_Disabling_IOM_Features.md).

|
|**Purchase Receipts Without Inventory**|A feature that provides users with the ability to process purchases and sales of non-stock items by using purchase receipts and purchase returns when the *Inventory* feature is disabled on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form.

 Businesses that may need to enable this feature—such as middle-sized offices, cafeterias, or construction companies that want to track receipts to compare them with bills but do not need inventory tracking—may want to order physical goods for the company’s use but not for sales or production. Thus, they do not need to track item quantities in the system. The purchase receipts can be useful for tracking purposes, serving as proof that the items have been received.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time if the *Inventory* feature is disabled. The *Inventory* and *Purchase Receipts Without Inventory* features are mutually exclusive—that is, you cannot enable one of these features if the other is enabled.
-   You can disable this feature at any time. If you want to disable the feature after its functionality has been used, you should first complete the processing of all purchase orders and their related documents.

 If you disable the *Inventory* feature and enable the *Purchase Receipts Without Inventory* feature, the system will adjust the settings of existing non-stock items on the [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) \(IN202000\) form. If the **Require Receipt** check box was selected for these non-stock items when the *Inventory* feature was enabled, the system will select the **Process Item via Receipt** check box.

 When the *Purchase Receipts Without Inventory* feature is disabled and the *Inventory* feature is enabled, the **Require Receipt** check box will be cleared for all non-stock items on the [Non-Stock Items](../Shared/../UserGuide/IN_20_20_00.md) \(IN202000\) form, regardless of the state of the **Process Item via Receipt** check box. If there are documents in the system with non-stock items for which the **Process Item via Receipt** check box is selected, users will be able to process these documents as documents with lines of the *Service* type.

 For more information, see [Purchases of Non-Stock Items and Services with Receipts: General Information](../Shared/../UserGuide/OrderMgmt_Purchase_of_Non_Stock_Items_and_Services_with_Receipt_General_Info.md).

|
|**Drop Shipments**|A feature that gives users the ability to create and track orders for stock items or non-stock items that should be delivered directly from a vendor to a customer location.

 If your company is a retailer or ecommerce business or has diverse or specialized product offerings, you may need to enable this feature to improve order fulfillment speed. If your company is a small enterprise with limited warehouse space, you may need to enable this feature to reduce carrying costs associated with storing and managing inventory.

 **Important:**

-   You can enable this feature and start using the related functionality at any time if the *Inventory* feature is enabled.
-   We recommend that you not disable this feature after it has been enabled in the system and transactions related to this functionality have been processed. Disabling this feature after it has been enabled and used in the system could lead to data corruption or unexpected consequences in the system's operation. By disabling it, you assume full responsibility for these potential effects.

 For more information, see the following topics:

 -   [Sales with Drop Shipping: General Information](../Shared/../UserGuide/OrderMgmt_Drop_Shipment_Sale_GeneralInfo.md)
-   [Drop Shipments of Non-Stock Items: General Information](../Shared/../UserGuide/OrderMgmt_Drop_Shipping_of_Non_Stock_Items_GeneralInfo.md)
-   [Configuration of Order Management: Disabling of the Inventory and Order Management Features](../Shared/../ImplementationGuide/config_InvMgmt_Basic_Disabling_IOM_Features.md)

|
|**Multiple Warehouses**|A feature that gives companies the ability to use multiple warehouses and track inventory appropriately in each warehouse. With the feature enabled, users can transfer inventory items between warehouses and use warehouse-specific sales prices and vendor prices.

 You may need to enable this feature if your company has multiple buildings, storage rooms, or other facilities for storing inventory items.

 **Important:**

-   You can enable this feature and start using the related functionality at any time if the *Inventory* feature is enabled.
-   We recommend that you not disable this feature after it has been enabled in the system and transactions related to this functionality have been processed. Disabling this feature after it has been enabled and used in the system could lead to data corruption or unexpected consequences in the system's operation. By disabling it, you assume full responsibility for these potential effects.

 For more information, see the following topics:

 -   [Warehouses in Acumatica ERP](../Shared/../UserGuide/InvMgmt_con_Warehouses.md)
-   [Warehouses: General Information](../Shared/../UserGuide/Warehouses_GeneralInfo.md)
-   [Configuration of Order Management: Disabling of the Inventory and Order Management Features](../Shared/../ImplementationGuide/config_InvMgmt_Basic_Disabling_IOM_Features.md)

|
|**Order Orchestration**|A feature that gives companies the ability to automatically choose the best warehouse—or combination of warehouses—to fulfill each sales order. You can select and define your fulfillment strategy to optimize the orchestration for your needs.

 You may need to enable this feature if your company has multiple warehouses and wants to reduce manual intervention, optimize fulfillment efficiency, and save time on order processing.

 **Important:**

-   You can enable this feature and start using the related functionality at any time if the *Inventory* feature is enabled.
-   We recommend that you not disable this feature after it has been enabled in the system and transactions related to this functionality have been processed. Disabling this feature after it has been enabled and used in the system could lead to data corruption or unexpected consequences in the system's operation. By disabling it, you assume full responsibility for these potential effects.

 For more information about order orchestration, see [Order Orchestration: General Information](../Shared/../ImplementationGuide/config_OrderMgmt_Order_Orchestration_GeneralInfo.md).

|
|**Distribution Requirements Planning**|A feature that provides the functionality of distribution requirements planning \(DRP\).

 With the feature enabled, your company can use time-phased demand and supply planning with lead time offset to procure inventory only when it is needed. By using sales forecasts for the anticipated future demand, you can meet customer service levels more easily. Also, DRP optimizes procurement to mitigate stock shortages and minimize carrying costs and offers accurate resource use and real-time exception management.

 With this feature, users can balance supply and demand based on date-specific recommendations for unmet demand. The system groups supply and demand by time periods and generates alerts for late supply order issues, such as delayed delivery dates.

 Distributors who previously used a time-phased inventory planning tool usually include DRP as part of the primary inventory implementation phase. Distributors new to the concept of planning to demand may choose to implement DRP in the second phase of inventory implementation.

 **Important:**

-   You can enable this feature and start using the related functionality only if the *Inventory and Order Management* feature is enabled and the *Manufacturing* feature is disabled. The *Distribution Requirements Planning* and *Manufacturing* features are mutually exclusive—that is, you cannot enable one of these features if the other is enabled.
-   This feature's functionality does not involve the generation of financial transactions; thus, disabling it has no significant consequences. However, any planning recommendations for supply or demand documents will be deleted from the system. If you want to disable the feature after it has been enabled and its functionality has been used, you should first create all the needed sales orders, purchase orders, transfers, and kit assembly documents.

 For more information, see [Inventory Planning Configuration: General Information](../Shared/../ImplementationGuide/config_Inventory_Planning_GeneralInfo.md).

|
|**Multiple Warehouse Locations**|A feature that supports multiple locations for each warehouse.

 You may need to enable this feature if your company wants to organize warehouse space according to its physical representation. In this case, locations are shelves or storage places for which you can define the following:

 -   Their usage, such as default receiving location for an item or default issuing location
-   Their settings, such as which operations are allowed for the location and whether it is a separately tracked location

 Users can assign different pick priorities to locations in order to empty certain locations more quickly while using others less frequently.

 **Important:**

-   You can enable this feature and start using the related functionality at any time if the *Inventory* feature is enabled.
-   We recommend that you not disable this feature after it has been enabled in the system and transactions related to this functionality have been processed. Disabling this feature after it has been enabled and used in the system could lead to data corruption or unexpected consequences in the system's operation. By disabling it, you assume full responsibility for these potential effects.

 For more information, see [Warehouse Locations and Single-Step Transfers: General Information](../Shared/../UserGuide/Warehouse_Locations_GeneralInfo.md) and [Configuration of Order Management: Disabling of the Inventory and Order Management Features](../Shared/../ImplementationGuide/config_InvMgmt_Basic_Disabling_IOM_Features.md).

|
|**Inventory Replenishment**|A feature that gives your company the ability to maintain the needed level of stock at warehouses by purchasing the appropriate quantity of stock items from vendors or by transferring that quantity from other warehouses to the needed warehouses.

 By using a demand forecast model, users can automatically calculate replenishment parameters based on sales statistics and perform replenishment for a specific future period based on historical sales data. They can perform replenishment through transfers if your company has multiple warehouses and replenishes stock items by transferring them from a warehouse where they are available. Users can perform replenishment through purchases if your company needs to purchase stock items at an appropriate time from particular vendors when the stock is below a certain level.

 If the *Multiple Warehouses* feature is enabled, users can perform replenishment through a warehouse that functions as a distribution center for consolidated purchasing: items are received in this warehouse, and goods are replenished to other warehouses from it.

 **Important:**

-   You can enable this feature and start using the related functionality at any time if the following features are enabled: *Inventory*, and either *Multiple Warehouses* or *Multiple Warehouse Locations* \(or both features\).
-   You can disable this feature at any time. If you want to disable the feature after it has been enabled and its functionality has been used, you should first create all the needed purchase orders or transfer orders.

 For more information, see [Configuration of Replenishment: General Information](../Shared/../ImplementationGuide/config_OrderMgmt_Replenishment_GeneralInfo.md).

|
|**Matrix Items**|A feature that provides the functionality of creating and using matrix items \(items with multiple attributes, such as materials, sizes, colors, or brands\) in the system. It also gives users the ability to generate items with various attributes automatically by using predefined templates. You may need to enable this feature if your company is a distributor, retailer, or ecommerce business that needs to purchase or sell the same product in multiple variants. You can define the price of the product by using a template \(an aggregating item\) or by using a particular item \(a matrix item\), if needed.

 **Important:**

-   You can enable this feature and start using the related functionality at any time.
-   If your company needs to sell or purchase matrix items that are stock items, you need to enable the *Inventory* feature before enabling the *Matrix Items* feature.
-   We recommend that you not disable this feature after it has been enabled in the system and transactions related to this functionality have been processed. Disabling this feature after it has been enabled and used in the system could lead to data corruption or unexpected consequences in the system's operation. By disabling it, you assume full responsibility for these potential effects.

 For more information, see [Matrix Items: General Information](../Shared/../UserGuide/Matrix_Items_GeneralInfo.md) and [Configuration of Order Management: Disabling of the Inventory and Order Management Features](../Shared/../ImplementationGuide/config_InvMgmt_Basic_Disabling_IOM_Features.md).

|
|**Automatic Packaging**|A feature that makes the system calculate the optimal set of boxes for each sales order and shipments. The system adds the boxes \(based on the list of carrier boxes\), the item packaging options, and the item quantities to the document. If your company ships the items through an integrated carrier—such as FedEx, USPS, and UPS—the system calculates the shipping costs for each carrier so that users can select shipping option. This feature may be helpful if you need an early prediction of the freight cost before shipping and a suggestion about which boxes should be used for the goods in the shipment.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time if the *Inventory* and *Shipping Carrier Integration* features are enabled.
-   We recommend not using this feature together with the *Fulfillment* feature, which is in the *Warehouse Management* group of features.

When the *Automatic Packaging* feature is enabled, the system automatically suggests and adds packages to shipments. A shipment with multiple predefined packages cannot be processed in Pack mode, which is part of the functionality provided by the *Fulfillment* feature. To process this shipment in Pack mode, you will need to delete all packages first.

-   You can disable this feature at any time. We recommend that you fully process sales orders and shipments before disabling this feature.

 For more information, see the following topics:

 -   [Integration with Carriers](../Shared/../UserGuide/CS__con_Integration_with_Carriers.md)
-   [Automatic Packaging for Integrated Carriers](../Shared/../UserGuide/SO__con_Automated_Shipments.md)
-   [Automatic Packaging for Local Carriers](../Shared/../UserGuide/SO__con_Automated_Shipments_NICarriers.md)

|
|**Kit Assembly**|A feature that gives your company the ability to create and track kits in the system. A kit is a bundled and assembled product made up of individual items and components. You may need to enable this feature if your company wants to add multiple stock items into a single package or product for sale or deliver unique combinations of services and products.

 **Important:**

-   You can enable this feature and start using the related functionality at any time if the *Inventory* feature is enabled.
-   We recommend that you not disable this feature after it has been enabled in the system and transactions related to this functionality have been processed. Disabling this feature after it has been enabled and used in the system could lead to data corruption or unexpected consequences in the system's operation. By disabling it, you assume full responsibility for these potential effects.

 For more information on kits, see [Inventory Item Kits](../Shared/../UserGuide/IN__con_Accounting_for_Kits.md) and [Configuration of Order Management: Disabling of the Inventory and Order Management Features](../Shared/../ImplementationGuide/config_InvMgmt_Basic_Disabling_IOM_Features.md).

|
|**Related Items**|A feature that gives companies the ability to use the functionality of related items—such as cross-sell, up-sell, and substitute items—to increase the value of sales and improve customer satisfaction. Retailers will benefit from this feature because it simplifies item selection when an employee receives a sales order by phone or enters a direct invoice in the following scenarios:

 -   An additional item would add value to the sale.
-   The customer may benefit from a higher-quality item.
-   The original item is no longer available for sale and should be replaced.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time.
-   You can disable this feature at any time.

 For more information, see [Related Items in Sales Orders: General Information](../Shared/../UserGuide/OrderMgmt_Sales_of_Related_Items_GeneralInfo.md).

|
|**Advanced Physical Count**|A feature that gives companies the ability to categorize the inventory by physical count type and to perform the counts by inventory IDs, item classes, user-defined cycles, movement classes, or ABC codes. The feature will benefit any company that owns a midsize or large warehouse by reducing the time for the physical counting process, thus minimizing disruptions to daily operations.**Attention:**

-   You can enable this feature at any time if the *Inventory* feature is enabled.
-   You can disable this feature at any time. If you want to disable the feature after its functionality has been used, you should first make sure that all physical counts have the *Complete* or *Canceled* status on the [Physical Inventory Review](../Shared/../UserGuide/IN_30_50_00.md) \(IN305000\) form. If there are physical counts with other statuses, process them to completion or delete them. You should also delete physical inventory types that have a generation method other than *Full Physical Inventory* on the [Physical Inventory Types](../Shared/../UserGuide/IN_20_89_00.md) \(IN208900\) form.

For information, see [Configuration of Physical Inventory](../Shared/../UserGuide/IN__con_Planning_for_Physical_Inventory.md).

|
|**Sales Order to Purchase Order Link**|A feature that gives users the ability to create a linked purchase order for a sales order line or to link sales orders to existing purchase orders and receipts, so that the system will allocate the items listed on purchase receipts to specific sales orders.

 This feature will benefit any company that has to deal with the following business scenarios:

 -   The company needs to process a sales order that includes items that the company does not have in stock; these items are purchased only for specific sales orders.
-   The company has multiple warehouses and performs purchasing only to particular larger warehouses \(distribution centers\).
-   The company needs to promptly fulfill a sales order line for which the quantity of the item is insufficient. After any available units of the item have been shipped, the company needs to order the quantity that was unavailable at the time of shipping.

 **Attention:**

-   You can enable this feature and start using the related functionality only if the *Inventory* feature is enabled.
-   You can disable this feature at any time.

 For more information, see the following topics:

 -   [Purchases for Sale: General Information](../Shared/../UserGuide/OrderMgmt_Purchase_for_Sale_GeneralInfo.md)
-   [Configuration of Order Management: Disabling of the Inventory and Order Management Features](../Shared/../ImplementationGuide/config_InvMgmt_Basic_Disabling_IOM_Features.md)

|
|**Custom Order Types**|A feature that gives companies the ability to create more order types to support business processes that cannot be supported with the predefined order types. For example, the company may need to configure a custom order type that uses different sets of general ledger accounts and subaccounts and different numbering sequences to determine order IDs. Also, this type might have different processing options specified, such as the setting that causes the system to perform a credit check when the orders of this type are entered.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time.
-   You can disable this feature at any time.

 For more information, see [Sales Order Types: Custom Sales Order Types](../Shared/../ImplementationGuide/config_Sales_Order_Types_Custom_Order_Types.md).

|
|**Purchase Requisitions**|A feature that gives users the ability to create purchase requests and requisitions for customers and employees. Users can also perform bidding to find the best prices and control budget compliance.

 This functionality may be useful for companies that process their procurement through a tender process or typically work with multiple vendors' offers when ordering goods.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time if the *Multiple Base Currencies* feature is disabled in the *Advanced Financials* group of features.
-   You can disable this feature at any time. If you want to disable the feature after its functionality has been used, you should first process all requisitions and requests to completion.

 For more information, see [Purchase Requisition Configuration: General Information](../Shared/../ImplementationGuide/config_OrderMgmt_Purchase_Requisitions_GeneralInfo.md).

|
|**Advanced SO Invoices**|A feature that gives users the ability to add items directly to sales invoices without creating and processing an associated sales order and shipment. This feature will benefit companies that sell items in retail shops with point-of-sale \(POS\) systems.

 Your organization can integrate Acumatica ERP with an external POS system for simplified processing of direct sales if this feature is enabled.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time. We recommend that you enable this feature only if the *Inventory* feature is enabled.
-   You can disable this feature at any time. If you want to disable the feature after its functionality has been used, you should first finish processing existing direct sales invoices. After disabling the feature, you will not be able to correct the direct invoices that contain stock items and the invoices that were created from field service documents.

 For more information, see [Direct Sales: General Information](../Shared/../UserGuide/OrderMgmt_Direct_Sales_GeneralInfo.md) and [Direct Returns: General Information](../Shared/../UserGuide/OrderMgmt_Direct_Returns_GeneralInfo.md).

|
|**Vendor Relations**|A feature that provides the ability to configure and manage vendor relations. Companies that make payments for goods or services to a different vendor than the vendor that supplied those goods or services will benefit from this feature.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time.
-   You can disable this feature at any time. If you want to disable the feature after its functionality has been used, you should first completely process all purchase orders and bills that have a different supplying vendor and pay-to vendor.

 For more information, see [Vendor Relations: General Information](../Shared/../UserGuide/Finance_Managing_Vendor_Relations_GeneralInfo.md).

|
|**Warehouse Management**|A group of features for automating warehouse operations, such as the picking, packaging, receiving, putting away, transferring, and counting of items. If this group is included in your license, you can enable any of the features in this group and disable the features that will not be used in your configuration of automated warehouse operations.

 This group of features is recommended for midsize and large warehouses that have many rows, racks, and stock keeping units \(SKUs\) and that have medium or large turnover of goods per day. If the company wants to simplify the warehouse operations by using handheld barcode scanners, they will benefit from these features.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time.
-   You can disable this feature at any time. If you want to disable the feature after its functionality has been used, you should first finish the started operations and complete the processing of all documents related to the features that were enabled in this group.

If you disable the *Warehouse Management* feature, the system will automatically disable all other features in the group.


 For more information, see [Automated Warehouse Operations: General Information](../Shared/../UserGuide/WMS_Automated_Warehouse_Operations_GeneralInfo.md).

|
|**Fulfillment**|A feature that gives users the ability to perform fulfillment operations—such as picking, packing, and shipping items—by using barcode scanners or mobile devices.

 The feature will benefit companies that have midsize and large warehouses and many rows and racks and that would like to simplify their picking and packaging processes by using handheld barcode scanners to pick and pack goods. With this feature enabled, users can perform all the picking and packaging activities on the same form in Acumatica ERP and the mobile app.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time if the *Warehouse Management* feature is enabled.
-   We recommend that you not use the *Automatic Packaging* and *Fulfillment* features together.

When the *Automatic Packaging* feature is enabled, the system automatically suggests and adds packages to shipments. A shipment with multiple predefined packages cannot be processed in Pack mode, which is part of the functionality provided by the *Fulfillment* feature. To process this shipment in Pack mode, you will need to delete all packages first.

-   You can disable this feature at any time. If you disable the *Fulfillment* feature, the system will automatically disable the *Paperless Picking* and *Advanced Picking* features.

 For more information, see [Picking and Packing Operations: General Information](../Shared/../UserGuide/WMS_Pick_Pack_GeneralInfo.md).

|
|**Paperless Picking**|A feature that enables a more efficient warehouse management process by eliminating the need for printed pick lists. Warehouse managers can organize picking jobs, set priorities, and assign tasks digitally for single-shipment, wave, and batch pick lists if the *Advanced Picking* feature is enabled.

 This digital approach speeds the picking and packing processes, enhances operational flexibility, and reduces paper waste. It also helps to organize each picker’s routes in the most effective way and provides the next picking job to the picker to reduce downtime. If the *Advanced Picking* feature is disabled, only the single-shipment pick lists are available.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time if the *Warehouse Management* and *Fulfillment* features are enabled.
-   You can disable this feature at any time. If you want to disable the feature after its functionality has been used, you should first process all the pick lists to completion and confirm the related shipments.

 For more information, see [Paperless Picking: General Information](../Shared/../UserGuide/OrderMgmt_Paperless_Picking_GeneralInfo.md).

|
|**Advanced Picking**|A feature that provides the ability to use the wave and batch picking workflows, which can streamline warehouse operations. Wave picking consolidates pick lists for groups of orders, gives pickers the ability to collect items in one warehouse pass, and optimizes efficiency for large order volumes. Batch picking organizes items from multiple orders into a batch, which can be picked by item line. After the batch is picked, the packer is packing goods from the sort location for each order. Both workflows organize the picking processes in the warehouse, provide the ability to aggregate multiple picking tasks for one picker, and reduce the processing time.

 Your company will benefit from this feature if you have a large volume of shipments per day and a lot of pickers whose routes in the warehouse need to be organized.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time if the *Warehouse Management* and *Fulfillment* features are enabled.
-   You can disable this feature at any time. If you want to disable the feature after its functionality has been used, you should first process all the pick lists to completion and confirm the related shipments.

 For more information, see [Wave Picking: General Information](../Shared/../UserGuide/WMS_Wave_Picking_GeneralInfo.md) and [Batch Picking: General Information](../Shared/../UserGuide/WMS_Batch_Picking_GeneralInfo.md).

|
|**Receiving**|A feature that gives users the ability to receive and put away goods by using handheld barcode scanners.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time if the *Warehouse Management* feature is enabled.
-   You can disable this feature at any time. If you want to disable the feature after its functionality has been used, you should first process all receiving and putting away operations to completion and confirm the related receipts and transfers.

 For more information, see [Receiving and Putting Away Operations: General Information](../Shared/../UserGuide/WMS_Receive_Put_Away_GeneralInfo.md).

|
|**Inventory Operations**|A feature that supports inventory operations—such as issuing, receiving, transferring, and counting items—by using barcode scanners or mobile devices.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time if the *Warehouse Management* feature is enabled.
-   You can disable this feature at any time. If you want to disable the feature after its functionality has been used, you should first check and finish \(that is, process to completion or remove\) all the started documents on the forms related to automated inventory operations.

 For more information, see the following topics:

 -   [Processing of Inventory Receipts: General Information](../Shared/../UserGuide/WMS_Scan_and_Receive_GeneralInfo.md)
-   [Processing of Inventory Issues: General Information](../Shared/../UserGuide/WMS_Scan_and_Issue_GeneralInfo.md)
-   [Processing of Transfers: General Information](../Shared/../UserGuide/WMS_Scan_and_Transfer_GeneralInfo.md)
-   [Counting in Physical Inventory: General Information](../Shared/../UserGuide/WMS_Scan_and_Count_GeneralInfo.md)

|
|**Cart Tracking**|A feature that gives users the ability to use carts during picking, receiving, and transfer processing. This might be useful if your employees use carts or pallet transporters frequently in your warehouse, and your company wants to be able to track goods even when they are in carts or pallet transporters.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time if the *Warehouse Management* feature is enabled.
-   You can disable this feature at any time. If you want to disable the feature after its functionality has been used, you should first move all the items from the carts in the system.

 For more information, see [Cart Tracking in Warehouse Operations](../Shared/../UserGuide/WMS_CartTracking.md).

|

## Customer Management Group of Features {#section_ady_35k_5vb .section}

|Feature|Overview|
|-------|--------|
|**Customer Management**|A group of features on the [Enable/Disable Features](../Shared/../UserGuide/CS_10_00_00.md) \(CS100000\) form that makes available the forms and UI elements related to the customer management functionality. With this group of features enabled, users can work with the following: leads, contacts, and business accounts; opportunities and sales quotes; cases; and marketing lists and campaigns. You can also make available the address lookup functionality, which is used on forms with address information.

 If you attempt to disable the group of features, a warning message will be displayed next to this check box.

 **Attention:** We recommend that you not disable this group of features after it has been enabled in the system. Disabling the group may lead to data corruption or unexpected consequences in the system's operation.

 For more information, see [CRM: General Information](../Shared/../UserGuide/CRM_GeneralInfo.md).

|
|**Case Management**|A feature that gives you the ability to create, manage, and resolve customer and internal cases. With this feature enabled, you can easily monitor a case's progress, create activities associated with the case, assign the case to an owner, and coordinate the process of finding a solution.

 You can enable this feature and start using this functionality at any time if the *Customer Management* feature is enabled. If the *Customer Management* feature is disabled, this feature becomes disabled automatically.

 **Attention:** We recommend that you not disable this feature after it has been enabled in the system. Disabling this feature may lead to data corruption or unexpected consequences in the system's operation.

 For details, see [Managing Cases](../Shared/../UserGuide/CRM_Support_Managing_Cases_Mapref.md).

|
|**Duplicate Validation**|A feature that provides functionality you can use to configure and perform the automatic validation of lead, business account, and contact records for duplicates, ensuring the creation of an efficient and accurate database.

 With the feature enabled, you can avoid creating new records with duplicate information. For existing records with duplicate information, you can associate the records with each other or merge them into one record with more complete data.

 You can enable this feature and start using this functionality at any time if the *Customer Management* feature is enabled. Once the feature is enabled, you should set up duplicate validation rules and recalculate grams for existing records to ensure that the feature functions accurately.

 You can disable this feature at any time. If the *Customer Management* feature is disabled, this feature becomes disabled automatically.

 For more information, see [Validating Records for Duplicates](../Shared/../UserGuide/CRM_Mktg_Validating_Recs_Duplicates_Mapref.md).

|
|**Sales Quotes**|A feature that gives you the ability to create opportunity-based sales quotes, send them to customers for review, and create sales orders and invoices based on these quotes. With this feature enabled, you can manage the process of closing sales deals quickly and effectively.

 You can enable this feature and start using this functionality at any time if the *Customer Management* feature is enabled.

 **Attention:** We recommend that you not disable this feature after it has been enabled in the system. Disabling this feature may lead to data corruption or unexpected consequences in the system's operation.

 If the *Customer Management* feature is disabled, this feature becomes disabled automatically.

 For more information, see [Opportunity Management: Sales Quotes](../Shared/../UserGuide/CRM_Sales_Managing_Opportunities_Sales_Quotes.md).

|
|**Address Lookup Integration**|A feature that provides the address enrichment functionality. With this feature enabled, integration with a web map service can be set up, and you can add new addresses, update existing addresses, and fill in the missing address information on the forms that have address information.

 You can enable this feature and start using this functionality at any time if the *Customer Management* feature is enabled. Once the feature is enabled, you must specify data provider settings to ensure that the feature works effectively.

 You can disable this feature at any time. If the *Customer Management* feature is disabled, this feature becomes disabled automatically.

 For more information, see [Integrating Acumatica ERP with Web Map Services](../Shared/../UserGuide/config_Web_Map_Services_Mapref.md).

|

## Projects Group of Features {#section_y1p_1zk_5vb .section}

|Feature|Overview|
|-------|--------|
|**Projects**|A group of features that adds support for managing projects and creating project-related documents. For more information about project accounting, see [Project Accounting in Acumatica ERP](../Shared/../UserGuide/PM__PM_Features.md).

 You can enable any of the features in this group if the group of features is available in your license.

 If you have decided to disable the feature after it has been enabled and its functionality has been used, you should first complete the processing of all project-related documents. After you disable the feature, none of the project-related functionality will be available; all project-related UI elements will become hidden.

|
|**Budget Forecast**|A feature that gives you the ability to prepare a budget forecast for long-term projects so that you can break down the structure of the project budget by financial periods and by type \(for example, by revenue and expense\). For more information, see [Project Budget Forecasts: General Information](../Shared/../UserGuide/Projects_Budget_Forecasts_GeneralInfo.md).

 You can enable this feature at any time if the *Projects* group of features is enabled.

 You can disable this feature at any time. After you disable the feature, none of the budget forecast functionality will be available; all related forms and UI elements will become hidden.

|
|**Change Orders**|A feature that gives you the ability to control changes to the project's budgeted and committed values, and to control the profitability of every change initiated by a customer. With the feature, you can create change orders for the revenue budget and cost budget of the projects. Also, you can track changes to project commitments, including purchase orders, project drop-ship orders, and subcontracts. With change orders, you can perform the following operations with these documents:

 -   Updating amounts and quantities in existing document lines
-   Adding new document lines
-   Creating new project-related subcontracts, purchase orders, or project drop-ship orders
-   Reopening completed documents that have at least one change order applied

 For more information, see [Single-Tier Change Management: General Information](../Shared/../UserGuide/Projects_CO_GeneralInfo.md).

 If you have decided to disable the feature after it has been enabled and its functionality has been used, you should complete the processing of all existing change orders. After you disable the feature, none of the change order functionality will be available; all related forms and UI elements will become hidden.

 **Attention:** If you disable the *Change Orders* feature, the system will automatically disable the change request functionality, clear the **Change Requests** check box, and make it unavailable for selection.

 You can enable this feature at any time if the *Projects* group of features is enabled.

|
|**Change Requests**|A feature that gives you the ability to set up change management in two tiers: In the first tier, you create change requests, and in the second tier, you group multiple change requests into a single change order. With the change requests, you can track potential changes to the project revenue budget and project cost budget and automatically calculate the markups to be applied to these changes. If the *Construction Project Management* feature is in use, you can also create change requests based on project issues and requests for information. For more information, see [Change Requests: General Information](../Shared/../UserGuide/Projects_Two_Tier_Change_Management_GeneralInfo.md).

 You can enable this feature only if the *Change Orders* feature is enabled.

 If you have decided to disable the feature after it has been enabled and its functionality has been used, you should complete the processing of all existing change requests. After you disable the feature, none of the change request functionality will be available; all related forms and UI elements will become hidden.

|
|**Construction**|A feature that gives you construction-specific functionality, such as joint payments, subcontracts, cost projections, progress worksheets, correction of pro forma invoices, compliance documents \(including lien waivers\), and construction-specific reports \(including AIA reports\). For more information, see the [Construction](../Shared/../UserGuide/Construction__con_Overview_Construction_Processes.md) guide.

 You can enable this feature at any time if the *Projects* group of features is enabled.

 If you have decided to disable the feature after it has been enabled and its functionality has been used, you should complete the processing of all pro forma invoices being corrected. After you disable the feature, none of the construction functionality will be available; all related forms and UI elements will become hidden.

|
|**Construction Project Management**|A feature that provides construction-specific project management functionality. With this feature enabled, you can create and process daily field reports, project issues, requests for information, photo logs, drawing logs, and submittals for your projects. For more information, see the [Construction](../Shared/../UserGuide/Construction__con_Overview_Construction_Processes.md) guide.

 You can enable this feature at any time if the *Construction* feature is enabled.

 You can disable this feature at any time. After you disable the feature, none of the construction project management functionality will be available; all related forms and UI elements will become hidden.

|
|**Weather Services**|A feature that provides you with the ability to configure integration with weather API services. With this feature enabled, you can load information about weather conditions in daily field reports by using the *OpenWeatherMap*, *WeatherBit*, and *AccuWeather* weather services.You can enable this feature at any time if the *Construction Project Management* feature is enabled.

You can disable this feature at any time. After you disable the feature, none of the related functionality will be available; all related forms and UI elements will become hidden.

**Attention:** If you disable the *Construction Project Management* feature, the system will automatically disable the weather services functionality, clear this check box, and make it unavailable for selection.

|
|**360 Dashboards**|A feature that provides you with the ability to track all of a project’s information in one place—from high-level metrics to financials, documents, and project reports. You can monitor project KPIs, review supporting records, and drill down into details. For more information, see [Construction Reports: Project Status](../Shared/../UserGuide/Construction_Reports_360_Project_Status.md).

 You can enable this feature at any time if the *Construction* feature is enabled.

 You can disable this feature at any time. After you disable it, the [Project Status](../Shared/../UserGuide/PM_30_15_00.md) \(PM301500\) form will become hidden.

|
|**Extended Financial Data Collection**|A feature that gives you the ability to monitor each project’s cash flow, track its committed costs, and evaluate its profitability—as well as compare budgeted project values with actual values.

 With this feature enabled, the following generic inquiry forms become available:

 -   [Project Cash Flow](../Shared/../UserGuide/PM_65_10_10.md) \(PM651010\)
-   [Project Committed Cost Detailed](../Shared/../UserGuide/PM_65_83_00.md) \(PM658300\)
-   [Project Committed Cost Summary](../Shared/../UserGuide/PM_65_82_00.md) \(PM658200\)
-   [Project Profitability](../Shared/../UserGuide/PM_65_81_00.md) \(PM658100\)
-   [Project Variance](../Shared/../UserGuide/PM_65_10_20.md) \(PM651020\)

 **Attention:** Before using the forms provided by this feature, recalculate project balances on the [Recalculate Project Balances](../Shared/../UserGuide/PM_50_40_00.md) \(PM504000\) form with the **Recalculate Project Budget History** check box selected. This ensures that the system includes data from previously processed project-related documents in the calculations.

 For details, see [Working with Construction Reports](../Shared/../UserGuide/Construction_Reports_Mapref.md).

|
|**Cost Codes**|A feature that gives you the functionality of cost codes, which represent an additional classification level for project revenues and costs in project budgets. This additional level of classification helps general contractors and subcontractors to achieve accurate job costing, and to prepare and provide project billing documents with the most detailed information. With this feature enabled, users can facilitate detailed reporting by specifying cost codes in GL transactions, bills, invoices, sales orders, purchase orders, project transactions, and cash transactions. For more information, see [Cost Codes: General Information](../Shared/../ImplementationGuide/config_Cost_Codes_GeneralInfo.md).

 You can enable this feature at any time if the *Projects* group of features is enabled. We recommend planning the structure of cost codes and enabling this feature during the implementation phase.

 If you have decided to disable the feature after it has been enabled and its functionality has been used, you should complete the processing of all project-related document and ensure that no other documents are expected to be processed in the future. After you disable the feature, none of the cost code functionality will be available; all related forms and UI elements will become hidden. New project-related documents will be processed by using the default cost code.

|
|**Multicurrency Projects**|A feature that adds support of multiple currencies to the project-related functionality. Users can do the following:

 -   Create a project in a currency that is different from the base currency of the company or branch
-   Track project budgets and project invoices in the customer’s currency
-   Keep project transactions in any currency
-   Bill a project in a currency that is different from the project currency
-   Manage profitability in the base currency

 For more information, see [Managing Multicurrency Projects](../Shared/../UserGuide/Projects_Multicurrency_Projects_Mapref.md).

 You can enable this feature only if the *Multicurrency Accounting* feature is enabled.

 If you have decided to disable the feature after it has been enabled and its functionality has been used, you should first complete the processing of all documents that are related to multicurrency projects. Also, you should complete all multicurrency projects to ensure that no billings or costs are expected for these projects. After you disable the feature, none of the operations with multicurrency projects and related documents will be available.

 If the *Projects* group of features is in use, you can enable the *Multiple Base Currencies* feature only when the *Multicurrency Projects* feature is enabled. If you disable the *Multicurrency Projects* feature, the system will automatically disable the *Multiple Base Currencies* feature.

 **Important:** The system will not allow you to disable the *Multiple Base Currencies* feature if companies with different base currencies exist in the system.

|
|**Professional Services**|A feature that causes the name of the **Projects** or **Construction** workspace \(depending on what other features you've enabled on this form\) to change to *Professional Services*.

 You can enable this feature at any time if the *Projects* group of features is enabled.

 You can disable this feature at any time.

|
|**Project Quotes**|A feature that gives you the ability to streamline the project planning process by creating project quotes and converting the winning quote to a project when you reach an agreement with the customer on the terms of this project quote. For more information, see [Project Quotes: General Information](../Shared/../UserGuide/Projects_Project_Quotes_GeneralInfo.md).

 You can enable this feature at any time if the *Projects* group of features is enabled.

 You can disable this feature at any time. After you disable the feature, none of the project quote functionality will be available; all related forms and UI elements will become hidden.

|
|**Project-Specific Inventory**|A feature that provides enhanced tracking of the quantities and costs of items that are purchased or sold for projects. This feature helps you to accurately capture inventory expenses and revenues related to the project inventory in a project budget. This also helps you to avoid any delays associated with items not being available when they are needed for the project. For more information, see [Project Inventory Tracking: General Information](../Shared/../UserGuide/Projects_Inventory_Tracking_GeneralInfo.md).You can enable this feature at any time if the *Projects* group of features is enabled and the *Inventory* feature is enabled.

If you have decided to disable the feature after it has been enabled and its functionality has been used, you should complete the processing of all sales and purchase documents related to the projects that were using the project-specific inventory tracking and ensure that all project stock has been transferred to free stock. In the projects that are not yet completed, you should update the settings to use tracking by location, and define the warehouse locations to be used for these projects. For more information, see [Project Inventory Tracking: Implementation Checklist](../Shared/../UserGuide/Projects_Inventory_Tracking_Implem_Checklist.md).

|
|**Document Management**|A feature that provides you with a secure and organized way to work with project-related files, such as RFIs, drawings, contracts, or photos. You can upload, tag, and access the files that you work with centrally.

 You specify the access rights that specific roles have to each tag. These access rights determine exactly how users with each role can work with files with the tag.

 You can enable this feature at any time if the *Projects* group of features is enabled.

 You can disable this feature at any time. After you disable it, all related forms and UI elements will become hidden.

 For more information, see [Managing Project Files](../Shared/../UserGuide/Projects_File_Management_Mapref.md).

|
|**Material Management**|A feature that lets you manage project materials by using a single material list for each project. You create a project’s material list on the [Project Materials](../Shared/../UserGuide/PM_30_65_00.md) \(PM306500\) form and track key information for each material line, such as its status, cost, and required quantities. You can create the material list by adding project cost budget lines, quote lines, purchase order lines, and inventory items. For each material line, you can specify the material's source and create related purchase orders, and create material issues for the selected lines.

 When this feature is enabled, the [Project Materials](../Shared/../UserGuide/PM_30_65_00.md) \(PM306500\) form becomes available in the Modern UI. You can enable the feature only if the *Inventory* feature is enabled.

 Before you start using this feature, you must:

 -   Specify the default reason code to be used for material issues
-   Set up the required account groups for expense tracking
-   Set up the needed availability calculation rules

 If you’ve decided to disable the feature after it has been enabled and its functionality has been used, you must finish processing documents related to project materials. After you disable the feature, all related forms and UI elements become hidden.

 For details, see [Configuration of Project Material Management: General Information](../Shared/../ImplementationGuide/config_Project_Material_Mgmt_GeneralInfo.md) and [Project Material Management: General Information](../Shared/../UserGuide/Construction_Project_Materials_Mgmt_GeneralInfo.md).

|

## Customer Portal Group of Features {#section_wym_nzk_5vb .section}

|Feature|Overview|
|-------|--------|
|**Customer Portal**|A group of features that you enable to use the Acumatica Self-Service Portal, which provides a solution for you to work and communicate with your customers more efficiently. The Self-Service Portal is specifically designed to be the site where your customers can view all the relevant information about their interactions with you as a vendor and perform needed activities. The Self-Service Portal is an additional application that can be installed separately.

 You can enable or disable this group of features at any time. If you enable the *Customer Portal* feature, the employees of your customers can access the Self-Service Portal and work in it.

 Through the portal, users can access the basic information of their company. Some users can also add or manage the customer contacts that are linked to their business accounts in Acumatica ERP, and manage users' access to and roles in the Self-Service Portal.

 The information these portal users can access depends on the roles assigned to their user account and the other enabled features in your system. User capabilities may include adding or managing contacts of their business account, along with configuring the user accounts to access the portal. The capabilities may also include viewing their dealings with your company, such as orders and cases.

 If you disable the *Customer Portal* feature, the system will automatically disable the *B2B Ordering*, *Case Management on Portal*, and *Financials on Portal* features. Thus, before you disable this feature, you should read the description of each currently enabled feature in this group and make sure that all the needed actions have been taken to avoid unexpected consequences.

 For more information, see [Overview of the Acumatica Self-Service Portal](../Shared/../UserGuide/SP__SP_Portal_Overview.md).

|
|**B2B Ordering**|A feature that makes it possible for your customers to view the online catalog and place orders through the Self-Service Portal.

 You can enable this feature at any time. If you enable the *B2B Ordering* feature, your customers can create, place, and track orders in the system. With this feature enabled, customers can browse the catalog in the Self-Service Portal, add items to the cart, change the contents of the cart, and view item details.

 This feature can be safely disabled at any time. If you disable the *Customer Portal* feature, the system will automatically disable the *B2B Ordering* feature as well.

 **Attention:** If you plan to disable this feature after customers have begun using the functionality, we recommend that you give your customers ample warning so that they can finish their work and save any changes in the Self-Service Portal.

 For more information, see [Managing the Inventory Catalog in the Self-Service Portal](../Shared/../UserGuide/config_SSP_Admin_Managing_Inventory_Catalog_Mapref.md).

|
|**Case Management on Portal**|A feature that gives your customers the ability to add cases and track case processing through the Self-Service Portal.

 You can enable this feature at any time.

 **Attention:** This feature can be enabled only if the *Case Management* feature is enabled in Acumatica ERP.

 If you enable the *Case Management on Portal* feature, your customers can create cases and track them in the Self-Service Portal. With this feature enabled, they can easily monitor a case's progress and create activities associated with the case.

 This feature can be safely disabled at any time. If you disable the *Customer Portal* feature, the system will automatically disable the *Case Management on Portal* feature.

 **Attention:** If you plan to disable this feature after customers have begun using the functionality, we recommend that you give your customers ample warning so that they can finish their work and save any changes in the Self-Service Portal.

 For more information, see [Configuring Case Management in the Self-Service Portal](../Shared/../UserGuide/config_SSP_Admin_Configuring_Case_Management_in_SSP_Mapref.md).

|
|**Financials on Portal**|A feature that provides a means for your customers to access the financial documents associated with their company accounts in Acumatica ERP.

 You can enable this feature at any time. If you enable the *Financials on Portal* feature, your customers can view their financial documents \(invoices, payments, and statements\) in the Self-Service Portal.

 This feature can be safely disabled at any time. If you disable the *Customer Portal* feature, the system will automatically disable the *Financials on Portal* feature as well.

 **Attention:** If you plan to disable this feature after customers have begun using the functionality, we recommend that you give your customers ample warning so that they can finish their work and save any changes in the Self-Service Portal.

|
|**Modern Customer Portal**|A feature that you enable to use the Modern Customer Portal, which provides a solution for you to work and communicate with your customers more efficiently. The Modern Customer Portal is specifically designed to be the site where your customers can view all the relevant information about their interactions with you as a vendor and perform needed activities. The Modern Customer Portal is an additional application that can be installed separately.

 You can enable or disable this feature at any time. If you enable the *Modern Customer Portal* feature, the employees of your customers can access the Modern Customer Portal and work in it.

 Through the portal, users can access the basic information of their company. Some users can also add or manage the customer contacts that are linked to their business accounts in Acumatica ERP, and manage users' access to and roles in the Modern Customer Portal.

 The information these portal users can access depends on the roles assigned to their user account and the other enabled features in your system. User capabilities may include adding or managing contacts of their business account, along with configuring the user accounts to access the portal. The capabilities may also include viewing their dealings with your company, such as orders, invoices, payments, and cases.

 The feature can be disabled at any time; no data will be lost. However, if the *Modern Customer Portal* is configured and running, disabling this feature will shut it down.

 For more information, see [Modern Customer Portal Administration: General Information](../Shared/../UserGuide/Modern_Customer_Portal_Administrator_General_Information.md).

|

## Service Management Group of Features {#section_jbn_g1l_5vb .section}

|Feature|Overview|
|-------|--------|
|**Service Management**|A feature that you enable to use the service management functionality, which provides comprehensive control of the service-related processes that your company performs. You can create service orders, which serve as the initial agreement for the job and contain various details about the services to be performed. You can schedule appointments, capturing essential information such as the services rendered, the scheduled and actual dates and times, and the staff responsible for each service.

 You can also define specific staff members—including their work schedules, skills, and licenses—and assign them appropriately to perform services by specifying them in service orders or appointments. You can also utilize a calendar board with a user-friendly design, so you can easily visualize your staff's workloads, facilitating the creation, scheduling, and assignment of appointments seamlessly.

 This feature is intended for companies that offer various types of services to their customers. These services may be considered as short-term projects that require detailed scheduling and quick billing turnaround. The functionality is particularly beneficial to specialty contractors, general service companies \(such as janitorial, security, or product installation\), and professional service companies \(such as consulting, IT services, or engineering services\).

 Typically, the *Service Management* feature is enabled as a part of the second phase of the Acumatica ERP implementation process. However, you can enable this feature at any point when you decide to use the service management functionality.

**Tip:** If you select the **Service Management** check box, the **Equipment Management** and **Route Management** check boxes become available for selection.

 You can disable the *Service Management* feature at any time. Before you do this, we recommend verifying that all service documents with completed work have been billed. Otherwise, certain transactions related to processes affecting other functional areas \(such as general ledger and time and activities\) may be missing.

**Important:** If you disable the *Service Management* feature, the system will automatically disable the equipment and route management functionality, clear the **Equipment Management** and **Route Management** check boxes, and make them unavailable for selection. Please review the recommendations regarding disabling the equipment management and route management features in their respective descriptions.

 For an overview of this functionality, see [Overview of Service Management Processes](../Shared/../UserGuide/ServMgmt_Overview_Service_Management.md).

|
|**Equipment Management**|A feature that you enable to use the equipment management functionality. This functionality gives you the ability to efficiently maintain and monitor information about the equipment that is serviced by your company for customers or the equipment your company owns and uses for service provision. By using this functionality, you can configure equipment for sale and seamlessly manage post-sale service maintenance. For equipment requiring frequent maintenance, you can establish service contracts, incorporating schedules of service visits and customized billing settings for customers.

 With the integration between equipment management and service management, you can process service orders and appointments associated with equipment maintenance contracts. Moreover, through the equipment management feature, you can track equipment serial numbers post-sale, along with warranties, upgrades, and all relevant equipment details. Furthermore, you can maintain a comprehensive service history for each equipment unit.

 This feature is designed for companies engaged in the sale, installation, and maintenance of equipment. This includes companies providing services for equipment sold to customers \(or service locations\) and servicing their own equipment. Examples of businesses that may benefit from this feature include HVAC unit distributors, security system providers, fire safety equipment suppliers \(sprinklers and fire extinguishers\), golf cart distributors, coffee maker suppliers, and medical device providers. The equipment management functionality is suitable for any goods or equipment that need to be installed or maintained \(or both\).

 Typically, the *Equipment Management* feature is enabled simultaneously with the *Service Management* feature. However, you have the flexibility to enable the *Equipment Management* feature at any time after you have enabled the *Service Management* feature.

**Important:** The **Equipment Management** check box can be selected only if the **Service Management** check box has been selected.

 If you need to disable the *Equipment Management* feature, we recommend verifying that all service contracts with completed work have been billed to avoid potential missing transactions in other functional areas \(for example, general ledger\). Additionally, you should ensure that there are no open sales orders involving equipment or its components.

 For an overview of this functionality, see [Overview of the Equipment Management Functionality](../Shared/../UserGuide/FS__FS_Features_Equipment.md).

|
|**Route Management**|A feature that you enable to use the route management functionality. This functionality, in conjunction with service management capabilities, provides you with the ability to efficiently plan and oversee your company's routes, route executions, and related appointments. Whether your routes involve service provision or the movement of inventory items \(delivery or pickup\), you can create and manage route executions seamlessly. By using the Bing Maps integration, you gain the ability to visualize routes on a map and access detailed statistics for each completed route, including distance and time taken.

 To simplify the handling of repeat customer appointments requiring route planning, you can create route service contracts. In a contract, you specify services to be performed, create a schedule or schedules for performing services, and specify billing rules for service billing. Based on the contract, the system generates the route appointments to be executed. You can also use the route management functionality to enter and store information about every vehicle your company uses for routes. When you integrate this functionality with the equipment management functionality, the tracking of each vehicle becomes possible.

 The *Route Management* feature is designed for companies offering recurring services that are typically handled by specific staff members. Businesses benefiting from this functionality include product delivery and pick-up services, as well as those providing recurring services \(such as janitorial, cleaning, pool maintenance, and pest control\).

 Typically, the *Route Management* feature is enabled simultaneously with the *Service Management* feature. However, you can enable this feature at any time after the *Service Management* feature has been enabled.

**Important:** The **Route Management** check box can be selected only if the **Service Management** check box has been selected.

 The *Route Management* feature can be safely disabled at any time. If you choose to disable this feature, we recommend that you first migrate any open contractual agreements to a different system \(or to the equipment management service contracts if the *Equipment Management* feature is enabled\) to ensure that no contractual agreements are lost.

 For an overview of this functionality, see [Overview of Route Management Processes](../Shared/../UserGuide/FS__FS_Features_Route.md).

|

## Payroll Group of Features {#section_xsg_31l_5vb .section}

|Feature|Overview|
|-------|--------|
|**Payroll**|A group of features that you enable to use the payroll functionality to compensate employees. You need to enable either the *US Payroll* feature or the *Canadian Payroll* feature in this group of features. The *US Payroll* and *Canadian Payroll* features cannot both be enabled at the same time in the same tenant.

 You can enable this group of features at any time if it is included in your license. It is often enabled as part of the second phase of the Acumatica ERP implementation process. You need to make sure that the *Multiple Base Currencies* feature is disabled before you enable the *Payroll* group of features.

 You can disable this group of features at any time. Payroll data will not be deleted from the database but will no longer be visible in the UI. All payroll-related UI elements will become hidden and none of the payroll-related functionality will be available. If you are going to disable this group of features, it is best practice to have a formal conversion plan, such as determining the employee and payroll data that needs transition to another payroll system and completing any needed quarter or year-end processes before disabling the feature.

 For more information about the payroll functionality, see [Overview of the Payroll Process](../Shared/../UserGuide/PR__PR_Features.md).

|
|**US Payroll**|A feature that activates the US payroll functionality and adds the forms and UI elements related to this functionality. This functionality includes support for hourly, salary exempt and salary non-exempt employees. It also gives payroll managers the capability to set up earnings, overtime rules, paid time off, deductions, benefits, garnishments, workers compensation, and U.S. federal, state and local payroll taxes.

 This feature can be used with the *Time Management* feature and with the quick pay functionality to quickly pay employees in batches. Taxes, deductions, benefits, and garnishments can be tied to vendors and paid seamlessly through accounts payable. *US Payroll* can also be used with the *Projects* feature to allocate labor burden. If the *Construction Project Management* feature is enabled, certified payroll is also supported, as well as prevailing wages and fringe benefits.

 The *US Payroll* feature can be enabled only if the *Payroll* group of features is enabled and the *Canadian Payroll* feature is disabled.

|
|**Canadian Payroll**|A feature that activates the Canadian payroll functionality and adds the forms and UI elements related to this functionality. This functionality includes support for hourly, salary exempt and salary non-exempt employees. It also gives payroll managers the capability to set up earnings, overtime rules, banked overtime, paid time off, deductions, benefits, garnishments, workers compensation, and Canadian federal and province payroll taxes.

 This feature can be used with the *Time Management* feature and with the quick pay functionality to quickly pay employees in batches. Taxes, deductions, benefits, and garnishments can be tied to vendors and paid seamlessly through accounts payable. *Canadian Payroll* can also be used with the *Projects* feature to allocate labor burden. If the *Construction Project Management* feature is enabled, certified payroll is also supported, as well as prevailing wages and fringe benefits.

 The *Canadian Payroll* feature can be enabled only if the *Payroll* group of features is enabled and the *US Payroll* feature is disabled.

|

## Platform Group of Features {#section_ttm_fcl_5vb .section}

|Feature|Overview|
|-------|--------|
|**Platform**|A group of features that provides various functionality that covers monitoring and automating user activities, as well as options for secure authentication.|
|**AI Studio**|A group of features that includes the detection of anomalies in generic inquiries and AI Automation \(formerly AI Studio\).|
|**Anomaly Detection**|A feature that gives users the ability to detect anomalies in particular numeric columns of a generic inquiry form. For example, they can quickly find records whose amounts are too large or too small compared to these amounts in other listed records.

 The functionality can help users monitor key data values and correct any data entry errors, thus preventing ineffective business decisions based on incorrect data. In addition, users can use anomaly detection to recognize deviations in data based on the system's analysis of abnormal figures in amounts, totals, costs, and other values.

 With the feature enabled, the system uses an unsupervised machine learning algorithm to classify numeric values as anomalies. The algorithm uses a machine learning model that’s operated by a cloud service and has been developed to recognize certain patterns. The model classifies certain values as *Significant*; managers can treat these values as anomalies. The model classifies other values as *Medium*, which means that they may be false positives. Other values are classified as *Normal*. For more details, see [Detecting Anomalies in Generic Inquiries](../Shared/../UserGuide/GI_DetectAnomalies_Mapref.md).

 By default, the feature is disabled.

 If a system administrator enables this feature and then disables it, users will not be able to access any data related to anomaly detection.

|
|**AI Automation**|A feature that provides the ability to generate prompts with a single click to perform repeated tasks. You can use it to generate item descriptions, assign opportunities, write case notes, and perform other daily tasks.

 With this feature, your organization can connect its large language model \(LLM\) to Acumatica ERP without separate security validation. The LLM can then generate helpful, task-specific content right in the system.

 By default, the feature is disabled.

|
|**Monitoring and Automation**|A feature that makes it possible to monitor user activities and the automation of workflows. This group of features is not available in the standard edition of Acumatica ERP.|
|**Approval Workflow**|A feature that provides the ability to define what employees should review and approve a document based on certain conditions. You enable this feature to configure and use approval maps for the automatic assignment of various documents and transactions to particular employees for approval.

 If this feature is not enabled, approval maps cannot be used in the system, but the approval of expense claims still can be configured and performed by using a different method. For details, see [Approving Records](../Shared/../UserGuide/CO__con_Centralized_Approvals.md), [Expense Claims: Expense Claim Approval](../Shared/../UserGuide/TimeExpenses_Process_Expense_Claims_Approval.md) and [Processing Transactions with Approvals](../Shared/../UserGuide/Finance_GLTransactions_with_Approvals_Mapref.md).

 The feature can be enabled at any time.

 The feature can be disabled at any time, as long as there are no documents pending approval. We recommend disabling all approval maps and making sure the documents are not pending approval before disabling the feature.

|
|**Field-Level Audit**|A feature that gives your organization the ability to track user activities in the system. This feature, which is configured on the [Audit](../Shared/../UserGuide/SM_20_55_10.md) \(SM205510\) form, provides complete information on who did what and when on a form. For more information, see [Field-Level Auditing: General Information](../Shared/../UserGuide/SA_Managing_Field_Level_Auditing_GeneralInfo.md).|
|**Row-Level Security**|A feature that adds forms and UI elements that provide the management and administration of user access \(through restriction groups\) to particular system records and objects to which users have access based on their roles. For details, see [Restriction Groups in Acumatica ERP](../Shared/../UserGuide/SM__con_Overview_of_Restriction_Groups.md).|
|**Scheduled Processing**|A feature that makes it possible for you to configure the automatic processing of documents that require significant time and system resources. You can define a schedule for this automatic processing—for instance, at times when there are no employees at work, such as weekends or nights. For more information, see [Automated Processing: General Information](../Shared/../UserGuide/SA_Scheduling_Automated_Processing_GeneralInfo.md).|
|**DeviceHub**|A feature that provides the ability to connect hardware devices—such as printers, scanners, and digital scales—by using the DeviceHub application. For instructions on configuring printers by using DeviceHub, see [Implementing DeviceHub](../Shared/../ImplementationGuide/config_DH_Mapref.md).|
|**GDPR Compliance Tools**|A feature that provides GDPR compliance tools designed to help the company to comply with the GRPR regulations. This feature allows you to track a person’s consent to store and process private information and hide or completely erase it if consent expires.

 This feature can be enabled at any time, as long as it was not used and disabled before. After the feature was disabled, all the previously hidden information must be completely erased before the feature can be used again.

 This feature can be disabled at any time, but all the private information hidden when the feature was in use cannot be recovered while the feature is disabled.

 For more information about GDPR compliance tools, see [Compliance Tools for General Data Protection Regulation](../Shared/../UserGuide/GD__CON_GDPR_Tools.md).

|
|**Secure Business Date**|A feature that restricts the ability to change the business date, so that this task cannot be performed by all users in the system. To permit the change of the business date for specific users, you assign the *BusinessDateOverride* role to these users. For more information about restricting the ability to change the date, see [User Roles: Restrictions on Changing the Business Date](../Shared/../UserGuide/User_Roles_User_Access_Business_Date_Change.md).|
|**Image Recognition for Expense Receipts**|A feature that makes available the recognition of expense receipts in the Acumatica mobile app.

 **Attention:** The feature is not available in trial mode and can be enabled only if it is included in the license that is applied to the Acumatica ERP instance.

|
|**AP Document Recognition Service**|A feature that makes it possible to configure the system to automatically recognize invoices attached to incoming emails so that users can create AP bills from those recognized documents with a single click.

 With this feature enabled, the [Incoming Documents](../Shared/../UserGuide/AP_30_11_00.md) \(AP301110\) mass-processing form and the [Incoming Documents](../Shared/../UserGuide/AP_30_11_00.md) \(AP301100\) form can be used. Also, the following elements become available in the system:

 -   The **Submit to Incoming Documents** check box on the **Incoming Mail Processing** tab of the [Email Accounts](../Shared/../UserGuide/SM_20_40_02.md) \(SM204002\) form
-   The **Create AP Document** button in the Acumatica add-in for Outlook, which is available only for emails with PDF attachments

 **Attention:** The feature is not available in trial mode and can be enabled only if it is included in the license that is applied to the Acumatica ERP instance.

 For more information, see [Recognizing AP Documents from PDFs](../Shared/../UserGuide/Finance_Recognizing_AP_Documents_From_PDF_Mapref.md).

|
|**Authentication**|A group of features that can be enabled for all editions.|
|**Two-Factor Authentication**|A feature that provides the ability to configure two-factor authentication, so that access to the system is granted only after the user successfully presents to the system additional evidence of authentication in addition to the user credentials \(that is, the username and password\). For details, see [Managing Two-Factor Authentication](../Shared/../UserGuide/SA_Two_Factor_Auth_Mapref.md).|
|**Active Directory and Other External SSO**|A feature that gives you the ability to integrate Acumatica ERP with Microsoft Active Directory \(AD\), Microsoft Active Directory Federation Services \(AD FS\), or Microsoft Entra ID.|
|**OpenID Connect**|A feature that provides the ability to configure integration with OpenID identity providers. A system administrator can configure integration with multiple OpenID providers for a System tenant or multiple tenants. For details, see [Integrating Acumatica ERP with OpenID Identity Providers](../Shared/../UserGuide/US__MNG_Integrating_with_Open_ID_Identity_Providers.md).

 You must enable this feature along with the *Outlook Integration* feature if you want the Acumatica add-in for Outlook to work with Microsoft 365 accounts. For more information, see [Using the Acumatica Add-In for Outlook](../Shared/../UserGuide/OU_00_00_00.md).

|

## Time Management Group of Features {#section_vwg_hcl_5vb .section}

|Feature|Overview|
|-------|--------|
|**Time Management**|A group of features that makes it possible to track the time that employees in your organization spend on various tasks and activities. If the *Payroll* feature is enabled as well, the time tracking information may be included in earning records in payroll documents. For details, see [Entering Employee Time](../Shared/../UserGuide/TimeExpenses_Entering_Employee_Time_Mapref.md) and [Configuring Time Tracking](../Shared/../UserGuide/config_Payroll_Time_Tracking_mapref.md).

 This feature maybe enabled or disabled at any time. Time activity data will not be deleted from the database but will no longer be visible in the UI.

|
|**Shift Differential**|A feature that gives payroll managers the ability to create multiple work shifts and multiple rates for the calculation of pay increase for each work shift and apply them to employees based on the employee work schedule. If this feature is enabled, all the UI elements and forms that allow establishing the connection between employee pay rates and work shifts are displayed in the system. For more information, see [Creating Shift Codes](../Shared/../UserGuide/Shift_Codes_Mapref.md).

 This feature can be enabled or disabled at any time. You can enable this feature only if the *Time Management* feature is enabled.

|

## Third-Party Integrations Group of Features {#section_ugd_3fl_5vb .section}

|Feature|Overview|
|-------|--------|
|**Third-Party Integrations**|A group of available features for all editions of Acumatica ERP, although the number of features is different in different editions.|
|**SendGrid Integration**|A feature that provides integration with SendGrid. With this feature enabled, you can track email delivery statuses, email openings, and clicks on embedded links. By using SendGrid, you can also reduce the possibility of your emails being marked as spam by internet mail servers.

 You can enable this feature at any time. Once the feature is enabled, *SendGrid* becomes available for selection in the **Email Service Plug-In** box on the [Email Accounts](../Shared/../UserGuide/SM_20_40_02.md) \(SM204002\) form. The plug-in is used for the configuration of email accounts that send email from Acumatica ERP via SendGrid. For details, see [Integrating Acumatica ERP with SendGrid](../Shared/../UserGuide/US_MNG_Integrating_with_SendGrid.md).

 You can disable the feature at any time.

|
|**Advanced Integration Engine**|A group of features that makes it possible to use custom connectors for ecommerce systems as well as other integrations based on the Acumatica Commerce Framework. It also provides access to the commerce integration and configuration forms, even if the *Retail Commerce* group of features is not enabled.

 If the *Third-Party Integrations* group of features is enabled, you can enable this group of features whenever you need to install an ISV solution or publish a customization project that relies on the Advanced Integration Engine. When you install a registered solution from the [Acumatica Marketplace](https://www.acumatica.com/acumatica-marketplace/), a check box for the corresponding feature appears on this form below **Advanced Integration Engine**.

 You can disable this group of features if there is no active data preparation and processing between Acumatica ERP and external systems based on the ISV solutions or customization projects. Unless the *Retail Commerce* group of features is enabled, when you disable the *Advanced Integration Engine* group of features, all commerce integration and configuration forms become hidden in the system. You will no longer have access to the sync history and will not be able to resynchronize previously synced data. All previously imported data will remain in Acumatica ERP.

|
|**Custom Connectors**|A feature that allows adding five stores per custom connector to Acumatica ERP.

 A developer can build a connector for data synchronization with any third-party system \(such as Arena PLM, WooCommerce, or Procore\) by using the Acumatica Commerce Framework. For details, see [Implementing a Connector for an External System](../Shared/../PlugInDevelopmentGuide/CommerceConnector_Implementation_Mapref.md).

 By default, this feature allows five stores to be added per custom connector. If more than five stores of a custom connector are needed in the instance, the developer of the custom connector can contact Acumatica to convert the custom connector to a licensed connector—that is, they can register the connector as an ISV solution and publish it on the [Acumatica Marketplace](https://www.acumatica.com/acumatica-marketplace/).

 You can enable this feature if the *Advanced Integration Engine* group of features is enabled.

 You can disable this feature if there is no active data preparation and processing between Acumatica ERP and external systems through the custom connectors built on the advanced integration engine. When the feature is disabled, the UI elements of the custom connectors will no longer be visible. However, information about data previously synchronized through the custom connectors will still be available on the [Sync History](../Shared/../UserGuide/BC_30_10_00.md) \(BC301000\) form.

|
|**Retail Commerce**|A group of features that activates Acumatica ERP Retail Edition, which supports integration with popular ecommerce systems, point-of-sale systems, and marketplaces \(such as BigCommerce, Shopify, and Amazon\) to manage online sales in business-to-consumer, business-to-business, direct-to-consumer, and in-store retail environments.

 You can enable this group of features and start using the related functionality only if the *Third-Party Integrations* group of features is enabled. Retailers, manufacturers, and distributors who are already selling their goods in store or online typically need to include the *Retail Commerce* group of features in the first phase of implementation to synchronize those customer-facing systems with Acumatica ERP immediately. B2B-oriented manufacturers and distributors might want to focus on selling online and in store after the ERP system has been implemented and is stable, in phase two or later.

 You can disable this group of features if there is no active data preparation and processing between Acumatica ERP and any of the connected ecommerce systems and marketplaces. Unless the *Advanced Integration Engine* group of features is enabled, when you disable the *Retail Commerce* group of features, all commerce-specific forms and UI elements become hidden in the system. You will no longer have access to the sync history and will not be able to resynchronize previously synced data. All previously imported data will remain in Acumatica ERP.

|
|**Amazon Connector**|A feature that turns on the ability to connect Acumatica ERP to Amazon Seller Central for selling products on the Amazon marketplaces. With this feature, you can set up the import of seller-fulfilled \(FBM\) and marketplace-fulfilled \(FBA\) orders, payments and fees from your Amazon seller account, as well as export shipments and available quantities of products from Acumatica ERP to Amazon. You can configure each connection to the needs of the business by using custom filtering and mapping of exported and imported data.

 You can enable this feature if the *Retail Commerce* group of features is enabled.

 You can disable this feature if there is no active data preparation and processing between Acumatica ERP and any of the connected Amazon marketplaces. When you disable the feature, the [Amazon Stores](../Shared/../UserGuide/BC_20_10_20.md) \(BC201020\) form will no longer be available in the UI. However, you can still view the history of data synchronization between Acumatica ERP and Amazon marketplaces on the [Sync History](../Shared/../UserGuide/BC_30_10_00.md) \(BC301000\) form.

 For details, see [Integration with Amazon](../Shared/../UserGuide/Commerce_AZ_Integration_with_AZ.md).

|
|**BigCommerce Connector**|A feature that turns on the ability to connect Acumatica ERP to the BigCommerce ecommerce platform. With this feature, you can set up the synchronization of products, customers, sales orders, payments, shipments, returns and refunds, and other data between the two systems. You can configure each connection to the needs of the business by using custom filtering and mapping of exported and imported data.

 You can enable this feature if the *Retail Commerce* group of features is enabled.

 You can disable this feature if there is no active data preparation and processing between Acumatica ERP and any of the connected BigCommerce stores. When you disable the feature, the [BigCommerce Stores](../Shared/../UserGuide/BC_20_10_00.md) \(BC201000\) form will no longer be available in the UI. However, you can still view the history of data synchronization between Acumatica ERP and BigCommerce stores on the [Sync History](../Shared/../UserGuide/BC_30_10_00.md) \(BC301000\) form.

 For details, see [Integration with BigCommerce](../Shared/../UserGuide/Commerce_BC_Integration_with_BC.md).

|
|**Shopify Connector**|A feature that turns on the ability to connect Acumatica ERP to the Shopify ecommerce platform. With this feature, you can set up the synchronization of products, customers, sales orders, payments, shipments, returns and refunds, and other data between the two systems. You can configure each connection to the needs of the business by using custom filtering and mapping of exported and imported data.

 You can enable this feature if the *Retail Commerce* group of features is enabled.

 You can disable this feature if there is no active data preparation and processing between Acumatica ERP and any of the connected Shopify stores. When you disable the feature, the [Shopify Stores](../Shared/../UserGuide/BC_20_10_10.md) \(BC201010\) form will no longer be available in the UI. However, the history of data synchronization between Acumatica ERP and Shopify stores will still be available on the [Sync History](../Shared/../UserGuide/BC_30_10_00.md) \(BC301000\) form.

 For details, see [Integration with Shopify](../Shared/../UserGuide/Commerce_SP_Integration_with_SP.md).

|
|**Shopify POS Connector**|A feature that adds the ability to synchronize point-of-sale \(POS\) orders, payments, shipments, returns and refunds, and other data between Shopify and Acumatica ERP.

 You can enable this feature if the *Retail Commerce* group of features and the *Shopify Connector* feature are enabled.

 You can disable this feature if there is no active data preparation and processing between Acumatica ERP and the connected Shopify stores. When you disable the feature, the UI elements related to the import of POS orders will no longer be visible and POS orders will no longer be imported from Shopify. However, the history of POS order synchronization between Acumatica ERP and Shopify stores will still be available on the [Sync History](../Shared/../UserGuide/BC_30_10_00.md) \(BC301000\) form.

 For details, see [Order Synchronization: Import of POS Orders](../Shared/../UserGuide/Commerce_SP_Syncing_Orders_Importing_POS_Orders.md).

|
|**Tax Withheld by Marketplaces**|A feature that adds the ability to synchronize taxes between Shopify and Acumatica ERP. Marketplaces collect and remit these taxes on the seller’s behalf for orders placed through their platforms.

 You can enable this feature if the following are enabled:

 -   The *Retail Commerce* group of features
-   The *Shopify Connector* feature

 You can disable this feature if there’s no active data preparation and processing between Acumatica ERP and the connected Shopify stores. When you disable the feature, the UI elements related to marketplace-withheld taxes will no longer be visible on the UI.

|
|**Shopify Business-to-Business Entities**|A feature that adds business-to-business \(B2B\) entities to the store configuration form specific to the Shopify connector and the common commerce integration forms. This feature supports the synchronization of data specific to B2B sales \(for example, price lists specific to customer groups\) for Shopify stores.

 You can enable this feature if the following features are enabled:

 -   The *Retail Commerce* group of features
-   The *Shopify Connector* feature

 You can disable this feature if there is no active data preparation and processing between Acumatica ERP and the connected Shopify stores. When you disable the feature, the UI elements related to the B2B entities will no longer be visible on the UI.

|
|**Bank Feed Integration**|A feature that turns on the integration with Plaid and MX, which are financial service companies that provide secure bank feeds. With this integration, Acumatica ERP users can automatically import bank transactions and create expense receipts based on these transactions.

 The *Bank Feed Integration* feature is subject to licensing. If your organization needs to create more than one bank feed, it must have the needed license.

 If a system administrator attempts to disable this feature while the *Mapping of Multiple Accounts for Bank Feeds* feature is enabled, the system performs the following actions:

 -   Checks whether there is at least one bank feed with the **Map Multiple Bank Accounts to One Cash Account** check box selected on the [Bank Feeds](../Shared/../UserGuide/CA_20_55_00.md) \(CA205500\) form. If the system finds such a bank feed, it displays an error message and does not allow the system administrator to disable the *Bank Feed Integration* feature.
-   If the system finds no bank feeds with the **Map Multiple Bank Accounts to One Cash Account** check box selected, disables both the *Bank Feed Integration* feature and the *Mapping of Multiple Accounts for Bank Feeds* feature. Also, the **Mapping of Multiple Accounts for Bank Feeds** check box becomes cleared and unavailable on the current form.

 For details, see [Integrating Acumatica ERP with Bank Feeds](../Shared/../UserGuide/CA__MNG_Bank_Feed_Integration.md).

|
|**Integrated Card Processing**|A feature that makes it possible for users to process credit cards on multiple forms. If this feature is enabled, all the UI elements and forms related to credit card processing are displayed in the system. For details, see [Automatic Payment Collection](../Shared/../UserGuide/AR__con_Automatic_Payment_Collection.md).|
|**Acumatica Payments**|A feature that turns on the Acumatica payments functionality. With this functionality, users can automatically generate payment links for AR invoices, sales invoices, and sales orders, so that a customer can pay a document in one click. For details, see [Configuring and Using Acumatica Payments](../Shared/../UserGuide/AR__MNG_Acumatica_Payments.md).|
|**Stripe Payment Plug-In**|A feature that provides the integration with the Stripe plug-in. If this feature is enabled, the Stripe payment plug-in becomes available for setup on the [Processing Centers](../Shared/../UserGuide/CA_20_50_00.md) form and can be used in payments.

 For details, see [Setup of the Stripe Processing Center](../Shared/../UserGuide/CA__CON_Setup_Stripe_Proc_Center.md).

|
|**Custom Payment Plug-In**|A feature that turns on the integration with the ISV payment plug-in, such as Repay or EBizCharge. If this feature is enabled, the ISV payment plug-in becomes available for setup on the [Processing Centers](../Shared/../UserGuide/CA_20_50_00.md) form and can be used in payments.|
|**Shipping Carrier Integration**|A feature that makes it possible for you to configure integration with carriers, such as FedEx or UPS. With this integration, you can apply real-time rates to shipments and track their delivery.

 **Attention:** Integration with any of the carriers does not support international shipments.

 For details, see [Integration with Carriers](../Shared/../UserGuide/CS__con_Integration_with_Carriers.md).

|
|**FedEx**|A feature that provides you with the ability to use the FedEx carrier service with the *PX.FedExCarrier.FedExCarrier* plug-in.|
|**UPS**|A feature that gives you the ability to use the UPS carrier service with the *PX.UpsCarrier.UpsCarrier* plug-in.|
|**Stamps.com**|A feature that provides the ability to use the Stamps.com carrier service with the *PX.StampsCarrier.StampsCarrier* plug-in.|
|**ShipEngine**|A feature that gives you the ability to use the ShipEngine carrier service with the *PX.ShipEngineCarrier.ShipEngineCarrier* plug-in.|
|**EasyPost**|A feature that gives you the ability to use the EasyPost carrier service with the *PX.EasyPostCarrier.EasyPostCarrier* plug-in.|
|**Pacejet**|A feature that gives you the ability to use the Pacejet carrier service with the *PX.PacejetCarrier.PacejetCarrier* plug-in.|
|**Custom**|A feature that provides the ability to use a custom carrier service with a custom plug-in.|
|**Exchange Integration**|A feature that gives you the ability to integrate Acumatica ERP with Microsoft Exchange Server. You will be able to configure synchronization and then synchronize users' contacts, emails, tasks, and events in Acumatica ERP with their Exchange mailboxes.

 For more information, see [Synchronizing Acumatica ERP with Microsoft Exchange Server](../Shared/../UserGuide/EM__mng_Exchange_server.md).

|
|**External Tax Calculation Integration**|A feature that provides integration with the AvaTax service by Avalara, Vertex Tax Calculation, or another tax provider for the automatic calculation of sales and use taxes online.

 For details, see [Integrating Acumatica ERP with Avalara Avatax](../Shared/../UserGuide/config_Avalara_Integration_Mapref.md), [Integrating Acumatica ERP with Vertex Tax Provider](../Shared/../UserGuide/config_Vertex_Integration_Mapref.md).

|
|**Exemption Certificate Management**|A feature that gives you the ability to use the exemption certificate management service with the *PX.TaxProvider.AvalaraRest.AvalaraRestTaxProvider* plug-in.|
|**Address Validation Integration**|A feature that provides validation of customer addresses through integrated specialized services, such as AvaTax by Avalara, to ensure that addresses have been entered correctly. A validated address gives you assurance that shipping can be completed, taxes are calculated accurately, and reports are correct. The feature can be used with the *External Tax Calculation Integration* feature or without it.

 You can enable the feature and start using this functionality at any time. We recommend doing this before you start creating documents that may require address validation, such as sales orders. Once the feature is enabled, you must specify address provider settings and activate each country for which the addresses will be validated. For details, see [Integrating Acumatica ERP with Address Validation Providers](../Shared/../UserGuide/CS__con_Integration_with_Address_Providers.md).

 You can disable the feature at any time.

|
|**BILL Integration**|A feature that provides integration with BILL, an external payment processor that simplifies accounts payable. BILL handles the end-to-end processing of ACH payments, virtual cards, and checks.

 You can enable this feature if the *Third-Party Integrations* feature is also enabled. Once the feature is enabled, you must set up connection to BILL and a payment method. For details, see [Setup of Integration with BILL](../Shared/../UserGuide/AP__CON_BillCom_Integration_Setup.md).

|
|**Salesforce Integration**|A feature that supports bidirectional real-time synchronization of data in business accounts, contacts, leads, opportunities, non-stock items, stock items, users, and cases between Acumatica ERP and Salesforce. You can simultaneously work in both systems, with changes made in one system being reflected in the other. These changes include creating, editing, and deleting information.

 You can enable this feature at any time. Once the feature is enabled, you need to configure the integration between Acumatica ERP and Salesforce. For details, see [Setting Up Synchronization with Salesforce](../Shared/../UserGuide/SF_00_00_00.md).

 You can disable the feature at any time.

|
|**HubSpot Integration**|A feature that supports bidirectional real-time synchronization of data in business accounts, contacts, and leads between Acumatica ERP and HubSpot.

 You can enable this feature at any time. Once the feature is enabled, you need to configure the integration between Acumatica ERP and HubSpot. For details, see [Integration with HubSpot](../Shared/../ImplementationGuide/config_HubSpot_Mapref.md).

 You can disable the feature at any time.

|
|**Procore Integration**|A feature that adds the forms and UI elements related to the Procore Integration solution, which is distributed as a separate customization package. Once the package is installed and the feature is included in the license that is applied to an Acumatica ERP instance, the functionality becomes available in the system.|
|**Outlook Integration**|A feature that gives you the ability to use the Acumatica add-in for Outlook, which is your gateway from Microsoft Outlook to Acumatica ERP. With this feature enabled, you can do the following:

 -   Find documents related to email recipients and senders
-   Create profiles and documents
-   Link emails to Acumatica ERP documents and profiles
-   Create bills from emails, if the *AP Document Recognition Service* feature is also enabled

 You must also enable the *OpenID Connect* feature and configure an OpenID provider if you want the Acumatica add-in for Outlook to work with Microsoft 365 accounts.

 For more information, see [Using the Acumatica Add-In for Outlook](../Shared/../UserGuide/OU_00_00_00.md).

 You can enable or disable this feature at any time.

|
|**PDF Annotator Integration**|A feature that gives you the ability to use the PDF Annotator integration to open and annotate PDF attachments directly in Acumatica ERP. With this feature enabled, you can do the following:

 -   View, navigate, and manage PDF documents
-   Use standard editing tools to annotate PDF files
-   Access document details and bookmarks
-   Add comments and text notes
-   Save annotated PDF files as new file versions

 You can annotate PDF files from any form that has the **Files** button on the form title bar.

 Once the feature is enabled, you must create an external application for PDF Annotator on the [External Applications](../Shared/../UserGuide/SM_30_10_00.md) \(SM301000\) form. For more information, see [Integrating Acumatica ERP with PDF Annotator](../Shared/../UserGuide/PDF_PDF_Annotator.md).

 You can enable or disable this feature at any time.

|
|**WorkWave Route Optimization**|A feature that provides integration with WorkWave so that companies can automatically optimize appointment schedules in field services. For details, see [Optimizing Appointment Scheduling with WorkWave](../Shared/../UserGuide/ServMgmt_Appointments_WorkWave_Schedule_Optimization.md).|
|**eSign Integration**|A feature that gives the users the ability to send documents for electronic signing, track the signing process, and sync signed files with the system by using Adobe® Acrobat® Sign and DocuSign™ directly within Acumatica ERP.

 **Important:**

-   You can enable this feature and start using the related functionality at any time. Before setting up the integration, you must configure an API application in the DocuSign™ or Adobe® Acrobat® Sign portal and obtain the API credentials.
-   You can disable this feature at any time. If you want to disable the feature after its functionality has been used, you should first recall or complete all pending esignature requests.

 For more information, see [Integrating with Esignature Providers](../Shared/../UserGuide/Integrations_eSignature_Serviice_Mapref.md).

|

## Manufacturing Group of Features {#section_kp2_kfl_5vb .section}

|Feature|Overview|
|-------|--------|
|**Manufacturing**|A group of features that adds functionality related to item production. It gives companies control over their production while supporting various manufacturing methodologies, such as make-to-stock, make-to-order, engineer-to-order, project-centric, job shop, batch, and repetitive manufacturing.

 You can enable this group of features if it is included in your license. If the *Distribution Requirements Planning* feature is enabled, you must disable it before enabling *Manufacturing*.

 You can disable this group of features at any time. Manufacturing data will not be deleted from the database but will no longer be visible in the UI. All manufacturing-related UI elements will become hidden; none of the manufacturing-related functionality will be available. If you have decided to disable the feature after it has been enabled and its functionality has been used, it is a best practice to have a formal de-implementation plan: Before disabling the feature, you should ensure that all business documents are closed, manufacturing transactions are released, and financial transactions are posted and balanced.

|
|**Material Requirements Planning**|A feature that adds functionality related to material requirements planning. Material requirements planning \(MRP\) is crucial for businesses aiming to streamline their production processes, minimize inventory costs, and meet customer demands effectively. It offers such benefits as optimal inventory management, accurate resource utilization, and real-time exception management. By synchronizing material requirements with production schedules, MRP ensures that materials are available just in time for manufacturing, preventing stockouts and excess inventory. Additionally, it helps companies to fulfill actual customer demands by creating plans that are tied to forecasts, which improves customer service and operational efficiency.

 You can enable this feature if the *Manufacturing* group of features is enabled. Manufacturers that have used a time-phased inventory planning tool in the past usually include MRP as part of the primary implementation phase. Manufacturers who are new to the concept of planning to demand may choose to implement MRP in a second phase.

 The *Material Requirements Planning* feature can be disabled at any time. Because MRP does not generate any financial transactions, there are no significant consequences to disabling the feature; no data will be lost. However, for instances where the *Advanced Planning and Scheduling* feature is enabled, the MRP planning orders will affect the scheduled orders. You should take steps to eliminate the planning orders before disabling this feature.

 For details, see [Inventory Planning with MRP: General Information](../Shared/../UserGuide/MFG_MRP_GeneralInfo.md).

|
|**Product Configurator**|A feature that adds the functionality of product configuration. The product configurator streamlines the process of customizing products, ensuring accurate quotes, efficient order management, and optimized manufacturing. It empowers businesses to create unique configurations \(reducing the number of bills of material to manage for each configuration\), maintain a revision history, and calculate precise pricing based on the selected product features and options.

 You can enable this feature if the *Manufacturing* group of features is enabled. Generally, manufacturers that produce configurable products need to enable the *Product Configurator* feature early in the implementation process, when they are defining their bills of material. However, companies that are looking to introduce new production lines or variations of existing product lines may enable *Product Configurator* after using Acumatica ERP for years.

 Before disabling the *Product Configurator* feature, you should ensure that there are no incomplete sales quotes or sales orders that include a configurable item. Additionally, planned production orders that reference a configured bill of material should be evaluated to determine if they should be deleted before turning off the feature.

 For more information, see [Product Configurator: General Information](../Shared/../UserGuide/MFG_Product_Configurator_GeneralInfo.md).

|
|**Estimating**|A feature that adds the estimation functionality. Manufacturing estimating empowers make-to-order manufacturers \(job shops\) to create accurate and detailed estimates for manufacturing projects. It gives users flexibility in preparing estimates for existing or custom items, whether they need simple summary estimates or detailed ones with a BOM structure. For enhanced efficiency, users can quickly generate new estimates by copying or modifying existing ones. Revision control ensures that multiple revisions can be tracked, including expected labor, material, and overhead costs. Additionally, seamless integration with sales enables estimates to be linked to sales quotes or opportunities.

 You can enable this feature if the *Manufacturing* group of features is enabled. Generally, if manufacturers have used an ERP system to provide estimates to their customers in the past, they enable this feature before they go live. However, companies using legacy or antiquated systems to manage estimates may choose to enable this feature as a second phase of their ERP implementation.

 This feature can be disabled at any time; no data will be lost. However, we recommend that you first ensure that all estimates sent to the customer have expired, have been completed, or have been canceled. In any sales quote or opportunity to which the estimate is linked, users will lose visibility to the estimate details. Similarly, any production orders that have estimates as the source will not have visibility of the estimate details.

 For details, see [Estimating: General Information](../Shared/../UserGuide/MFG_Estimating_GeneralInfo.md).

|
|**Advanced Planning and Scheduling**|A feature that adds the functionality of advanced planning and scheduling. With advanced planning and scheduling \(APS\), manufacturers can manage and monitor their shop floor schedule and work center capacity by using the finite scheduling method.

 You can enable this feature if the *Manufacturing* group of features is enabled. This feature is useful for companies looking to schedule production orders' start and end dates based on work center capacity and delivery date commitments.

 This feature can be disabled at any time; no data will be lost. Because scheduling does not generate any financial transactions within the APS functionality, there are no significant consequences to disabling the feature.

 For more information, see [Advanced Planning and Scheduling: General Information](../Shared/../UserGuide/MFG_APS_GeneralInfo.md).

|
|**Engineering Change Control**|A feature that adds the functionality of engineering change control. Engineering change control \(ECC\) helps manufacturers manage changes to bills of material \(BOMs\) and routings, ensuring compliance with current customer, vendor, and production requirements. ECC streamlines BOM and routing revisions, automates change requests, and provides an approval workflow.

 You can enable this feature if the *Manufacturing* group of features is enabled. The feature is useful for manufacturers looking to implement tighter controls on changes to form or function for their BOMs.

 The feature can be disabled at any time; no data will be lost. Because ECC does not generate any financial transactions, there are no significant consequences to disabling the feature. However, we recommend that you terminate all approval workflows and complete or cancel all engineering change requests and engineering change orders.

 For details, see [Engineering Change Control: General Information](../Shared/../UserGuide/MFG_ECC_GeneralInfo.md).

|
|**Manufacturing Data Collection**|A feature that gives users the ability to perform production operations by using barcode scanners or mobile devices. Manufacturing data collection \(MDC\) streamlines shop floor operations by automating data capture through the use of barcodes, scanners, and mobile devices. It provides real-time updates of inventory and eliminates data entry errors. Key features include material movement tracking, clock-in and clock-out capabilities for labor transactions, and supervisor review.

 You can enable this feature if the *Manufacturing* group of features is enabled.

 The feature can be disabled at any time; no data will be lost. All actions within MDC can be performed on ERP forms not specific to manufacturing. There are no consequences to disabling this feature.

 For more information, see [Manufacturing Data Collection](../Shared/../UserGuide/MFG_PM_Data_Collection.md).

|
|**Shop Floor Kiosk**|A feature that gives shop floor operators the ability to capture production data on the shop floor by using a shop floor kiosk. You can launch and run the kiosk without requiring operators to sign in as Acumatica ERP users. Supervisors can bring kiosks online quickly, operators can identify themselves in seconds, and each worker will see only the actions that matter to their role, work center, and current tasks. This ensures fast onboarding, minimal training, fewer errors, and consistent production reporting directly from the shop floor.

 You can enable this feature if the *Manufacturing* group of features is enabled.

 The feature can be disabled at any time; no data will be lost. However, if a shop floor kiosk is configured and running, disabling this feature will shut it down.

|

## Canadian Localization Functionality {#section_jv1_mfl_5vb .section}

|Feature|Overview|
|-------|--------|
|**Canadian Localization**|A feature that enables functionality that is specific to the Canadian market: EFT export, generation of T5018 slips, extended tax registration numbers, tax printing labels, and modified cash discount calculation. For details, see [Filing CRA Forms](../Shared/../UserGuide/AP__MNG_T5018_Filing.md).|

## UK Localization Functionality {#section_u4n_nfl_5vb .section}

|Feature|Overview|
|-------|--------|
|**UK Localization**|A feature that turns on the types of functionality that are specific to the United Kingdom market:

-   Support for the Bankers Automated Clearing Service \(BACS\). For details, see [Processing BACS Payments](../Shared/../UserGuide/AP__con_BACS_Payment_Support.md).
-   Support for Making Tax Digital \(MTD\). For details, see [Configuring Support for Making Tax Digital \(MTD\)](../Shared/../UserGuide/TX__con_Support_for_MTD.md).

|

## Experimental Features {#section_ejw_pfl_5vb .section}

|Feature|Overview|
|-------|--------|
|**Experimental Features**|A group of features that are experimental, meaning that they may be discontinued or substantially changed in the future, requiring your company to reimplement them if they are implemented during the experimental period.|
|**Import of SendGrid Designs**|A feature that provides users with the ability to import designs that were created through the use of SendGrid for an email template. The feature is available if the *SendGrid Integration* feature is enabled.

 With the feature enabled, the system adds the **Import SendGrid Design** button to the toolbar of the [Email Templates](../Shared/../UserGuide/SM_20_40_03.md) \(SM204003\) form. For details, see [Mail Processing by Using SendGrid](../Shared/../UserGuide/US__CON_Processing_Emails_using_SendGrid_Concept.md).

|
|**Related Item Assistant**|A feature that provides the ability to use the automated cross-sell generation. This ability helps you identify and suggest cross-sell items for stock and non-stock items without relying on manual setup. By analyzing your sales history, the system uses machine learning to create relevant cross-sell suggestions that save time and uncover opportunities you might otherwise miss. Once you configure the process, it can run on a schedule or on demand, reducing repetitive work for your team.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time.
-   You can disable this feature at any time.

 For more information about automated cross-sell generation, see [Related Items in Sales Orders: Automated Suggestions for Cross-Sell Items](../Shared/../UserGuide/OrderMgmt_Automated_Suggestions_for_Cross_Sell_Items.md).

|
|**Teams Integration**|A feature that provides the ability to integrate Microsoft Teams with Acumatica ERP to allow user collaboration within a single platform and to eliminate the need for users to switch between multiple applications. With the feature enabled and the integration configured, users can do the following in Acumatica ERP:

 -   Start a Teams chat
-   Start a Teams call
-   Import files from Teams to Acumatica ERP
-   Share Acumatica ERP records with a contact or channel in Teams
-   Send automatic messages in Teams about events occurring on a record

 For more details, see [Integrating Acumatica ERP with Microsoft Teams](../Shared/../UserGuide/US_mng_Teams_Integration.md).

 By default, the feature is disabled. A system administrator can enable it at any time.

 The administrator can disable this feature at any time, but they must keep the *Teams Message* activity type, which has been created as part of the configuration of Teams Integration.

|
|**Intelligent Text Completion**|A feature that provides intelligent suggestions to continue the text that users start to type in a rich text editor of a data entry form. With the feature enabled for the first time, the system uses the most commonly used polite phrases, which are built into the out-of-the-box system.

 The system improves the quality of the suggested text over time by generating a separate machine learning model for each user. The model is based on the text that this particular user has entered into the system by using a rich text editor. This model learns to suggest the phrases that are most suitable for the context.

|
|**AI Assistant**|A feature that provides a chat window inside Acumatica ERP where you can ask questions in plain language and quickly explore your data. Instead of checking multiple forms and reports to find answers, you can get answers immediately and act on them with just a click.

 The AI Assistant can return answers as text summaries, tables, lists, charts, and pivot tables. You can jump directly to the relevant forms and records from the response.

 To maximize the accuracy and relevance of the answers, you control which generic inquiries the AI assistant uses and how those inquiries are described in business language that's familiar in your company.

|
|**Mapping of Multiple Accounts for Bank Feeds**|A feature that provides the ability for users to map multiple bank accounts to one cash account in Acumatica ERP when they are receiving transactions via a bank feed.

 This check box is available if the **Bank Feed Integration** check box is selected. This feature can be enabled at any time during production.

 **Tip:** When the feature is enabled, the number of bank feed accounts for the license is calculated as usual. For example, if two bank accounts are mapped to the same cash account in Acumatica ERP, the license will include two bank feed accounts.

 The feature cannot be disabled for the tenant if the tenant has at least one bank feed with the **Map Multiple Bank Accounts to One Cash Account** check box selected on the [Bank Feeds](../Shared/../UserGuide/CA_20_55_00.md) \(CA205500\) form.

 If a system administrator attempts to disable the *Bank Feed Integration* feature while this feature is enabled, the system performs the following actions:

 -   Checks whether there is at least one bank feed with the **Map Multiple Bank Accounts to One Cash Account** check box selected on the [Bank Feeds](../Shared/../UserGuide/CA_20_55_00.md) \(CA205500\) form. If the system finds such a bank feed, it displays an error message and does not allow the system administrator to disable the *Bank Feed Integration* feature.
-   If the system finds no bank feeds with the **Map Multiple Bank Accounts to One Cash Account** check box selected, disables both the *Bank Feed Integration* feature and the *Mapping of Multiple Accounts for Bank Feeds*. Also, this check box becomes cleared and unavailable on the current form.

|
|**Sales Territory Management**|A feature that provides the ability to use sales territory functionality. With this feature enabled, users can assign sales territories to leads, contacts, business accounts, and opportunities to distribute these records among owners. The functionality also provides the ability to break down report data by sales territory.

 By default, the feature is disabled. A system administrator can enable it at any time if the *Customer Management* feature is enabled. If the *Customer Management* feature is disabled after the *Sales Territory Management* feature has been enabled, this feature becomes disabled as well.

 If the system administrator tries to disable this feature or the *Customer Management* feature and at least one sales territory has already been created, the system displays a warning icon next to the feature.

|
|**Case Commitments**|A feature that provides the capability for companies to manage their case commitments and monitor their fulfillment within target time periods, thus optimizing service levels.

 With this feature enabled, users can activate time tracking and specify target commitment times at the case class level for any severity level of a case of the class.

 By default, the feature is disabled. A system administrator can enable it at any time if the *Customer Management* feature is enabled. If the *Customer Management* feature is disabled after the *Case Commitments* feature has been enabled, this feature becomes disabled as well.

|
|**Lot/Serial Attributes**|A feature that gives you the ability to track additional information about stock items by assigning attribute values to a unit of a stock item with a particular serial number or to units with a particular lot number.

 With this functionality, users can define attributes for a lot or serial class and manage the set of the attributes for a unit of a stock item with a lot or serial number. Users can assign attributes to items in stock, correct lot or serial attribute values that were incorrectly entered, and review and update information, including price, on lot- or serial-tracked items.

 By default, the feature is disabled. A system administrator can enable it at any time if the *Lot and Serial Tracking* feature is enabled and the *Multiple Base Currencies* feature is disabled. If the *Lot and Serial Tracking* feature is disabled after the *Lot/Serial Attributes* feature has been enabled, this feature becomes disabled as well.

|
|**Recognition of Project-Related Documents**|A feature that makes it possible to automatically recognize project-related invoices attached to incoming emails so that users can create AP bills from these recognized documents, link their lines to corresponding commitments, and include project details in these lines.

 By default, the feature is disabled. A system administrator can enable it at any time if the *Projects* and *AP Document Recognition Service* features are enabled. If either or both of these features is disabled after the *Recognition of Project-Related Documents* feature has been enabled, this feature becomes disabled as well.

 **Attention:** The feature is not available in trial mode and can be enabled only if it is included in the license that is applied to the Acumatica ERP instance.

 For more information, see [Recognizing AP Documents from PDFs](../Shared/../UserGuide/Finance_Recognizing_AP_Documents_From_PDF_Mapref.md).

|
|**Full-Text Search for Inventory**|A feature that gives you the ability to use the full-text search in your instance when the database runs on Microsoft SQL Server.

 The full-text search for inventory items in Acumatica ERP uses a token-based index to quickly find matches in large databases \(over 1 million inventory item records\). You can search by the beginnings of words or inventory ID segments, or by full words in both the inventory ID and description. Unlike the standard search, it is optimized for speed in high-volume inventories.

 **Attention:**

-   You can enable this feature and start using the related functionality at any time.
-   You can disable this feature at any time.

 For more information about the full-text search, see [Full-Text Search: General Information](../Shared/../ImplementationGuide/OrderMgmt_Full_Text_Search_GeneralInfo.md)

|
|**Clock In and Clock Out**|A feature that gives you the ability to track time spent on project tasks. Based on the tracked time, the system automatically generates time logs, which you can use to create time activities.

 With this feature enabled, a timer appears on the [Project Tasks](../Shared/../UserGuide/PM_30_20_00.md) \(PM302000\) form. You can use it to start, pause, or stop tracking time, and you can switch between timers as you work on multiple tasks.

 By default, the feature is disabled. A system administrator can enable it at any time.

|
|**AMEX GL1025 File Import for Bank Feeds**|A feature that gives you the ability to import GL1025 bank statement files provided by AMEX into Acumatica ERP by using a bank feed with the *File* type.

 By default, the feature is disabled. A system administrator can enable it at any time if the *Bank Feed Integration* feature is enabled. If the *Bank Feed Integration* feature is disabled, this feature becomes disabled as well.

 For more information about the support of GL1025 files, see [Loading of Bank Feeds from an AMEX GL1025 File](../Shared/../UserGuide/CA__MNG_Loading_Bank_Feeds_for_AMEXGL1025.md).

|

**Parent topic:**[Preparing an Instance for Implementation](../ImplementationGuide/config_SA_Prep_Instance_for_Implem_Mapref.md)

