## End-User Guide 

# Finance Data Migration 

# 2025 R1 


<!-- PAGE_BREAK -->
 Contents | 2 

## Contents 

 Copyright...............................................................................................................................................3 

 Migrating Documents to Acumatica ERP...................................................................................................4 

 Activating Migration Mode................................................................................................................................ 4 

 Processing Documents in Migration Mode.......................................................................................................4 

 Predefined Import Scenarios for Migrating Financial Data............................................................................. 7 

 Preparing System to Migrating Data.......................................................................................................12 

 Data Migration Process: General Information................................................................................................12 

 Data Migration Process: Migration of Financial Data.....................................................................................13 

 Data Migration Process: To Prepare the System for Migrating Financial Data............................................. 16 

 Data Migration Process: Recommendations for Data Verification................................................................ 17 

 Data Migration Process: Migrating Multicurrency Documents...................................................................... 18 

 Migrating Master Records...................................................................................................................... 20 

 Migration of Master Records: General Information........................................................................................20 

 Migration of Master Records: To Import Master Records...............................................................................21 

 Migrating Financial Documents..............................................................................................................27 

 Migration of Financial Documents: General Information.............................................................................. 27 

 Migration of Financial Documents: To Import AP Documents...................................................................... 28 

 Migration of Financial Documents: To Import AR Documents...................................................................... 34 

 Importing Trial Balances....................................................................................................................... 39 

 Migration of Trial Balances: General Information..........................................................................................39 

 Migration of Trial Balances: To Import Trial Balances................................................................................... 42 

 Reconciling Financial Balances.............................................................................................................. 46 

 Balance Reconciliation: General Information................................................................................................ 46 

 Balance Reconciliation: To Reconcile Balances Aer Data Migration........................................................... 47 

 Importing Unreconciled Payments......................................................................................................... 50 

 Migration of Unreconciled Payments: General Information..........................................................................50 

 Migration of Unreconciled Payments: To Import Payments and Reconcile a Cash Account........................52 

 Appendix..............................................................................................................................................57 

 Reports............................................................................................................................................................. 57 

 Report Form............................................................................................................................................ 57 

 Report......................................................................................................................................................62 

 Form Toolbar and More Menu.........................................................................................................................64 

 Table Toolbar................................................................................................................................................... 71 


<!-- PAGE_BREAK -->
 Copyright | 3 

## Copyright 

**©** (^) **2025 Acumatica, Inc. ALL RIGHTS RESERVED.** No part of this document may be reproduced, copied, or transmitted without the express prior consent of Acumatica, Inc. 3075 112th Avenue NE, Suite 200, Bellevue, WA 98004, USA 

#### Restricted Rights 

 The product is provided with restricted rights. Use, duplication, or disclosure by the United States Government is subject to restrictions as set forth in the applicable License and Services Agreement and in subparagraph (c)(1)(ii) of the Rights in Technical Data and Computer Soware clause at DFARS 252.227-7013 or subparagraphs (c)(1) and (c)(2) of the Commercial Computer Soware-Restricted Rights at 48 CFR 52.227-19, as applicable. 

#### Disclaimer 

 Acumatica, Inc. makes no representations or warranties with respect to the contents or use of this document, and specifically disclaims any express or implied warranties of merchantability or fitness for any particular purpose. Further, Acumatica, Inc. reserves the right to revise this document and make changes in its content at any time, without obligation to notify any person or entity of such revisions or changes. 

#### Trademarks 

 Acumatica is a registered trademark of Acumatica, Inc. HubSpot is a registered trademark of HubSpot, Inc. Microso Exchange and Microso Exchange Server are registered trademarks of Microso Corporation. All other product names and services herein are trademarks or service marks of their respective companies. 

 Soware Version: 2025 R1 

 Last Updated: 06/01/2025 


<!-- PAGE_BREAK -->
 Migrating Documents to Acumatica ERP | 4 

## Migrating Documents to Acumatica ERP 

 If you need to move historical data to Acumatica ERP, you can enter fully or partially settled documents into the system. To load documents without affecting the general ledger, you have to first activate migration mode. You can activate this mode in the accounts receivable subledger or in the accounts payable subledger (or in both subledgers), depending on the documents to be migrated. Also, you can activate this mode for projects to import the initial project balances. 

 When entering a document to the system in migration mode, you need to specify the open balance of the document, its original amount, and the document date. When these documents are released, migrated documents update customer or vendor balances but do not update the general ledger. 

 The topics of this chapter describe how you can activate migration mode in the needed Acumatica ERP subledger, how to prepare documents for migration, and how to use predefined import scenarios to import data. 

### Activating Migration Mode 

 To add accounts receivable or accounts payable documents to Acumatica ERP without affecting the general ledger, you need to activate migration mode in the needed Acumatica ERP subledger (or in both subledgers). Also, if you need to migrate project balances, you need to activate migration mode for projects, as described below. 

#### Activating Migration Mode for Accounts Receivable 

 To turn on migration mode for the accounts receivable subledger, you use the Accounts Receivable Preferences (AR101000) form. On this form, in the Posting Settings section of the General tab, you select the Activate Migration Mode check box; you then click Save on the form toolbar. You can select or clear this check box at any time. 

 If migration mode has been activated, auto-application of payments to outstanding documents is not supported by the system. 

#### Activating Migration Mode for Accounts Payable 

 To turn on migration mode for the accounts payable subledger, you use the Accounts Payable Preferences (AP101000) form. On this form, in the Posting Settings section of the General tab, you select the Activate Migration Mode check box; you then click Save on the form toolbar. You can select or clear this check box at any time. 

#### Activating Migration Mode for Projects 

 To turn on migration mode for projects, you use the Projects Preferences (PM101000) form. On this form, in the General Settings section of the General tab, you select the Activate Migration Mode check box. Then you click Save on the form toolbar. 

### Processing Documents in Migration Mode 

 Before you start the migration process in Acumatica ERP, you need to prepare the list of all documents that you want to migrate to the system. This list can contain both outstanding and closed documents. For each document, you need to specify its original amount, document date, currency, exchange rate, and open balance on the migration date. 


<!-- PAGE_BREAK -->
 Migrating Documents to Acumatica ERP | 5 

 The documents that are added when migration mode is activated do not update the general ledger. If you need to update account balances, you can import either the trial balance (for details, see Importing Financial Data ) or the general ledger transactions. 

#### Types of Documents That Can Be Migrated 

 The following types of documents can be entered when migration mode has been activated for the accounts receivable subledger: 

- _Invoice_ , _Debit Memo_ , and _Credit Memo_ : You add these documents by using the _Invoices and Memos_     (AR301000) form. 

- _Payment_ , _Prepayment_ , and _Refund_ : You add these documents by using the _Payments and Applications_     (AR302000) form. 

- _Cash Sale_ and _Cash Return_ : You add these documents by using the _Cash Sales_ (AR304000) form. The following types of documents can be entered when migration mode has been activated for the accounts payable subledger: 

- _Bill_ , _Debit Adjustment_ , and _Credit Adjustment_ : You add these types of documents by using the _Bills and_     _Adjustments_ (AP301000) form. 

- _Payment_ , _Prepayment_ , and _Refund_ : You add these types of documents by using the _Checks and Payments_     (AP302000) form.     You cannot create payments with an open balance in migration mode. Thus, you will not be able to apply     other documents to these migrated payments. When you create a payment in migration mode, this     document will have the _Closed_ status and will affect the vendor's balance. 

 If you need to enter an AP payment with an application in migration mode, you should use the Prepayment document type. 

- _Cash Purchase_ : You add this type of a document by using the _Cash Purchases_ (AP304000) form. 

- Subcontracts: You add this type of documents by using the _Subcontracts_ (SC301000) form. The following types of documents and transactions can be entered when migration mode has been activated for projects: 

- Pro forma invoices: You add this type of documents by using the _Pro Forma Invoices_ (PM307000) form. 

- Project transactions: You add this type of documents by using the _Project Transactions_ (PM304000) form. In migration mode, you add the needed documents with the _On Hold_ or _Balanced_ status. These documents can be edited and released only when migration mode is activated. 

#### Entry of a Document's Open Balance 

 When you are adding an accounts receivable or accounts payable document, you specify the open balance of a migrated document on the document entry form as follows: 

- In the **Balance** box, which is available for editing on the _Invoices and Memos_ (AR301000) and _Bills and_     _Adjustments_ (AP301000) forms 

- In the **Available Balance** box on the _Payments and Applications_ (AR302000) form 

- In the **Unapplied Balance** box on the _Checks and Payments_ (AP301000) form (for documents of the     _Prepayment_ type only) If you need to migrate historical documents that have been already settled in full, enter zero as the open balance of these migrated documents. 

 When you save a document, the system validates that the open balance does not exceed the document's original amount; if it does, the system displays an error. 


<!-- PAGE_BREAK -->
 Migrating Documents to Acumatica ERP | 6 

 An open balance that you specify in a document in migration mode will be displayed in the Migrated Balance box on the Financial tab on the document entry form once you save a document. This box is available for migrated documents only. 

 In documents entered in migration mode, the system calculates taxes based on the tax zone and tax category specified in the documents. 

#### Entry of Migrated Documents with Unreleased Retainage 

 On the Invoices and Memos (AR301000) and Bills and Adjustments (AP301000) forms, you can enter migrated AR documents and AP documents, respectively, with unreleased retainage. 

 You enter a document with unreleased retainage on the Invoices and Memos or Bills and Adjustments form by performing the following steps: 

1. You create the document. 

2. You specify its settings in the Summary area, including the selection of the **Apply Retainage** check box. 

3. You add a document line on the **Details** tab and specify the retainage percent in the **Retainage Percent**     column.     On the **Retainage** tab, the system displays the calculated retainage amount in the **Unreleased Retainage**     and **Unpaid Retainage** boxes. 

 For the lines of AP bills, you can also specify links to the related subcontracts in the Subcontract Nbr. box. 

 For details on creating a document with retainage, see Processing AP Documents with Retainage and Processing AR Documents with Retainage. 

#### Release of Migrated Documents 

 The release of migrated accounts receivable documents causes customer balances to be updated; similarly, the accounts payable documents update vendor balances. These released documents do not produce batches in the general ledger. Thus, on the Financial tab of the corresponding document entry forms, instead of the link to the general ledger batch, the word Migrated will be displayed for a migrated document in the Batch Nbr. box. 

 On release of a historical accounts receivable or accounts payable document with an open balance of zero, the system adds a line with this document to the Applications tab on the document entry form and assigns the Closed status to the document. On the Financial tab, the Migrated Balance box shows 0.00 , which means that the document was closed before migration. 

 If you are importing AP bills with links to subcontracts, on release of the migrated AP bills, the system will update the Billed Amount and Unbilled Amount values in the subcontract lines on the Subcontracts (SC301000) form. 

 Migrated documents cannot be edited or released when migration mode is deactivated, and documents created in Acumatica ERP cannot be edited or released when migration mode is activated. 

#### Migration of Project Balances 

 If migration mode is activated for projects, you can import pro forma invoices and the corresponding project transactions—along with their balances, original amounts, and dates—without affecting the general ledger. Also, you must link these pro forma invoices and project transactions to the AR documents that correspond to them. Then you need to release the migrated pro forma invoices and project transactions. 


<!-- PAGE_BREAK -->
 Migrating Documents to Acumatica ERP | 7 

 In order to correctly update project balances without affecting the general ledger, in the lines of the project transactions being imported, you must specify only the debit account and debit subaccount, and leave the credit account and credit subaccount empty. As a result, the release of these project transactions will not produce general ledger transactions. 

 If the migrated pro forma invoice is linked to the corresponding AR document, a line with this pro forma invoice and AR invoice appears in the related project on the Invoices tab of the Projects (PM301000) form. The system shows a line for each pro forma invoice that corresponds to the project, along with the corresponding AR document, which is shown in the same row. Also, on the Revenue Budget tab of this form, project budget values will be calculated based on the imported data. 

 To indicate that a pro forma invoice has been migrated, the system selects the Migrated check box on the Financial tab of the Pro Forma Invoices (PM307000) form. 

#### Known Limitations 

 The following limitations are applied in the system for creating document in migration mode: 

- When AP bills are entered in migration mode on the _Bills and Adjustments_ (AP301000) form, the links to     related purchase orders cannot be specified in the **PO Number** columns on the **Details** tab because there     is no migration mode for purchase orders. This information also cannot be imported when AP bills are     imported in migration mode by using import scenarios. 

- AP payments with applications to other documents cannot be entered in migration mode. You can import     them as documents with the _Prepayment_ type instead.     To do this, you perform the following general steps:     a. On the _Checks and Payments_ (AP302000) form, you create a prepayment and specify its balance in the        **Unapplied Balance** box. When you release the prepayment, it will have the _Open_ status. 

 When you are creating a prepayment in migration mode, the Documents to Apply tab does not appear on the Checks and Payments form. It becomes visible aer you release the prepayment. You can add only migrated documents to this tab. 

 b. On the Bills and Adjustments (AP301000) form, you create a bill and specify its open balance in the Balance box. When you release the bill, it will have the Open status. c. On the Checks and Payments form, you open the prepayment that you created in Step 1. On the Documents to Apply tab, you apply the bill that you created in Step 2 to the prepayment, and release the prepayment with the application. 

### Predefined Import Scenarios for Migrating Financial Data 

 To save time on entering documents from your legacy system into Acumatica ERP, you can use the import scenarios that are supplied with the system. 

#### Overview of the Predefined Import Scenarios 

 Predefined import scenarios are designed to help you prepare for the migration of financial data from a legacy system. You can use them as they are supplied or customize them to suit your implementation needs. 

 The table below lists the predefined import scenarios that are available on the Import Scenarios (SM206025) form for creating an import scenario and on the Import by Scenario (SM206036) form for importing the data based on the 


<!-- PAGE_BREAK -->
 Migrating Documents to Acumatica ERP | 8 

 selected scenario. Each of these scenarios can be used to import data to a specific Acumatica ERP form, which is listed in the second column. 

 Table: Predefined Import Scenarios for Migrating Financial Data 

 Name of Import Scenario Form to Which Data Is Imported 

 ACU Import AP Bills Bills and Adjustments (AP301000) 

 ACU Import AP Cash Purchases Cash Purchases (AP304000) 

 ACU Import AP Payments with Applications Checks and Payments (AP302000) 

 ACU Import AP Prepayments Checks and Payments 

 ACU Import AR Cash Sales Cash Sales (AR304000) 

 ACU Import AR Invoices Invoices and Memos (AR301000) 

 ACU Import AR Payments Payments and Applications (AR302000) 

 ACU Import AR Payments with Applications Payments and Applications 

 ACU Import Customer Locations Customer Locations (AR303020) 

 ACU Import Customers Customers (AR303000) 

 ACU Import Deferral Schedules Deferral Schedule (DR201500) 

 ACU Import Fixed Assets Fixed Assets (FA303000) 

 ACU Import GL Transactions Journal Transactions (GL301000) 

 ACU Import Proforma Pro Forma Invoices (PM307000) 

 ACU Import Project Income Project Transactions (PM304000) 

 ACU Import Vendor Locations Vendor Locations (AP303010) 

 ACU Import Vendors Vendors (AP303000) 

 The predefined import scenarios listed in the table are inactive by default. That is, by default, for each of them, the Active check box is cleared on the Import Scenarios form. Before you can use any of these scenarios for data import on the Import by Scenario form, the Active check box must be selected on the Import Scenarios form. 

#### Import Templates 

 Because the structure of the uploaded data file must match the structure that is defined in the data provider and used in the import scenario, a data template is provided for each of the predefined import scenarios. 

 You can download the data template, populate it with the data to be migrated, and then use the prepared file on the Import by Scenario (SM206036) form with the corresponding import scenario. The file names of the data templates correspond to the names of the predefined import scenarios with which they are intended to be used. 


<!-- PAGE_BREAK -->
 Migrating Documents to Acumatica ERP | 9 

 To download the data template, you first select the required import scenario on the Import Scenarios (SM206025) or Import by Scenario form and then click Files on the title bar. In the Files dialog box, which opens, you click the template file to be downloaded and then save it to the needed location. 

#### ACU Import AP Bills 

 You use the ACU Import AP Bills import scenario to import AP bills to the Bills and Adjustments (AP301000) form. You can use this import scenario when migration mode is turned on or off—that is, when the Activate Migration Mode check box is selected or cleared, respectively, in the Posting Settings section of the General tab on the Accounts Payable Preferences (AP101000) form. 

 When migration mode is turned off, AP bills are imported as unpaid; that is, in the Summary area of the Bills and Adjustments form, the Balance amount of each of the imported bills is equal to its Detail Total. Any outstanding document amount specified in the import source file is ignored. If you want to migrate documents with open balances, migration mode should be activated. 

 When migration mode is turned on, documents are migrated with their outstanding balances. Be sure that you specify the outstanding balance in the relevant column of the import source file; otherwise, the documents will be migrated with zero open balances and will have the Closed status on release. 

#### ACU Import AP Payments with Applications 

 The ACU Import AP Payments with Applications import scenario is used to import information about historical AP payments, along with their applications, to the Checks and Payments (AP302000) form. You use this import scenario when migration mode is turned off—that is, when the Activate Migration Mode check box is cleared on the Accounts Payable Preferences (AP101000) form. 

 If the Activate Migration Mode check box is selected on the Accounts Payable Preferences form, you cannot import payments with an open balance. Instead, you can import them as prepayments by using the ACU Import AP Prepayments import scenario. 

#### ACU Import AP Prepayments 

 You use the ACU Import AP Prepayments import scenario to migrate prepayments, including balances that have not yet been applied to AP documents, to the Checks and Payments (AP302000) form. You import payments with unapplied balances when migration mode is turned on—that is, when the Activate Migration Mode check box is selected on the Accounts Payable Preferences (AP101000) form. Be sure to specify the unapplied balances in the relevant column of the import source file; otherwise, the AP prepayments will be migrated with zero unapplied amounts and will have the Closed status on release. 

#### ACU Import AP Cash Purchases 

 You use the ACU Import AP Cash Purchases import scenario to migrate information about historical cash purchases to the Cash Purchases (AP304000) form. 

#### ACU Import Vendor Locations 

 The ACU Import Vendor Locations import scenario is used to import vendor locations to the Vendor Locations (AP303010) form. 

 We strongly recommend that vendor locations be imported separately from the main vendor data. 

#### ACU Import Vendors 

 You use the ACU Import Vendors import scenario to import vendor records to the Vendors (AP303000) form. 


<!-- PAGE_BREAK -->
 Migrating Documents to Acumatica ERP | 10 

 Vendor locations are excluded from the data template provided for this import scenario. We strongly recommend that you import vendor locations separately from the main vendor data by using the ACU Import Vendor Locations import scenario. 

#### ACU Import AR Cash Sales 

 The ACU Import AR Cash Sales import scenario is used to import historical information about cash sales to the Cash Sales (AR304000) form. 

#### ACU Import Customer Locations 

 You use the ACU Import Customer Locations import scenario to import customer locations to the Customer Locations (AR303020) form. 

 We strongly recommend that customer locations be imported separately from the main customer data. 

#### ACU Import Customers 

 You use the ACU Import Customers import scenario to import customer records to the Customers (AR303000) form. 

 Customer locations are excluded from the data template provided for this import scenario. We strongly recommend that you import customer locations separately from the main customer data by using the ACU Import Customer Locations import scenario. 

#### ACU Import AR Invoices 

 You use the ACU Import AR Invoices import scenario to import AR invoices to the Invoices and Memos (AR301000) form. You can use this import scenario when migration mode is turned on or off—that is, when the Activate Migration Mode check box is selected or cleared, respectively, in the Posting Settings section on the General tab of the Accounts Receivable Preferences (AR101000) form. 

 When migration mode is turned off, documents are imported as unpaid; that is, in the Summary area of the Invoices and Memos form, the Balance amount of each of the imported invoices is equal to its Detail Total. Any outstanding document amount specified in the import source file is ignored. If you want to migrate documents with open balances, migration mode should be activated. 

 When migration mode is turned on, documents are migrated with their outstanding balances. Be sure that you specify the outstanding balance in the relevant column of the import source file; otherwise, the documents will be migrated with zero open balances and will have the Closed status on release. 

#### ACU Import AR Payments 

 You use ACU Import AR Payments import scenario to migrate AR payments, including balances that have not yet been applied to AR documents, to the Payments and Applications (AR302000) form. Payments with available balances are imported when migration mode is turned on—that is, when the Activate Migration Mode check box is selected on the Accounts Receivable Preferences (AR101000) form. Be sure to specify the available balances in the relevant column of the import source file; otherwise, the AR payments will be migrated with zero available balances and will have the Closed status on release. 


<!-- PAGE_BREAK -->
 Migrating Documents to Acumatica ERP | 11 

#### ACU Import AR Payments with Applications 

 The ACU Import AR Payments with Applications import scenario is used to import information about historical AR payments, along with their applications, to the Payments and Applications (AR302000) form. This import scenario is used when migration mode is turned off—that is, when the Activate Migration Mode check box is cleared on the Accounts Receivable Preferences (AR101000) form. 

#### ACU Import Deferral Schedules 

 You use the ACU Import Deferral Schedules import scenario to import previously configured deferral schedules to the Deferral Schedule (DR201500) form so that revenues and expenses that were deferred in the legacy system could continue to be recognized in Acumatica ERP. 

#### ACU Import Fixed Assets 

 The ACU Import Fixed Assets import scenario is used to import information about fixed assets to the Fixed Assets (FA303000) form. If you want to allow the import of accumulated depreciation along with other fixed asset data, the Update GL check box must first be cleared in the Posting Settings section on the Fixed Assets Preferences (FA101000) form. 

 The template provided for this predefined import scenario is designed for importing information about fixed assets to three books. However, the template can be adjusted to reflect the settings of the fixed asset classes to which the imported assets belong. 

#### ACU Import GL Transactions 

 You use the ACU Import GL Transactions import scenario to import to the Journal Transactions (GL301000) form general ledger transactions that have been exported from a legacy system. 

#### ACU Import Proforma 

 You use the ACU Import Proforma import scenario to import to the Pro Forma Invoices (PM307000) form pro forma invoices that have been exported from a legacy system. Pro forma invoices are imported when migration mode is turned on—that is, when the Activate Migration Mode check box is selected on the Projects Preferences (PM101000) form. 

#### ACU Import Project Income 

 You use the ACU Import Project Income import scenario to import to the Project Transactions (PM304000) form project transactions that have been exported from a legacy system. Project transactions are imported when migration mode is turned on—that is, when the Activate Migration Mode check box is selected on the Projects Preferences (PM101000) form. 


<!-- PAGE_BREAK -->
 Preparing System to Migrating Data | 12 

## Preparing System to Migrating Data 

 This lesson describes the basic steps that you need to perform before you start to migrate company data to Acumatica ERP, describes the minimal system configuration that you need to implement before migrating financial and inventory data, explains the basic flow of the data migration, and lists the financial data that you should prepare for data migration. 

### Data Migration Process: General Information 

 Data migration is a crucial process that is performed before the company goes live on a new ERP platform. The process involves moving data from the old system to the new one while ensuring data integrity and minimizing disruptions. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Plan the needed steps of data migration based on your organization’s business requirements 

- Create a company in Acumatica ERP that is ready for the migration of financial data from the legacy system 

- Prepare the import scenarios and the data to be uploaded 

#### Applicable Scenario 

 You are planning to migrate data from a legacy system before you start to use Acumatica ERP as an ERP system. You want to prepare carefully for this process to keep the history of company operations that preceded the transition to new system and to ensure the continuity of business processes. 

#### Configuration of the Basic System 

 Prior to data migration, you need to plan and configure the company’s structure and perform the basic configuration in Acumatica ERP based on the business requirements of the company. To do this, you perform the following general steps: 

1. You prepare the instance, enable the features, and activate the license, as described in _Preparing an Instance_     _for Implementation_. 

2. You configure the company’s structure in the system, as described in _Preparing a Company for_     _Implementation_. 

3. You configure the basic financial settings in the system, as described in _Implementing Basic Financials_. 

 The complete set of configuration tasks depends on the company's business processes. For more information about configuring other system areas, see Acumatica ERP Implementation Guide. 

#### Data Preparation and Migration Stages 

 Once the tenant is ready, you perform data migration in the following general steps: 

1. You assess the legacy ERP system and identify data to be migrated. 

2. You extract data from the legacy ERP system, taking into account data integrity, quality, and compatibility     with the new system. This process involves identifying and cleansing duplicate, outdated, or irrelevant data. 


<!-- PAGE_BREAK -->
 Preparing System to Migrating Data | 13 

 You ensure that all existing information is accurate and up-to-date. Also, you remove incorrect, redundant, or out-of-date data (such as discontinued vendors, contacts that are no longer with the company, and discontinued products). 

3. You transform and map the extracted data to fit the structure and format of the new ERP system (that is,     prepare the data providers that will be used with the import scenarios). 

4. You prepare import scenarios and test them with sample data to ensure that all needed information is     included and mapped correctly. 

5. You transfer the data to the new system. 

6. You cross-check the uploaded data to ensure completeness, correctness, and integrity. This involves     running test scenarios, reconciling data, and resolving any discrepancies or errors to ensure that legacy data     has been moved and is accessible. For recommendation on data verification, see _Data Migration Process:_     _Recommendations for Data Verification_. 

 Once the data migration is complete and the data is verified for consistency, the system is ready to use. 

#### Preparation of Import Scenarios 

 To speed up data migration, you use import scenarios to import business accounts and financial data other than trial balances. An import scenario is a set of instructions for the system that specifies the actions to be executed for each record of the imported data as if the data is being entered manually on the specified form. 

 To import data by using an import scenario, you do the following: 

1. You convert the data in the external format to data in the format of Acumatica ERP. For this purpose, on the     _Data Providers_ (SM206015) form, you create a data provider. The data provider defines the data source type     (Excel), the name of the spreadsheet that should be used for the data import, the list of the columns on the     spreadsheet, and the data type of each column. 

2. On the _Import Scenarios_ (SM206025) form, you prepare the import scenario that uses the data provider.     An import scenario defines the mapping of the source columns to the destination fields of the entry in the     system. The **Mapping** tab of the _Import Scenarios_ form holds the list of steps of the scenario that imports the     records into the system as if each record is being manually entered through the corresponding data entry     form.     Acumatica ERP provides a set of predefined import scenarios that you can use to migrate financial data,     adapting them for your needs. For more information, see _Predefined Import Scenarios for Migrating Financial_     _Data_. 

3. On the _Import by Scenario_ (SM206036) form, you prepare and import the data. For each imported record, the     system executes the mapping steps one aer another in the order in which they are listed in the executed     import scenario on the _Import Scenarios_ form. 

### Data Migration Process: Migration of Financial Data 

 This topic describes the general process of migrating data from a legacy system to Acumatica ERP. 

 The complete list of data to be imported depends on company's business processes. 

#### Migration of Financial Data 

 To import the data completely and accurately and to minimize import errors, you import documents and balances by performing the following general steps in the listed order: 

1. You import the following master records: 


<!-- PAGE_BREAK -->
 Preparing System to Migrating Data | 14 

- Customers 

- Vendors 

- Non-stock items 

2. You import financial documents. For each type of document, you use the same import scenario to import     both closed documents and documents with an open balance.     To import accounts receivable or accounts payable documents to Acumatica ERP, you need to activate     migration mode in the accounts receivable subledger and accounts payable subledger, respectively. The     documents that are created when migration mode is activated do not update the general ledger. 

3. You upload and release the trial balances for the needed financial periods. When this process is complete,     you make sure that the final trial balance in Acumatica ERP matches the trial balance in the legacy system. 

 Though you can import historical GL transactions instead of importing trial balances, the import of trial balances is the preferable way of migrating financial data. Importing the trial balances helps to limit the number of historical transactions in the database. 

4. You perform the reconciliation of account balances for the accounts receivable and accounts payable     subledger. 

5. You import outstanding checks and deposits in progress and then reconcile the cash account balance. 

The following diagram illustrates the basic workflow for migrating financial data for a company with one branch. 


<!-- PAGE_BREAK -->
Preparing System to Migrating Data | **15** 


<!-- PAGE_BREAK -->
 Preparing System to Migrating Data | 16 

### Data Migration Process: To Prepare the System for Migrating Financial Data 

 The following activity will walk you through the preparation of the system for the migration of financial data. 

 This activity is based on the U100 Basic Company dataset. If you are using another dataset, or if any system settings have been changed in U100 Basic Company , these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the U100 Basic Company dataset to its initial state. 

#### Story 

 Suppose that you are an implementation consultant of the SweetLife Fruits & Jams company, and you will be performing data migration from the legacy system to Acumatica ERP. In the system, you have configured the tenant, activated the license, and performed the basic financial configuration. Now you need to make sure the system is ready for data migration. 

 Before you start importing data into the system, you need to perform the following operations: 

- Making sure the financial periods are ready to data migration 

- Verifying that the cash account is configured for reconciliation 

- Activating predefined import scenarios 

- Uploading and activating an additional import scenario that will be used for migrating non-stock items 

#### Configuration Overview 

 In the U100 Basic Company dataset, the following tasks have been performed for the purposes of this activity: 

- On the _Enable/Disable Features_ (CS100000) form, the minimum set of financial features has been enabled. 

- On the _Companies_ (CS101500) form, the SweetLife company without branches has been configured by     performing the steps described in _Company Without Branches: To Configure a Company Without Branches_. 

- On the _Chart of Accounts_ (GL202500) form, the company's chart of accounts has been created. 

- On multiple forms, the required financial configuration has been performed, as described in the     _Implementing Basic Financials_ chapter of the Implementation Guide, including the creation of cash accounts,     credit terms, and payment methods. 

#### Process Overview 

 On the Manage Financial Periods (GL503000) form, you will ensure that the financial periods to which the historical data will be uploaded have been generated and are open. On the Cash Accounts (CA202000) form, you will verify that the 10200WH cash account is configured for reconciliation. On the Import Scenarios (SM206025) form, you will activate the predefined import scenarios that will be used for data migration. You will also upload and activate an additional import scenario for importing non-stock items. 

#### System Preparation 

 To prepare to perform the instructions of this activity, do the following: 

1. Launch the Acumatica ERP website with the _U100 Basic Company_ dataset preloaded. 

2. Sign in to the system by using the _gibbs_ username and the _123_ password. 


<!-- PAGE_BREAK -->
 Preparing System to Migrating Data | 17 

3. Download the DMImportNonStockItems.xml file, which was provided with the course. 

#### Step 1: Verifying the Financial Periods 

 To ensure that all needed financial periods are ready to import the data, do the following: 

1. Open the _Master Financial Calendar_ (GL201000) form. 

2. In the **Financial Year** box in the Summary area, select _2024_. Review the periods in the table and make sure     that the following periods have been generated and now have the _Open_ status: 

- The periods from 01-2024 to 11-2024, which are the periods to which the data will be migrated 

- The 12-2024 financial period, which is the first period in which the company will start operating in     Acumatica ERP 

#### Step 2: Reviewing the Cash Account Settings 

 To be able to reconcile the balance of the 10200WH cash account aer data migration, open the 10200WH cash account on the Cash Accounts (CA202000) form. Make sure the following settings are specified: 

- **Requires Reconciliation** : Selected 

- **Reconciliation Numbering Sequence** : _CARECON_ 

#### Step 3: Activating Import Scenarios 

 Before you start importing data, you need to activate the predefined import scenarios and create an additional scenario as follows: 

1. Open the _Import Scenarios_ (SM206025) form. 

2. In the Summary area of the form, for each of the following predefined scenarios, select the **Active** check box     and save your changes: 

- _ACU Import Vendors_ 

- _ACU Import Customers_ 

- _ACU Import AP Bills_ 

- _ACU Import AP Prepayments_ 

- _ACU Import AR Invoices_ 

- _ACU Import AR Payments_ 

3. On the form toolbar of the _Import Scenarios_ (SM206025) form, click **Clipboard > Import from XML**. 

4. In the **Upload XML File** dialog box, click **Choose File** and select the DMImportNonStockItems.xml file,     which you downloaded earlier. 

5. In the dialog box, click **Upload**. The system uploads the _DM Import Non-Stock Items_ import scenario. This     scenario maps the internal fields of the _Non-Stock Items_ (IN202000) form to the external fields that are     defined in the SweetLifeNonStockItemsList.xlsx file, which has been supplied with the course. 

6. Make sure that the **Active** check box is selected in the Summary area of the form for the created scenario. 

### Data Migration Process: Recommendations for Data Verification 

 Aer migrating data to a new ERP system, you should verify its accuracy, consistency, and completeness. This process helps ensure a smooth transition from a legacy system. 


<!-- PAGE_BREAK -->
 Preparing System to Migrating Data | 18 

 To verify the data that has been imported into the system, use the following methods: 

- For customers and vendors, make sure that the total number of master records that have been imported     into the system is equal to the number of customers and vendors in the source file.     You can review a summary of all imported vendor accounts by using the _Vendor Summary_ (AP655000)     report. For customer accounts, you can use the _Customer Summary_ (AR650500) report. 

- Randomly verify the information imported into particular customer accounts and particular vendor     accounts. We recommend verifying the first account in the file for import, the last account, and a number of     additional accounts.     For example, if you have imported 90 customers, you should verify 9 customers: the first one, the last one,     and 7 chosen at random. You can review the information of the imported vendor accounts by using the     _Vendors_ (AP303000) form or the _Vendor Profiles_ (AP655500) report. For customer accounts, you can use the     _Customers_ (AR303000) form or the _Customer Profiles_ (AR651000) report. 

- Verify open balances of the customers and vendors and make sure they match with the records in the legacy     system. 

- For AP and AR documents, verify that the total number of the imported documents in the system is equal to     the number of the documents in the corresponding source file. 

- Verify a randomly selected group of the imported AP and AR documents. To review the documents, use the     following reports: 

- The _AP Edit_ (AP610700) report for AP documents that are balanced and on hold 

- The _AR Edit_ (AR611000) report for AR documents that are balanced and on hold 

- The _AP Register_ (AP621500) report for released AP documents 

- The _AR Register_ (AR621500) report for released AR documents 

- Verify the balances of a randomly selected group of the imported AP and AR documents on the following     lists of records: 

- Bills and Adjustments (AP3010PL) 

- Checks and Payments (AP3020PL) 

- Invoices and Memos (AR3010PL) 

- Payments and Applications (AR3020PL) 

 To review the open balances in the document’s currency, review the Balance column. This column is hidden by default; you can add it by using the Column Configuration dialog box. 

### Data Migration Process: Migrating Multicurrency Documents 

 If your company works with foreign vendors and customers, when migrating from a legacy system, you need to first configure Acumatica ERP for working with multiple currencies, and then import the documents and upload the balances of any accounts denominated in a foreign currency. 

#### Support of Multiple Currencies 

 Acumatica ERP supports the processing of documents and transactions in foreign currencies in the following functional areas: 

- General ledger 

- Cash management 

- Accounts payable 

- Accounts receivable 

- Contracts 


<!-- PAGE_BREAK -->
 Preparing System to Migrating Data | 19 

- Taxes (you could report taxes in a currency other than the base currency) 

- Sales orders 

- Purchase orders 

- Purchase requisitions 

- Time and expenses 

- Projects 

 Transactions involving fixed assets, deferred revenue, and inventory can be processed in the base currency only. 

#### Import of Documents in Foreign Currencies 

 To prepare the system for importing documents in foreign currencies to the system, the following requirements must be met: 

- The _Multicurrency Accounting_ feature must be enabled on the _Enable/Disable Features_ (CS100000) form. 

- The currency rate types and currencies specified in the import data must be activated on the _Currency Rate_     _Types_ (CM201000) form and the _Currencies_ (CM202000) form, respectively. 

- Currency rate override must be allowed for the vendors and customers for which you are going to     import documents in foreign currencies. Currency settings are specified for these records on the _Vendors_     (AP303000) form and the _Customers_ (AR303000) form, respectively. This is needed so that the system can     change the rate in the imported documents to upload exactly the same document amounts in the base and     in foreign currencies as you have in your legacy system. 

- In import scenarios that will be used for import, the appropriate fields with the currency, currency rate type,     and currency rate must be mapped to the appropriate columns in the files with the data to be imported. Aer you import the documents to the system, you need to verify the balances of customers and vendors in the base and foreign currencies to make sure that all data was imported correctly. 

#### Import of Trial Balances 

 If you have accounts maintained in a foreign currency (or accounts denominated in a foreign currency), you need to import balances in both base and foreign currencies for each of these accounts. Thus, in the Excel file with the data, you need to create two columns with balances: YTD Balance , which holds the balance of accounts in the base currency, and Currency YTD Balance , which contains the balance of accounts in the foreign currencies assigned to these accounts. Both columns must have the currency or text format. For the accounts that are not denominated or are denominated in the base currency, the YTD Balance and Currency YTD Balance columns hold the same value. 

 Aer you have released the imported trial balance with multiple currencies, the generated batch on the Journal Transactions (GL301000) form has the following specifics: 

- The only currency available in the **Currency** box in the generated batch is the base currency of the company.     The system always shows the base currency as the transaction currency in the trial balance batches, even     though the imported account balances might be denominated in different currencies. 

- When you open the trial balance batch on the form, the amounts are shown in the transaction currency     which may be different for different accounts: the currency of the denomination for denominated accounts     and the base currency for other accounts. In this currency mode, the debit total is not supposed to be equal     to the credit total, because the summed amounts are the balances in different currencies. When you toggle     the currency in the batch to the base currency, the debit total becomes equal to the credit total because in     this mode all the amounts are reflected in the base currency. 

- In the records with the denominated accounts specified in the lines, the debit and credit amounts are     shown in the currency of denomination. In all other records in the table, the debit and credit amounts are     shown in the base currency. 


<!-- PAGE_BREAK -->
 Migrating Master Records | 20 

## Migrating Master Records 

 In this chapter, you will learn how to import business accounts and non-stock items into the system by using predefined import scenarios. 

### Migration of Master Records: General Information 

 You import master records from the old system with their IDs that were exported from the old system. For customers and vendors, you can then enable auto-numbering so that new vendor and customer accounts will automatically get new IDs from the specified sequence. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Prepare import scenarios and data to be uploaded 

- Import customers to the system 

- Import vendors to the system 

- Import non-stock items to the system 

- Enable auto-numeration for the master records 

#### Applicable Scenarios 

 You migrate master records from a legacy system before you start to use Acumatica ERP as an ERP system. 

#### Import of Master Records 

 You can review the predefined import scenarios on the Import Scenarios (SM206025) form and update them according to the needs of the company being migrated. To import master records into the system, the following predefined import scenarios are provided with the system: 

- The _ACU Import Customers_ import scenario, which is used to import customer records to the _Customers_     (AR303000) form. 

 Customer locations are excluded from the data template provided for this import scenario. We strongly recommend that you import customer locations separately from the main customer data by using the ACU Import Customer Locations import scenario. 

- The _ACU Import Vendors_ import scenario, which is used to import vendor records to the _Vendors_ (AP303000)     form. 

 Vendor locations are excluded from the data template provided for this import scenario. We strongly recommend that you import vendor locations separately from the main vendor data by using the ACU Import Vendor Locations import scenario. 

#### Auto-Numbering of the Master Records 

 If in the previous system, the master records (vendors, customer, or inventory items) were auto-numbered, you may want to keep the original IDs from the legacy system and continue the numeration in the newly implemented 


<!-- PAGE_BREAK -->
 Migrating Master Records | 21 

 system by using the established format. To keep the original identifiers, you need to disable the auto-numbering of particular types of records before the import. 

 Aer the records are imported, you enable auto-numbering and configure the numbering sequence to start with the number that follows the last imported record identifier. For example, to enable the auto-numbering of vendor records, you perform the following general steps: 

1. On the _Numbering Sequences_ (CS201010) form, you create the numbering sequence for numbering of     vendors (for example, _VENDORNUM_ ). 

2. In the Summary area of the form, you make sure that the **Manual Numbering** check box is cleared to enable     the auto-numbering of vendor records. In the only row of the table, you specify the ID of the last imported     vendor in the **Last Number** column and save your changes. 

3. On the _Segmented Keys_ (CS202000) form, you select the _VENDOR_ segmented key. You review the structure of     the segmented key to make sure that the key has the needed length and edit mask. Also, you make sure that     _VENDORNUM_ is selected in the **Numbering ID** box. 

4. In the only row of the table, you select the check box in the **Auto Number** column.     As new vendor records are created, their numeration will proceed starting from the next ID according to the     settings of the numbering sequence. 

 For the customer records, you perform the same sequence of steps with the CUSTOMER segmented key and CUSTNUM numbering sequence, respectively. 

 For more information about numbering sequences and segmented keys, see Managing Segmented Keys. 

#### Import of Inventory Items 

 To simplify the process of importing stock and non-stock items, you can use item classes. Item classes are available in the system if the Inventory feature is enabled on the Enable/Disable Features (CS100000) form. In an item class, you predefine common item settings, such as the valuation method, the base unit of measure, and the posting class. You can plan item classes so that they contain the maximum possible settings for the groups of similar inventory items. 

 You then include the item class of each item among the settings to be imported for a non-stock item or stock item. When each item is imported, the system uses the settings specified for the item class to fill in the corresponding elements on the Stock Items (IN202500) or Non-Stock Items (IN202000) form. You can then specify a small number of settings to be inserted by an import scenario for each imported item, because the rest of the settings have been automatically inserted based on the item classes. 

### Migration of Master Records: To Import Master Records 

 The following activity will walk you through the process of importing master records to Acumatica ERP. 

 This activity is based on the U100 Basic Company dataset. If you are using another dataset, or if any system settings have been changed in U100 Basic Company , these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the U100 Basic Company dataset to its initial state. 

#### Story 

 Suppose that you are an implementation consultant of the SweetLife Fruits & Jams company, and you will be performing data migration from the legacy ERP system to Acumatica ERP. You have configured the tenant, 


<!-- PAGE_BREAK -->
 Migrating Master Records | 22 

 activated the license, and performed the basic financial configuration so that the system is ready for data migration. Now you need to import the following master records: vendors, customers, and non-stock items. 

#### Configuration Overview 

 In the U100 Basic Company dataset, the following tasks have been performed for the purposes of this activity: 

- On the _Enable/Disable Features_ (CS100000) form, the minimum set of financial features has been enabled. 

- On the _Companies_ (CS101500) form, the SweetLife company without branches has been configured by     performing the steps described in _Company Without Branches: To Configure a Company Without Branches_. 

- On multiple forms, the required financial configuration has been performed, as described in the     _Implementing Basic Financials_ chapter of the Implementation Guide. 

- On the _Vendor Classes_ (AP201000) form, the _DEFAULT_ vendor class has been created. 

- On the _Customer Classes_ (AR201000) form, the _DEFAULT_ customer class has been created. 

#### Process Overview 

 On the Import by Scenario (SM206036) form, you will import vendors by using a predefined import scenario. During the import, you will correct the errors that have occurred in the data being imported. Then you will review the list of imported vendors on the Vendors (AP3030PL) list of records and make sure that all records are presented. 

 Aer that, you will import customers by using the predefined import scenario and review the list of customers on the Customer (AR3030PL) list of records. Finally, you will import the non-stock items by using an import scenario provided with the course and review the results of the import on the Non-Stock Items (IN2020PL) list of records. 

#### System Preparation 

 To prepare to perform the instructions of this activity, do the following: 

1. Launch the Acumatica ERP website with the _U100 Basic Company_ dataset preloaded. 

2. Sign in to the system by using the _gibbs_ username and the _123_ password. 

3. Download the SweetLifeCustomersList.xlsx, SweetLifeVendorsList.xlsx, and     SweetLifeNonStockItemsList.xlsx files, which are supplied with the course. 

 For training purposes, a few errors were intentionally made in the SweetLifeVendorsList.xlsx file so that you can gain experience correcting data. 

#### Step 1: Importing Vendors 

 To import vendors into the system, do the following: 

1. On the _Import by Scenario_ (SM206036) form, select the _ACU Import Vendors_ scenario. 

2. On the More menu, click **Upload File Version**. The **Upload New Revision** dialog box opens. 

3. In the dialog box, click **Choose File** , select the SweetLifeVendorsList.xlsx file and click **Upload**.     The system uploads the file and closes the dialog box. 

4. On the form toolbar, click **Prepare** to upload the data from the file. 

 Before you import data into the system, you can review the uploaded data on the Prepared Data tab and change any value. 

5. On the form toolbar, click **Import** to import the vendor records listed on the **Prepared Data** tab into the     system. For the imported rows, the system selects the check box in the **Processed** column. For the rows that 


<!-- PAGE_BREAK -->
 Migrating Master Records | 23 

 the system was unable to import, the Processed check box is cleared, and the system shows an exception in the Error column. 

6. To correct errors in the prepared data in the table, do the following: 

 a. In the line with the 4 line number, enter DEFAULT in the Vendor Class column (because this is the only predefined vendor class currently available in the system). Save your changes. 

 The system will continue to display an error next to the column until you complete the next step of these instructions, which is to initiate error clearing. 

 b. In the line numbered 14 , enter CASH in the Payment Method column (because this is the payment method that should be used). Save your changes. 

 Aer correcting a value, you must click Save before running the import process. Otherwise, the changes to the prepared data will not be saved, and the system will attempt to import the old value. 

7. On the table toolbar, click **Clear Errors**. 

8. Save your changes. 

9. On the form toolbar, click **Import** to retry the import. 

 The system will upload the rest of the records that have not been processed yet (that is, those with the Active check box selected and the Processed check box cleared). 

10.On the Vendors (AP3030PL) list of records, review the list of the uploaded vendor records. Make sure that the table footer indicates that 22 vendor records are available in the table, which means that all vendors have been imported successfully. The vendors have been imported with their IDs from the legacy system (as shown in the following screenshot). 


<!-- PAGE_BREAK -->
 Migrating Master Records | 24 

 Figure: The imported vendors 

 The vendors' balances have not yet been initialized in the system. The first vendor document that you create or import into the system for each vendor initializes the vendor balance, and aer that, the vendor appears on inquiries and in reports. 

#### Step 2: Importing Customers 

 To import customers into the system, do the following: 

1. On the _Import by Scenario_ (SM206036) form, select the _ACU Import Customers_ scenario. 

2. On the More menu, click **Upload File Version**. The **Upload New Revision** dialog box opens. 

3. In the dialog box, click **Choose File** , select the SweetLifeCustomersList.xlsx file, and click **Upload**.     The system uploads the file and closes the dialog box. 

4. On the form toolbar, click **Prepare** to upload the data from the file. 

5. On the form toolbar, click **Import** to import the customer records from the table on the **Prepared Data** tab     into the system. The system uploads all the records. For the imported rows, on the **Prepared Data** tab, the     system selects the check box in the **Processed** column. 

6. On the Customers (AR3030PL) list of records, review the list of uploaded customer records. Make sure     that the table footer indicates that 22 customer records are available in the table, which means that all     customers have been imported successfully. The customer have been imported with their IDs from the     legacy system (as shown in the following screenshot). 


<!-- PAGE_BREAK -->
 Migrating Master Records | 25 

 Figure: The imported customers 

 The customers' balances have not yet been initialized in the system. The first customer document that you create or import into the system for each customer initializes the customer balance, and aer that, the customer appears on inquiries and in reports. 

#### Step 3: Importing Non-Stock Items 

 To import non-stock items into the system, do the following: 

1. On the _Import by Scenario_ (SM206036) form, select the _DM Import Non-Stock Items_ import scenario. 

2. On the More menu, click **Upload File Version**. The **Upload New Revision** dialog box opens. 

3. In the dialog box, click **Choose File** , select the SweetLifeNonStockItemsList.xlsx file, and click     **Upload**. The system uploads the file and closes the dialog box. 

4. On the form toolbar, click **Prepare** to upload the data from the file. 

5. On the form toolbar, click **Import** to import the non-stock item records from the table on the **Prepared Data**     tab into the system. The system will upload all the records. For the imported rows, on the **Prepared Data**     tab, the system selects the check box in the **Processed** column. 

6. On the Non-Stock Items (IN2020PL) list of records, review the list of uploaded non-stock item records and     make sure that all items have been imported. Make sure that the table footer shows that 29 records are 


<!-- PAGE_BREAK -->
 Migrating Master Records | 26 

 available in the table, which means that all non-stock items have been imported successfully. The non-stock items have been imported with their IDs from the legacy system (as shown in the following screenshot). 

 Figure: The imported non-stock items 

You have finished importing master records. 


<!-- PAGE_BREAK -->
 Migrating Financial Documents | 27 

## Migrating Financial Documents 

 This chapter explains how you can migrate accounts payable and accounts receivable documents using the predefined import scenarios. 

### Migration of Financial Documents: General Information 

 When migrating company data from a legacy system to Acumatica ERP, you need to import into the system accounts payable and accounts receivable documents; these documents may have already been settled in full or partially. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Prepare AP and AR documents for import 

- Activate migration mode for the accounts payable and accounts receivable subledgers 

- Import AP document in migration mode by using predefined import scenarios 

- Import AR documents in migration mode by using predefined import scenarios 

#### Applicable Scenarios 

 You import financial documents from a legacy system before you start to use Acumatica ERP as an ERP system to keep the history of documents and continue processing open documents in the new system. To import the documents without affecting the balances of general ledger accounts, you use data migration mode. 

#### Preparation of Documents for Import 

 Before you start the migration process in Acumatica ERP, you need to prepare the list of all accounts receivable and accounts payable documents that you want to migrate to the system. This list can contain both outstanding and closed documents (the ones that have been already settled in full but you want to keep them in the new system as well for audit purposes). For each document, you need to specify its original amount, document date, document line details, and the unpaid balance on the migration date. If the open balance of a document is 0 , the document will be assigned the Closed status aer you release it. 

 If an open balance is not specified for a document in the import file, then the system will set this balance to 0 ; on release, the document will get the Closed status. 

#### Import of Accounts Receivable Documents 

 To load AR documents without affecting the general ledger, you have to first activate migration mode for the accounts receivable subledger. To turn on migration mode for the AR subledger, you select the Activate Migration Mode check box on the General tab of the Accounts Receivable Preferences (AR101000) form and save your changes. 

 If migration mode has been activated, the system does not support automatic application of payments to outstanding documents. Also, you cannot create pay-by-line documents in migration mode. 


<!-- PAGE_BREAK -->
 Migrating Financial Documents | 28 

 In migration mode, you import the needed documents with the Balanced status. The following types of accounts receivable documents can be entered in migration mode: 

- Invoices, debit memos, and credit memos entered by using the _Invoices and Memos_ (AR301000) form 

- Payments, prepayments, and refunds entered by using the _Payments and Applications_ (AR302000) form 

- Cash sales and cash returns entered by using the _Cash Sales_ (AR304000) form The documents created in migration mode can be edited and released only when migration mode is activated. You can mass-release the imported documents on the _Release AR Documents_ (AR501000) form. When the documents are released in migration mode, these documents update the customer balances only; they do not update GL account balances. Aer you have finished the import and released the imported AR documents, you deactivate migration mode. 

#### Import of Accounts Payable Documents 

 To load AP documents without affecting the general ledger, you have to first activate migration mode for the accounts payable subledger. To turn on migration mode for the AP subledger, you select the Activate Migration Mode check box on the General tab of the Accounts Payable Preferences (AP101000) form and save your changes. 

 In migration mode, you import the needed documents with the Balanced status. The following types of accounts payable documents can be entered in migration mode: 

- Bills, debit adjustments, and credit adjustments created by using the _Bills and Adjustments_ (AP301000) form. 

- Payments, prepayments, and refunds created by using the _Checks and Payments_ (AP302000) form.     You cannot create payments and refunds with open balances in migration mode. Thus, you will not be able     to apply other documents to these migrated payments. When you create a payment in migration mode,     this document will have the _Closed_ status and will affect the vendor's balance. If you need to enter an AP     payment with an application in migration mode, you should use the _Prepayment_ document type. 

- Cash purchases and cash returns created by using the _Cash Purchases_ (AP304000) form. The documents created in migration mode can be edited and released only when migration mode is activated. You can mass-release the imported documents on the _Release AR Documents_ (AR501000) form. When the documents are released in migration mode, these migrated documents update vendor balances only; they do not update GL account balances. Aer you have finished the import and released the imported AP documents, you deactivate migration mode. 

 When you upload taxable documents in migration mode, the taxes calculated for the migrated documents will be included in the tax reports for the corresponding tax periods. If you have already submitted tax reports for a period, clear the Automatically Generate Tax Bill check box on the Tax Agency Settings tab of the Vendors (AP303000) form for the tax agency before you release the tax reports for this period. 

### Migration of Financial Documents: To Import AP Documents 

 The following activity will walk you through the process of importing AP documents to Acumatica ERP. 

 This activity is based on the U100 Basic Company dataset. If you are using another dataset, or if any system settings have been changed in U100 Basic Company , these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the U100 Basic Company dataset to its initial state. 


<!-- PAGE_BREAK -->
 Migrating Financial Documents | 29 

#### Story 

 Suppose that you are an implementation consultant of the SweetLife Fruits & Jams company, and you are performing data migration from the legacy ERP system to Acumatica ERP. You have imported the following master records: customer, vendors, and non-stock items. 

 Now you need to import accounts payable documents. Specifically, you will import open and closed bills, along with prepayments with an open balance. 

#### Configuration Overview 

 In the U100 Basic Company dataset, the following tasks have been performed for the purposes of this activity: 

- On the _Enable/Disable Features_ (CS100000) form, the minimum set of financial features has been enabled. 

- On the _Companies_ (CS101500) form, the SweetLife company without branches has been configured by     performing the steps described in _Company Without Branches: To Configure a Company Without Branches_. 

- On multiple forms, the required financial configuration has been performed, as described in the     _Implementing Basic Financials_ chapter of the Implementation Guide. 

#### Process Overview 

 You will review the Excel file with the open and closed bills to be imported. On the Import by Scenario (SM206036) form, you will import the prepared bills. You will release the imported bills on the Bills and Adjustments (AP301000) and Release AP Documents (AP501000) forms. 

 Aer that, you will review the Excel file with the prepayments to be imported. You will import prepayments on the Import by Scenario form. You will release the imported prepayments on the Checks and Payments (AP302000) and the Release AP Documents forms. Aer all documents have been imported, you will verify imported vendor balances on the Vendor Summary (AP401000) inquiry form. Finally, you will deactivate migration mode for the AP subledger on the Accounts Payable Preferences (AP101000) form. 

#### System Preparation 

 To prepare to perform the instructions of this activity, do the following: 

1. Download the SweetLifeAPDocumentLines.xlsx and SweetLifeAPPrepayments.xlsx files     provided with the course. 

2. As a prerequisite activity, complete _Migration of Master Records: To Import Master Records_ to import non-     stock items and vendors into the system. 

3. In the **Posting Settings** section on the **General** tab of the _Accounts Payable Preferences_ (AP101000) form,     select the **Activate Migration Mode** check box. 

4. In the **Data Entry Settings** section on the same tab, make sure that the **Validate Document Totals on Entry**     check box is cleared. 

 This check box is generally selected to minimize errors during manual data entry of the documents received from vendors. You do not need to verify the control totals when importing the documents by using import scenarios. 

5. Save your changes. 

#### Step 1: Migrating AP Bills 

 To migrate AP bills, do the following: 


<!-- PAGE_BREAK -->
 Migrating Financial Documents | 30 

1. Open and review the SweetLifeAPDocumentLines.xlsx file, which contains the AP documents to     be imported. The file has one spreadsheet with the bill information required for the import scenario, which     includes the document type, vendor ID, date and post period of the document, document description, and     inventory ID (if applicable). Notice that the line amount is specified in the **Amount** column, while the open     balance is specified in the **Balance** column. The documents that have an open balance of _0_ will be closed on     release. 

2. On the _Import by Scenario_ (SM206036) form, select the _ACU Import AP Bills_ scenario. 

3. On the More menu, click **Upload File Version**. The **Upload New Revision** dialog box opens. 

4. In the dialog box, click **Choose File** , select the SweetLifeAPDocumentLines.xlsx file and click     **Upload**. The system uploads the file and closes the dialog box. 

5. On the form toolbar, click **Prepare** to upload the data from the file. 

6. On the form toolbar, click **Import** to import the document data listed on the **Prepared Data** tab into the     system; wait until the processing completes. On the Bills and Adjustments (AP3010PL) list of records, review     the uploaded records. Ensure that the table footer indicates that 69 records have been imported. 

7. On the _Bills and Adjustments_ (AP301000) form, open the imported bill with the _000042_ reference number and     review its details. The bill has the _Balanced_ status (see the screenshot below). The total amount of the bill     lines before deductions ($1,568.33) is shown in the **Detail Total** box of the Summary area. The open balance     of the bill is $0, which means that the bill will be closed on release. 

 You can review the amount of the document aer application of taxes and discounts in the Amount column on the Bills and Adjustments (AP3010PL) list of records. This amount will appear in the Summary area of the Bills and Adjustments (AP301000) form aer the bill release. 

 On the Financial tab, notice that the system has inserted the default payment method and cash account that are specified for the vendor selected in the bill (the CHECK payment method and the 10200WH cash account). Also, on the same tab, notice that MIGRATED is specified in the Batch Nbr. box, indicating that this document has been imported in migration mode. 


<!-- PAGE_BREAK -->
 Migrating Financial Documents | 31 

 Figure: The imported bill 

8. On the same form, open the bill with the _000068_ reference number and review its details. The **Detail Total** is     $1,255.00, while the open balance of the bill is $750.00. 

9. On the form toolbar, click **Release**. On release of the bill, the system assigns it the _Open_ status, as shown in     the following screenshot. On the **Applications** tab, review the application that the system has created to     record the partial payment of the bill. The amount of _505.00_ has been paid, while the balance of _750.00_ is     still open. On release of the bill, the system has updated the vendor balance without producing any general     ledger transactions. 

 Figure: The imported bill with the partially paid balance 


<!-- PAGE_BREAK -->
 Migrating Financial Documents | 32 

 The open balance of the imported bill is also shown in the Migrated Balance box on the Financial tab of the form. 

 10.On the form toolbar of the Release AP Documents (AP501000) form, click Release All to release the other imported bills at once. 

#### Step 2: Migrating Open AP Prepayments 

 To import the vendor prepayments with open balances, do the following: 

1. Open and review the SweetLifeAPPrepayments.xlsx file, which contains the open AP prepayments     to be imported. The file has one spreadsheet with the prepayment information required for the import     scenario, including the payment reference number, vendor, payment method, cash account, and payment     date and period. Notice that the prepayment amount is specified in the **Payment Amount** column, while     the open balance is specified in the **Unapplied Balance** column. 

 The payment reference number may be required for a payment method; if an imported prepayment does not have a payment reference number, the system will not be able to save it during import. 

2. On the _Import by Scenario_ (SM206036) form, select the _ACU Import AP Prepayments_ scenario. 

3. On the More menu, click **Upload File Version**. The **Upload New Revision** dialog box opens. 

4. In the dialog box, click **Choose File** , select the SweetLifeAPPrepayments.xlsx file, and click **Upload**.     The system uploads the file and closes the dialog box. 

5. On the form toolbar, click **Prepare** to upload the data from the file. 

6. On the form toolbar, click **Import** to import the document data from the **Prepared Data** tab into the system;     wait until the processing completes. You have imported six documents. 

7. On the _Checks and Payments_ (AP302000) form, open the imported prepayment with the _000003_ reference     number, and review its details. (See the following screenshot.) The prepayment has the _Balanced_ status.     Notice that on the **Financial** tab, _MIGRATED_ is shown in the **Batch Nbr.** box, which indicates that this     document has been imported in migration mode. In the Summary area, the **Unapplied Balance** box shows     the open balance of the prepayment, which is $300.50. The **Payment Amount** box shows the total amount     of the prepayment, which is $1,300.50. 


<!-- PAGE_BREAK -->
 Migrating Financial Documents | 33 

 Figure: The imported prepayment 

8. On the form toolbar of the _Release AP Documents_ (AP501000) form, click **Release All** to release all the     imported prepayments at once. 

#### Step 3: Reviewing Vendor Balances 

 To review how imported documents affected vendor balances, do the following: 

1. On the _Vendor Summary_ (AP401000) inquiry form, clear the **Vendors with Balance Only** check box, select     the 11-2024 financial period and review the list of vendors. The vendor balances have been initialized for     the vendors for which you have imported documents, as the **Ending Balance** and **Prepayment Balance**     columns indicate. In the Selection area, make sure that the total amount of the imported prepayments is     –$2,970.55 and the total vendor balance is $5,921.55. 

 Figure: Vendor balances in the 11-2024 period 


<!-- PAGE_BREAK -->
 Migrating Financial Documents | 34 

2. On the _Accounts Payable Preferences_ (AP101000) form, clear the **Activate Migration Mode** check box. You     are done migrating AP documents, so this mode no longer needs to be used. 

3. In the **Data Entry Settings** section, select the **Validate Document Totals on Entry** check box to make the     system require the control total to be entered for every manually entered AP document, such as bills, credit     adjustments, and debit adjustments. 

4. Save your changes to the form. 

 You have finished importing AP documents in migration mode. 

### Migration of Financial Documents: To Import AR Documents 

 The following activity will walk you through the process of importing AR documents to Acumatica ERP. 

 This activity is based on the U100 Basic Company dataset. If you are using another dataset, or if any system settings have been changed in U100 Basic Company , these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the U100 Basic Company dataset to its initial state. 

#### Story 

 Suppose that you are an implementation consultant of the SweetLife Fruits & Jams company, and you are performing data migration from the legacy ERP system to Acumatica ERP. You have imported the following master records: customers, vendors, and non-stock items. 

 Now you need to import accounts receivable documents: open and closed invoices, along with open and closed AR payments. Also suppose that you have decided to import all AR invoices with their original reference numbers and then continue numbering new invoices starting with the reference number that follows the number of the last imported document. 

#### Configuration Overview 

 In the U100 Basic Company dataset, the following tasks have been performed for the purposes of this activity: 

- On the _Enable/Disable Features_ (CS100000) form, the minimum set of financial features has been enabled. 

- On the _Companies_ (CS101500) form, the SweetLife company without branches has been configured by     performing the steps described in _Company Without Branches: To Configure a Company Without Branches_. 

- On multiple forms, the required financial configuration has been performed, as described in the     _Implementing Basic Financials_ chapter of the Implementation Guide. 

#### Process Overview 

 You will review the Excel file with the open and closed invoices to be imported. On the Import by Scenario (SM206036) form, you will import the prepared invoices. You will release the imported invoices on the Release AR Documents (AR501000) forms. Then on the Numbering Sequences (CS201010) form, you will update the settings of the numbering sequences for invoices so that they are numbered automatically. 

 Aer that, you will review the Excel file with the payments to be imported. You will import open and closed payments on the Import by Scenario form. You will release the imported payments on the Release AR Documents forms. Aer all documents are imported, you will review imported customer balances on the Customer Summary (AR401000) inquiry form. Finally, you will deactivate migration mode for the AR subledger on the Accounts Receivable Preferences form. 


<!-- PAGE_BREAK -->
 Migrating Financial Documents | 35 

#### System Preparation 

 To prepare to perform the instructions of this activity, do the following: 

1. Download the SweetLifeARInvoiceLines.xlsx and SweetLifeARPayments.xlsx files     provided with the course. 

2. As a prerequisite activity, complete _Migration of Master Records: To Import Master Records_ to import non-     stock items and customers into the system. 

3. On the _Accounts Receivable Preferences_ (AR101000) form, select the **Activate Migration Mode** check box. 

4. Save your changes. 

5. On the _Numbering Sequences_ (CS201010) form, select the _ARINVOICE_ numbering sequence.     The _ARINVOICE_ numbering sequence is specified for the auto-numbering of invoices on the _Accounts_     _Receivable Preferences_ form. 

6. In the Summary area, select the **Manual Numbering** check box. 

7. In the table, delete the only row with the subsequence from the table. 

8. Save your changes. With these settings, the documents will be imported with the reference number from     the legacy system. 

#### Step 1: Migrating AR Invoices 

 To import AR invoices into the system, do the following: 

1. Open and review the SweetLifeARInvoiceLines.xlsx file, which contains the AR documents to     be imported. The file has one spreadsheet with the invoice information that is required for the import     scenario, which includes the document type, customer ID, date and post period of the document, document     description, and inventory ID (if applicable). Notice that the line amount is specified in the **Ext. Price**     column, while the open balance of the document is specified in the **Balance** column. The documents that     have an open balance of _0_ will be closed on release. 

2. On the _Import by Scenario_ (SM206036) form, select the _ACU Import AR Invoices_ scenario. 

3. On the form toolbar, click **Upload File Version**. The **Upload New Revision** dialog box opens. 

4. In the dialog box, click **Choose File** , select the SweetLifeARInvoiceLines.xlsx file and click     **Upload**. The system uploads the file and closes the dialog box. 

5. On the form toolbar, click **Prepare** to upload the data from the file. 

6. On the form toolbar, click **Import** to import the documents listed on the **Prepared Data** tab into the system.     You have imported 33 invoices. 

7. On the _Invoices and Memos_ (AR301000) form, open the imported invoice with the _INV000006_ reference     number and review its details. (See the following screenshot.) The invoice has the _Balanced_ status. The total     amount of the invoice lines before deductions ($18,900.00) is shown in the **Detail Total** box of the Summary     area. The open balance of the invoice is $0, which means that the invoice will be closed when it is released.     Notice that on the **Financial** tab, _MIGRATED_ is shown in the **Batch Nbr.** box, which indicates that this     document has been imported in migration mode. 


<!-- PAGE_BREAK -->
 Migrating Financial Documents | 36 

 Figure: The imported AR invoice 

8. On the same form, open the invoice with the _INV000033_ reference number and review its details. The total     amount of the invoice in the **Detail Total** box of the Summary area is $23,400.00, while the open balance     of the invoice is $2,400. On release of the invoice, the system will assign it the _Open_ status and update the     customer balance without producing any general ledger transactions. 

9. On the form toolbar of the _Release AR Documents_ (AR501000) form, click **Release All** to release all the     imported documents at once.     You have finished importing invoices, so now you need to enable the auto-numbering of new invoices     starting from _INV000034_. 10.On the _Numbering Sequences_ (CS201010) form, select the _ARINVOICE_ numbering sequence. 11.In the table, add a row for a subsequence, and specify the following settings in the row: 

- **Start Number** : INV000001 

- **Last Number** : INV000033     The last number is the reference number of the last imported invoice. 12.In the Summary area, clear the **Manual Numbering** check box to enable auto-numbering. 13.Save your changes. 14.On the _Invoices and Memos_ form, click **Add New Row**. Make sure that _<NEW>_ is displayed in the **Reference Nbr.** box. This indicates that the next invoice will be automatically assigned a number based on the _ARINVOICE_ numbering sequence that you have configured. 

#### Step 2: Migrating AR Payments 

 To import the accounts receivable payments with open balances, proceed as follows: 

1. Open and review the SweetLifeARPayments.xlsx file, which contains the open and closed AR     payments to be imported. The file has one spreadsheet with the payment information that is required for     the import scenario, including the payment reference number, customer, payment method, cash account, 


<!-- PAGE_BREAK -->
 Migrating Financial Documents | 37 

 and payment date and period. Notice that the full payment amount is specified in the Payment Amount column, while the open payment balance is specified in the Available Balance column. 

2. On the _Import by Scenario_ (SM206036) form, select the _ACU Import AR Payments_ scenario. 

3. On the form toolbar, click **Upload File Version**. The **Upload New Revision** dialog box opens. 

4. In the dialog box, click **Choose File** , select the SweetLifeARPayments.xlsx file, and click **Upload**. The     system uploads the file and closes the dialog box. 

5. On the form toolbar, click **Prepare** to upload the data from the file. 

6. On the form toolbar, click **Import** to import the documents from the **Prepared Data** tab into the system. You     have imported 28 payments. 

7. On the _Payments and Applications_ (AR302000) form, open the payment with the _000026_ reference number     and review its details. (See the following screenshot.) The payment has the _Balanced_ status. The unapplied     balance of the payment in the **Available Balance** box of the Summary area is $0, which means that the     payment will be closed on release. The total amount of the payment ($13,000) is shown in the **Payment**     **Amount** box.     Notice that on the **Financial** tab, _MIGRATED_ is shown in the **Batch Nbr.** box, which indicates that this     document has been imported in migration mode. 

 Figure: The imported payment 

8. On the form toolbar of the _Release AR Documents_ (AR501000) form, click **Release All** to release all the     imported payments at once. 

#### Step 3: Reviewing Customer Balances 

 To review how imported documents affected customer balances, do the following: 

1. On the _Customer Summary_ (AR401000) inquiry form, select the 11-2024 financial period, clear the     **Customers with Balance Only** check box, and review the list of customers and customer balances that have     been initialized aer you imported the documents. In the Selection area, make sure that the total customer     balance is $18,200, as shown in the following screenshot. 


<!-- PAGE_BREAK -->
 Migrating Financial Documents | 38 

 Figure: Customer balances in the 11-2024 period 

2. On the _Accounts Receivable Preferences_ (AR101000) form, clear the **Activate Migration Mode** check box. You     are done migrating the AR documents, so this mode is no longer needed. 

3. Save your changes to the form. 

You have finished importing AR documents. 


<!-- PAGE_BREAK -->
 Importing Trial Balances | 39 

## Importing Trial Balances 

 This chapter describes how you migrate account balances from the legacy system using the trial balance import functionality. 

### Migration of Trial Balances: General Information 

 When migrating company data from a legacy system to Acumatica ERP, you import trial balances to the system to initialize the open balances of the general ledger accounts without migrating general ledger transactions for each historical period. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Prepare Acumatica ERP for importing trial balances 

- Prepare the trial balance to be imported 

- Import the trial balance 

- Review the generated general ledger transactions 

#### Applicable Scenarios 

 You import trial balances to migrate account balances to the system for each period and to be able to prepare accurate financial statements for the periods that precede migration to the new system. 

#### System Configuration Before Import of the Trial Balance 

 Before importing the trial balance, you need to choose the period to start keeping records in Acumatica ERP and decide for which periods you want to import the history of balances. We recommend that you import trial balances for at least a year to be able to produce comparative financial statements for the company later. For example, if you start using Acumatica ERP in 01-2025 , you should import the trial balance for the 2024 financial year. In the legacy system, you should prepare the data to be imported—that is, run the trial balance report for each period that you are going to import. 

 Depending on the way the account balances are presented in the legacy system, you select the Sign of the Trial Balance option on the General Ledger Preferences (GL102000) form as follows: 

- If the _Normal_ sign is selected for the trial balance representation in the system, then debit balances of asset     and expense accounts and credit balances of liability and income accounts are shown with the plus sign. 

- If the _Reversed_ sign is selected, then debit balances of asset and expense accounts are shown with the plus     sign, and credit balances of liability and income accounts are shown with the minus sign. You specify the sign of the trial balances based on the following equations: 

- If credit balances of liability and income accounts are presented with a plus sign, you select the _Normal_     option. Normal balances satisfy the following validation criterion: 

 Total Balance of (Asset Accounts + Expense Accounts) = Total Balance of (Income Accounts + Liability Accounts) 

- If the credit balances of liability and income accounts are presented with a minus sign, you select the     _Reversed_ option. Reversed credit balances, which are implemented in some applications, satisfy the     following validation criterion. 


<!-- PAGE_BREAK -->
 Importing Trial Balances | 40 

 Total Balance of (Asset Accounts + Expense Accounts) = – Total Balance of (Income Accounts + Liability Accounts) 

 This criterion can also be expressed as follows. 

 Total Balance of (Asset Accounts + Liability Accounts + Income Accounts + Expense Accounts) = 0 

 The Sign of the Trial Balance setting on the General Ledger Preferences form also affects the representation of the trial balance reports and inquiries. Aer you have finished the trial balance import, you may change the Sign of the Trial Balance option to have the needed representation of reports and inquires. 

#### Preparation and Editing of the File to Be Imported 

 You prepare the trial balances for each company or branch, considering the following rules: 

- If you are migrating data to a company whose type is _Without Branches_ , you import the trial balance for     entire company—that is, in the created trial balance entry, you select the company in the **Company/Branch**     box on the _Trial Balance_ form. 

- If you are migrating data to a company whose type is _With Branches Not Requiring Balancing_ , you import the     trial balance for entire company. In the created trial balance entry, you select the company in the **Company/**     **Branch** box on the _Trial Balance_ form. The prepared trial balance must contain account balances for all     company branches. 

- If you are migrating data to a company that has branches requiring balancing (that is, if the company type     is _With Branches Requiring Balancing_ ), in the created trial balance entry, you select an individual branch in     the **Company/Branch** box and import data to each branch separately. The prepared trial balances should     contain account balances for each of the company branches. From the legacy ERP soware, you should export the prepared trial balance data to a CSV file or to an Excel spreadsheet. The prepared file should include the following columns: 

- _Account_ : This column contains the numbers of the accounts whose balances will be imported. Do not     include the balance of the YTD Net Income account because it is calculated automatically from the imported     balances of income and expense accounts.     If you use subaccounts to record your financial data, the _Subaccount_ column is also required for import. For     more information about subaccounts, see _Subaccounts: General Information_. 

- _YTD Balance_ : The ending balance of the account-subaccount pair for the period in the base currency. For     this column, the _Currency_ or _Text_ format setting can be specified in the Excel file. You can specify normal     balances or reversed balances of accounts. 

- _Currency YTD Balance_ : The ending balance of the account-subaccount pair in the currency of denomination     specified for the account for the period. For this column, the _Currency_ or _Text_ format setting can be specified     in the Excel file.     This column is required if you plan to use multiple currencies—that is, if the _Multicurrency Accounting_ or     _Multiple Base Currencies_ feature is enabled on the _Enable/Disable Features_ form. 

 Make sure that you have specified the currency YTD Balance for the accounts denominated to a foreign currency. Otherwise, the balances in the account currency will be incorrect, and you will not be able to reconcile the account balances with the bank statements. 

 If the account is not denominated or is denominated to the base currency, the YTD Balance and Currency YTD Balance columns hold the same value. 

- _Description_ (optional): An optional description of the account that you can add for your convenience while     you work with the file. The description will not be uploaded to the system. 


<!-- PAGE_BREAK -->
 Importing Trial Balances | 41 

 You can include multiple columns with the balances for different financial periods in one file. 

#### Import of Trial Balances 

 If you are importing multiple trial balances, you have to import the trial balances one by one, from the earliest period to the latest one, because each subsequent general ledger batch is generated in the amount of the difference between the trial balance for the previous period and the current imported balance. 

 You import trial balances by performing the following operations: 

1. You import the trial balance and validate the imported data on the _Trial Balance_ (GL303010) form.     As a result of the validation process, the system maps the accounts (or account-subaccount pairs, if     applicable) of the trial balance to the internal accounts (or account-subaccount pairs, if applicable) in the     system. The system shows an error for the records that cannot be mapped during validation. 

2. Aer you complete the mapping and make sure the debit total and credit total are in balance, you release     the trial balance on the same form. 

3. You release the generated batch on the _Journal Transactions_ (GL301000) form. If the **Automatically Post**     **on Release** check box is cleared on the _General Ledger Preferences_ (GL102000) form, you also need to post     the generated batch on the _Post Transactions_ (GL502000) form. For details on processing batches, see _GL_     _Transactions: General Information_. On release and posting of the batch, the system does the following: 

- Updates the account balances to match those in the imported trial balance data 

- Sets to 0 the account balances for which no data was imported 

 If you are importing the trial balance in multiple currencies, the debit total may be not equal the credit total in the general ledger transaction generated on release of the trial balance. For more information, see Data Migration Process: Migrating Multicurrency Documents. 

4. You verify the imported balances by using the _Trial Balance Summary_ (GL632000) or _Trial Balance Detailed_     (GL632500) report. 

 If you have uploaded and released an incorrect trial balance or if you skip a period during import, an incorrect batch might be generated from the imported trial balance for the next period. You can delete the generated general ledger batch before it is released. If you have already released an incorrect batch, you can again import the correct trial balance so that the balances will be adjusted. 

5. You import the next trial balance by performing these same actions in the stated order. For each subsequent     trial balance, review the accounts listed on the **Exceptions** tab, if any. 

#### Review of the Exceptions Tab 

 Records on the Exceptions tab of the Trial Balance (GL303010) form do not reflect mistakes. When you import the second trial balances (or the first balance for the second time), the Exceptions tab shows the accounts that have a nonzero balance for the period in the system, but their balance for the currently selected period has not been uploaded from the file. (Each subsequent import works similarly.) 

 If accounts appear on the Exceptions tab, make sure the balance of these accounts is 0.00 for the period for which you are importing the trial balance. If the balance should be nonzero, verify the account balances in the Excel file from which you are importing the trial balance. If the Exceptions tab is empty, this means that all accounts that have a nonzero balance in the system for the period are listed on the Transaction Details tab for import. 

 On release of the trial balance, for each account listed on the Exceptions tab, the system generates a transaction that makes the account balance 0.00 for the period for which you are importing the trial balance. 


<!-- PAGE_BREAK -->
 Importing Trial Balances | 42 

### Migration of Trial Balances: To Import Trial Balances 

 The following activity will walk you through the process of importing trial balances into the system. 

 This activity is based on the U100 Basic Company dataset. If you are using another dataset, or if any system settings have been changed in U100 Basic Company , these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the U100 Basic Company dataset to its initial state. 

#### Story 

 Suppose that you are an implementation consultant who is performing data migration from the legacy system to Acumatica ERP. You have imported master records and historical documents. 

 Now you need to upload the actual balances of the general ledger accounts to the system. You have decided to upload the trial balances for the last two financial periods in which the company has operated in the legacy system (October and November 2024). 

#### Configuration Overview 

 In the U100 Basic Company dataset, the following tasks have been performed for the purposes of this activity: 

- On the _Enable/Disable Features_ (CS100000) form, the minimum set of financial features has been enabled. 

- On the _Companies_ (CS101500) form, the SweetLife company without branches has been configured by     performing the steps described in _Company Without Branches: To Configure a Company Without Branches_. 

- On multiple forms, the required financial configuration has been performed, as described in the     _Implementing Basic Financials_ chapter of the Implementation Guide, including the chart of accounts     uploaded on the _Chart of Accounts_ (GL202500) form. 

#### Process Overview 

 You will upload the company’s trial balance for October and November on the Trial Balance (GL303010) form. You will validate the trial balances, correct the error you find, and release the trial balances. Then you will review and release the generated GL transactions on the Journal Transactions (GL301000) form. On the Trial Balance Detailed (GL632500) form, you will prepare the trial balance report to verify the results of the import. 

#### System Preparation 

 To prepare to perform the instructions of this activity, do the following: 

1. As a prerequisite activity, complete _Migration of Financial Documents: To Import AR Documents_ and _Migration_     _of Financial Documents: To Import AP Documents_. 

2. Download the SweetLife_TrialBalance.xlsx file with the trial balances provided with the course. 

3. On the _General Ledger Preferences_ (GL102000) form, in the **Chart of Accounts Settings** section, make sure     the **Sign of the Trial Balance** option is set to _Normal_. 

 If the sign of the trial balance does not correspond to the option that is selected on the General Ledger Preferences form, aer you validate the trial balance, the Credit Total box will contain the value in the Debit Total box, but with the opposite sign. In this case, you need to change the Sign of the Trial Balance option value and upload the trial balance again. 


<!-- PAGE_BREAK -->
 Importing Trial Balances | 43 

#### Step 1: Importing the First Trial Balance 

 Import the trial balance for October 2024 by doing the following: 

1. On the _Trial Balance_ (GL303010) form, create a trial balance import entry and specify the following settings     in the Summary area: 

- **Import Date** : _10/31/2024_ 

- **Period** : _10-2024_ 

- **Description:** TB import 10-2024 

2. On the table toolbar of the **Transaction Details** tab, click **Load Records from File**. 

3. In the **File Upload** dialog box, which opens, click **Choose File** and select the     SweetLife_TrialBalance.xlsx file. Click **Upload**. 

4. In the **Common Settings** dialog box, which opens, leave the default settings, and click **OK**. 

5. In the **Columns** dialog box, map the source columns to the destination columns as follows: 

- **Account** to **Account** 

- **YTD Balance October** to **YTD Balance** 

6. Click **OK**. The system uploads the data from the file to the table. 

7. On the table toolbar of the **Transaction Details** tab, make sure that the _Validate_ action is selected, and click     **Process All** to validate all records at once. 

8. Find the line with an error, which has _Error_ in the **Status** column, and change the _44030_ account to _40300_.     Save your changes. 

9. Click **Process All** on the table toolbar to validate all records again. Aer all records have been validated     successfully, the **Debit Total** in the Summary area must be the same as the **Credit Total** ($1,041,106.86) so     that the trial balance can be released. 10.On the form toolbar, click **Remove Hold** to remove the trial balance entry from hold and then **Release** to     release the trial balance.     On release of the trial balance, the system generates a batch of general ledger transactions and opens it on     the _Journal Transactions_ (GL301000) form. The credit and debit totals, which are the totals of debit and credit     amounts for all transactions in the batch, are $1,041,106.86 (as shown in the following screenshot). 


<!-- PAGE_BREAK -->
 Importing Trial Balances | 44 

 Figure: General ledger transaction generated for the first trial balance 

 11.On the form toolbar, click Release to release the batch of GL transactions. 

#### Step 2: Importing the Second Trial Balance 

 Now you need to import the trial balance for November 2024 by doing the following: 

1. On the _Trial Balance_ (GL303010) form, create a trial balance entry and specify the following settings in the     Summary area: 

- **Import Date** : _11/30/2024_ 

- **Period** : _11-2024_ 

- **Description:** TB import 11-2024 

2. On the table toolbar of the **Transaction Details** tab, click **Load Records from File**. 

3. In the **File Upload** dialog box, again upload the SweetLife_TrialBalance.xlsx file and map the     source columns to the destination columns as follows: 

- **Account** to **Account** 

- **YTD Balance November** to **YTD Balance** 

4. In the line with the incorrect account, change the _44030_ account to _40300_. Save your changes. 

5. On the table toolbar of the **Transaction Details** tab, make sure that the _Validate_ action is selected and     click **Process All** to validate all records at once. Aer all records have been validated, the **Debit Total** in     the Summary area must be the same as the **Credit Total** ($1,087,746.29) so that the trial balance can be     released.     On the **Exceptions** tab, notice that there are no lines. This means that all accounts that have a nonzero     balance in the system for the period are listed on the **Transaction Details** tab for import. 


<!-- PAGE_BREAK -->
 Importing Trial Balances | 45 

6. On the form toolbar, click **Remove Hold** to remove the trial balance from hold and then **Release** to release     the trial balance. 

7. On the _Journal Transactions_ (GL301000) form that opens, review the batch generated on release of the trial     balance entry. Make sure that **Debit Total** and **Credit Total** in the Summary area contain _95,274.68_. Notice     that the debit and credit total of the generated batch are not equal to the debit and credit total of the trial     balance. For each account, the system calculates the difference between the balance in the system and     the balance being imported and debits or credits the account based on the sign of the difference and the     account type. 

8. On the form toolbar, click **Release** to release the GL transaction. 

9. On the _Trial Balance Detailed_ (GL632500) report form, specify _11-2024_ in the **From Period** and **To Period**     boxes. 10.On the report form toolbar, click **Run Report**.     The generated report (see the following screenshot) shows the normal balance representation of accounts.     The trial balance shows the balance of the _33000 (Net Income)_ account, which has been calculated based on     the imported data and is $275,011.60. The total YTD Net Income is included in the **Liability Total** ; therefore,     the **Assets Total** is equal to the **Liability Total** in the report. 

 Figure: Trial Balance Detailed report for 11-2024 

You have finished the import of trial balances into the system. 


<!-- PAGE_BREAK -->
 Reconciling Financial Balances | 46 

## Reconciling Financial Balances 

 This chapter explains how you reconcile the balances of GL accounts with the bank statements aer you finished migration of the financial data. 

### Balance Reconciliation: General Information 

 Aer you have imported data to the system, you need to reconcile the balances. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Identify which accounts should be reconciled aer data migration 

- Reconcile the balance of accounts aer data migration 

#### Applicable Scenarios 

 To verify the results of data migration and to ensure that data is complete and accurate and the system is ready to be used in a production environment, you need to make sure that the uploaded balances are the same as those in the legacy system. 

#### Reconciliation of Migrated Data 

 The process of reconciling the data migrated from a legacy system includes the following general steps: 

- You reconcile the accounts payable subledger with the general ledger.     For the last imported period, you compare the balances of the Accounts Payable account, according to the     trial balance, with the balance of this account based on the open accounts payable documents (bills and     prepayments) that you have imported. 

- You reconcile the accounts receivable subledger with the general ledger.     For the last imported period, you compare the balances of the Accounts Receivable account, according     to the trial balance, with the balance of this account based on the open accounts receivable documents     (invoices and payments) that you have imported. 

- You reconcile the fixed asset subledger with the general ledger (if the _Fixed Assets Management_ feature is in     use).     You need to compare the balances of the fixed assets and accumulated depreciation accounts, according to     the trial balance, with the records in the fixed asset subledger aer you have migrated the fixed assets data.     For more information, see _Migrating Fixed Assets_. 

- You reconcile the inventory subledger with the general ledger (if the _Inventory and Order Management_     feature is in use).     For the last imported period, you compare the balances of the Inventory account, according to the trial     balance, with the balance of this account based on the sales and purchase documents that you have     imported. 

 Migration of inventory is out of the scope of this course. 

 Also, you compare the account balances with the balances from the legacy system. 


<!-- PAGE_BREAK -->
 Reconciling Financial Balances | 47 

### Balance Reconciliation: To Reconcile Balances Aer Data Migration 

 The following activity will walk you through the process of reconciling account balances aer data import. 

 This activity is based on the U100 Basic Company dataset. If you are using another dataset, or if any system settings have been changed in U100 Basic Company , these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the U100 Basic Company dataset to its initial state. 

#### Story 

 Suppose that you are an implementation consultant, and you have finished data migration from the legacy system to Acumatica ERP. That is, you have imported vendors, customers, non-stock items, accounts payable documents, and accounts receivable documents. Also, you have imported trial balances. 

 Now you need to reconcile the balances of the accounts payable and accounts receivable subledgers with the balances of the corresponding GL accounts to make sure that the balances of imported documents match the account balances. 

#### Configuration Overview 

 In the U100 Basic Company dataset, the following tasks have been performed for the purposes of this activity: 

- On the _Enable/Disable Features_ (CS100000) form, the minimum set of financial features has been enabled. 

- On the _Companies_ (CS101500) form, the SweetLife company without branches has been configured by     performing the steps described in _Company Without Branches: To Configure a Company Without Branches_. 

- On multiple forms, the required financial configuration has been performed, as described in the     _Implementing Basic Financials_ chapter of the Implementation Guide. 

#### Process Overview 

 You will reconcile the balance of the Prepaid Expenses, Accounts Payable, and Accounts Receivable accounts by using the Trial Balance Summary (GL632000), AP Balance by GL Account (AP632000), and AR Balance by GL Account (AR632000) reports. 

#### System Preparation 

 As a prerequisite activity, complete Migration of Unreconciled Payments: To Import Payments and Reconcile a Cash Account. 

#### Step 1: Reconciling Accounts Payable with the General Ledger 

 To reconcile the AP balances, do the following: 

1. On the _Trial Balance Summary_ (GL632000) report form, specify the following report parameters: 

- **Ledger:** _ACTUAL_ 

- **From Period** : _11-2024_ 

- **To Period** : _11-2024_ 

2. On the report form toolbar, click **Run Report**. 


<!-- PAGE_BREAK -->
 Reconciling Financial Balances | 48 

 In the report, review the ending balances of the 13200 (Deposit to Vendor) and 20000 (Accounts Payable) accounts. The ending balance of the 20000 (Accounts Payable) account for the period is $5,921.55. The ending balance of the 13200 (Deposit to Vendor) account for the period is $2,970.55, as shown in the following screenshot. 

 Figure: AP account balances in the trial balance for 11-2024 

3. On the _AP Balance by GL Account_ (AP632000) report form, specify the following parameters: 

- **Report Format** : _Account Summary_ 

- **Financial Period** : _11-2024_ 

4. On the report form toolbar, click **Run Report**.     In the report, review the total balance of the open accounts payable documents that you have imported.     The total balance of the open documents posted to the _20000 (Accounts Payable)_ account for the period     is $5,921.55; the total balance of open documents posted to the _13200 (Deposit to Vendor)_ account for the     period is –$2,970.55. (See the following screenshot.) 

 Figure: The total balance of open AP bills and prepayments for 11-2024 

 The balances are equal to the balances of the accounts in the general ledger, and thus are reconciled. 

#### Step 2: Reconciling Accounts Receivable with the General Ledger 

 To reconcile the AR balances, do the following: 


<!-- PAGE_BREAK -->
 Reconciling Financial Balances | 49 

1. On the _Trial Balance Summary_ (GL632000) report form, specify the following report parameters: 

- **Ledger:** _ACTUAL_ 

- **From Period** : _11-2024_ 

- **To Period** : _11-2024_ 

2. On the report form toolbar, click **Run Report**.     In the report, review the balance of the _11000 (Accounts Receivable)_ account. The ending balance of this     account is $18,200.00. (See the following screenshot.) 

 Figure: AR account balances in the trial balance for 11-2024 

3. On the _AR Balance by GL Account_ (AR632000) report form, specify the following parameters: 

- **Report Format** : _Account Summary_ 

- **Financial Period** : _11-2024_ 

4. On the report form toolbar, click **Run Report**.     Review the total of open accounts receivable documents posted to the _11000 (Accounts Receivable)_ account.     This total balance is $18,200.00. (See the following screenshot.) 

 Figure: The total balance of open AR documents for 11-2024 

 The balance is equal to the balance of the account in the general ledger, and thus the balances are reconciled. 

You have finalized balance reconciliation and ensured that all data has been migrated correctly. 


<!-- PAGE_BREAK -->
 Importing Unreconciled Payments | 50 

## Importing Unreconciled Payments 

 This chapters explains how you import unreconciled payments and deposits in process to be able to perform bank reconciliation aer all financial data has been migrated. 

### Migration of Unreconciled Payments: General Information 

 If you are reconciling an account from a financial institution, you compare its statement to the transactions of the cash account as tracked in your system. Regular reconciliations can reduce the number of errors on accounts and make it easier to find overlooked transactions, such as missing payments or checks that have not been deposited or cashed. Aer the initial balances have been imported into the system, you need to import outstanding checks and deposits in progress and perform an initial reconciliation for the cash accounts. 

#### Learning Objectives 

 In this chapter, you will learn how to do the following: 

- Import the outstanding checks and deposits in transit into the system 

- Create a first reconciliation statement 

#### Applicable Scenarios 

 You import unreconciled payments during the data migration process to prepare the system for bank reconciliation to be performed before the beginning of Acumatica ERP usage. Then you match the balances in the company’s accounting records for a cash account to the corresponding information on a bank statement to perform the first bank reconciliation. 

#### Creation of GL Transaction with Unreconciled Payments 

 The initial balance of the cash accounts is imported into the system with the trial balance import procedure. When you import payments with open balances in migration mode, these payments affect neither cash account balances nor account balances in the general ledger. If you are planning to perform bank reconciliation, you must post general ledger transactions for all unreconciled checks and deposits so that these GL transactions posted to the bank account will be available for further reconciliation. 

 To create a journal transaction with the outstanding checks and the deposits in transit, you should add the following lines: 

- A line that credits the cash account with its GL balance 

- A line that debits the cash account with the cash account balance from the bank statement 

- A line or lines that credit the cash account with the outstanding checks 

- A line or lines that debit the cash account with the deposits in transit If you have added all outstanding checks and deposits in transit, in the resulting GL transaction, **Debit Total** must be equal to **Credit Total**. 

#### Steps of the Reconciliation Process 

 Reconciliation generally has the following goals: 

- To find discrepancies between account balances that have been tracked by different means (by your     company in Acumatica ERP, and by a third-party financial institution through its soware) 


<!-- PAGE_BREAK -->
 Importing Unreconciled Payments | 51 

- To identify any errors 

- To make the needed corrections or adjustments 

Aer you import the cash account balances and outstanding payments, you perform the first bank reconciliation in the system. In general, you perform the following steps when you reconcile a cash account: 

1. _Preparing for the reconciliation_ : During or aer each financial period, on the _Process Bank Transactions_     (CA306000) form, you clear transactions for the account as you receive information that the financial     institution has processed them. For details, see _Bank Reconciliation: Uploading and Processing of Bank_     _Transactions_. 

2. _Verifying the beginning balance of the cash account_ : At the end of the financial period, on the _Reconciliation_     _Statements_ (CA302000) form, you verify that the beginning balance of the cash account in Acumatica ERP     matches the beginning balance on the bank statement (or on your record of the petty cash account); if     they do not match, you void the earlier statement and fix all errors. Also, you can review unreconciled     transactions from previous financial periods and see which of them have been preliminarily cleared. 

 If a transaction has been matched to an entry on a bank statement on the Process Bank Transactions form, the Cleared check box is selected for the transaction on the Reconciliation Statements form. Also, a transaction is cleared if a user has selected the Cleared check box for it on the form where the transaction was entered. 

3. _Creating the reconciliation statement_ : You create a new reconciliation statement for the cash account on the     _Reconciliation Statements_ form and enter the statement balance—for instance, the ending balance from the     bank statement. 

4. _Clearing the transactions_ : If you have used the _Process Bank Transactions_ form to clear bank transactions, on     the _Reconciliation Statements_ form, you click the **Reconcile Processed** button on the table toolbar, and the     system selects the **Reconciled** check boxes in the table for all released documents that were processed on     the _Process Bank Transactions_ form.     If you have been manually clearing transactions during the financial period for which you have created the     reconciliation statement and are sure that the clearing is valid, you select the **Reconciled** check box for each     cleared transaction.     If no transactions have been cleared, by using a bank statement or other paper documents confirming     transactions, you compare the transactions to the lines of the bank statement by using transaction     identifiers, dates, and amounts. For each confirmed transaction, you select the **Reconciled** check box. 

 You can perform reconciliation in as many sessions as you need. You can save the reconciliation statement at any time to continue to work with it later. 

5. _Adjusting the cash account balance_ : As you progress through the list on the _Reconciliation Statements_ form,     you can view the updated value of the difference between the reconciled balance of the cash account and     the balance of the statement you have entered. You can create cash adjustments for transactions (such as     bank interest or service charges) that have occurred but were not recorded to the account in Acumatica ERP.     The reconciliation is finished when the difference between the reconciled balance of the cash account and     the balance of the statement is 0. 

6. _Confirming the reconciliation results_ : When you have finished comparing the cash account transactions to     a bank statement on the _Reconciliation Statements_ form and the reconciled balance of the cash account     is the same as the balance of the statement, you save the reconciliation statement. You can now release     the reconciliation statement, which confirms that the cash account balance is reconciled for the financial     period. 

 If you need to learn about bank reconciliation that is performed on a regular basis, see the topics of the Performing Bank Reconciliation chapter. 


<!-- PAGE_BREAK -->
 Importing Unreconciled Payments | 52 

### Migration of Unreconciled Payments: To Import Payments and Reconcile a Cash 

### Account 

 The following activity will walk you through the process of importing to Acumatica ERP unreconciled payments (outstanding checks or deposits in transit) and then reconciling the cash account balance. 

 This activity is based on the U100 Basic Company dataset. If you are using another dataset, or if any system settings have been changed in U100 Basic Company , these changes can affect the workflow of the activity and the results of the processing. To avoid any issues, restore the U100 Basic Company dataset to its initial state. 

#### Story 

 Suppose that on 11/30/2024, the accountant received a bank statement with an ending balance of $288,416.25 for the 10200WH checking account. The ending balance of the checking account for 11-2024 is $284,416.25. Aer the review of the bank statement dated 11/30/2024 , the accountant realized that the amounts of three outstanding checks are not included in the bank statement and that a deposit in transit has not yet arrived at the bank account. They will appear in the next bank statement, which the accountant will receive on 12/31/2024. 

 You need to create the transactions for currently unreconciled documents in the 10200WH cash account in the system and create the first reconciliation statement corresponding to the bank statement dated 11/30/2024. 

#### Configuration Overview 

 In the U100 Basic Company dataset, the following tasks have been performed for the purposes of this activity: 

- On the _Enable/Disable Features_ (CS100000) form, the minimum set of financial features has been enabled. 

- On the _Companies_ (CS101500) form, the SweetLife company without branches has been configured by     performing the steps described in _Company Without Branches: To Configure a Company Without Branches_. 

- On multiple forms, the required financial configuration has been performed, as described in the     _Implementing Basic Financials_ chapter of the Implementation Guide, including the creation of the _10200WH_     cash account on the _Cash Accounts_ (CA202000) form. 

 In the provided dataset, multiple cash accounts have been configured for the SweetLife company. For training purposes, you will perform the reconciliation procedure for only one cash account ( 10200WH ). 

#### Process Overview 

 You will review the prepared Excel file with the data. Then on the Journal Transactions (GL301000) form, you will create and release a GL transaction that represents the unreconciled payments. On the Reconciliation Statements (CA302000) form, you will create the first reconciliation statement for the checking account and reconcile its balance. 

#### System Preparation 

1. As a prerequisite activity, complete _Migration of Financial Documents: To Import AR Documents_ and _Migration_     _of Financial Documents: To Import AP Documents_. 


<!-- PAGE_BREAK -->
 Importing Unreconciled Payments | 53 

2. Download the SweetLifeUnreconciledTransactions.xlsx file with the list of unreconciled     transactions provided with the course. 

#### Step 1: Importing Outstanding Checks and Deposits 

 To create the needed batch of transactions for the outstanding checks and the deposit in transit, do the following: 

1. On the _Journal Transactions_ (GL301000) form, create a new transaction batch and specify the following     settings in the Summary area: 

- **Module** : _GL_ 

- **Transaction Date:** _11/30/2024_ 

- **Post Period:** _11-2024_ 

- **Description:** Unreconciled transactions for 10200WH as of 11/30/2024 

2. On the table toolbar, click **Load Records From File** and upload the transactions from the     SweetLifeUnreconciledTransactions.xlsx file. Make sure that the batch has the rows shown in     the following screenshot. 

 Figure: GL batch with unreconciled transactions 

3. In the Summary area, make sure the batch total (in the **Debit Total** and **Credit Total** boxes) is $295,416.25. 

4. On the form toolbar, click **Remove Hold** and then **Release**. 

5. On the _Cash Account Details_ (CA303000) form, select the _10200WH_ cash account, and specify start and end     dates of _11/1/2024_ and _11/30/2024_ , respectively. Review the transactions for the cash account and the date     range. (See the following screenshot.) 


<!-- PAGE_BREAK -->
 Importing Unreconciled Payments | 54 

 Figure: Transactions and balances of the 10200WH cash account 

6. Save your changes to the form. 

#### Step 2: Reconciling the Cash Account Balance with the Bank Statement 

 To create the reconciliation statement for the 10200WH cash account in the system for the November bank statement, do the following: 

1. On the _Reconciliation Statements_ (CA302000) form, create a reconciliation statement and specify the     following settings in the Summary area: 

- **Cash Account** : _10200WH_ 

- **Reconciliation Date** : _11/30/2024_ 

- **Load Documents Up To** : _11/30/2024_ 

- **Statement Balance** : 288,416.25 On this form, you reconcile the total amount of the transactions in the cash account in the system with the balance shown in the bank statement for this period. By selecting a transaction or multiple transactions in the table, you reconcile the total amount of the transactions for the _10200WH_ cash account in the system with the balance of the bank statement for 11/30/2024. 

2. In the table, select the **Reconciled** check box for the following rows: 

- The row with the 10/31/2024 date and the 235,205.51 amount in the **Receipt** column. This is the result of     the trial balance import for 10-2024. 

- The row with the 11/30/2024 date and the 49,210.74 amount in the **Receipt** column. This is the result of     the trial balance import for 11-2024. 

- The row with the 11/30/2024 date and the 284,416.25 amount in the **Disbursement** column. This is     the offset entry for the bank statement balance for 11-2024, which you have imported with the list of     unreconciled transactions. 

- The row with the 11/30/2024 date and the 288,416.25 amount in the **Receipt** column. This is the bank     statement balance for 11-2024, which you have imported with the list of unreconciled transactions. 

3. Make sure the **Cleared** check box is cleared for the other listed transactions (see the following screenshot).     These transactions are the outstanding checks and the deposit in transit that you have imported; they will     probably be available for reconciliation with the bank statement for December 2024. 


<!-- PAGE_BREAK -->
 Importing Unreconciled Payments | 55 

 Figure: First reconciliation statement 

4. Save your changes. 

5. On the form toolbar, click **Remove Hold** and then click **Release** to release the reconciliation statement. 

 If you find an error in the last released statement for a cash account, you can void this statement. This removes the reconciliation marks from the documents and makes the documents available again for proper reconciliation. 

6. On the _Reconciliation Statement_ (CA627000) report form, select _10200WH_ as the cash account and _000001_ (the     reference number of the reconciliation statement that you have just released) as the **Ref. Number**. 

7. Click **Run Report** on the report form toolbar. 

 As the following screenshot shows, the reconciled balance of the 10200WH cash account for the 11-2024 period is $284,416.25; this balance is the same as the account’s balance in the general ledger. Four GL transactions for the outstanding checks and deposits in transit that have not shown up in the bank statement (with the balance difference of –$4,000) still remain unreconciled and will most likely appear in the bank statement for the next period. 


<!-- PAGE_BREAK -->
 Importing Unreconciled Payments | 56 

 Figure: Reconciliation statement report for the 10200WH cash account 

You have imported unreconciled transactions for the cash account and reconciled its balance with the bank statement. 


<!-- PAGE_BREAK -->
 Appendix | 57 

## Appendix 

 The appendix provides some reference information relevant for this document. The additional information in this section is a useful source for readers who need some reference material that is related to system forms and tables, as well as running reports. 

 In this section: 

- _Reports_ 

- _Form Toolbar and More Menu_ 

- _Table Toolbar_ 

- _Glossary_ 

### Reports 

 In addition to offering a comprehensive collection of reports, Acumatica ERP gives you a high degree of control over each report. 

 On a typical report form, described in Report Form , you can adjust the report settings to meet your specific informational needs. You can specify sorting and filtering options and select the data by using report-specific settings—such as financial period, ledger, and account—and configure additional processing settings for each report. The settings can be saved as a report template for later use. For details, see To Run a Report and To Create a Report Template. 

 Aer you run a report, the prepared report appears on your screen. You can print the report, export the report to a file, or send the report by email. 

 This chapter describes a typical report form and the main tasks related to using reports. 

#### In This Chapter 

- _Report Form_ 

- _To Run a Report_ 

- _To Modify a Filter on a Report Form_ 

- _To Create a Report Template_ 

### Report Form 

 Before you run a report, you specify the needed parameters on the report form. You can select a template and manually make selections that affect the information collected. Also, you can specify appropriate settings to print or email the finished report. 

 The following screenshot shows a typical report form. 


<!-- PAGE_BREAK -->
 Appendix | 58 

 Figure: Report form 

1. Report form toolbar 

2. Selection area 

3. Details area 

#### Report Form Toolbar 

 The following table lists the buttons of the report form toolbar, which appears on the report form when you are configuring a report. 

 Button Description 

 Cancel Clears any changes you have made on the report form and restores the default settings. 

 Run Report Initiates data collection for the report and displays the generated report. 

 Save Template Gives you the ability to save the currently selected report as a template with all the selected settings. 

 Remove Template 

 Removes the previously saved template. 

 This button is available only when a template is specified on the report form. 

#### Report Toolbar 

 The following table lists the buttons of the report toolbar, which is shown on the generated report that you have run. 

 Buttons Icon Description 

 Parameters Navigates back to the report form to let you change the report parameters. 


<!-- PAGE_BREAK -->
 Appendix | 59 

 Buttons Icon Description 

 Refresh Refreshes the information displayed in the report (if any data changes were made). 

 Groups Adds to the report a le pane where the report structure is shown. Click a report node to highlight the pertinent data in the right pane. 

 View PDF / View HTML 

##### / 

 Displays the report as a PDF, or displays the report in HTML format. The available button depends on the current report view; if you're viewing a PDF, for instance, you will see the View HTML button. 

 First Displays the first page of the report. 

 Previous Displays the previous page. 

 Next Displays the next page. 

 Last Displays the last page of the report. 

 Print Opens the browser dialog box so you can print the report. 

 Send Opens the Email Activity dialog box, which you use to send the report file (in the selected format) to the specified email address. 

 Export Enables you to export the data in the selected format (Excel or PDF). 

#### Selection Area 

 You use the elements in this area to select an existing template, which you can share with other users or use as your default report settings. You can also select the locale and the localization. 

 The elements of this area, which are available for all reports, are described in the following table. 

 Element Description 

 Template The template to be used for the report. If any templates have been created and saved, you can select a template to use its settings for the report. 

 Default A check box that indicates (if selected) that the selected template is marked as the default one for you. A default template cannot be shared. 


<!-- PAGE_BREAK -->
 Appendix | 60 

 Element Description 

 Shared A check box that indicates (if selected) that the selected template is shared with other users. A shared template cannot be marked as the default. 

 Locale A locale that you select to indicate to the system that the report should be prepared with the data translated to the language associated with this locale. This box is displayed if there are multiple active locales in the system. For details, see Locales and Languages. 

 Localization The localization that is used for the report. 

 This box appears on the form if the following conditions are met: 

- The _Canadian Localization_ or _UK Localization_ feature is enabled on the _Enable/Disable_     _Features_ (CS100000) form. 

- A localized version of the report exists in the system. One of the following options can be selected in the box: 

- _None_ (default): Even though the report has a localized version, the report will be printed     without any localization applied. 

- _Canada_ : The Canadian version of the report will be printed. If the company in which you     are signed in has _Canada_ selected in the **Localization** box on the **Company Details** tab     ( **Configuration Settings** section) on the _Companies_ (CS101500) form, this setting is se-     lected by default in the current box. 

 To determine if a localized version of a report exists, the system checks the Site\ReportsDefault directory, the database, the ReportsCustomized folder, and the ReportsDefault folder. 

#### Report Parameters Tab 

 The Report Parameters tab has sections where you can specify the contents of the report depending on the current report and vary in the following regards: 

- Which elements are available on a particular report 

- Whether elements contain default values 

- Whether specific elements require values to be selected 

- Whether elements may be le blank to let you display a broader range of data 

#### Additional Sort and Filters Tab 

 The Additional Sort and Filter tab contains additional sorting and filtering conditions: 

- **Additional sorting conditions** : Defines the sorting order. You can add a line, select one of the report-     specific properties, and select the _Descending_ or _Ascending_ sort order for the column. 

- **Additional filtering conditions** : Defines the report filter. You can add a line, select one of the report-     specific properties, and define a condition and its value. The list of conditions include one-operand and     two-operand conditions. To create a more complicated logical expression, you can use brackets and logical     operations between brackets. For more information on creating filters, see _Managing Advanced Filters_. For     detailed procedures on using ad hoc filters, see _Reports: Process Activity_. 


<!-- PAGE_BREAK -->
 Appendix | 61 

#### Print and Email Settings Tab 

 If you plan to print the report or save the report as a PDF, select the appropriate settings in the Print Settings area. 

 Table: Print Settings Section 

 Element Description 

 Deleted Records Selects the visibility of the data deleted from the database. 

 Print All Pages Causes all pages of the report to be printed. 

 Print in PDF format Displays the report in PDF format. 

 Compress PDF file Indicates that the system will generate a compressed PDF. 

 Embed fonts in PDF file Indicates that the system will generate the PDF with fonts embedded. 

 If you plan to send the report as an email, in the Email Settings area, specify the format in which the report will be sent, as well as the email subject, the recipients of copies of the report, and the email account of the recipient. 

 Table: Email Settings Section 

 Field Description 

 Format The format ( HTML , PDF , or Excel ) in which the report will be emailed. 

 Merge function for reports in Excel format is not supported. If you want to merge a report with other reports and send an aggregated report by email, you should select either the HTML or PDF format for the report. 

 Email Account The email address of the recipient. 

 CC An additional addressee to receive a carbon copy (CC) of the email. 

 BCC The email address of a person to receive a blind carbon copy (BCC) of the email; an address entered in this box will be hidden from other recipients. 

 Subject The subject of the email. 

#### Report Versions Tab 

 If the report has multiple versions, you can select one of them. 

 This tab displays the data only to users assigned with report designer user role. 

 Report versions are designed in the Report Designer. To activate editing report versions, give the user report designer role. 

 Table: Report Versions Tab Toolbar 

 Button Description 

 Refresh Refreshes the list of report versions. 


<!-- PAGE_BREAK -->
 Appendix | 62 

 Button Description 

 Select Temporarily activates the selected report version. 

#### Email Notifications Tab 

 The Email Notifications tab lists the email templates used to send the report. 

 Table: Table Toolbar The table toolbar includes standard buttons and buttons that are specific to this table. For the list of standard buttons, see Table Toolbar. The table-specific buttons are listed below. 

 Button Description 

 Schedule Report Opens the Email Templates (SM204003) form, where you can select or create a new email template that can be used to send the report and specify a schedule for notifications. 

 The button appears only if the user account to which you are signed in has at least the Insert level of access rights to the Email Templates (SM204003) form. 

 Table: Table Columns 

 Column Description 

 Email Template The email template to be used to generate the body of the email notification. 

 Screen ID The identifier of the form whose elements are used as the source of specific placeholders for this template. 

 Recipients The email addresses of the people to receive the email. Use semicolons as separators between addresses. 

 Report Template The template configured for the report. 

 Report Template Owner 

 The name of the user who created the template. 

 Related Links 

- _To Run a Report_ 

- _To Create a Report Template_ 

- _Types of Filters_ 

- _Automation Schedule Statuses_ 

### Report 

 Once you click Run Report , the prepared report appears on your screen. You can print the report, export the report to a file, or send the report by email. 

 The prepared report is displayed in the report view of the report form. For more information about setting up the report parameters and the parameters view of the report form, see Report Form. 


<!-- PAGE_BREAK -->
 Appendix | 63 

#### Report Toolbar 

 The following table lists report toolbar buttons. 

 Buttons Icon Description 

 Parameters Navigates back to the report form to let you change the report parameters. 

 Refresh Refreshes the information displayed in the report (if any data changes were made). 

 Groups Adds to the report a le pane where the report structure is shown. Click a report node to highlight the pertinent data in the right pane. 

 View PDF / View HTML 

##### / 

 Displays the report as a PDF, or displays the report in HTML format. The available button depends on the current report view; if you're viewing a PDF, for instance, you will see the View HTML button. 

 First Displays the first page of the report. 

 Previous Displays the previous page. 

 Next Displays the next page. 

 Last Displays the last page of the report. 

 Print Opens the browser dialog box so you can print the report. 

 Send Opens the Email Activity dialog box, which you use to send the report file (in the chosen format) to the specified email address. 

 Export Enables you to export the data in the chosen format (Excel or PDF). 

 Related Links 

- _Filters_ 

- _Report_ 


<!-- PAGE_BREAK -->
 Appendix | 64 

### Form Toolbar and More Menu 

 The form toolbar, which is available on most forms, is located near the top of the form, under the form name (and record title, if the form has one), as shown in the following screenshot. 

 The form toolbar includes the following: 

- Standard buttons (see Item 1 in the following screenshot), with the particular set of buttons depending on     the specific form 

- On some forms, form-specific buttons (Item 2) 

- On some form, the More button (Item 3); clicking this button opens the More menu (Item 4), which contains     additional form-specific commands 

 Figure: The form toolbar and the More menu 

 You use the standard buttons on the form toolbar to navigate through entities that were created by using the current form, insert or delete an entity, use the clipboard, save the data you have entered, or cancel your work on the form. 

 A form toolbar on a particular form may include form-specific buttons in addition to standard buttons; it may also (or instead) include commands on the More menu. By using these form-specific buttons and commands, users can navigate to related records and forms, initiate specific actions, and perform modifications or processing related to the functionality of the form. 

#### Standard Form Toolbar Buttons 

 The following table lists the standard buttons of the form toolbar. A form toolbar may include some or all of these buttons. 


<!-- PAGE_BREAK -->
 Appendix | 65 

**_Table: Standard Form Toolbar Buttons_** 

 Button Icon Description 

 Discard Changes and Close 

 Discards any unsaved changes made to the entity, and navigates to the list of records that is related to the current form. 

 If the system opened the current form in a pop-up window (from a different form), this button is not displayed. To return to the original form, click Close. 

 Save & Close Saves the changes made to the entity, and navigates to the list of records that is related to the current form. 

 Save Saves the changes made to the entity. 

 Cancel Depending on the context, does one of the following: 

- Discards any unsaved changes you have made to entities and retrieves the     last saved version. 

- Clears all changes and restores the default settings. 

 Add New Record Clears any values you've specified on the form, restores any default values, and initiates the creation of a new entity. 

 Delete Deletes the currently selected entity, clears any values you have specified on the form, and populates elements with the default values that the system inserts when a new entity is created. 

 You can delete an entity only if it is not linked with another entity. 

 Archive Archives the document that is opened on the form. This button is available if archival is set up on the Archival Policy (SM200400) form for the type of the document open on the form and if the document meets the archival criteria—that is, if the document is older than the retention period specified on the Archival Policy form and has been processed to completion or canceled. 

 For more information on archiving the documents, see Archiving Old Documents in the Acumatica ERP System Administration guide. 

 Extract Extracts the archived document from the archive and makes the system use this document in day-to-day operations. This button is available if archival is set up on the Archival Policy (SM200400) form for the type of the document opened on the form is archived. 

 For more information on archiving the documents, see Archiving Old Documents in the Acumatica ERP System Administration guide. 


<!-- PAGE_BREAK -->
 Appendix | 66 

 Button Icon Description 

 Clipboard Provides menu commands you can use to do the following: 

- **Copy** : Copy the selected entity to the clipboard. 

- **Paste** : Paste an entity or template from the clipboard. 

- **Save as Template** : Create a template based on the selected entity. 

- **Import from XML** : Import an entity or a template from an .xml file. 

- **Export to XML** : Export the selected entity to an .xml file. For more information on templates and copy-and-paste operations in Acumatica ERP, see _Using Forms_. For more information on importing and ex- porting .xml files, see _Importing and Exporting Data to Excel and XML_ in the Acumatica ERP User Guide. 

 Go to First Record Displays the first entity (in the list of entities of the specific type) and its details. 

 Go to Previous Record 

 Displays the previous entity and its details. 

 Go to Next Record Displays the next entity and its details. 

 Go to Last Record Displays the last entity (in the list of entities of the specific type) and its details. 

 View Schedule Gives you the ability to schedule the processing. For more information, see Automated Processing: General Information. 

#### Inquiry Form Toolbar Buttons 

 Acumatica ERP inquiry forms present data in a tabular format; they may also have selection criteria you can use to filter the data in the table. Predefined inquiry forms are provided as part of Acumatica ERP out of the box, and inquiry forms can be designed by a user with the appropriate access rights by using the Generic Inquiry tool (for details, see Managing Generic Inquiries in the Acumatica ERP Reporting Tools Guide). A form toolbar of an inquiry form contains both the standard form toolbar buttons (described in the table above) and the additional buttons described below. 

 Button Icon Description 

 Refresh Refreshes the inquiry data in the table. 

 Cancel Clears all changes (including selection criteria that has been specified, if the generic inquiry form has this criteria) and restores the default settings. 


<!-- PAGE_BREAK -->
 Appendix | 67 

 Button Icon Description 

 Add New Record Initiates the creation of a new entity. 

 Edit Opens the applicable data entry form with the selected record. 

 Fit to Screen Expands the form to fit on the screen and adjusts the column widths proportionally. 

 Export to Excel Exports the data to an Excel file. For more information, see Integration with Excel in the Acumatica ERP Getting Started Guide. 

 Filter Settings Opens the Filter Settings dialog box, which you can use to define a new filter. After the filter has been created and saved, the corresponding tab appears on the table. For more information about filtering, see Filters. 

#### The More Menu and Form-Specific Buttons 

 If there are multiple form-specific commands on the form toolbar, they are displayed on a single menu—the More menu—and listed under descriptive categories, which makes it easier to find the needed menu command. On the More menu, you can easily define your favorite menu commands, which eases access to them. 

 On some forms, the system places a button (which is highlighted in green) on the form toolbar for the expected next command, which represents the likely next step to be performed on the selected record. The following screenshot, which shows the Cash Transactions (CA304000) form, illustrates an example of the form toolbar and the More menu, which contains categories and menu commands. 

 Figure: The form toolbar of the Transactions form 

 The numbered items in the screenshot indicate the following: 

1. A highlighted button for the expected next command, which represents the next logical step to be     performed on the record selected on the form 

2. Another button for a command that is commonly performed on the form 

3. The More button, which you click to open the More menu 


<!-- PAGE_BREAK -->
 Appendix | 68 

4. The More menu with most form-specific menu commands and descriptive categories on it 

5. The star icon, which is used to mark the individual user's favorite commands on the form 

6. An unavailable command 

#### Favorite Commands 

 Based on your role in the company and your job duties, you may use some commands more oen than others. On the form toolbar, you can specify these commands as favorites. This will cause the system to duplicate the commands as form toolbar buttons, easing access to them. 

 To add a command to the form toolbar as a button, you open the More menu, hover over the needed command, and click the star icon when it appears. The yellow color of the star indicates that the command has been added to your favorites, and a button for the command appears on the form toolbar immediately. The following example shows two commands that have been added to the user's favorites on the Invoices and Memos (AR301000) form and thus added as buttons on the form toolbar. 

 Figure: Favorite commands on the More menu and the corresponding toolbar buttons 

 Favorites are individual to each user account, specific to a particular form, and preserved across user sessions. 

#### Highlighted Buttons and Commands 

 On some forms, the system applies predefined logic to commands for specific records. Based on this logic, the system may place a button on the form toolbar, highlight it using some color, or do both of these things. 

 If a command is the expected next command (that is, the command that is most likely to be clicked for a record with the current status), it is shown both on the form toolbar and on the More menu. The primary command on the form toolbar is highlighted in green (see Item 1 in the following screenshot), and on the More menu, it is marked with a green dot (Item 2). Below is an example of a cash transaction on the Cash Transactions (CA304000) form that has the On Hold status (Item 3). Before you can process it, you need to remove it from hold. Because Remove Hold is the next logical command, it is displayed as a button on the form toolbar and highlighted in green. 


<!-- PAGE_BREAK -->
 Appendix | 69 

 Figure: The highlighted command and the corresponding status 

#### Unavailable Commands on the More Menu 

 By default, on the More menu, the system displays all commands that could be available for the form, based on the system configuration. Some of these commands may be unavailable (that is, they are listed but cannot be clicked). These are the commands that are not applicable to the record based on its current status or other factors. 

#### The Responsive Form Toolbar and More Menu 

 The form toolbar and the More menu have a responsive layout, meaning that they dynamically adjust to different screen sizes. When there is enough space, buttons for highlighted and favorite commands are displayed on the form toolbar. When the screen size decreases, the system moves the commands off the form toolbar one by one but keeps them on the More menu. 

 If there are multiple categories on the More menu, the categories and menu commands can be displayed in multiple columns on the More menu, depending on the screen size and the number of categories. When the screen size decreases, the system moves some categories and menu commands to the le to decrease the number of columns, and in the screens of the smallest size, all categories are displayed in one column. Below are two examples of the same menu in different screen sizes for a record on the Bills and Adjustments (AP301000) form. 


<!-- PAGE_BREAK -->
 Appendix | 70 

**_Figure: The form toolbar and More menu on a wide screen_** 

**_Figure: The form toolbar and More menu on a narrow screen_** 


<!-- PAGE_BREAK -->
 Appendix | 71 

 Related Links 

- _Integration with Excel_ 

- _To Copy a Document Contents to a New Document_ 

- _To Create a Document with a Template_ 

### Table Toolbar 

 Each table on an Acumatica ERP form, tab, dialog box, or page has a table toolbar, which contains the buttons you can use to work with the details or objects of the table. A toolbar, shown in the following screenshot, includes buttons that are specific to the table, standard buttons that most table toolbars have, and the search box (for some tables; for others, the search box is displayed in the filtering area). 

 Figure: Table toolbar 

#### Standard Table Toolbar Buttons 

 The following table describes the standard table toolbar buttons. A table toolbar may include some or all of those buttons. If a table toolbar includes table-specific buttons, they are described in the reference help topic. 

 Button Icon Description 

 Refresh Refreshes the data in the table. 

 Switch Between Grid and Form 

 Controls how the elements are displayed: in a table (grid) with rows and columns; or as separately arranged elements for one table row, with navigation tools you use to move between row data. 

 Add Row Appends a new row to the table so you can define a new detail or object. The new row may contain some default values. 

 Delete Row Deletes the selected row or rows. 


<!-- PAGE_BREAK -->
 Appendix | 72 

 Button Icon Description 

 Move Row Up Moves the selected row one position up. 

 Move Row Down Moves the selected row one position down. 

 Fit to Screen Adjusts the table to the screen width and makes the column width proportional. 

 Export to Excel Exports the data in the table to an Excel file. For more information, see Integration with Excel in the Acumatica ERP Getting Started Guide. 

 Filter Settings Opens the Filter Settings dialog box, which you can use to define a new advanced filter. After you create and save the filter, the corresponding tab appears on the table. 

 For more information about filtering, see Filters. For details on the Filter Settings dialog box, see Filter Settings Dialog Box. 

 Load Records from File 

 Opens the File Upload dialog box, described in detail below, so you can locate and upload a local file for import. You can use this option to import data from an Excel spreadsheet (.xlsx) or .csv file. For the detailed procedure, see To Import Data from a Local File to a Table. 

 Search A box in which you can type a word, part of a word, or multiple words. As you type, the system filters the contents of the table to display only rows that contain the string you have typed in any column. 

 Download Downloads the selected file. 

#### File Upload Dialog Box 

 With the File Upload dialog box, you select a file of one of the supported formats (.csv or .xlsx) to import data from the file. 

 Element Description 

 File Path The path to the file you want to upload. 

 To select the file, click Browse , and then find and select the file you want to upload. 

 The dialog box has the following button. 

 Upload Closes the dialog box and opens the Common Settings dialog box, where you specify the import settings. 


<!-- PAGE_BREAK -->
 Appendix | 73 

#### Common Settings Dialog Box 

 In the Common Settings dialog box, which opens if you click Upload in the File Upload dialog box, you specify the import settings for a file that you has selected in the File Upload dialog box. 

 Element Description 

 Separator Chars The character that is used as the separator in the imported file. 

 By default, the comma is used as the separator. You specify the separator character if the imported file uses any other separator. 

 This box appears only if you import data from a .csv file. 

 Null Value Optional. The value that is used to mark an empty column in the imported file. You specify the null value if the value in the imported file differs from the empty string. 

 Encoding The encoding that is used in the imported file. 

 This box appears only if you import data from a .csv file. 

 Culture The regional format that has been used to display the time, currency, and other measurements in the imported file. 

 Mode The mode that determines which rows of the uploaded file will be imported into the table. The following options are available: 

- _Update Existing_ : The rows already present in the table will be updated, and the rows     not present in the table will be added. 

- _Bypass Existing_ : Only the new rows that are not present in the table will be imported.     The rows that are already present in the table will not be updated. 

- _Insert All Records_ : All the rows from the file will be imported into the table. 

 If you select this option, you may get duplicated rows because the system does not check for duplicates when importing rows from the file. 

 The dialog box has the following buttons. 

 OK Closes the dialog box and opens the Columns dialog box. 

 Cancel Closes the dialog box without importing the data from the file. 

#### Columns Dialog Box 

 In the Columns dialog box, which opens if you click OK in the Common Settings dialog box, you match the columns in the imported file that you have selected in the File Upload dialog box to the columns in the Acumatica ERP table to which you are importing data. 

 Element Description 

 Column Name The name of the column in the uploaded file. 

 Property Name The name of the corresponding column in the table in Acumatica ERP. 


<!-- PAGE_BREAK -->
 Appendix | 74 

 Element Description 

 The dialog box has the following buttons. 

 OK Closes the dialog box and imports the selected file. 

 Cancel Closes the dialog box without importing the data from the file. 

**Related Links** 

- _Tables_ 

- _Integration with Excel_ 

- _To Import Data from a Local File to a Table_ 


